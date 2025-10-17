A:
USE BooksDB
SELECT TOP 10
LEN(title) AS number_of_characters
FROM books
ORDER BY number_of_characters DESC

B:
USE BooksDB
SELECT TOP 2
title
FROM books
WHERE LEN(title) = 186


SELECT TOP 1
LEN(authors) AS char_len_of_authors,
authors
FROM books
GROUP BY authors
ORDER BY LEN(authors)



USE BooksDB
SELECT
COUNT(title) AS number_of_thes
FROM books
WHERE title LIKE '%the%'



USE BooksDB
SELECT
COUNT(DISTINCT authors) AS number_of_authors_whos_name_starts_with_z
FROM books
WHERE authors LIKE 'Z%'



USE BooksDB
SELECT 
COUNT(title) AS non_english_books
FROM books                  
WHERE LEFT(language_code, 2) != 'en'here:


USE BooksDB
SELECT
COUNT(title) AS non_english_books
FROM books
WHERE SUBSTRING(language_code, 1, 2) != 'en'
--186 


USE BooksDB
SELECT 
title+' by '+ authors + ' in ' + language_code AS book_name_with_info
FROM books
WHERE language_code IS NULL


USE BooksDB
SELECT
title + ' by ' + authors + ' in ' + COALESCE(language_code,'an unknown') + ' language.' AS book_name_with_info
FROM books


USE BooksDB
SELECT
title + ' by ' + authors + ' in ' + ISNULL(language_code,'an unknown') + ' language.' AS book_name_with_info
FROM books
WHERE language_code IS NULL
--A: Yes 

