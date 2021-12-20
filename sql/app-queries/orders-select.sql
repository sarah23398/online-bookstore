--- This query selects all the orders made by the currently logged in customer
--- $1 is replaced with the currently logged in customer's id
SELECT * from "order" where customer_id = $1 order by order_date desc;

--- These queries get the information (order info, shipment info and order contents) for a specific order.
--- The $1 is replaced by the provided order_id
SELECT "order".*, shipment.* from "order" inner join shipment on shipment.order_id = "order".id where "order".id = $1;
SELECT finances.quantity, book.title, book.price, book.isbn from "order" inner join finances on finances.order_id = "order".id inner join book on finances.isbn = book.isbn where "order".id = $1;

--- This query checks if an order id exists
--- the $1 and $2 is replaced with the current logged in customer and what they entered for the order id
SELECT EXISTS(SELECT 1 FROM "order" WHERE id = $1 AND customer_id= $2);