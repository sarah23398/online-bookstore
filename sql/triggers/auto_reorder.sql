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