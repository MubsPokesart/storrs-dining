PRAGMA defer_foreign_keys = ON;

BEGIN TRANSACTION;

DELETE FROM menus WHERE date = '2025-11-29';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'SOUPS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Egg Sandwich Bar', 'GRILL ITEMS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal BBQ Chicken', 'HALAL', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Baked Beans', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Seasoned White Rice', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'COMFORT LINE', 4, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bagel Bar', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 7, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Cookie', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Blueberry Bread', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sweet Potato Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Biscuits', 'HALAL', 3, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hearty Beef Stew', 'HALAL', 3, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Plantains', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Blazin Red Fish', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Green Beans', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jamaican Beef Patty', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mediterranean Chick Peas and Tomatoes', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Yellow Rice w/ Pinto Beans', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Teriyaki Chicken', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'BBQ Sauce', 'OPTIONS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pulled Pork', 'OPTIONS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sidewinder Fries', 'OPTIONS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';

COMMIT;

PRAGMA defer_foreign_keys = OFF;