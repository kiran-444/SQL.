USE cat_app;

# CRUD OPERATIONS

# C-Create

CREATE TABLE cats1(
cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
breed VARCHAR(20),
age INT
);

INSERT INTO cats1
(name, breed, age)
VALUES
('Ringo', 'Tabby', 4),
('Cindy', 'Maine coon', 10),
('Dumbledoor', 'Maine coon', 15),
('Misty', 'Tabby', 3),
('Geroge', 'Ragdoll', 9),
('Jackson', 'Sphynx', 6);

INSERT INTO cats1
(name, breed, age)
VALUES
('Mingo', 'Tabby', 4);

# R-Read

SELECT * FROM cats1;

SELECT * FROM cats1 WHERE age =4;
SELECT * FROM cats1 WHERE breed = 'Tabby';
SELECT * FROM cats1 WHERE breed = 'TABBY';

SELECT cat_id FROM cats1;

SELECT name, breed FROM cats1;

SELECT name, age FROM cats1 WHERE breed = 'Tabby';

SELECT * FROM cats1;

SELECT cat_id, age FROM cats1 WHERE cat_id = age;

-- Aliasing --

SELECT cat_id AS id , name AS cat_names FROM cats1;

DESC cats1;

# U-Update

UPDATE cats1 SET breed = 'Shorthair'
WHERE breed = 'Tabby';

SELECT breed FROM cats1;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM cats1;

UPDATE cats1 SET name ='Ringaa'
WHERE name ='Ringo';

SELECT name FROM cats1;

UPDATE cats1 SET breed='British Shorthair'
WHERE name ='Ringaa';

SELECT name, breed FROM cats1;

UPDATE cats1 SET age = 12
WHERE breed='Maine coon';

# D-Delete

DELETE FROM cats1 WHERE name='Mingo';

SELECT * FROM cats1;
DELETE FROM cats1 WHERE name='Misty';

DELETE FROM cats1 where age=12;

SELECT * FROM cats1;

DELETE from cats1;
SELECT * FROM cats1;
