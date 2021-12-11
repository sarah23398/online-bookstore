from faker import Faker

fake = Faker('en_CA')

for i in range(0, 21):
    name = fake.name()
    email = fake.email()
    address = fake.address().replace("\n"," ")
    phone = fake.msisdn()[3:]
    bankacc = fake.credit_card_number('visa16')
    password = email[0:email.find("@")].lower()
    print(f'''INSERT INTO public.customer(
	    id, name, email, password, phone, address, bank_account)
	    VALUES ('{i+1}','{name}', '{email}', '{password}', '{phone}', '{address}', '{bankacc}');''')