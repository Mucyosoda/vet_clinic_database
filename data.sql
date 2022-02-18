/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Agumon', '2020-02-03', 10.23, true, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Gabumon', '2018-11-15', 8, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Pikachu', '2021-01-07', 15.04, false, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Devimon', '2017-05-12', 11, true, 5);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Charmander', '2020-02-08', -11, false, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Plantmon', '2022-11-15', -5.7, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Squitrtle', '1993-04-02', -12.13, false, 3);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Angemon', '2005-06-12', -45, true, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Boarmon', '2005-06-07', 20.4, true, 7);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Blossom', '1998-10-13', 17, true, 3);

INSERT INTO owners (id, full_name, age) VALUES (1, 'Sam Smith',34);
INSERT INTO owners (id, full_name, age) VALUES (2, 'Jennifer Orwell',19);
INSERT INTO owners (id, full_name, age) VALUES (3, 'Bob',45);
INSERT INTO owners (id, full_name, age) VALUES (4, 'Melody Pond',77);
INSERT INTO owners (id, full_name, age) VALUES (5, 'Dean Winchester',14);
INSERT INTO owners (id, full_name, age) VALUES (6, 'Jodie Whittaker',38);
INSERT INTO species (id, name) VALUES (1, 'Pokemon');
INSERT INTO species (id, name) VALUES (2, 'Digimon');

/* Modify your inserted animals to include owner information*/

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squitrtle' OR name ='Blossom';
UPDATE animals SET owner_id = 4 WHERE name = 'Angemon' OR name = 'Boarmon';
