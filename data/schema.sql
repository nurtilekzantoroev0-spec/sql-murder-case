CREATE TABLE person (
    person_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address_street_name TEXT,
    address_number INTEGER
);

CREATE TABLE north_witness (
    witness_id INTEGER PRIMARY KEY,
    person_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

CREATE TABLE interview (
    interview_id INTEGER PRIMARY KEY,
    person_id INTEGER NOT NULL,
    transcript TEXT,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);
