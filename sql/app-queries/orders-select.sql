--- This query selects all the orders made by the currently logged in user
--- $1 is replaced with the currently logged in user's id
SELECT * from "order" where customer_id = $1 order by order_date desc;

--- These queries get the information (order info, shipment info and order contents) for a specific order.
--- The $1 is replaced by the provided order_id
SELECT "order".*, shipment.* from "order" inner join shipment on shipment.order_id = "order".id where "order".id = $1;
SELECT finances.quantity, book.title, book.price, book.isbn from "order" inner join finances on finances.order_id = "order".id inner join book on finances.isbn = book.isbn where "order".id = $1;