from faker import Faker
from datetime import datetime

fake = Faker()

for i in range(0, 35):
    custid = fake.pyint(1, 21)
    orderdate = fake.date_between(datetime(2015,5,29))
    bankacc = fake.credit_card_number('visa16')

print(f'''INSERT INTO public."order"(
	id, customer_id, order_date, bank_account, billing_address, destination, status)
	VALUES (?, ?, ?, ?, ?, ?, ?);
''')