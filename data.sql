/* Populate database with animals data. */

-- Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020-02-03', 0, true, 10.23);
-- Animal: Her name is Gabumon. She was born on Nov 15th, 2018, and currently weighs 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15', 2, true, 8.0);
-- Animal: His name is Pikachu. He was born on Jan 7th, 2021, and currently weighs 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);
--Animal: Her name is Devimon. She was born on May 12th, 2017, and currently weighs 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017-05-12', 5, true, 11.0);
-- Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, false, -11.0);
-- Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2022-11-15', 2, true, -5.70);
-- Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', '1993-04-02', 3, false, -12.13);
-- Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', '2005-06-12', 1, true, -45.00);
-- Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', '2005-06-07', 7, true, 20.40);
-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', '1998-10-13', 3, true, 17.0);


-- Insert the following data into the owners table:
-- Sam Smith 34 years old.
-- Jennifer Orwell 19 years old.
-- Bob 45 years old.
-- Melody Pond 77 years old.
-- Dean Winchester 14 years old.
-- Jodie Whittaker 38 years old.
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

-- Insert the following data into the species table:
-- Pokemon
-- Digimon
INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

-- Modify your inserted animals so it includes the species_id value:
-- If the name ends in "mon" it will be Digimon
-- All other animals are Pokemon
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE name NOT LIKE '%mon';

-- Sam Smith owns Agumon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';

-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name = 'Gabumon' OR name = 'Pikachu';

-- Bob owns Devimon and Plantmon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name = 'Devimon' OR name = 'Plantmon';

-- Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

-- Dean Winchester owns Angemon and Boarmon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name = 'Angemon' OR name = 'Boarmon';

-- Vet William Tatcher is 45 years old and graduated Apr 23rd, 2000
INSERT INTO vets (name, age, date_of_graduation) VALUES ('William tatcher', 45, '2000-04-23');

-- Vet Maisy Smith is 26 years old and graduated Jan 17th, 2019
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');

-- Vet Stephanie Mendez is 64 years old and graduated May 4th, 1981
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');

-- Vet Jack Harkness is 38 years old and graduated Jun 8th, 2008
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (species_id, vet_id) VALUES (1, 1);

INSERT INTO specializations (species_id, vet_id) VALUES (1, 3);

INSERT INTO specializations (species_id, vet_id) VALUES (2, 3);

-- Agumon visited William Tatcher on May 24th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (1, 1, '2020-05-24');
-- Agumon visited Stephanie Mendez on Jul 22th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (1, 3, '2020-07-22');
-- Gabumon visited Jack Harkness on Feb 2nd, 2021.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (2, 4, '2021-02-02');
-- Pikachu visited Maisy Smith on Jan 5th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (5, 2, '2020-01-05');
-- Pikachu visited Maisy Smith on Mar 8th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (5, 2, '2020-03-08');
-- Pikachu visited Maisy Smith on May 14th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (5, 2, '2020-05-14');
-- Devimon visited Stephanie Mendez on May 4th, 2021.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (3, 3, '2021-05-04');
-- Charmander visited Jack Harkness on Feb 24th, 2021.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (8, 4, '2021-02-24');
-- Plantmon visited Maisy Smith on Dec 21st, 2019.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 2, '2019-12-21');
-- Plantmon visited William Tatcher on Aug 10th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 1, '2020-08-10');
-- Plantmon visited Maisy Smith on Apr 7th, 2021.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 1, '2020-08-10');
-- Squirtle visited Stephanie Mendez on Sep 29th, 2019.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 2, '2021-04-07');
-- Angemon visited Jack Harkness on Oct 3rd, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 3, '2019-09-29');
-- Angemon visited Jack Harkness on Nov 4th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (7, 4, '2020-10-03');
-- Boarmon visited Maisy Smith on Jan 24th, 2019.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (7, 4, '2020-11-04');
-- Boarmon visited Maisy Smith on May 15th, 2019.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (4, 2, '2019-05-15');
-- Boarmon visited Maisy Smith on Feb 27th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (4, 2, '2020-02-27');
-- Boarmon visited Maisy Smith on Aug 3rd, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (4, 2, '2020-08-03');
-- Blossom visited Stephanie Mendez on May 24th, 2020.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 3, '2020-05-24');
-- Blossom visited William Tatcher on Jan 11th, 2021.
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 1, '2021-01-11');