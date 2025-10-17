/*

-- women writers by tag id and tag name?

SELECT 
tags.tag_id,
tags.tag_name,
COUNT(book_tags.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS tags
INNER JOIN BooksDB.dbo.book_tags AS book_tags
ON tags.tag_id = book_tags.tag_id
GROUP BY tags.tag_id, tags.tag_name
HAVING tags.tag_name like '%women%' 
OR tags.tag_name like '%female%'
OR tags.tag_name like '%woman%'
ORDER BY tag_count DESC;



SELECT 
books.authors,
books.title,
books.average_rating,
tags.tag_id
FROM BooksDB.dbo.tags AS tags
INNER JOIN BooksDB.dbo.book_tags AS book_tags
ON tags.tag_id = book_tags.tag_id
INNER JOIN BooksDB.dbo.books AS books
ON book_tags.goodreads_book_id = books.best_book_id
WHERE tags.tag_name like '%St.Patrick%' OR tags.tag_name like '%Ireland%' or tags.tag_name like '%Irish%' or tags.tag_name like '%luck%' 
GROUP BY tags.tag_id, tags.tag_name
HAVING tags.tag_name like '%women%' 
OR tags.tag_name like '%female%'
OR tags.tag_name like '%%'



SELECT 
tags.tag_id,
tags.tag_name,
COUNT(book_tags.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS tags
FULL JOIN BooksDB.dbo.book_tags AS book_tags
ON tags.tag_id = book_tags.tag_id
GROUP BY tags.tag_id, tags.tag_name
HAVING tags.tag_name like '%women%' 
OR tags.tag_name like '%female%'
OR tags.tag_name like '%woman%'
ORDER BY tag_count DESC;


-- return authors, titles, ratings and Tag_id for books only with keywords 'pie', 'pie day', 'pi day'. 
SELECT 
    books.title,
    books.authors,
    books.average_rating,
    book_tags.tag_id,
    tags.tag_name
FROM BooksDB.dbo.books AS books
JOIN BooksDB.dbo.book_tags AS book_tags
ON books.best_book_id = book_tags.goodreads_book_id
JOIN BooksDB.dbo.tags AS tags
ON book_tags.tag_id = tags.tag_id
WHERE tags.tag_name = 'pie' OR tags.tag_name = 'pie day' OR tags.tag_name = 'baking' 
 

 

-- return book titles for month of june related to fathers day or juneteenth using having clause. 
SELECT 
    books.title,
    books.average_rating,
    book_tags.tag_id,
    tags.tag_name
FROM BooksDB.dbo.books AS books
JOIN BooksDB.dbo.book_tags AS book_tags
JOIN BooksDB.dbo.tags AS tags
ON book_tags.tag_id = tags.tag_id
GROUP BY tags.tag_id, tags.tag_name, books.title, books.average_rating
HAVING (tags.tag_name like '%fathers day%' OR tags.tag_name like '%juneteenth%')


-- return authors, titles, ratings and Tag_id for books only with keywords 'fathers day', 'juneteenth'.

SELECT 
    books.title,
    books.authors,
    books.average_rating,
    book_tags.tag_id,
    tags.tag_name
FROM BooksDB.dbo.books AS books
JOIN BooksDB.dbo.book_tags AS book_tags
ON books.best_book_id = book_tags.goodreads_book_id
JOIN BooksDB.dbo.tags AS tags
ON book_tags.tag_id = tags.tag_id
WHERE tags.tag_name like '%fathers day%' OR tags.tag_name like '%juneteenth%' OR tags.tag_name = 'dad'
GROUP BY 
    books.title, 
    books.authors, 
    books.average_rating, 
    book_tags.tag_id,
    tags.tag_name
    HAVING 
    COUNT(tags.tag_id) >= 1
 
 