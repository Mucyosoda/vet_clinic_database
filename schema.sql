/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
/* Create tables. */
CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEy,
    name VARCHAR(150) NOT NULL,
	date_of_birth DATE NOT NULL, 
	escape_attemps INT,
	neutered BOOLEAN NOT NULL,
	weight_kg DECIMAL NOT NULL
);

ALTER TABLE animals ADD species VARCHAR(50);

CREATE TABLE owners ( id INT PRIMARY KEY, full_name VARCHAR(50), age INT);
CREATE TABLE species ( id INT PRIMARY KEY, name VARCHAR(50));
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id BIGINT REFERENCES species (id);
ALTER TABLE animals ADD COLUMN owner_id BIGINT REFERENCES owners (id);



CREATE TABLE vets (id SERIAL PRIMARY KEY NOT NULL, name varchar(100) NOT NULL, age INT, date_of_graduation DATE NOT NULL);

CREATE TABLE specializations (vets_id INT, species_id INT, CONSTRAINT vets_id FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT species_id FOREIGN KEY(species_id) REFERENCES species(id));


CREATE TABLE visits (vets_id INT, visit_date DATE, animals_id INT, CONSTRAINT vets_id FOREIGN KEY(vets_id) REFERENCES vets(id),
    CONSTRAINT animals_id FOREIGN KEY(animals_id) REFERENCES animals(id);

    

