--- STOCK UPDATE ON ORDER TRIGGER
--- This trigger ensures that when an order is placed, the stock of a specific book in that orer is reduced by the quantity
create or replace function update_stock_on_order() RETURNS trigger as $update_stock_on_order$
declare
	cstock  INTEGER := 0;
begin
	select stock into cstock from book where isbn = NEW.isbn;
-- 	doing some error checking to make sure the number does not exceed stock
	if cstock < NEW.quantity then
		NEW.quantity := cstock;
	end if;
	update book set stock = stock - NEW.quantity where isbn = NEW.isbn;
	RETURN NEW;
end;
$update_stock_on_order$ LANGUAGE plpgsql;

CREATE TRIGGER update_stock_on_order BEFORE INSERT on finances
	FOR EACH ROW EXECUTE PROCEDURE update_stock_on_order();

--- AUTO REORDER TRIGGER
--- This trigger ensures that when the stock of a book reaches 3 or below, it is automatically reordered/restocked

create or replace function auto_reorder() RETURNS trigger as $auto_reorder$
begin
	if NEW.stock < 3 then
		update book set stock = 50 where isbn = OLD.isbn;
	end if;
	return NEW;
end;
$auto_reorder$ LANGUAGE plpgsql;

CREATE TRIGGER auto_reorder AFTER UPDATE of stock on book
-- pretend there's an email sent here to the publisher :)
	FOR EACH ROW EXECUTE PROCEDURE auto_reorder();