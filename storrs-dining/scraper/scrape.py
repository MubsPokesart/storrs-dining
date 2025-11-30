import os
import json
import requests
from datetime import datetime
from bs4 import BeautifulSoup

"""
  {
    "date": "2025-01-28",
    "menus": [
      {
        "location_id": "south",
        "meal_period": "breakfast",
        "items": [
          {
            "name": "Scrambled Eggs",
            "station": "Grill",
            "station_order": 0,
            "is_vegan": false,
            "is_vegetarian": true,
            "is_gluten_free": true
          },
          ...
        ]
      },
      ...
    ]
  }
"""

dirname = os.path.dirname(__file__)
OUTPUT_DIR = os.path.join(dirname, "output", "output.json")

DINING_HALLS = {
    "connecticut": {
        "id": "03",
        "name": "Connecticut+Dining+Hall"
    },
    "mcmahon": {
        "id": "05",
        "name": "McMahon+Dining+Hall"
    },
    "north": {
        "id": "07",
        "name": "North+Campus+Dining+Hall"
    },
    "northwest": {
        "id": "15",
        "name": "Northwest+Marketplace"
    },
    "putnam": {
        "id": "06",
        "name": "Putnam+Dining+Hall"
    },
    "south": {
        "id": "16",
        "name": "South+Campus+Marketplace"
    },
    "towers": {
        "id": "42",
        "name": "Gelfenbien+Commons+%26+Halal"
    },
    "whitney": {
        "id": "01",
        "name": "Whitney+Dining+Hall"
    }
}

def get_menu(location_key, location_data, month, day, year):
    location_id = location_data["id"]
    location_name = location_data["name"]
    
    url = f"http://nutritionanalysis.dds.uconn.edu/shortmenu.aspx?sName=UCONN+Dining+Services&locationNum={location_id}&locationName={location_name}&naFlag=1&WeeksMenus=This+Week%27s+Menus&myaction=read&dtdate={month}%2f{day}%2f{year}"

    try:
        response = requests.get(url)
        response.raise_for_status()
    except requests.RequestException as e:
        print(f"Error fetching data for {location_key}: {e}")
        return []

    soup = BeautifulSoup(response.content, 'html.parser')
    
    meals_data = []
    
    # Find all top-level containers for meals, which are <td> tags with specific attributes.
    # The example HTML shows <td valign="top" width="30%"> as the container for each meal column.
    meal_containers = soup.find_all("td", valign="top", width="30%")

    for container in meal_containers:
        # Each container should have a div.shortmenumeals inside it
        header = container.find("div", class_="shortmenumeals")
        if not header:
            continue
        
        base_meal_name = header.get_text(strip=True)
        
        current_meal_period = base_meal_name
        current_station = "Unknown Station"
        station_order = 0
        meal_items_for_period = []
        
        # Now find all station and recipe divs within this specific container
        elements_in_container = container.find_all("div", class_=["shortmenucats", "shortmenurecipes"])
        
        for element in elements_in_container:
            # Check for station headers
            if "shortmenucats" in element.get("class", []):
                station_name_raw = element.get_text(strip=True)
                station_name = station_name_raw.replace("--", "").strip()
                
                # Check for Late Night transition within Dinner
                # This logic is based on the assumption that Late Night is a 'station' within Dinner.
                # In the example.html, LATE NIGHT is a `div.shortmenucats`
                if base_meal_name == "Dinner" and "LATE NIGHT" in station_name.upper():
                    # If we encounter Late Night, and we have existing items for 'Dinner',
                    # add them to meals_data now and reset for Late Night.
                    if meal_items_for_period:
                        meals_data.append({
                            "location_id": location_key,
                            "meal_period": "Dinner", # Add collected Dinner items
                            "items": meal_items_for_period
                        })
                        meal_items_for_period = [] # Reset for Late Night items
                    current_meal_period = "Late Night" # Change current meal context
                    current_station = station_name 
                    station_order = 0 # Reset station order for a new meal period
                else:
                    current_station = station_name
                station_order += 1

            # Check for recipe items
            elif "shortmenurecipes" in element.get("class", []):
                recipe_name = element.get_text(strip=True).replace('\xa0', ' ')
                
                is_vegan = False
                is_vegetarian = False
                is_gluten_free = False
                
                # Extract dietary flags from the parent <tr>'s images
                recipe_td_item_wrapper = element.find_parent("td") # This should be the td containing the recipe div
                if recipe_td_item_wrapper:
                    recipe_tr = recipe_td_item_wrapper.find_parent("tr")
                    if recipe_tr:
                        images = recipe_tr.find_all("img")
                        for img in images:
                            src = img.get("src", "").lower()
                            if "vegan.gif" in src:
                                is_vegan = True
                            if "vegetarian.gif" in src:
                                is_vegetarian = True
                            if "glutenfree.gif" in src:
                                is_gluten_free = True
                
                meal_items_for_period.append({
                    "name": recipe_name,
                    "station": current_station,
                    "station_order": station_order,
                    "is_vegan": is_vegan,
                    "is_vegetarian": is_vegetarian,
                    "is_gluten_free": is_gluten_free
                })
        
        # After processing all elements within this meal container, add any remaining items
        if meal_items_for_period:
            meals_data.append({
                "location_id": location_key,
                "meal_period": current_meal_period,
                "items": meal_items_for_period
            })

    return meals_data

def main():
    now = datetime.now()
    month = now.month
    day = now.day   
    year = now.year
    
    all_menus = []
    
    for key, location in DINING_HALLS.items():
        hall_menus = get_menu(key, location, month, day, year)
        all_menus.extend(hall_menus)
        
    output = {
        "date": now.strftime("%Y-%m-%d"),
        "menus": all_menus
    }
    
    with open(OUTPUT_DIR, "w") as f:
        json.dump(output, f, indent=2)

if __name__ == "__main__":
    main()