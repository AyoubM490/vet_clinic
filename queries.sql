/* Find all animals whose name ends in "mon".*/

SELECT *
FROM animals
WHERE name LIKE '%mon'

-- List the name of all animals born between 2016 and 2019
SELECT *
FROM animals
WHERE date_of_birth between '2016/01/01' and '2019/01/01'

-- List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT *
FROM animals
WHERE neutered neutered=1 and escape_attempts < 3

-- List date of birth of all animals named either "Agumon" or "Pikachu"
SELECT date_of_birth
FROM animals
WHERE neutered name="Agumon" or name="Pikachu"

-- List name and escape attempts of animals that weight more than 10.5kg
SELECT name,escape_attempts
FROM animals
WHERE weight>10.5

-- Find all animals that are neutered.
SELECT *
FROM animals
WHERE neutered neutered=1

-- Find all animals not named Gabumon.
SELECT *
FROM animals
WHERE neutered neutered=1

-- Find all animals not named Gabumon
SELECT *
FROM animals
WHERE name="Gabumon"

-- Find all animals with a weight between 10.4kg and 17.3kg
-- (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT *
FROM animals
WHERE weight>=10.4 and weight<=17.3