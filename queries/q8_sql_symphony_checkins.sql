SELECT person_id, event_name, date
FROM facebook_event_checkin 
WHERE event_name = 'SQL Symphony Concert'
  AND date BETWEEN '20171201' AND '20171231'  
GROUP BY person_id
HAVING COUNT(*) = 3;
