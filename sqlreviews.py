from faker import Faker
from datetime import datetime

fake = Faker()

isbns = ['1234567890123', '9283745689127', '1928374858349', '3748596758431', '2938475647361', '9842038473847', '2738490598231']

for o in range(0, 40):
    isbn = isbns[fake.pyint(0, len(isbns)-1)]
    c = fake.pyint(1, 21)
    rating = fake.pyint(1,5)
    quantity = fake.pyint(1, 3)
    date = fake.date_time_between(datetime(2015,5,29)).date()
    review = fake.text(max_nb_chars=240, ext_word_list=['good', 'great', 'flawless', 'amazing', 'book', 'bad', 'awful', 'well', 'alright', 'again', 'done',
    'real', 'fiction', 'read', 'watch', 'movie', 'comic', 'tv show', 'yes', 'no', 'really', 'had', 'scenes', 'greatly', 'improvement', 'rewind', 'rewatch', 'worldwide'])
    print(f'''INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES ({c}, '{isbn}', {rating}, '{review}', '{date}');
    ''')