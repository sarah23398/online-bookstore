--- This statement inserts a specific book to the database when the owner adds a book with its author and genre information.
--- It adds the information provided by the owner
--- The $numbers are replaced by information provided by the owner
INSERT INTO book (isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10);
INSERT INTO written_by (author_id, isbn) VALUES ($1, $2);
INSERT INTO "contains" (genre_id, isbn) VALUES ($1, $2);

--- This statement adds a user review to the database
--- The $numbers are replaced by the information provided by the user
INSERT INTO rating(customer_id, isbn, rating, review, review_date) VALUES ($1, $2, $3, $4, NOW());

--- This statement deletes a specific book from the database when done so by the owner.
--- Since the foreign keys are setup to be cascade delete, the appropriate contains and written_by tables also get deleted accordingly.
DELETE FROM book WHERE isbn = $1;