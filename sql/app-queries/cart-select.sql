--- This query selects the information for the books in the customer's cart.
--- $1 is replaced with the array of books stored in the customer's cart.
SELECT isbn, title, price from book where isbn = ANY($1);

--- This query selects the user's credit_card and address to populate those fields at checkout (which can be replaced if the user chooses)
--- $1 is replaces with the currently logged in customer's id.
SELECT credit_card, address from customer where id=$1;
