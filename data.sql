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


/* Insert the following data for vets */

INSERT INTO vets (name,age,date_of_graduation)
VALUES  ('William Tatcher',45,'2000-04-23'), ('Maisy Smith',26,'2019-01-17'), ('Stephanie Mendez',64,'1981-05-04'), ('Jack Harkness',38,'2008-06-08');

/* Insert the following data for specialties */

INSERT INTO specializations (vets_id,species_id)
VALUES  (1,1), (3,2), (3,1), (4,2);

/* Insert the following data for visits */

INSERT INTO visits (vets_id,animals_id,visit_date)
VALUES 
    (1,(SELECT id from animals where name = 'Agumon'),'2020-05-24'),
    (3,(SELECT id from animals where name = 'Agumon'),'2020-07-22'),
    (4,(SELECT id from animals where name = 'Gabumon'),'2021-02-02'),
    (2,(SELECT id from animals where name = 'Pikachu'),'2020-01-05'),
    (2,(SELECT id from animals where name = 'Pikachu'),'2020-03-08'),
    (2,(SELECT id from animals where name = 'Pikachu'),'2020-05-14'),
    (3,(SELECT id from animals where name = 'Devimon'),'2021-05-04'),
    (4,(SELECT id from animals where name = 'Charmander'),'2021-02-24'),
    (2,(SELECT id from animals where name = 'Plantmon'),'2019-12-21'),
    (1,(SELECT id from animals where name = 'Plantmon'),'2020-08-10'),
    (2,(SELECT id from animals where name = 'Plantmon'),'2021-04-07'),
    (3,(SELECT id from animals where name = 'Squirtle'),'2019-09-29'),
    (4,(SELECT id from animals where name = 'Angemon'),'2020-10-03'),
    (4,(SELECT id from animals where name = 'Angemon'),'2020-11-04'),
    (2,(SELECT id from animals where name = 'Boarmon'),'2019-01-24'),
    (2,(SELECT id from animals where name = 'Boarmon'),'2019-05-15'),
    (2,(SELECT id from animals where name = 'Boarmon'),'2020-02-27'),
    (2,(SELECT id from animals where name = 'Boarmon'),'2020-08-03'),
    (3,(SELECT id from animals where name = 'Blossom'),'2020-05-24'),
    (1,(SELECT id from animals where name = 'Blossom'),'2021-01-11');


