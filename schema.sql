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
