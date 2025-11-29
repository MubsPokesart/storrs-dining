BEGIN TRANSACTION;

DELETE FROM menus WHERE date = '2025-11-29';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'American Cheese Omelet', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Waffles', 'HOMESTYLE CLASSICS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Omelet Du Jour', 'HOMESTYLE CLASSICS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Eggs', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hot Fudge', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pancake & Waffle Syrup', 'HOMESTYLE CLASSICS', 1, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Strawberry Topping', 'HOMESTYLE CLASSICS', 1, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Whipped Topping', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'WORLD FARE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lyonnaise Potatoes', 'WORLD FARE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'WORLD FARE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dumpling Bar', 'FRESH FUSION', 2, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alfredo Sauce', 'FEAST', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Ziti', 'FEAST', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'FEAST', 3, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne Pasta', 'FEAST', 3, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 4, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Pepperoni Pizza', 'PIZZA STATION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bulgogi Beef', 'WORLD FARE', 5, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pickled Cukes', 'WORLD FARE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Garlic Sauce', 'WORLD FARE', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoked Salmon', 'WORLD FARE', 5, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'WORLD FARE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Szechuan Fried Tofu', 'WORLD FARE', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Thai Yellow Rice', 'WORLD FARE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'SIZZLE AND SERVE', 7, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beet and Kale Burger w/ Bun', 'SIZZLE AND SERVE', 7, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'SIZZLE AND SERVE', 7, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SIZZLE AND SERVE', 7, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Straight Cut French Fries', 'SIZZLE AND SERVE', 7, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Falafel', 'FRESH FUSION', 1, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Elotes Focaccia Bread', 'FEAST', 2, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne Pasta', 'FEAST', 2, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice Pilaf', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Brussels Sprouts', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoked Drumsticks', 'FEAST', 2, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoked Tofu', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Pepperoni Pizza', 'PIZZA STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Burgundy Beef Gravy', 'WORLD FARE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Golden Mashed Potatoes with Bleu Cheese', 'WORLD FARE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Asparagus w/ Orange Zest', 'WORLD FARE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Beef Sirloin Steak', 'WORLD FARE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Raisin Cookies', 'DESSERTS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'SIZZLE AND SERVE', 6, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SIZZLE AND SERVE', 6, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grinder Roll', 'SIZZLE AND SERVE', 6, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kellie Dogs w/ Roll', 'SIZZLE AND SERVE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinated Portabella Mushrooms', 'SIZZLE AND SERVE', 6, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Straight Cut French Fries', 'SIZZLE AND SERVE', 6, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'BREAKFAST ENTREE''S', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREE''S', 1, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Hash Brown Patties', 'BREAKFAST ENTREE''S', 1, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREE''S', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREE''S', 1, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREE''S', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'DESSERTS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cachapas', 'PLATE ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Nashville Hot Chicken Bowl', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne With Broccoli Rabe and Pork Sausage', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tamarind Glazed Salmon With Bok Choy & Wild Rice', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Corn', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Nashville Hot Chicken Bites', 'TANDOORI STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice and Beans', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shredded Cheddar Jack Cheese', 'TANDOORI STATION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cachapas', 'GRILL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bok Choy And Carrot Stir Fry', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tamarind Glazed Salmon', 'WOK STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White and Wild Rice Blend', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne With Broccoli Rabe and Pork Sausage', 'SAUTE STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cavatappi', 'PIZZA', 7, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheeseburger Pizza', 'PIZZA', 7, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PIZZA', 7, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 8, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bo Ssam', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Tikka Masala', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Salad With Sweet Onion Dressing', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Singapore Mei Fun Plate', 'PLATE ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Lettuce Wraps', 'TANDOORI STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken With North African Spice Paste', 'GRILL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lettuce Mix', 'GRILL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Corn Salsa', 'GRILL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sweet Onion Dressing', 'GRILL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Singapore Mei Fun', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Basmati Rice', 'SAUTE STATION', 6, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Tikka Masala', 'SAUTE STATION', 6, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cavatappi', 'PIZZA', 7, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheeseburger Pizza', 'PIZZA', 7, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PIZZA', 7, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Breakfast Potatoes', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Waffles', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Sausage Links', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Croissant', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Warm Apple Topping', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'BREAKFAST BAKERY', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'ACTION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Frittata', 'COMFORT LINE', 5, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Choice Fried Rice', 'SMART CHECK ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepper Steak Stir Fry', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Protein Packed Pepper Stir Fry', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smokehouse Chicken', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Strawberry Citrus CousCous', 'SALADS', 4, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alfredo Sauce', 'SIDES', 5, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kale & Spinach Dumpling', 'SIDES', 5, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Asparagus', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Baby Bok Choy', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'GRILL ITEMS', 6, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Panini', 'GRILL ITEMS', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sidewinder Fries', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'South Western Malibu Veggie Burger', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Noodle Bar', 'ACTION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pasta Du Jour', 'COMFORT LINE', 8, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'COMFORT LINE', 8, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 9, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 10, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 10, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jaeger Schnitzel', 'ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Bavarian Chicken', 'ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Brats in a Hot Tub', 'ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alfredo Sauce', 'SIDES', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttered Egg Noodles', 'SIDES', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheddar Beer Cheese', 'SIDES', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Homestyle Au Gratin Potatoes', 'SIDES', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Honey Roasted Carrots & Apples', 'SIDES', 2, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jumbo Soft Pretzels', 'SIDES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Kale with Lemon', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'GRILL ITEMS', 3, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Guinness Bratwurst with Bun', 'GRILL ITEMS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sidewinder Fries', 'GRILL ITEMS', 3, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'The Londoner', 'GRILL ITEMS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'GRILL ITEMS', 3, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Stir Fry Bar', 'ACTION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pasta Du Jour', 'COMFORT LINE', 5, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 7, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Omelet Du Jour', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Eggs Fried in Butter', 'GRILL ITEMS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chorizo Sausage', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roast Potato Medley', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan French Toast', 'COMFORT LINE', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Creamy Chicken Gnocchi Soup', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL ITEMS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crispy Bulgogi Tofu', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kimchi Fried Rice', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Korean BBQ Chicken', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scallion Pancakes', 'COMFORT LINE', 3, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Soy Dipping Sauce', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Pork and Cabbage Dumplings', 'COMFORT LINE', 3, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Onion Focaccia', 'PASTA STATION', 4, 1, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mini Beef Meatballs', 'PASTA STATION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Parmesan Cream Sauce', 'PASTA STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne Pasta', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 5, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Blazin Red Fish', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Signature Beef Burger', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Fajitas', 'COMFORT LINE', 2, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cinnamon Sugared Churros', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hot Fudge Sauce', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-based Steak Fajita', 'COMFORT LINE', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Refried Beans', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spanish Rice', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chili con Carne', 'PASTA STATION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Roasted Carrots w/ Cumin & Citrus', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mexican Street Corn Dip', 'PASTA STATION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Nacho Cheese Sauce', 'PASTA STATION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne Pasta', 'PASTA STATION', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tortilla Chips', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Sausage Links', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Country Style Hash Browns', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Overnight Oats', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'DESSERTS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheddar Broccoli Soup', 'SOUPS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Bean Burger With Guacamole', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Apple & Cheddar Sandwich', 'GRILL DOWNSTAIRS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL DOWNSTAIRS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Straight Cut French Fries', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Gnocchi With Creamy Tomato Sauce', 'COMFORT LINE', 3, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Cabbage', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Lemon Garlic Chicken', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kielbasa', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Potato & Cheese Pierogi', 'COMFORT LINE', 3, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Summer Vegetables', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sizzling Salmon', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Sausage with Roasted Red Pepper Cream', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Beans', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Burrito Bar', 'INTERNATIONAL STATION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cilantro Lime Rice', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Flame Roasted Corn & Peppers', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic & Herb Tortilla', 'INTERNATIONAL STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Guacamole', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lime Wedges', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperjack Queso', 'INTERNATIONAL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pico de Gallo', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Based Barbacoa', 'INTERNATIONAL STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Carnitas', 'INTERNATIONAL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Red Quinoa', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Sweet Potato', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Salsa', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sour Cream', 'INTERNATIONAL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tortilla Chips', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meat Sauce', 'PASTA STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spaghetti', 'PASTA STATION', 5, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 7, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Classic Italian Combo', 'GRAB & GO', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garden Side Salad', 'GRAB & GO', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gluten Free Turkey and Cheese Sandwich', 'GRAB & GO', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Large Chocolate Chip Cookie', 'GRAB & GO', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Side Salad with Grilled Chicken Strips', 'GRAB & GO', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkey and Swiss Croissant', 'GRAB & GO', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Buffalo "Chicken" Wrap', 'GRAB & GO', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wrapped Brownie', 'GRAB & GO', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Bean Burger With Guacamole', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Apple & Cheddar Sandwich', 'GRILL DOWNSTAIRS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL DOWNSTAIRS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Straight Cut French Fries', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Tortellini', 'ACTION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Strips', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Sausage Links', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meatball in Marinara', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pesto Cream Sauce', 'ACTION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Garlic Marinara Sauce', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Peppers', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Mushrooms', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chermoula Salmon', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Herb Grilled Tofu', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Homestyle Au Gratin Potatoes', 'COMFORT LINE', 4, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice & Orzo Pilaf', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Asparagus', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Beef Sirloin Steak', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Brussels Sprouts', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Beans', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Burrito Bar', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cilantro Lime Rice', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Flame Roasted Corn & Peppers', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic & Herb Tortilla', 'INTERNATIONAL STATION', 5, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Guacamole', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lime Wedges', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperjack Queso', 'INTERNATIONAL STATION', 5, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pico de Gallo', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Based Barbacoa', 'INTERNATIONAL STATION', 5, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Carnitas', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Red Quinoa', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Sweet Potato', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Salsa', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sour Cream', 'INTERNATIONAL STATION', 5, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tortilla Chips', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Lasagna', 'PASTA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Cream Sauce', 'PASTA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 7, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Breakfast Potatoes', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oat Milk Pancakes', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'BREAKFAST BAKERY', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bourbon Brown Sugar Salmon', 'SMART CHECK ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chorizo Sausage', 'GRILL ITEMS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Burgers', 'GRILL ITEMS', 3, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 3, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Green Beans', 'HALAL', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Chicken Nugget', 'HALAL', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Red Potatoes with Garlic', 'HALAL', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Corn', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Cut Zucchini', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ranch Roasted Potatoes', 'COMFORT LINE', 5, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tuscan White Beans', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Zesty Fried Chicken Tenders', 'COMFORT LINE', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ziti and Beef Cheesy Bake', 'COMFORT LINE', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Choice Vegetable Stir Fry', 'INTERNATIONAL STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hunan Beef', 'INTERNATIONAL STATION', 6, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Japchae', 'INTERNATIONAL STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Rice', 'INTERNATIONAL STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'OPTIONS', 7, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 9, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chorizo Sausage', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Burgers', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken with Harissa', 'HALAL', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Rice & Orzo Pilaf', 'HALAL', 3, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Summer Squash Medley', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Brown Gravy', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'English Pub Fish', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic & Herb Roasted Beef Sirloin', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic Mashed Potatoes', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Herb Grilled Tofu', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Honey Glazed Carrots', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Chicken Thigh', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Green Beans With Lemon And Dill', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shrimp Scampi and Pasta', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fajita Bar', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'OPTIONS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 7, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Blueberry Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Overnight Oats', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mini Potato Pancakes', 'SIDES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Patties', 'SIDES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'BAKERY', 3, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Assorted Muffins', 'KOSHER', 4, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dairy Free French Toast', 'KOSHER', 4, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Eggwhite Omelet', 'KOSHER', 4, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kosher Egg & Cheese Breakfast Sandwich', 'KOSHER', 4, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Cereal', 'KOSHER', 4, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs w/ Cheese', 'KOSHER', 4, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'ACTION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Huli Huli Chicken', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Shaved Steak', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Protein Packed Pepper Stir Fry', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Noodle Soup', 'SOUPS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Barbecue Chicken Burger', 'SANDWICHES', 4, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grinder Roll', 'SIDES', 5, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mandarin Basmati Rice', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peppers & Onions', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Mushrooms', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spinach Saute', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'SAUCES & GRAVIES', 6, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SAUCES & GRAVIES', 6, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'BAKERY', 7, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar Cookies', 'BAKERY', 7, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL ITEMS', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 8, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 8, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger (No Bun)', 'GRILL ITEMS', 8, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kalamata Olives', 'KOSHER', 9, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinated Tomato & Feta Salad', 'KOSHER', 9, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Garlic Hummus', 'KOSHER', 9, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spinach Pinwheels (Kosher)', 'KOSHER', 9, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Stir Fry Bar', 'ACTION', 10, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cart Style Chicken', 'HALAL', 11, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 12, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 12, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ginger Scallion Noodles', 'SMART CHECK ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Asian BBQ Pork', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bulgogi Beef', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Tofu Steak', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kimchi Fried Rice', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mini Vegetable Egg Rolls', 'SIDES', 3, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Baby Bok Choy', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spring Vegetable Medley', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SAUCES & GRAVIES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Cheeseburger No Bun', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger (No Bun)', 'GRILL ITEMS', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Tilapia', 'KOSHER', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Butternut Squash Soup', 'KOSHER', 6, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Vegetable', 'KOSHER', 6, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice Pilaf', 'KOSHER', 6, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon, Egg & Cheese Bagel', 'GRAB & GO', 7, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Classic Italian Combo', 'GRAB & GO', 7, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garden Side Salad', 'GRAB & GO', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gluten Free Turkey and Cheese Sandwich', 'GRAB & GO', 7, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Large Chocolate Chip Cookie', 'GRAB & GO', 7, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Side Salad with Grilled Chicken Strips', 'GRAB & GO', 7, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkey and Swiss Croissant', 'GRAB & GO', 7, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Buffalo "Chicken" Wrap', 'GRAB & GO', 7, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wrapped Brownie', 'GRAB & GO', 7, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Stir Fry Bar', 'ACTION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttered Parsley Noodles', 'HALAL', 9, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Steak Tips', 'HALAL', 9, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 10, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 10, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'Dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'Breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cage Free Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Toast', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lyonnaise Potatoes', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'BREAKFAST ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Patties', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan French Toast', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'OPTIONS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Muffins', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'Lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pernil', 'ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peruvian Grilled Chicken W/ Aji Verde', 'ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Carne Guisada', 'ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gnocchi Sausage Soup', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Plantains', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Vegetable Saute', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ranch Dip', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tempura Battered Pickle Chips', 'SIDES', 3, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Yellow Rice w/ Pinto Beans', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese Bar', 'ACTION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Cookie', 'DESSERTS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cocoa Krispie Bar', 'DESSERTS', 5, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'Dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Calamari With Banana Peppers', 'ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Marsala', 'ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mushroom Meatballs', 'ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Neapolitan Ragu', 'ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fettuccini', 'SIDES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Style Zucchini', 'SIDES', 2, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese Bar', 'ACTION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Dutch Apple Pie', 'DESSERTS', 4, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'Dinner';

COMMIT;