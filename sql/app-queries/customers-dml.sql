--- This statement inserts the user's infomation when the user registers
--- The $numbers are replaced with information entered by the user
INSERT INTO public.customer(
        name, email, password, phone, address, credit_card)
        VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;