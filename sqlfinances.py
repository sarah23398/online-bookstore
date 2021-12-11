from faker import Faker

fake = Faker()

isbns = ['1234567890123', '9283745689127', '1928374858349', '3748596758431', '2938475647361', '9842038473847', '2738490598231']

for o in range(1, 36):
    picked = ['']
    for i in range(0, fake.pyint(1, 6)):
        isbn = ''
        while isbn in picked:
            isbn = isbns[fake.pyint(0, len(isbns)-1)]
        picked.append(isbn)
        quantity = fake.pyint(1, 3)
        print(f'''INSERT INTO public.finances(
	        order_id, isbn, quantity)
	        VALUES ('{o}', '{isbn}', {quantity});
        ''')