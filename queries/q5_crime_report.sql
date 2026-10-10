SELECT city, date, description
FROM crime_scene_report
WHERE city = 'SQL City'
  AND date = '20180115'
  AND type = 'murder';
