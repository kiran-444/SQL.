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

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages) 
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
('fake_book', 'Freida', 'Harris', 2001, 287, 428), 
('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT * FROM books;

-- DISTINCT

SELECT author_lname FROM books;

SELECT DISTINCT author_lname FROM books;

SELECT released_year FROM books;

SELECT DISTINCT released_year FROM books;

-- ORDER BY 

SELECT  author_fname FROM books ORDER BY  author_fname;
SELECT  title FROM books ORDER BY  title;
-- ASCENDING BY DEFAULT

SELECT  title FROM books ORDER BY  title DESC;
-- DESCENDING ORDER

SELECT released_year FROM books;
SELECT released_year FROM books ORDER BY released_year;
SELECT released_year FROM books ORDER BY released_year DESC;

SELECT title, released_year, pages FROM books ORDER BY released_year;
SELECT title, pages FROM books ORDER BY released_year;

-- Short cuts

SELECT title, author_fname, author_lname FROM books ORDER BY 2;
SELECT title, released_year FROM books ORDER BY 2;

-- LIMIT

SELECT title FROM books LIMIT 3;
SELECT * FROM books LIMIT 1;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 6;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5, 1;

-- LIKE

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

SELECT title FROM books WHERE title LIKE '%the%';
SELECT title FROM books WHERE title LIKE 'the%';
SELECT title FROM books WHERE title LIKE '%the';

-- ____

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';

SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';

-- EXCERSISES

SELECT title FROM books WHERE title LIKE '%stories%';

SELECT CONCAT(title , ' - ', released_year) AS SUMMARY FROM  books ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %' ;

SELECT title, released_year, stock_quantity from books ORDER BY stock_quantity LIMIT 3;

SELECT title, author_lname FROM books ORDER BY author_lname, title;

SELECT CONCAT( 'MY FAV ACTOR IS', ' ', UPPER(author_lname), '!') AS YELL FROM books ORDER BY author_lname;