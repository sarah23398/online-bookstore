--- This query selects the specific user that logs in by the email and password they attempt to login with
--- $numbers are replaced by the information that the user inserts.
SELECT id, name from customer where email = $1 and password = $2;