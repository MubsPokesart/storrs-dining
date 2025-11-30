PRAGMA defer_foreign_keys = ON;

BEGIN TRANSACTION;

DELETE FROM menu_items WHERE menu_id IN (SELECT id FROM menus WHERE date = '2025-11-29');

DELETE FROM menus WHERE date = '2025-11-29';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttered Croissant', 'HOMESTYLE CLASSICS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chorizo Sausage Patties', 'HOMESTYLE CLASSICS', 1, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Eggs', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'WORLD FARE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Tater Tots', 'WORLD FARE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'WORLD FARE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pancake & Waffle Syrup', 'WORLD FARE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'WORLD FARE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'WORLD FARE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese Bar', 'HOMESTYLE CLASSICS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grain Bar', 'FRESH FUSION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoked Tofu', 'FRESH FUSION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bow Tie Pasta', 'FEAST', 4, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'FEAST', 4, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 5, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Pepperoni Pizza', 'PIZZA STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Albanian Chicken Wings', 'WORLD FARE', 6, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buffalo Wings', 'WORLD FARE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Wings', 'WORLD FARE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fiesta Rice', 'WORLD FARE', 6, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mexican Beef Lasagna', 'WORLD FARE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Mexican Street Corn', 'WORLD FARE', 6, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Bars', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beer Battered Onion Rings', 'SIZZLE AND SERVE', 8, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SIZZLE AND SERVE', 8, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'SIZZLE AND SERVE', 8, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hot Dog Roll N. England', 'SIZZLE AND SERVE', 8, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meatless Sloppy Joes', 'SIZZLE AND SERVE', 8, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sloppy Joes on a Bun', 'SIZZLE AND SERVE', 8, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Pho', 'FRESH FUSION', 1, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vietnamese Pho & Noodle Bar', 'FRESH FUSION', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mac & Cheese Bar', 'FEAST', 2, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne Pasta', 'FEAST', 2, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Pepperoni Pizza', 'PIZZA STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef and Broccoli Stir Fry', 'WORLD FARE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic Fried Rice (Sinangag)', 'WORLD FARE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mini Vegetable Egg Rolls', 'WORLD FARE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Teriyaki Swordfish', 'WORLD FARE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Assorted Strudel Bites', 'DESSERTS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'DESSERTS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'SIZZLE AND SERVE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beer Battered Onion Rings', 'SIZZLE AND SERVE', 6, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'SIZZLE AND SERVE', 6, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SIZZLE AND SERVE', 6, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Pancakes', 'BREAKFAST ENTREE''S', 1, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Tater Tots', 'BREAKFAST ENTREE''S', 1, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREE''S', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREE''S', 1, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'BREAKFAST ENTREE''S', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREE''S', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'DESSERTS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buffalo Cauliflower with Carrot Salad', 'PLATE ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cornmeal Crusted Chicken', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Tocino With Garlic Fried Rice', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sofrito Chicken', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Beans In Sofrito', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Corn With Lime Butter', 'TANDOORI STATION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Sofrito Chicken', 'TANDOORI STATION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buffalo Bleu Cheese Dressing', 'GRILL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Vegetables', 'GRILL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Masa Crusted Chicken', 'GRILL STATION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic Fried Rice (Sinangag)', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Tocino', 'WOK STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buffalo Cauliflower', 'SAUTE STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Carrot And Arugula Salad', 'SAUTE STATION', 6, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gemelli', 'PIZZA', 7, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PIZZA', 7, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Veggie Combo Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Brownies', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Paprikash', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Onion Grilled Cheese With Roasted Root Salad', 'PLATE ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pierogies And Kielbasa', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Teriyaki Chicken With Sesame Cabbage Salad', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Paprikash', 'TANDOORI STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Rice', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Onion Grilled Cheese', 'GRILL STATION', 4, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Root Salad With Horseradish Honey Mustard', 'GRILL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Cabbage Salad', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sushi Rice', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Teriyaki Chicken', 'WOK STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Cabbage', 'SAUTE STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kielbasa', 'SAUTE STATION', 6, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Potato & Cheese Pierogi', 'SAUTE STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gemelli', 'PIZZA', 7, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PIZZA', 7, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Veggie Combo Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'DESSERTS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Biscuits', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Waffles', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Louisiana Style Sausage Gravy', 'BREAKFAST ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Patties', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Strawberry Topping', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'BREAKFAST BAKERY', 2, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'ACTION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bourbon Brown Sugar Salmon', 'SMART CHECK ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'BBQ Chicken Drumsticks', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sesame Nuggets', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'SOUPS', 3, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Basmati Rice Pilaf', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pesto Cream Sauce', 'SIDES', 4, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Brussel Sprouts', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegetable Medley', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'GRILL ITEMS', 5, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 5, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Forward Quesadillas', 'GRILL ITEMS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'GRILL ITEMS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese Bar', 'ACTION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Potato Chips', 'ACTION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pasta Du Jour', 'COMFORT LINE', 7, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'COMFORT LINE', 7, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 8, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Bars', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fish of the Day w/ Shrimp Scampi Butter', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kielbasa', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Outback Chicken with Apple Smoked Bacon', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Cabbage', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meat Sauce', 'SIDES', 3, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Parslied Carrots', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Potato & Cheese Pierogi', 'SIDES', 3, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Sausage w/ Peppers & Onions', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Brown Sugar Mustard Glaze', 'SAUCES & GRAVIES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Husky Rolls', 'BAKERY', 5, 1, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'GRILL ITEMS', 6, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Forward Quesadillas', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Taco Bar', 'ACTION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pasta Du Jour', 'COMFORT LINE', 8, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'COMFORT LINE', 8, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 9, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'DESSERTS', 10, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Omelet Du Jour', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Eggs', 'GRILL ITEMS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Breakfast Potatoes', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Toast', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Tofu', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shakshuka', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Cheeseburger w/ Bun', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Boneless Wings', 'COMFORT LINE', 2, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Boneless Wings', 'COMFORT LINE', 2, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Harvest Vegetable Stir-fry', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Homemade Teriyaki Sauce', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jasmine Rice', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Nashville Hot Sauce', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cavatappi', 'PASTA STATION', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Steamed Spinach', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic Quinoa', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shrimp Mozambique', 'PASTA STATION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkish Chickpeas', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Onion Soup', 'SOUPS', 1, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'English Pub Fish', 'GRILL ITEMS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Burnt End Brisket Sausage', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Three Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wedge Fries w/ Skin', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Classic Chicken Gravy', 'COMFORT LINE', 3, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Garden Medley', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Orzo with Feta & Sundried Tomatoes', 'COMFORT LINE', 3, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Protein Packed Pot Pie', 'COMFORT LINE', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Garlic Chicken', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Garlic Mashed Gold Potatoes', 'COMFORT LINE', 3, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Spaghetti Squash', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cavatappi', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garlic & Herb Dipping Oil', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Bread', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mixed Vegetables', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Quinoa and Rice Pilaf', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ricotta Cheese Stuffed Shells', 'PASTA STATION', 4, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked French Toast Stix', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Overnight Oats', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Skin-on Home Fries', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'DESSERTS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Noodle Soup', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Bean Burger With Guacamole', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL DOWNSTAIRS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL DOWNSTAIRS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Ginger Sesame Tuna Steaks', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Huli Huli Chicken', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kale & Spinach Dumpling', 'COMFORT LINE', 3, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mongolian Steak Stir Fry', 'COMFORT LINE', 3, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pineapple Fried Rice', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Summer Vegetables', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Napa Cabbage', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baby Kale', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon Crumbles', 'INTERNATIONAL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Balsamic Roasted Red Onion', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Caesar Salad Bar', 'INTERNATIONAL STATION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Strips', 'INTERNATIONAL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Creamy Caesar Dressing', 'INTERNATIONAL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Diced Tofu', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grape Tomato', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Multigrain Croutons', 'INTERNATIONAL STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Based Mozzarella', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Romaine Lettuce', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shredded Parmesan', 'INTERNATIONAL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shrimp', 'INTERNATIONAL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sunflower Seeds', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Thinly Sliced Cucumber', 'INTERNATIONAL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alfredo Sauce', 'PASTA STATION', 5, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ziti in Meat Sauce', 'PASTA STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Classic Italian Combo', 'GRAB & GO', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garden Side Salad', 'GRAB & GO', 1, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gluten Free Turkey and Cheese Sandwich', 'GRAB & GO', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Large Chocolate Chip Cookie', 'GRAB & GO', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Side Salad with Grilled Chicken Strips', 'GRAB & GO', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkey and Swiss Croissant', 'GRAB & GO', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Buffalo "Chicken" Wrap', 'GRAB & GO', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wrapped Brownie', 'GRAB & GO', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Bean Burger With Guacamole', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL DOWNSTAIRS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL DOWNSTAIRS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL DOWNSTAIRS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL DOWNSTAIRS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, '10" Flour Tortilla', 'ACTION', 3, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon Crumbles', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Taco Filling', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Black Beans', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Broccoli Cuts', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Diced Spanish Onion', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Diced Tomato', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Flame Roasted Corn & Peppers', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Guacamole', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jalapenos', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pico de Gallo', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Quesadilla Bar', 'ACTION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Refried Beans', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Chicken', 'ACTION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Salsa', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shredded Cheddar Jack Cheese', 'ACTION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sliced Black Olives', 'ACTION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sour Cream', 'ACTION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sesame Nuggets', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Basmati Rice Pilaf', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Husky Rolls', 'COMFORT LINE', 4, 1, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Outback Chicken with Apple Smoked Bacon', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Parsley Buttered Egg Noodles', 'COMFORT LINE', 4, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Cauliflower', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Spinach With Garlic', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Swedish Meatballs', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baby Kale', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon Crumbles', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Balsamic Roasted Red Onion', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Caesar Salad Bar', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Strips', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Creamy Caesar Dressing', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Diced Tofu', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grape Tomato', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Multigrain Croutons', 'INTERNATIONAL STATION', 5, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Based Mozzarella', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Romaine Lettuce', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shredded Parmesan', 'INTERNATIONAL STATION', 5, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shrimp', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sunflower Seeds', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Thinly Sliced Cucumber', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vodka Sauce', 'PASTA STATION', 6, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 7, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Toast', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Tater Tots', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
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
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'BREAKFAST BAKERY', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beyond Burger', 'GRILL ITEMS', 2, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Curly Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Chicken Gyro', 'HALAL', 3, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baby Carrots w/ Tarragon Butter', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Chicken Fillet Sandwich', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Brown Chicken Gravy', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Tuna Steak w/ Sriracha Aioli', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hamburger Roll', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Protein Packed Cutlet on a Roll', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Potatoes w/ Rosemary', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Spinach With Garlic', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef For Udon', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chefs Choice Lo Mein', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Vegetable and Tofu Stir Fry', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Rice', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'OPTIONS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Penne & Sausage Abruzzi', 'OPTIONS', 6, 0, 0, 0
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
SELECT id, 'Lemon Bars', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'DESSERTS', 8, 0, 1, 0
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
SELECT id, 'Beyond Burger', 'GRILL ITEMS', 2, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Curly Fries', 'GRILL ITEMS', 2, 1, 1, 0
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
SELECT id, 'Mashed Red Potatoes with Garlic', 'HALAL', 3, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Garlic Chicken', 'HALAL', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, '5 Grain Blend', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bang Bang Shrimp', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttered Egg Noodles', 'COMFORT LINE', 4, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Herb Roasted Chicken', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Spinach With Garlic', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Summer Squash', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Swedish Meatballs', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Swedish Vegeballs', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon Crumbles', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sesame Nuggets', 'INTERNATIONAL STATION', 5, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jalapenos', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Macaroni & Cheese', 'INTERNATIONAL STATION', 5, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Chicken', 'INTERNATIONAL STATION', 5, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'INTERNATIONAL STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'OPTIONS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'DESSERTS', 7, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Toast', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'McHusky Breakfast Sandwich', 'BREAKFAST ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oat Milk Pancakes', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Overnight Oats', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Breakfast Potatoes', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chorizo Sausage Patties', 'SIDES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'BAKERY', 3, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Assorted Muffins', 'KOSHER', 4, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Breakfast Potatoes', 'KOSHER', 4, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Eggwhite Omelet', 'KOSHER', 4, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Kosher Egg & Cheese Breakfast Sandwich', 'KOSHER', 4, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Cereal', 'KOSHER', 4, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'ACTION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Brown Rice with Tofu & Vegetables', 'SMART CHECK ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'General Tso''s Chicken', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Korean Pork Loin', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spring Vegetable Lo Mein', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sausage & Lentil Soup', 'SOUPS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chili & Cheese Dog', 'SANDWICHES', 4, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Basmati Rice', 'SIDES', 5, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'SIDES', 5, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mini Vegetable Egg Rolls', 'SIDES', 5, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Snow Peas', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'SIDES', 5, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SAUCES & GRAVIES', 6, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Bars', 'BAKERY', 7, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'BAKERY', 7, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL ITEMS', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Cheeseburger No Bun', 'GRILL ITEMS', 8, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'South Western Malibu Veggie Burger', 'GRILL ITEMS', 8, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Squash', 'KOSHER', 9, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Panini Pizza', 'KOSHER', 9, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Portabella & Mozzarella Panini', 'KOSHER', 9, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Soup Cream of Tomato', 'KOSHER', 9, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'ACTION', 10, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Caprese Grinder', 'HALAL', 11, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 12, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 12, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chickpea Pasta With Roasted Vegetables and White Beans', 'SMART CHECK ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alabama BBQ Chicken', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cider Braised Brats', 'ENTREES', 2, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Beans', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheddar Beer Cheese', 'SIDES', 3, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Honey Roasted Carrots & Apples', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ranch Roasted Potatoes', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Kale with Garlic', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Soft Pretzel', 'SIDES', 3, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spaetzle', 'SIDES', 3, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SAUCES & GRAVIES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'BAKERY', 5, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL ITEMS', 6, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Cheeseburger No Bun', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baby Carrots', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Vegetable Soup', 'KOSHER', 7, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oven Roasted Potatoes', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Yankee Pot Roast', 'KOSHER', 7, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon, Egg & Cheese Bagel', 'GRAB & GO', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Classic Italian Combo', 'GRAB & GO', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Garden Side Salad', 'GRAB & GO', 8, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gluten Free Turkey and Cheese Sandwich', 'GRAB & GO', 8, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Large Chocolate Chip Cookie', 'GRAB & GO', 8, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Side Salad with Grilled Chicken Strips', 'GRAB & GO', 8, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkey and Swiss Croissant', 'GRAB & GO', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Buffalo "Chicken" Wrap', 'GRAB & GO', 8, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wrapped Brownie', 'GRAB & GO', 8, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mac & Cheese Bar', 'ACTION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Buttermilk Pancakes', 'HALAL', 10, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Chicken Sausage Links', 'HALAL', 10, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Scrambled Eggs', 'HALAL', 10, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 11, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 11, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-29' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bacon', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Buttermilk Pancakes', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cage Free Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Country Style Hash Browns', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Omelet Bar', 'BREAKFAST ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant Based Pancakes', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs with American Cheese', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'OPTIONS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranberry Orange Bread', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Korean BBQ Chicken', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, '"BLT" Panini', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Imperial Shrimp & Vegetables', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meaty Shitake "Beef" and Broccoli Stir Fry', 'ENTREES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Savory French Onion Soup', 'SOUPS', 3, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cauliflower Fried Rice', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Green Beans', 'SIDES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pasta Bar', 'ACTION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Bars', 'DESSERTS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'M & M Cookies', 'DESSERTS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-29', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tuna Nicoise', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Croque Monsieur', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'French Beef Bourguignon', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rustic Spinach Mushroom Galette', 'ENTREES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Homestyle Mashed Potatoes', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Ratatouille', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pasta Bar', 'ACTION', 4, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Peach Pie', 'DESSERTS', 5, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-29' AND meal_period = 'dinner';

COMMIT;

PRAGMA defer_foreign_keys = OFF;