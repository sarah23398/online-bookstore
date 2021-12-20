from faker import Faker
from datetime import datetime
from datetime import timedelta

fake = Faker('en_CA')
o = 36
fulfil = ['RECEIVED', 'INPROGRESS']
ship = ['SHIPPED', 'INROUTE']
for cust in range(1, 22):
    for f in range(0,2):
        orderdate = fake.date_time_between(datetime(2015,5,29))
        bankacc = fake.credit_card_number('visa16')
        billing = fake.address().replace("\n"," ")
        curradd = fake.address().replace("\n"," ")
        shipment = (orderdate + timedelta(days=fake.pyint(1, 7))).date()
        est = (shipment + timedelta(days = fake.pyint(1, 7)))
        arr = (est + timedelta(days = fake.pyint(0, 3)))
        if fake.pyint(0, 1) == 0:
            dest = fake.address().replace("\n"," ")
        else:
            dest = billing

        print(f'''INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('{cust}', '{orderdate}', '{bankacc}', '{billing}', '{dest}', '{fulfil[f]}');
        ''')

        print(f'''INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('{shipment}', '{ship[f]}', '{est}', '{arr}', '{curradd}', '{o}');
        ''')
        o += 1
