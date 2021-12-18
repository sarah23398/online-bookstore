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