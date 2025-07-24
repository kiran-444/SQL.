CREATE DATABASE book_shop;
USE  book_shop;
show tables;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

DESC books;

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM books;

# CONCAT

SELECT CONCAT('Hello', '...', 'World');

SELECT CONCAT(author_fname, ' ',author_lname ) AS 'fullname' FROM books;

SELECT  author_fname AS 'first',author_lname AS 'last' , CONCAT(author_fname, ' ',author_lname ) AS 'fullname' FROM books;

SELECT CONCAT_WS( '-', title, author_fname, author_lname) AS'Full Details' FROM books;

# SUBSTRING

SELECT SUBSTRING('HELLO WORLD', 1 , 4);

SELECT SUBSTRING('HELLO WORLD', 7);

SELECT SUBSTRING('HELLO WORLD', -5);

-- SELECT SUBSTRING('Where I'm Calling From: Selected Stories', 1, 10));

SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);

SELECT  CONCAT(SUBSTRING(title, 1, 10), '...') AS 'Short title' FROM books;

# REPLACE

SELECT REPLACE('HELLO WORLD', 'HELLO', 'WORLD') AS 'REPLACE ';

SELECT REPLACE('HELLO WORLD', 'L' ,'7') AS 'REPLACE';

SELECT REPLACE('HELLO WORLD', ' ' ,' AND ') AS 'REPLACE';

SELECT REPLACE(title, 'e', 'o') AS 'REPLACED TITLE'FROM books;

SELECT SUBSTRING(REPLACE(title, 'o', 'e'), 1, 11) AS 'REPLACED TITLE'FROM books;

# REVERSE

SELECT REVERSE('MEWO MEWO');

SELECT CONCAT('WOOF', REVERSE('FOOW')) AS 'PALINDROME NAME';

# CHAR_LENGTH

SELECT CHAR_LENGTH('HELLO WORLD') AS 'CHAR-LENGTH';

SELECT author_fname  , CHAR_LENGTH(author_fname) AS 'CHAR-LENGTH' FROM books;

# UPPER AND LOWER

SELECT UPPER('helll');
SELECT LOWER('HelLelll');

SELECT CONCAT('MY FAV BOOK IS:' , UPPER(title)) AS 'UPPER CASE' FROM books;

-- EXCERCISES

SELECT UPPER( REVERSE('Why does my cat look at me with such hatred?')) AS 'ANSWER';

SELECT REPLACE(title, ' ', '->') AS 'Title' FROM books;

SELECT author_lname  AS 'forwards' , REVERSE(author_lname) AS backwards   FROM books;

SELECT CONCAT(author_fname , ' ', author_lname) AS Fullname FROM books;

SELECT CONCAT(title , 'was released in ', released_year) AS FullDetails FROM books;

SELECT 
CONCAT( SUBSTRING(title , 1 , 10) , '...') AS 'short title' ,
CONCAT(author_lname , ',', author_fname) AS 'author' , 
CONCAT(stock_quantity , ' in stock') AS 'quantity'
 FROM books;


SELECT title AS 'Title' , char_length(title) AS 'Character count ' FROM books;
 
