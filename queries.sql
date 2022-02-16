/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-30';
SELECT * FROM animals WHERE neutered = true AND escape_attemps < 3;
SELECT date_of_birth From animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attemps FROM animals WHERE weight_kg >10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <>'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species ='';
COMMIT;

BEGIN
vet_clinic=*# delete from animals;
DELETE 11
ROLLBACK;

BEGIN
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT animalsavepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT animalsavepoint;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attemps = 0;
SELECT ROUND(AVG(weight_kg),2) FROM animals;
SELECT name, escape_attemps FROM animals ORDER BY escape_attemps DESC LIMIT 1;
SELECT MAX(weight_kg) FROM animals WHERE species = 'digimon';
SELECT Min(weight_kg) FROM animals WHERE species = 'digimon';
SELECT Min(weight_kg) FROM animals WHERE species = 'pokemon';
SELECT Max(weight_kg) FROM animals WHERE species = 'pokemon';
SELECT AVG(escape_attemps) FROM animals WHERE (date_of_birth BETWEEN '1990-01-01' AND '2000-01-01') AND (species = 'pokemon');
SELECT AVG(escape_attemps) FROM animals WHERE (date_of_birth BETWEEN '1990-01-01' AND '2000-01-01') AND (species = 'digimon');

