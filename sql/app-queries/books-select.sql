--- This query selects all the books or all that apply to the search results
--- The $numbers are replaced with values specified by the user
--- Each clause (joins, wheres, ands) is dynamically added accordingly to what the user has entered in the search parameters
SELECT DISTINCT book.* from book 
--- this section is optional for if the user has search parameters specified
INNER JOIN publisher ON book.publisher_id = publisher.id
INNER JOIN "contains" ON book.ISBN = "contains".ISBN
INNER JOIN written_by on book.isbn = written_by.isbn INNER JOIN author on written_by.author_id = author.id WHERE author.name ilike '%' || $1 || '%' 
AND book.TITLE ILIKE '%' || $2 || '%' 
AND book.ISBN ILIKE '%' || $3 || '%' 
AND "contains".genre_id = $4
publisher.name ILIKE '%' || $5 || '%'
--- END of optional section
;

--- This query selects the recommendations for a specific customer
--- The recommendations are determined based on ratings, genres and what the user has already reviewed
SELECT DISTINCT book.* from book
        INNER JOIN "contains" ON book.isbn = "contains".isbn
        INNER JOIN genre ON "contains".genre_id = genre.id
        WHERE genre.name IN
        (SELECT DISTINCT genre.name from rating
        INNER JOIN book ON rating.isbn = book.isbn
        INNER JOIN "contains" ON book.isbn = "contains".isbn
        INNER JOIN genre on "contains".genre_id = genre.id
        WHERE rating > 3
        AND customer_id = $1)
        AND book.isbn NOT IN 
		    (SELECT isbn FROM rating
		    WHERE customer_id = $1) LIMIT 4;

--- These queries select all genres, publishers and authors to populate the dropdown
SELECT * from genre;
SELECT * from publisher;
SELECT * from author;


--- This query selects information on a specific book with the isbn provided by the user
--- It selects the book, the publisher, the authors, the genres and the ratings for that book.
--- $1 is replaced with the provided ISBN
SELECT book.*, publisher.name as "publisher" from book inner join publisher on book.publisher_id = publisher.id where isbn = $1
SELECT * from written_by inner join author on written_by.author_id = author.id
    where written_by.isbn = $1;
SELECT * from "contains" inner join genre on "contains".genre_id = genre.id
        where "contains".isbn = $1
SELECT rating.*, customer.name as "customer" from rating
        INNER JOIN customer on rating.customer_id = customer.id
        WHERE isbn = $1 ORDER BY rating.review_date desc