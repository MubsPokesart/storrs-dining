-- scripts/seed-locations.sql

INSERT INTO locations (id, name, slug, location_name, has_late_night, is_active) VALUES
  ('south',       'South',       'south',       'South Campus Marketplace', 1, 1),
  ('northwest',   'Northwest',   'northwest',   'Northwest Dining Hall',    1, 1),
  ('mcmahon',     'McMahon',     'mcmahon',     'McMahon Dining Hall',      0, 1),
  ('putnam',      'Putnam',      'putnam',      'Putnam Refectory',         0, 1),
  ('whitney',     'Whitney',     'whitney',     'Whitney Dining Hall',      0, 1),
  ('north',       'North',       'north',       'North Campus Dining Hall', 0, 1),
  ('towers',      'Towers',      'towers',      'Gelfenbien Dining Hall',   0, 1),
  ('connecticut', 'Connecticut', 'connecticut', 'Connecticut Dining Hall',  0, 1)
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  location_name = EXCLUDED.location_name,
  has_late_night = EXCLUDED.has_late_night;
