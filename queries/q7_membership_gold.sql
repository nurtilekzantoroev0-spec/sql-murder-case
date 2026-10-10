SELECT person_id, membership_status, name, id AS gym_card_id
FROM get_fit_now_member
WHERE id LIKE '48Z%'
  AND membership_status = 'gold';
