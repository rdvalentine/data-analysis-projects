SELECT b.title, b.original_title, b.average_rating
FROM BooksDB.dbo.books AS b
WHERE b.title = b.original_title
AND b.average_rating >= 4.2
ORDER BY b.average_rating DESC