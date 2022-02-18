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
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SELECT * FROM animals;
SAVEPOINT animalsavepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
SELECT * FROM animals;
ROLLBACK TO SAVEPOINT animalsavepoint;
SELECT * FROM animals;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attemps = 0;
SELECT ROUND(AVG(weight_kg),2) FROM animals;
SELECT neutered, AVG(escape_attemps) FROM animals GROUP BY neutered;
SELECT name, escape_attemps FROM animals ORDER BY escape_attemps DESC LIMIT 1;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
AVG(escape_attemps) FROM animals WHERE date_of_birth >= '1990-01-01' AND date_of_birth <= '2000-12-31' GROUP BY species;

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon' ;

/* Write queries using JOIN*/

SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name ='Melody Pond';
SELECT * FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, animals.name FROM owners LEFT JOIN animals ON animals.owner_id = owners.id;
SELECT species.name, COUNT(*) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;
SELECT * FROM animals JOIN species ON animals.species_id = species.id JOIN owners ON animals.owner_id = owners.id WHERE species.name = 'Digimon' AND owners.full_name ='Jennifer Orwell';
SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id WHERE animals.escape_attemps = 0 AND owners.full_name = 'Dean Winchester';
SELECT owners.full_name FROM animals JOIN owners ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY COUNT(name) DESC LIMIT 1;


/*Write queries to answer the following*/

SELECT animals.name FROM vets JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id WHERE vets.name='William Tatcher'
ORDER BY visit_date DESC LIMIT 1;

SELECT count(animals.name) FROM vets JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id WHERE vets.name='Stephanie Mendez';
SELECT vets.name AS vet_name , species.name AS speciality FROM vets LEFT JOIN specializations ON vets.id = specializations.vets_id LEFT JOIN species ON species.id=specializations.species_id;

SELECT animals.name FROM vets JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id WHERE vets.name='Stephanie Mendez' AND visits.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

SELECT animals.name FROM animals JOIN visits ON animals.id=visits.animals_id GROUP BY animals.name ORDER BY count( animals.name ) DESC LIMIT 1;

SELECT animals.name FROM vets
JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id WHERE vets.name='Maisy Smith' ORDER BY visit_date LIMIT 1;

SELECT visits.visit_date AS latest_visit_date, animals.*, vets.name, vets.age, vets.date_of_graduation FROM vets JOIN visits ON visits.vets_id=vets.id
JOIN animals ON visits.animals_id=animals.id ORDER BY visit_date DESC LIMIT 1;

SELECT count(animals.name) as no_spec_visit_count FROM vets JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id
LEFT JOIN specializations ON specializations.vets_id = vets.id WHERE specializations.species_id IS NULL GROUP BY vets.name;

SELECT species.name FROM vets JOIN visits ON visits.vets_id=vets.id JOIN animals ON visits.animals_id=animals.id JOIN species ON animals.species_id=species.id
WHERE vets.name='Maisy Smith' GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;

