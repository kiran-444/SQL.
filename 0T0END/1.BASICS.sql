SHOW DATABASES;

CREATE DATABASE test_db;
DROP DATABASE test_db;

DROP DATABASE college;

CREATE DATABASE shop_app;
USE shop_app;
SELECT database();

DROP DATABASE shop_app;
SELECT database();

CREATE DATABASE cat_app;

USE cat_app;

CREATE TABLE cats (
name VARCHAR(100),
age INT
);

SHOW TABLES;

SHOW COLUMNS FROM cats;
DESC cats;

DROP TABLE cats;








 
 