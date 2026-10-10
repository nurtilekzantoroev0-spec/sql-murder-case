-- Сначала главная таблица: люди (person)
INSERT INTO person (person_id, name, address_street_name, address_number)
VALUES
    (1, 'Jeremy Bowers', 'Northwestern Dr', 2860),
    (2, 'Joe Germuska', 'Franklin Ave', 1234),
    (3, 'Lily Whittaker', 'Main St', 567);

-- Потом свидетели (north_witness) — ссылаемся на person_id из person
INSERT INTO north_witness (witness_id, person_id, name)
VALUES
    (101, 1, 'Jeremy Bowers'),
    (102, 3, 'Lily Whittaker');

-- Потом допросы (interview) — тоже по person_id
INSERT INTO interview (interview_id, person_id, transcript)
VALUES
    (501, 1, 'Я видел тёмную машину у дома около 22:00.'),
    (502, 2, 'Ничего подозрительного не заметил.'),
    (503, 3, 'Слышал громкий спор вечером.');
