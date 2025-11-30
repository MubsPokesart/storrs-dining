PRAGMA defer_foreign_keys = ON;

BEGIN TRANSACTION;

DELETE FROM menu_items WHERE menu_id IN (SELECT id FROM menus WHERE date = '2025-11-30');

DELETE FROM menus WHERE date = '2025-11-30';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('connecticut', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Honey Roasted Squash with Craisins & Feta', 'HOMESTYLE CLASSICS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Ratatouille Tossed with Bow Tie Pasta', 'HOMESTYLE CLASSICS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Turkey', 'HOMESTYLE CLASSICS', 1, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Stove Top Stuffing', 'HOMESTYLE CLASSICS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sugar and Spice Sweet Potatoes', 'HOMESTYLE CLASSICS', 1, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Turkey Gravy', 'HOMESTYLE CLASSICS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Sausage & Broccoli Rabe with Penne', 'FEAST', 2, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'FEAST', 2, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shells', 'FEAST', 2, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Pepperoni Pizza', 'PIZZA STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Brown Rice', 'WORLD FARE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chicken Lo Mein with Pea Pods', 'WORLD FARE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Summer Garden Stir Fry', 'WORLD FARE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sweet & Spicy Fried Tofu', 'WORLD FARE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Brownies', 'DESSERTS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sundae Bar', 'DESSERTS', 5, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'SIZZLE AND SERVE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'SIZZLE AND SERVE', 6, 1, 1, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'SIZZLE AND SERVE', 6, 0, 0, 1
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Pastrami Reuben', 'SIZZLE AND SERVE', 6, 0, 0, 0
FROM menus
WHERE location_id = 'connecticut' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('mcmahon', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Brown Butter Gnoochi with Butternut', 'PLATE ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meatloaf With Cheddar Garlic Mashed', 'PLATE ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Red Wine Beef With Mustard Greens', 'PLATE ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Spaghetti Squash Pomodoro', 'PLATE ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheddar Garlic Mashed Potato', 'TANDOORI STATION', 3, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Meatloaf', 'TANDOORI STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mushroom Gravy', 'TANDOORI STATION', 3, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Green Beans', 'TANDOORI STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef With Red Wine', 'GRILL STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Red Potatoes with Garlic', 'GRILL STATION', 4, 0, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Mustard Greens', 'GRILL STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pomodoro Sauce', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pumpkin Seed Dukkah', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Roasted Spaghetti Squash', 'WOK STATION', 5, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Creamy Brown Butter Gnocchi with Butternut', 'SAUTE STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA', 7, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pizza', 'PIZZA', 7, 0, 0, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Gemelli', 'PIZZA', 7, 1, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PIZZA', 7, 1, 1, 1
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'mcmahon' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('north', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crispy Dijon Fish of the Day', 'SMART CHECK ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Chicken Fingers', 'ENTREES', 2, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegan Tempeh Ribs', 'ENTREES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Beans', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Potatoes', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sweet Potato Bar', 'SIDES', 3, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sweet Potato', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Corn Cobettes', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 4, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Sauce', 'GRILL ITEMS', 4, 0, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 4, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 4, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 4, 0, 0, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Patty Melt', 'GRILL ITEMS', 4, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Straight Cut French Fries', 'GRILL ITEMS', 4, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tomato Soup', 'GRILL ITEMS', 4, 1, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Pasta Du Jour', 'COMFORT LINE', 5, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 6, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'north' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-30', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Croissant', 'GRILL ITEMS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Eggs', 'GRILL ITEMS', 1, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fried Hash Brown Patties', 'COMFORT LINE', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Blueberry Bread', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Tofu', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Very Berry Topping', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bow Tie Pasta', 'PASTA STATION', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'German Vegetables', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pasta Primavera', 'PASTA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sour Dough Bread 18 oz.', 'PASTA STATION', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Tuscan Butter Salmon', 'PASTA STATION', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Cookie', 'DESSERTS', 4, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Country Chicken Noodle Soup', 'SOUPS', 5, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Eggplant Parmesan for Sandwich', 'GRILL ITEMS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 6, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Salmon Burger', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alabama BBQ Chicken', 'COMFORT LINE', 7, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cornbread', 'COMFORT LINE', 7, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranapple Barley Pilaf', 'COMFORT LINE', 7, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Garden Medley', 'COMFORT LINE', 7, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Herb Buttered Corn', 'COMFORT LINE', 7, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Sweet Potatoes', 'COMFORT LINE', 7, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoky Beans', 'COMFORT LINE', 7, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sesame Nuggets', 'PASTA STATION', 8, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burgundy', 'PASTA STATION', 8, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bow Tie Pasta', 'PASTA STATION', 8, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Steamed Spinach', 'PASTA STATION', 8, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Noodles', 'PASTA STATION', 8, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Rice', 'PASTA STATION', 8, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('northwest', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Country Chicken Noodle Soup', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Eggplant Parmesan for Sandwich', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Salmon Burger', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alabama BBQ Chicken', 'COMFORT LINE', 3, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cornbread', 'COMFORT LINE', 3, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cranapple Barley Pilaf', 'COMFORT LINE', 3, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Garden Medley', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Herb Buttered Corn', 'COMFORT LINE', 3, 0, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Sweet Potatoes', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Smoky Beans', 'COMFORT LINE', 3, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Sesame Nuggets', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burgundy', 'PASTA STATION', 4, 0, 0, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bow Tie Pasta', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Steamed Spinach', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sesame Noodles', 'PASTA STATION', 4, 1, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Rice', 'PASTA STATION', 4, 1, 1, 1
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 5, 0, 1, 0
FROM menus
WHERE location_id = 'northwest' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('putnam', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger w/ Bun', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beet and Kale Burger w/ Bun', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crinkle Cut Fries', 'GRILL ITEMS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 1, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 1, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs w/ Toasted Roll', 'GRILL ITEMS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Chicken Nuggets', 'COMFORT LINE', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bourbon Brown Sugar Salmon', 'COMFORT LINE', 2, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Crispy Buffalo Tofu', 'COMFORT LINE', 2, 1, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Roasted Carrots', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Macaroni & Cheese', 'COMFORT LINE', 2, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice Florentine', 'COMFORT LINE', 2, 0, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sauteed Corn & Bacon', 'COMFORT LINE', 2, 0, 0, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Steamed Broccoli', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sticky Rice', 'COMFORT LINE', 2, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Alfredo Sauce', 'PASTA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lite Pasta Primavera', 'PASTA STATION', 3, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 3, 1, 1, 1
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Wood Grilled Cheese Pizza', 'PIZZA STATION', 4, 0, 1, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'S''mores Bar', 'DESSERTS', 5, 0, 0, 0
FROM menus
WHERE location_id = 'putnam' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-30', 'breakfast');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'BREAKFAST ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'BREAKFAST ENTREES', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'BREAKFAST ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'BREAKFAST ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'BREAKFAST ENTREES', 1, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'SOUPS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Egg Sandwich Bar', 'GRILL ITEMS', 3, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal BBQ Chicken', 'HALAL', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Baked Beans', 'HALAL', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Seasoned White Rice', 'HALAL', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'COMFORT LINE', 5, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'COMFORT LINE', 5, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 5, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'COMFORT LINE', 5, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'COMFORT LINE', 5, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'COMFORT LINE', 5, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'COMFORT LINE', 5, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bagel Bar', 'INTERNATIONAL STATION', 6, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 7, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 8, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Cookie', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Blueberry Bread', 'DESSERTS', 9, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 10, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 11, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 11, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 11, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 11, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 11, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sweet Potato Fries', 'GRILL ITEMS', 11, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Biscuits', 'HALAL', 12, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hearty Beef Stew', 'HALAL', 12, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Plantains', 'COMFORT LINE', 13, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Blazin Red Fish', 'COMFORT LINE', 13, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Green Beans', 'COMFORT LINE', 13, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jamaican Beef Patty', 'COMFORT LINE', 13, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mediterranean Chick Peas and Tomatoes', 'COMFORT LINE', 13, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Yellow Rice w/ Pinto Beans', 'COMFORT LINE', 13, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Teriyaki Chicken', 'INTERNATIONAL STATION', 14, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'BBQ Sauce', 'OPTIONS', 15, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pulled Pork', 'OPTIONS', 15, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sidewinder Fries', 'OPTIONS', 15, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 16, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'breakfast';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-30', 'lunch');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Oatmeal Hot Cereal', 'SOUPS', 1, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Egg Sandwich Bar', 'GRILL ITEMS', 2, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal BBQ Chicken', 'HALAL', 3, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Baked Beans', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Seasoned White Rice', 'HALAL', 3, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Belgian Waffle', 'COMFORT LINE', 4, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheesy Scrambled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hard Boiled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Home Fries', 'COMFORT LINE', 4, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Plant-Based Breakfast Sausage', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pork Sausage Links', 'COMFORT LINE', 4, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Scrambled Eggs', 'COMFORT LINE', 4, 0, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bagel Bar', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'PASTA STATION', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cheese Pizza', 'PIZZA STATION', 7, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 7, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chocolate Chip Cookie', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Lemon Blueberry Bread', 'DESSERTS', 8, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'lunch';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('south', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Chef''s Choice Soup du Jour', 'SOUPS', 1, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beef Burger No Bun', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Cheese', 'GRILL ITEMS', 2, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 2, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Malibu Veggie Burger w/ Bun', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sweet Potato Fries', 'GRILL ITEMS', 2, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Biscuits', 'HALAL', 3, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Hearty Beef Stew', 'HALAL', 3, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Baked Plantains', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Blazin Red Fish', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Green Beans', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Jamaican Beef Patty', 'COMFORT LINE', 4, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mediterranean Chick Peas and Tomatoes', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Yellow Rice w/ Pinto Beans', 'COMFORT LINE', 4, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Teriyaki Chicken', 'INTERNATIONAL STATION', 5, 0, 0, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'BBQ Sauce', 'OPTIONS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pulled Pork', 'OPTIONS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Sidewinder Fries', 'OPTIONS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 7, 0, 1, 0
FROM menus
WHERE location_id = 'south' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('towers', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Marsala', 'SMART CHECK ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Creole Tofu', 'ENTREES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Fresh Steamed Baby Carrots', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Parsley Buttered Egg Noodles', 'SIDES', 3, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Red Petite Potatoes w/ Parsley', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Rice Florentine', 'SIDES', 3, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegetable Medley Grilled', 'SIDES', 3, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SAUCES & GRAVIES', 4, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'BAKERY', 5, 0, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Beyond Burger', 'GRILL ITEMS', 6, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Chicken Breast', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Grilled Hot Dogs', 'GRILL ITEMS', 6, 0, 0, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Shoestring Fries', 'GRILL ITEMS', 6, 1, 1, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Signature Beef Burger', 'GRILL ITEMS', 6, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Corn', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Cucumber Tomato Salad', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Potatoes Garlic', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pulled Chicken BBQ Sandwich', 'KOSHER', 7, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Vegetable Soup', 'KOSHER', 7, 1, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Halal Baked Meatloaf', 'HALAL', 8, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Mashed Red Potatoes with Garlic', 'HALAL', 8, 0, 1, 1
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Pepperoni Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Special Pizza', 'PIZZA STATION', 9, 0, 0, 0
FROM menus
WHERE location_id = 'towers' AND date = '2025-11-30' AND meal_period = 'dinner';

INSERT INTO menus (location_id, date, meal_period)
VALUES ('whitney', '2025-11-30', 'dinner');

INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Giant Meatballs', 'ENTREES', 1, 0, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Italian Tofu in White Wine Garlic Sauce', 'ENTREES', 1, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Parmesan Crusted Fish of the Day', 'ENTREES', 1, 0, 0, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'White Vegetable Lasagna', 'ENTREES', 1, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Bow Tie Pasta', 'SIDES', 2, 1, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Broccoli with Garlic & Lemon', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Husky Rolls', 'SIDES', 2, 1, 0, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Marinara Sauce', 'SIDES', 2, 1, 1, 1
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';
INSERT INTO menu_items (menu_id, name, station, station_order, is_vegan, is_vegetarian, is_gluten_free)
SELECT id, 'Confetti Cake', 'DESSERTS', 3, 0, 1, 0
FROM menus
WHERE location_id = 'whitney' AND date = '2025-11-30' AND meal_period = 'dinner';

COMMIT;

PRAGMA defer_foreign_keys = OFF;