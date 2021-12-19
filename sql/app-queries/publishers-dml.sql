--- This statement inserts publishers into the database when the owner adds a publisher
--- The $numbers are replaced with the information provided by the owner
INSERT INTO publisher(name, email, phone, address, bank_account) VALUES ($1, $2, $3, $4, $5);