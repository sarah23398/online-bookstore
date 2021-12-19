--- This query retrieves the sales by genre report
--- $numbers are replaced by dates (optionally if owner chose custom report)
SELECT genre.name, SUM(book.price*finances.quantity)
  FROM genre
  INNER JOIN "contains" ON "contains".genre_id = genre.id
  INNER JOIN book on "contains".ISBN = book.ISBN
  INNER JOIN finances ON finances.ISBN = book.ISBN
  --- This section is optional, depending on if the owner selected a custom report with date range
  INNER JOIN "order" on finances.order_id = "order".id
  WHERE "order".order_date BETWEEN $1 AND $2
  --- END of optional section
  GROUP BY genre.name;

--- This query retrieves the sales by author report
--- $numbers are replaced by dates (optionally if owner chose custom report)
  SELECT author.name, SUM(book.price*finances.quantity)
  FROM written_by
  INNER JOIN author ON written_by.author_id = author.id
  INNER JOIN book ON book.ISBN = written_by.ISBN
  INNER JOIN finances on finances.ISBN = written_by.ISBN
  --- This section is optional, depending on if the owner selected a custom report with date range
  INNER JOIN "order" on finances.order_id = "order".id
  WHERE "order".order_date BETWEEN $1 AND $2 AND
  --- END of optional section
  book.ISBN = written_by.ISBN
  GROUP BY author.name;

--- This query retrieves the sales vs expenditures report based on sales per publisher and publisher fees
--- $numbers are replaced by dates (optionally if owner chose custom report)
SELECT publisher_name as publisher, SUM(publisher_earnings) as publisher_earnings, SUM(sales) as sales ,SUM(revenue) as net_revenue FROM (SELECT 
    publisher.name as publisher_name, 
    ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2) AS publisher_earnings, 
    SUM(book.price*finances.quantity) AS sales,
    SUM(book.price*finances.quantity)-(ROUND((book.publisher_fee*(SUM(book.price*finances.quantity))/100),2)) AS revenue
    FROM publisher
    INNER JOIN book on publisher.id = book.publisher_id
    INNER JOIN finances on finances.ISBN = book.ISBN
    --- This section is optional, depending on if the owner selected a custom report with date range
    INNER JOIN "order" on finances.order_id = "order".id
    WHERE "order".order_date BETWEEN $1 AND $2
    --- END of optional section
    GROUP BY publisher.name, 
    book.publisher_fee) as earnings_per_book group by publisher_name

