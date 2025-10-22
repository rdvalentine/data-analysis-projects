-- select top 1000
SELECT TOP 1000 *
FROM dbo.books


-- Count the number of titles
SELECT COUNT(title) AS NumberOfTitles
FROM dbo.books
no only 1000 :) 


-- Count the number of books published before 1800
SELECT COUNT(*) AS BooksBefore1800
FROM dbo.books
WHERE original_publication_year < 1800; 
  

SELECT distinct authors
FROM dbo.books 


SELECT COUNT(*) AS "english books"
FROM dbo.books
WHERE language_code = 'eng'
OR language_code = 'en-'; 


SELECT distinct title
FROM dbo.books
WHERE original_publication_year > 1914 and original_publication_year < 1921;


SELECT TOP 1000 *
FROM tags
ORDER BY tag_id;


SELECT goodreads_book_id, count(*)
FROM dbo.book_tags
GROUP BY dbo.book_tags.goodreads_book_id
ORDER BY goodreads_book_id;


SELECT goodreads_book_id, count(*) AS 'good reads'
FROM dbo.book_tags
GROUP BY dbo.book_tags.goodreads_book_id
ORDER BY goodreads_book_id; 

