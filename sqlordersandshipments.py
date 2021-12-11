from faker import Faker
from datetime import datetime
from datetime import timedelta

fake = Faker('en_CA')

for i in range(0, 35):
    custid = fake.pyint(1, 21)
    orderdate = fake.date_between(datetime(2015,5,29))
    bankacc = fake.credit_card_number('visa16')
    billing = fake.address().replace("\n"," ")
    shipment = orderdate + timedelta(days=fake.pyint(1, 7))
    est = shipment + timedelta(days = fake.pyint(1, 7))
    arr = est + timedelta(days = fake.pyint(0, 3))
    if fake.pyint(0, 1) == 0:
        dest = fake.address().replace("\n"," ")
    else:
        dest = billing

    print(f'''INSERT INTO public.shipment(
	    tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
	    VALUES ('{i+1}', '{shipment}', 'DELIVERED', '{est}', '{arr}', '{dest}');
    ''')

    print(f'''INSERT INTO public."order"(
	    id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
	    VALUES ('{i+1}', '{i+1}', '{custid}', '{orderdate}', '{bankacc}', '{billing}', '{dest}', 'FULFILLED');
    ''')