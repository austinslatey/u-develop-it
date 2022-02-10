DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;

CREATE TABLE parties (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);

CREATE TABLE candidates (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  party_id INTEGER,
  industry_connected BOOLEAN NOT NULL,
  CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);


/*mysql -u root -p
source db/db.sql;
source db/schema.sql;
source db/seeds.sql;


  --MAKE SURE TO ORDER CORRECTLY
ALTER TABLE candidates ADD COLUMN party_id INTEGER;
This statement allows you to add a new field, 
delete an existing field, or modify a field.

SELECT candidates.*, parties.name AS party_name
    -> FROM candidates
    -> LEFT JOIN parties ON candidates.party_id = parties.id;