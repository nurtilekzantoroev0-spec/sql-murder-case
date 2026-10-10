SELECT
    cr.description AS crime_context,
    nw.name AS key_witness,
    jer.transcript AS jeremy_description_of_client,
    m.name AS suspect_name,
    m.gym_card_id AS gym_card_number,
    m.membership_status AS gym_status,
    pm.name AS mastermind_name
FROM crime_scene_report cr
CROSS JOIN (
    SELECT name
    FROM person
    WHERE address_street_name = 'Northwestern Dr'
    ORDER BY address_number DESC
    LIMIT 1
) AS nw
CROSS JOIN (
    SELECT name
    FROM person
    WHERE id = 99716
) AS pm
CROSS JOIN (
    SELECT transcript
    FROM interview
    WHERE person_id = 67318
) AS jer
JOIN get_fit_now_member m ON m.person_id = jer.person_id
WHERE cr.city = 'SQL City'
  AND cr.date = '20180115'
  AND cr.type = 'murder'
  AND m.id LIKE '48Z%'
  AND m.membership_status = 'gold';
