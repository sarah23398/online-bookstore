--- AUTHORS
INSERT INTO public.author(
	name, email, bio, website)
	VALUES ('John Smith', 
			'jsmith@example.org', 
			'John Smith is an author born and brought up in New York. He has written best seller novel "Burger Buns".', 
			'https://example.org'
		   );

INSERT INTO public.author(
	name, email, bio, website)
	VALUES ('Penelope Snicket', 
			'me@penelope.org', 
			'Penelope Snicket is known for her work in "Henry Screever and the Last Pizza", making her one of the youngest best-selling author.', 
			'https://penelope.org'
		   );

INSERT INTO public.author(
	name, email, bio, website)
	VALUES ('Piplup Pokemon', 
			'piplup@poke.mon', 
			'Piplup Pokemon has written out of these world novels. With their close work with Ash Ketchum, they shine in the Adventure genre.', 
			'https://poke.mon/authors/piplup'
		   );
		   
INSERT INTO public.author(
	name, email, bio, website)
	VALUES ('Ash Ketchum', 
			'ash@poke.mon', 
			'After having won the title of "Very Best Pokemon Trainer", Ash moved on to writing, publishing one of the best informative books "Pokemon Training 101".', 
			'https://poke.mon/authors/ash'
		   );

INSERT INTO public.author(
	name, email, bio, website)
	VALUES ('Michael Scott', 
			'mscott@dundermifflin.com', 
			'Famously known for his work in the Scranton branch of Dunder Mifflin, he wrote best-selling screenplay for "Threat Level Midnight".', 
			'https://dundermifflin.com'
		   );

--- PUBLISHERS

INSERT INTO public.publisher(
	name, email, phone, address, bank_account)
	VALUES ('Acme Publishings',
			'acme@example.org',
			'18881209384',
			'8467 Main St., Montreal, QC, Canada, H7J 9P7',
		    '92038475657848574321');

INSERT INTO public.publisher(
	name, email, phone, address, bank_account)
	VALUES ('Snicket Publishings',
			'info@snicket.org',
			'18667890954',
			'956 Hunters Ave., Vancouver, BC, Canada, V7H 9L1',
		    '94857485012673461234');

INSERT INTO public.publisher(
	name, email, phone, address, bank_account)
	VALUES ('Pokemon Publishing Co.',
			'pub@poke.mon',
			'18009556789',
			'123 Pikachu Ave., Toronto, ON, Canada, M5J 2L9',
		    '12345678901221349876');

INSERT INTO public.publisher(
	name, email, phone, address, bank_account)
	VALUES ('Dunder Mifflin Paper Co.',
			'publishings@dundermifflin.com',
			'12378497465',
			'394 Electric Cir., Scranton, PA, United States, 18503',
		    '47629283746501927564');

--- BOOKS
INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('1234567890123',
			'1',
			'Burger Buns',
			'2017-05-22',
			2,
			'The novel where Det. Burger Buns has to solve the robbery at Taco Palace.',
			13.99,
			214,
			25,
			10
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('9283745689127',
			'1',
			'Burger Buns: The Murder at Pizza Palace',
			'2018-09-11',
			1,
			'Det. Burger Buns returns and now has to solve the murder at Pizza Palace.',
			13.99,
			245,
			2,
			6
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('1928374858349',
			'2',
			'Henry Screever',
			'2011-03-07',
			5,
			'Introducing amazing wizard Henry Screever and his trusty wizard friends.',
			24.99,
			567,
			5,
			6.25
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('3748596758431',
			'3',
			'Poke Poke',
			'2010-10-23',
			1,
			'Poke poke with your trainer.',
			11.99,
			113,
			45,
			4.75
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('2938475647361',
			'3',
			'Pokemon Training 101',
			'2009-11-03',
			6,
			'All you need to know to become an amazing Pokemon trainer.',
			15.99,
			235,
			65,
			12
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('9842038473847',
			'4',
			'Threat Level Midnight',
			'2010-06-13',
			10,
			'Read the tale of Michael Scarn as he fights against Dwigth.',
			42.68,
			548,
			21,
			10
		   );

INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('2738490598231',
			'4',
			'World''s Best Boss',
			'2012-11-12',
			10,
			'Michael Scott''s autobiography speaking about how he went from a salesman to the world''s best boss.',
			21.12,
			503,
			74,
			3.25
		   );
		   
INSERT INTO public.book(
	isbn, publisher_id, title, publish_date, edition, description, price, print_length, stock, publisher_fee)
	VALUES ('1456789210923',
			'2',
			'Henry Screever and the Last Pizza',
			'2012-12-11',
			5,
			'Another one of Henry Screever''s tales of his amazing adventures with his friends.',
			24.99,
			646,
			6,
			5
		   );

--- GENRES
INSERT INTO public.genre(name) VALUES ('Fantasy');
INSERT INTO public.genre(name) VALUES ('Mystery');        
INSERT INTO public.genre(name) VALUES ('Romance');        
INSERT INTO public.genre(name) VALUES ('Science Fiction');
INSERT INTO public.genre(name) VALUES ('Thriller');       
INSERT INTO public.genre(name) VALUES ('Suspense');       
INSERT INTO public.genre(name) VALUES ('Western');        
INSERT INTO public.genre(name) VALUES ('Action');
INSERT INTO public.genre(name) VALUES ('Adventure');      
INSERT INTO public.genre(name) VALUES ('Classics');      
INSERT INTO public.genre(name) VALUES ('Comic Book');    
INSERT INTO public.genre(name) VALUES ('Graphic Novel'); 
INSERT INTO public.genre(name) VALUES ('Historical Fiction');
INSERT INTO public.genre(name) VALUES ('Horror');
INSERT INTO public.genre(name) VALUES ('Literary Fiction');
INSERT INTO public.genre(name) VALUES ('Non-Fiction');

--- WRITTEN BY
INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('1', '1234567890123');
	
INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('1', '9283745689127');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('2', '1928374858349');
	
INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('3', '3748596758431');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('4', '3748596758431');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('4', '2938475647361');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('5', '9842038473847');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('5', '2738490598231');

INSERT INTO public.written_by(
	author_id, isbn)
	VALUES ('2', '1456789210923');

--- CONTAINS
INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('2', '1234567890123');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('6', '1234567890123');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('8', '1234567890123');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('2', '9283745689127');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('5', '9283745689127');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('6', '9283745689127');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('8', '9283745689127');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('1', '1928374858349');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('9', '1928374858349');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('4', '3748596758431');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('9', '3748596758431');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('16', '2938475647361');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('6', '9842038473847');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('8', '9842038473847');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('16', '2738490598231');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('2', '1456789210923');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('6', '1456789210923');

INSERT INTO public.contains(
	genre_id, isbn)
	VALUES ('8', '1456789210923');

--- CUSTOMERS
INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Kenneth Johnston', 'lawrencemary@example.org', 'lawrencemary', '1495448645', '623 Kelley Shores East Andreatown, NL C9S 2M3', '4140317516323400');
            
INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Melissa Ortiz', 'kylemiles@example.net', 'kylemiles', '7248186758', '11383 Livingston Ferry West Dillonbury, QC P1C8P4', '4154040535871521');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Lisa Caldwell', 'greencolin@example.org', 'greencolin', '2582121488', '6688 Hunter Divide Suite 582 New Cynthiahaven, NT H8T3K7', '4195626818495524');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Mary Wright', 'josephrobinson@example.net', 'josephrobinson', '9238433089', '1427 Garcia Heights East Meganview, QC E8X4E4', '4083920360403084');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('William Patterson', 'bellbrett@example.com', 'bellbrett', '7261039222', '103 Johnson Tunnel Suite 073 East Dean, AB R9T1A4', '4709685436140606');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Elizabeth Romero', 'tperez@example.com', 'tperez', '1573693466', '272 Thompson Rest Cruzhaven, NL K9E9L8', '4455677427871378');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Hailey Meadows', 'brandonnguyen@example.org', 'brandonnguyen', '3480641943', '0046 Jennifer Neck New Hollyborough, NL K6T 7P7', '4332358717333721');
INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Shawn Miller', 'dsimmons@example.com', 'dsimmons', '1500868658', '054 Bird Keys Andersonmouth, NT M9L5J6', '4344130940653548');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Michael Knight', 'brownphilip@example.com', 'brownphilip', '2690874332', '456 John Dam Suite 791 North Wyattberg, NL N8X 4M1', '4692951946196929');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Melanie Townsend', 'zandrews@example.net', 'zandrews', '5781126183', '466 Joshua Ports North Melissa, NB B3Y 3L8', '4721929934860776'); 

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Karla Pierce', 'katrina66@example.com', 'katrina66', '2262551322', '797 Jillian Mews Suite 939 East Jeffrey, MB V5A 2T4', '4368630539800112');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Erin Miller', 'cookrussell@example.net', 'cookrussell', '8072879528', '69529 Susan Shoal Suite 113 Carriefurt, ON G8Y7J8', '4087410878138345');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Shane Cross', 'amy70@example.com', 'amy70', '0477219917', '5375 Carroll Crest Suite 027 South April, AB Y9B6A8', '4974405700912533');   

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Lori Sanders', 'markherrera@example.net', 'markherrera', '0978996610', '8868 Walter Pines Apt. 098 Crawfordtown, QC C6E 9P3', '4316630516276669');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Savannah Butler', 'chenbrittany@example.com', 'chenbrittany', '1020738381', '7474 Brooks Camp Apt. 615 South Steventown, AB T3C 3T9', '4231791118149324');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Olivia Scott', 'harpercheryl@example.com', 'harpercheryl', '3699775088', '3275 Drew Forks Apt. 489 Stephanietown, MB P2N 6N6', '4892692431403085');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Richard Smith', 'rwarner@example.net', 'rwarner', '8905210893', '93126 Stone Road Suite 814 Brandonberg, MB K8H8M7', '4434784697199229');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Heather Carrillo', 'schmidteduardo@example.org', 'schmidteduardo', '8150027215', '842 Wade Rapid Sanchezmouth, NU E3V 4G9', '4744490259316681');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Wendy Taylor', 'kimberly40@example.com', 'kimberly40', '8450102693', '20263 Heather Pine Suite 717 Patriciahaven, PE T8X5C3', '4331657199367383');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Melissa Martinez', 'cookjoseph@example.net', 'cookjoseph', '7886408268', '26801 Tammy Dam Pearsonville, MB X8P5J3', '4714006873399634');

INSERT INTO public.customer(name, email, password, phone, address, credit_card)
            VALUES ('Leslie Barajas', 'john36@example.com', 'john36', '7538091875', '8337 Arthur Drives Port Ianport, QC B9P 3G4', '4607443452988844'); 
    
--- ORDERS AND SHIPMENTS

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '4', '2020-01-26 05:44:20', '4674113960721361', '46877 Martin Causeway Suite 184 Harrisonland, NU J6N 9E1', '46877 Martin Causeway Suite 
184 Harrisonland, NU J6N 9E1', 'FULFILLED');
    
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-02-02', 'DELIVERED', '2020-02-03', '2020-02-06', '46877 Martin Causeway Suite 184 Harrisonland, NU J6N 9E1', '1');
    
INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '2', '2020-02-04 18:18:37', '4549311527816624', '8231 Lopez Avenue Suite 519 Sextonhaven, ON S5P8T9', '88926 Bryan Crossing South Michael, ON E6A 5P3', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-02-11', 'DELIVERED', '2020-02-13', '2020-02-16', '88926 Bryan Crossing South Michael, ON E6A 5P3', '2');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '16', '2017-07-23 17:16:00', '4788029235292033', '57193 Moore Junction Suite 250 Dawnville, QC R7K 8P1', '1829 Heather Harbors Apt. 655 Medinaside, YT X2N 7R5', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-07-24', 'DELIVERED', '2017-07-26', '2017-07-29', '1829 Heather Harbors Apt. 655 Medinaside, YT X2N 7R5', '3');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '17', '2015-10-01 19:17:00', '4149676321698111', '36451 Rodriguez Fork Masonview, NS G7P 7Y7', '3843 Joseph Forks Suite 670 Laurastad, NS M5E 5H7', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-10-03', 'DELIVERED', '2015-10-10', '2015-10-11', '3843 Joseph Forks Suite 670 Laurastad, NS M5E 5H7', '4');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '19', '2019-05-28 22:35:17', '4456897254928492', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-06-02', 'DELIVERED', '2019-06-07', '2019-06-07', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', '5');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '18', '2017-03-15 00:05:11', '4324235778641780', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-03-21', 'DELIVERED', '2017-03-25', '2017-03-28', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', '6');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '9', '2019-01-30 10:31:56', '4507575971388666', '6739 Maria Motorway Apt. 909 East Leonardville, NT B1S3V4', '89185 Kent Coves Suite 936 
Stephenborough, NS S2B4V8', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-02-04', 'DELIVERED', '2019-02-09', '2019-02-09', '89185 Kent Coves Suite 936 Stephenborough, NS S2B4V8', '7');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '11', '2020-05-13 22:20:11', '4541844983104828', '184 David Island Apt. 716 South Tina, NT R3C6J3', '184 David Island Apt. 716 South Tina, NT R3C6J3', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-05-16', 'DELIVERED', '2020-05-22', '2020-05-25', '184 David Island Apt. 716 South Tina, NT R3C6J3', '8');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '10', '2016-06-21 06:19:07', '4748845316414223', '5724 Julia Heights Williamsshire, NU V8T1S7', '99493 Rebecca Unions Carolberg, MB N8V8E4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-06-27', 'DELIVERED', '2016-07-03', '2016-07-04', '99493 Rebecca Unions Carolberg, MB N8V8E4', '9');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '20', '2020-06-12 23:02:47', '4036647423242344', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-06-13', 'DELIVERED', '2020-06-20', '2020-06-20', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', '10');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '7', '2019-07-16 19:44:47', '4651054507950450', '693 Kimberly Field New Greg, PE T7M8P9', '86926 Janet Overpass North Williamborough, NL T1T 6E6', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-07-23', 'DELIVERED', '2019-07-28', '2019-07-31', '86926 Janet Overpass North Williamborough, NL T1T 6E6', '11');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '21', '2015-08-27 13:27:13', '4567202461510280', '978 Dominguez Mountain Suite 572 North Kristinafurt, PE K1N 1A5', '956 Jeffrey Knoll Apt. 007 South Pamelaport, SK G5J7K8', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-08-28', 'DELIVERED', '2015-09-02', '2015-09-03', '956 Jeffrey Knoll Apt. 007 South Pamelaport, SK G5J7K8', '12');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '19', '2019-07-03 03:54:14', '4694214373620269', '0746 Mackenzie Mountain Apt. 873 Zamoraland, AB G5P 9T1', '353 Robinson Turnpike Raymondshire, ON Y5M 6P7', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-07-07', 'DELIVERED', '2019-07-13', '2019-07-15', '353 Robinson Turnpike Raymondshire, ON Y5M 6P7', '13');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '15', '2017-10-14 18:50:29', '4105557071644798', '041 Matthew Station Lopezton, SK A2H 4V4', '041 Matthew Station Lopezton, SK A2H 4V4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-10-21', 'DELIVERED', '2017-10-25', '2017-10-26', '041 Matthew Station Lopezton, SK A2H 4V4', '14');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '18', '2018-07-17 19:48:42', '4986954895656047', '400 Hall Track Floresland, NT G3C4L7', '400 Hall Track Floresland, NT G3C4L7', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-07-21', 'DELIVERED', '2018-07-28', '2018-07-28', '400 Hall Track Floresland, NT G3C4L7', '15');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '13', '2020-06-07 13:48:15', '4643055977005551', '82323 John Falls North Lindsay, ON B3K7X6', '82323 John Falls North Lindsay, ON B3K7X6', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-06-10', 'DELIVERED', '2020-06-13', '2020-06-15', '82323 John Falls North Lindsay, ON B3K7X6', '16');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '10', '2017-11-07 11:27:51', '4946742747889463', '83524 Mason Garden Suite 447 Samanthamouth, PE H5L 1K4', '23442 Jennifer Forges Suite 
971 Christopherside, NB R7P1K4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-11-08', 'DELIVERED', '2017-11-13', '2017-11-14', '23442 Jennifer Forges Suite 971 Christopherside, NB R7P1K4', '17');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '18', '2019-02-02 14:33:57', '4905656315362332', '370 Morris Gateway Sampsonport, YT N1E 3C5', '370 Morris Gateway Sampsonport, YT N1E 3C5', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-02-05', 'DELIVERED', '2019-02-06', '2019-02-08', '370 Morris Gateway Sampsonport, YT N1E 3C5', '18');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '6', '2018-07-26 23:29:37', '4536358812572722', '5489 Blair Trafficway Brownbury, SK S4Y3N9', '7317 Mark Burgs Port Johnstad, NT A3N9S2', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-08-01', 'DELIVERED', '2018-08-02', '2018-08-04', '7317 Mark Burgs Port Johnstad, NT A3N9S2', '19');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '19', '2020-08-27 06:52:09', '4013591883715927', '89482 Lane Fort East Bonnie, NT C5K1T5', '49995 Richardson Square Apt. 340 Joelberg, PE E2B9S8', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-09-02', 'DELIVERED', '2020-09-06', '2020-09-06', '49995 Richardson Square Apt. 340 Joelberg, PE E2B9S8', '20');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '9', '2019-12-10 16:32:58', '4405264258660823', '298 Anderson Estates Perezhaven, NS V7E 7Y7', '902 Christopher Dam Apt. 126 West Kurt, 
NT E7B2V7', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-12-16', 'DELIVERED', '2019-12-21', '2019-12-23', '902 Christopher Dam Apt. 126 West Kurt, NT E7B2V7', '21');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '16', '2016-09-19 13:39:52', '4152254469033584', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-09-22', 'DELIVERED', '2016-09-28', '2016-09-30', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', '22');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '10', '2018-04-23 07:19:53', '4277450844477948', '84651 Baker Cove Donaldfurt, ON B7E 5H3', '3314 Smith Radial Apt. 130 South Davidshire, NL E5T 3R8', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-04-24', 'DELIVERED', '2018-04-29', '2018-04-30', '3314 Smith Radial Apt. 130 South Davidshire, NL E5T 3R8', '23');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '8', '2018-05-07 00:50:59', '4821034090700319', '989 Alvarez Alley Suite 054 South Ashley, BC G8L 3L9', '5227 Butler Wells Suite 644 Matthewhaven, NT C6K 5J7', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-05-08', 'DELIVERED', '2018-05-14', '2018-05-15', '5227 Butler Wells Suite 644 Matthewhaven, NT C6K 5J7', '24');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '6', '2017-07-18 15:39:38', '4694947816370618', '277 Smith Shore Amandaton, AB X7V 5J1', '5836 Christopher Corners Apt. 770 Bethhaven, MB N4L1P4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-07-20', 'DELIVERED', '2017-07-21', '2017-07-24', '5836 Christopher Corners Apt. 770 Bethhaven, MB N4L1P4', '25');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '17', '2019-08-22 15:01:19', '4998590433184856', '25257 Amanda Turnpike Suite 179 South Melissa, NB Y4C 9V3', '314 Kelly Ports Suite 909 Levyshire, NB Y7G 1L4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-08-26', 'DELIVERED', '2019-08-28', '2019-08-31', '314 Kelly Ports Suite 909 Levyshire, NB Y7G 1L4', '26');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '17', '2016-06-11 18:20:02', '4895385455323803', '5984 Jackson Light South Jasonchester, NL C6Y 5H2', '535 Heidi Parks Suite 415 Adammouth, ON C4Y 1S1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-06-12', 'DELIVERED', '2016-06-17', '2016-06-19', '535 Heidi Parks Suite 415 Adammouth, ON C4Y 1S1', '27');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '17', '2018-08-10 23:59:05', '4146710672144772', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-08-14', 'DELIVERED', '2018-08-15', '2018-08-18', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', '28');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '8', '2018-04-25 04:12:17', '4106203856815845', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-04-29', 'DELIVERED', '2018-05-04', '2018-05-05', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', '29');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '2', '2020-07-28 16:46:51', '4044563857592171', '13319 Samuel Drives Suite 143 Markfort, NU M7B 3K2', '91242 Jason Unions Jacobton, QC V6A 6M1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-08-01', 'DELIVERED', '2020-08-02', '2020-08-05', '91242 Jason Unions Jacobton, QC V6A 6M1', '30');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '14', '2020-08-29 14:03:03', '4478993219715480', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-09-02', 'DELIVERED', '2020-09-05', '2020-09-07', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', '31');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '13', '2017-12-13 05:43:08', '4986606813356122', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-12-14', 'DELIVERED', '2017-12-16', '2017-12-19', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', '32');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '5', '2019-11-02 18:36:42', '4475658852917809', '0928 Anderson Trail Apt. 807 Christensenfort, AB P6R 5L5', '2866 John Curve Stevenborough, NU N8E 3B5', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-11-08', 'DELIVERED', '2019-11-12', '2019-11-15', '2866 John Curve Stevenborough, NU N8E 3B5', '33');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '18', '2015-11-21 17:29:47', '4411311487155315', '7645 Darrell Forge Jenkinsside, AB G8R6L5', '5196 Elizabeth Throughway Apt. 998 East Terriview, ON J8K 5E1', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-11-27', 'DELIVERED', '2015-12-04', '2015-12-06', '5196 Elizabeth Throughway Apt. 998 East Terriview, ON J8K 5E1', '34');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ( '8', '2018-08-13 03:45:46', '4526255442728850', '20759 Larsen Points West Jennaberg, QC V4L8T3', '20759 Larsen Points West Jennaberg, QC V4L8T3', 'FULFILLED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-08-17', 'DELIVERED', '2018-08-22', '2018-08-23', '20759 Larsen Points West Jennaberg, QC V4L8T3', '35');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('1', '2018-06-27 14:07:08', '4817008890973991', '87534 Sandoval Corners Lauriefurt, NT M4S3M1', '086 Richardson Park North Michaelport, BC S9G 3A8', 'RECEIVED');
        
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-07-04', 'SHIPPED', '2018-07-11', '2018-07-14', '3045 Campbell Locks Suite 619 Wagnerberg, AB A6A 6X1', '36');
        
INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('1', '2018-02-08 02:37:15', '4568640678634188', '855 Campbell Station West Jeffrey, AB M9G3A7', '5913 Carter Vista Apt. 421 Brittanyport, NL B8C 5Y1', 'INPROGRESS');
        
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-02-12', 'INROUTE', '2018-02-18', '2018-02-18', '050 Martinez Branch Suite 687 South Paul, SK E7T 1X8', '37');
        
INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('2', '2016-03-08 19:29:51', '4782334340634327', '761 Erika Camp Ericborough, NB V8V 4C2', '761 Erika Camp Ericborough, NB V8V 4C2', 'RECEIVED');
        
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-03-10', 'SHIPPED', '2016-03-14', '2016-03-17', '5921 Dan Route West Peter, NT E4G6L9', '38');
        
INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('2', '2015-11-19 17:03:00', '4463163140998384', '8074 Laurie Vista North Patricia, NS A9H 9S7', '8074 Laurie Vista North Patricia, NS A9H 9S7', 'INPROGRESS');
        
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-11-24', 'INROUTE', '2015-11-27', '2015-11-27', '9597 Herbert River Apt. 093 Woodville, PE L8M 2X3', '39');
        
INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('3', '2019-07-18 00:08:09', '4446764991806436', '075 Jennifer Stravenue East David, QC Y9V 1B1', '4699 Taylor Shoal Suite 345 North Lisashire, ON H2M 3C2', 'RECEIVED');
        
INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-07-25', 'SHIPPED', '2019-07-27', '2019-07-30', '04551 Ashley Manor Suite 591 North Rachel, PE R2G 8T7', '40');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('3', '2019-12-19 05:37:07', '4126361068754339', '61958 Robert Hollow Christopherport, SK G1C3K7', '61958 Robert Hollow Christopherport, SK G1C3K7', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-12-26', 'INROUTE', '2020-01-02', '2020-01-05', '71226 Michael Trail New Bradleytown, NU C6B 6J1', '41');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('4', '2020-10-20 23:59:05', '4549744894179749', '90630 Michelle Hollow New Alanview, NT N8R4S6', '9216 Soto Hill Apt. 873 Rachelstad, NT A5V 7Y2', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-10-27', 'SHIPPED', '2020-10-28', '2020-10-31', '3340 Smith Groves North Davidmouth, NL C7S 8T4', '42');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('4', '2018-03-25 16:07:35', '4122730461495456', '882 Kramer Drives Apt. 132 Draketown, NU K2L8S9', '924 Crystal Rue Mooreburgh, NL X3V 5M4', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-03-29', 'INROUTE', '2018-03-30', '2018-03-31', '16092 Williams Courts Josephberg, NU H4K 7M7', '43');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('5', '2020-01-27 01:13:38', '4792844777044624', '040 Soto Wall Apt. 146 Harryport, NU Y1L3C9', '147 Pittman Village New Larryview, YT B8L 1A3', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-02-01', 'SHIPPED', '2020-02-05', '2020-02-06', '9653 Kenneth Parkways Apt. 816 South Susanbury, ON K5X 6T9', '44');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('5', '2021-06-20 11:06:13', '4578918524131452', '722 Shaun Groves Suite 714 Sierrabury, AB N5N6S4', '722 Shaun Groves Suite 714 Sierrabury, AB N5N6S4', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-06-27', 'INROUTE', '2021-06-30', '2021-07-01', '4410 Courtney Ville Suite 641 Brownburgh, SK C1A3N1', '45');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('6', '2017-04-30 07:28:39', '4640685068193438', '6742 Christopher Point Heatherfurt, AB E7Y5T4', '7117 Adrian Mountains Suite 717 East Geneborough, QC C4P9R3', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-05-02', 'SHIPPED', '2017-05-09', '2017-05-10', '603 Kyle Mall South Amandatown, NT T2J 9N9', '46');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('6', '2021-02-27 14:14:50', '4932321337031319', '6234 Laurie Tunnel Apt. 263 East Deborahbury, ON R9P5Y8', '6234 Laurie Tunnel Apt. 263 East Deborahbury, 
ON R9P5Y8', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-03-05', 'INROUTE', '2021-03-11', '2021-03-14', '42041 Abbott Parkway East Alexander, PE T4B3S8', '47');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('7', '2017-06-16 04:47:37', '4577191474578616', '531 Villarreal Springs Kimberlyton, SK P8C 1B8', '531 Villarreal Springs Kimberlyton, SK P8C 1B8', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-06-17', 'SHIPPED', '2017-06-22', '2017-06-24', '51466 Burke Creek Suite 324 Nicholstown, BC H6H 1E1', '48');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('7', '2020-06-07 23:16:13', '4404600045953222', '17123 Karina Island Suite 506 New Pamelafurt, AB B8X5C3', '8646 Dana Ridge Apt. 749 New Marc, NT P5P9N6', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-06-13', 'INROUTE', '2020-06-19', '2020-06-19', '36424 Heather Drive Valenciastad, BC H6H 8K7', '49');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('8', '2020-08-30 20:51:52', '4682850185522609', '827 Craig Extension Apt. 406 Scottside, NL V6B 2Y5', '53353 Roberts Mills Apt. 083 East Timothy, SK S4K 5G9', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-09-01', 'SHIPPED', '2020-09-06', '2020-09-08', '9536 Andrew Summit Dianeville, NB S6E 3X1', '50');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('8', '2018-11-18 01:57:02', '4665181410341339', '85941 Tyler Course South Justinside, NB E2H 2P5', '27979 David River Port Jessicafurt, BC B4S1P2', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-11-23', 'INROUTE', '2018-11-27', '2018-11-28', '77386 Jorge Route Suite 733 Hayesmouth, NB C6C1G5', '51');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('9', '2021-05-02 01:58:57', '4031740891839553', '474 Mathis Terrace Suite 327 Jamesfort, QC J6J5P9', '474 Mathis Terrace Suite 327 Jamesfort, QC J6J5P9', 
'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-05-04', 'SHIPPED', '2021-05-05', '2021-05-07', '2745 Adams Viaduct Apt. 538 Sarahshire, AB H4T 4G2', '52');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('9', '2015-08-16 08:07:49', '4749193056339022', '18645 Elizabeth Harbors East Carolfurt, MB R1L4P8', '18645 Elizabeth Harbors East Carolfurt, MB R1L4P8', 
'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-08-18', 'INROUTE', '2015-08-21', '2015-08-21', '666 Richard Viaduct Davistown, BC P9N9E6', '53');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('10', '2015-10-29 00:57:50', '4498784372742957', '51343 Jack Forge Newmanmouth, PE M5G7A7', '51343 Jack Forge Newmanmouth, PE M5G7A7', 'RECEIVED');       

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2015-10-30', 'SHIPPED', '2015-11-05', '2015-11-08', '71239 Robertson Wells Suite 145 Lake Jason, NU B7R 8J1', '54');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('10', '2021-01-14 15:54:57', '4320102125291327', '97683 Stephen Rapids Apt. 191 Port Scottborough, NT L2V6R7', '97683 Stephen Rapids Apt. 191 Port Scottborough, NT L2V6R7', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-01-19', 'INROUTE', '2021-01-21', '2021-01-23', '78385 Ruiz Point Hallchester, NS X3E 5N7', '55');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('11', '2016-04-12 19:56:24', '4554569693657963', '1545 Scott Island Suite 604 Michaelburgh, NT P1H2Y5', '1545 Scott Island Suite 604 Michaelburgh, NT P1H2Y5', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-04-18', 'SHIPPED', '2016-04-19', '2016-04-22', '6319 Brown Plains Zacharyshire, NS Y9C4G9', '56');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('11', '2016-03-17 07:08:25', '4521365232103233', '842 Williams Village Martinburgh, SK B2C9G8', '842 Williams Village Martinburgh, SK B2C9G8', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-03-19', 'INROUTE', '2016-03-20', '2016-03-22', '770 Moore Common Taylorview, NT R3K 7X2', '57');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('12', '2016-10-09 07:07:22', '4398554623965397', '8166 Burton Rue Apt. 795 Lake Tracy, NT B7T9A7', '8166 Burton Rue Apt. 795 Lake Tracy, NT B7T9A7', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-10-15', 'SHIPPED', '2016-10-20', '2016-10-23', '90528 Wu Divide North Robertstad, ON R1Y 5X3', '58');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('12', '2021-11-07 14:56:03', '4495326699935873', '98485 Johnson Union Apt. 182 Sandyport, NS K8X 2S2', '98485 Johnson Union Apt. 182 Sandyport, NS K8X 2S2', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-11-09', 'INROUTE', '2021-11-12', '2021-11-15', '45608 Gonzales Throughway South Stephaniechester, YT A7P4L2', '59');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('13', '2021-01-25 00:05:05', '4096739513092114', '271 Gabriela Knolls North Antonio, BC M9X 2N4', '271 Gabriela Knolls North Antonio, BC M9X 2N4', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-01-29', 'SHIPPED', '2021-01-31', '2021-01-31', '343 Cheryl Summit Suite 289 South Shanebury, YT X3A 9R6', '60');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('13', '2021-08-07 19:17:09', '4234741718198327', '2812 Annette Creek Suite 621 Port Michael, ON B2S3R6', '141 Michael Pike South Scott, NS L7V 1X1', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-08-08', 'INROUTE', '2021-08-15', '2021-08-17', '9529 Haley Crossing Whiteshire, BC L4B4H8', '61');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('14', '2016-06-09 04:25:55', '4028596475717853', '820 Lopez Hollow Suite 344 Stevenshire, NS E2C 4L6', '3677 Elizabeth Light Clarkville, NU L4R 2A3', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-06-12', 'SHIPPED', '2016-06-19', '2016-06-20', '7019 Cheryl Mountains Smithmouth, YT P8Y4G3', '62');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('14', '2020-05-07 21:04:11', '4547887529674196', '4835 Stephen Light Johnton, NT A4Y 3Y4', '4835 Stephen Light Johnton, NT A4Y 3Y4', 'INPROGRESS');       

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-05-12', 'INROUTE', '2020-05-18', '2020-05-18', '993 Decker Stravenue West Davidchester, MB T4Y6N9', '63');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('15', '2020-07-13 23:07:47', '4286251901353165', '77740 Clark Common Jasminmouth, BC T8H1G5', '80418 Bailey Groves Janeberg, YT X4T 5J6', 'RECEIVED');    

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-07-16', 'SHIPPED', '2020-07-23', '2020-07-26', '65165 Lowe Garden Apt. 463 East Michael, SK L7P6L9', '64');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('15', '2019-12-31 22:08:40', '4000321493373122', '80168 Teresa Island Suite 383 West Reginashire, MB T8L 1Y8', '960 Linda Avenue Garciachester, YT L4Y 6H5', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-01-03', 'INROUTE', '2020-01-08', '2020-01-09', '000 Reyes Course Jaimemouth, YT V2E6S1', '65');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('16', '2016-01-21 08:12:42', '4632817944598775', '0422 Paula Lane North Alexburgh, QC J9B4V1', '0422 Paula Lane North Alexburgh, QC J9B4V1', 'RECEIVED'); 

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-01-23', 'SHIPPED', '2016-01-24', '2016-01-24', '3414 Stewart Stravenue Apt. 137 Grahambury, NS J6T 5J9', '66');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('16', '2019-05-22 23:55:00', '4015791728666156', '151 Katherine Hollow Suite 841 West Johnfurt, NL H8G 5B4', '9676 Swanson Row Suite 614 Port Vanessachester, YT B9H 8C5', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-05-24', 'INROUTE', '2019-05-25', '2019-05-26', '3117 Paul Ports East Hannahtown, NB M3A6Y9', '67');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('17', '2016-05-12 00:17:04', '4613633000456326', '8271 Audrey Summit Fernandoview, NB S2J8L3', '8271 Audrey Summit Fernandoview, NB S2J8L3', 'RECEIVED'); 

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-05-18', 'SHIPPED', '2016-05-20', '2016-05-20', '3104 Jones Corner Lake Maryburgh, BC S3B 2M1', '68');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('17', '2021-11-11 18:04:18', '4157719707942387', '5926 Richard Mission New Jill, NB S3N 4E6', '0276 Michelle Mountain Apt. 731 South Keith, SK B7A2C2', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-11-15', 'INROUTE', '2021-11-21', '2021-11-23', '8251 Barnes Hill West Bethchester, QC G2H 8S1', '69');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('18', '2016-09-23 19:06:08', '4653092228666730', '4213 Pena Lake Apt. 654 Ramirezfort, NU R2C 4J1', '8122 Laura Divide Apt. 324 Bridgesstad, NS G8G7H8', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-09-24', 'SHIPPED', '2016-09-26', '2016-09-29', '356 Vazquez Village Suite 846 Walshmouth, PE T5T4E6', '70');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('18', '2019-04-18 14:14:41', '4368804279737020', '25181 Susan Light Larryside, NT A2A 1Y1', '25181 Susan Light Larryside, NT A2A 1Y1', 'INPROGRESS');     

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2019-04-22', 'INROUTE', '2019-04-23', '2019-04-26', '486 Scott Views Port Amyside, NT H5T 7Y5', '71');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('19', '2017-10-06 08:40:55', '4335476895834695', '604 Mary Land West Kimhaven, NU N5R9V9', '604 Mary Land West Kimhaven, NU N5R9V9', 'RECEIVED');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-10-09', 'SHIPPED', '2017-10-15', '2017-10-16', '178 Webb Loaf North Jennifer, PE B7C8H8', '72');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('19', '2020-07-29 06:41:57', '4420024603395512', '43406 Williams Harbor East Edward, SK C3L3P5', '9727 Johnson Orchard North Jackberg, ON R7M 9K2', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2020-08-03', 'INROUTE', '2020-08-06', '2020-08-08', '636 Thompson Parkways New Becky, NS M1B8G4', '73');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('20', '2017-09-11 02:47:54', '4287291132408460', '866 Garrett Creek Crystalbury, SK J3R 3S1', '866 Garrett Creek Crystalbury, SK J3R 3S1', 'RECEIVED');   

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2017-09-12', 'SHIPPED', '2017-09-18', '2017-09-21', '6768 Caleb Junction Port Tommy, NS K6K 7K7', '74');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('20', '2018-08-23 08:51:51', '4809084590404991', '060 Conrad Springs New Williamfort, YT V1J7B3', '060 Conrad Springs New Williamfort, YT V1J7B3', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2018-08-26', 'INROUTE', '2018-08-28', '2018-08-30', '564 Nicholas Spur New Christopher, NB K3Y7A8', '75');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('21', '2016-05-26 03:44:57', '4525915269727530', '9290 Duncan Canyon Port Nancy, SK T7K6S6', '9290 Duncan Canyon Port Nancy, SK T7K6S6', 'RECEIVED');     

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2016-05-27', 'SHIPPED', '2016-05-31', '2016-06-01', '4400 Byrd Tunnel Apt. 610 Douglasview, NL K4P9A1', '76');

INSERT INTO public."order"(
            customer_id, order_date, credit_card, billing_address, destination, status)
            VALUES ('21', '2021-02-22 23:23:07', '4800487606761107', '4463 Taylor Springs Suite 077 New Anne, ON R8N 7J2', '877 Claire Meadows Suite 368 Charleschester, NT L2E9S2', 'INPROGRESS');

INSERT INTO public.shipment(
            shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2021-02-28', 'INROUTE', '2021-03-06', '2021-03-06', '3409 Shea Tunnel Suite 683 Richardsonland, NT H3E 6V2', '77');

--- FINANCES
INSERT INTO public.finances(
                order_id, isbn, quantity)        
                VALUES ('1', '3748596758431', 2);
        
INSERT INTO public.finances(
                order_id, isbn, quantity)        
                VALUES ('1', '2738490598231', 3);
        
INSERT INTO public.finances(
                order_id, isbn, quantity)        
                VALUES ('1', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('1', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('1', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('2', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('2', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('2', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('2', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('3', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('3', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('3', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('4', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('5', '1928374858349', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('6', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('6', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('6', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('7', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('7', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('7', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('7', '3748596758431', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('7', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('8', '1928374858349', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('8', '3748596758431', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('9', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('9', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('9', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('10', '2738490598231', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('10', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('10', '3748596758431', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('10', '9283745689127', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('11', '2738490598231', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('11', '9842038473847', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('11', '1928374858349', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('11', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('12', '2738490598231', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('12', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('13', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('13', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('13', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('13', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('14', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('14', '1928374858349', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('14', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('14', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('14', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('15', '9283745689127', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('15', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('15', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('15', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('15', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('16', '9842038473847', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('16', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('17', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('17', '1928374858349', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('18', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('19', '1234567890123', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('19', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('19', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('20', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('20', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('20', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('20', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('20', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('21', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('22', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('22', '2738490598231', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('22', '3748596758431', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('22', '1234567890123', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('23', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('23', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('23', '3748596758431', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('23', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('23', '2738490598231', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('24', '3748596758431', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('24', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('24', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('24', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('24', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('25', '9842038473847', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('25', '2738490598231', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('26', '1928374858349', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('26', '9842038473847', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('26', '3748596758431', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('26', '1234567890123', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('26', '2938475647361', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '1928374858349', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '1234567890123', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '2938475647361', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('27', '2738490598231', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('28', '1928374858349', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('28', '1234567890123', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('28', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('28', '9842038473847', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('29', '3748596758431', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('29', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('29', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '9283745689127', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '3748596758431', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '9842038473847', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '2938475647361', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '1928374858349', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('30', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('31', '9842038473847', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('31', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('31', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('31', '2938475647361', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('32', '2738490598231', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('33', '2738490598231', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('34', '3748596758431', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('34', '1234567890123', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('34', '2738490598231', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('34', '2938475647361', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('34', '9283745689127', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('35', '2938475647361', 2);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('35', '9283745689127', 3);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('35', '2738490598231', 1);

INSERT INTO public.finances(
                order_id, isbn, quantity)
                VALUES ('35', '1928374858349', 1);

--- RATINGS
INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (15, '9842038473847', 3, 'No improvement flawless alright bad read. Well good improvement greatly real awful.
Worldwide watch no yes rewatch real. Good fiction greatly book watch.
Had greatly really worldwide.
Again comic rewatch rewind worldwide rewind yes bad.', '2017-08-25');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (15, '1928374858349', 1, 'Greatly good improvement improvement yes worldwide improvement scenes. Again again comic read good worldwide.
Rewatch awful no watch worldwide read yes. Great fiction watch really.', '2016-06-18');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (5, '1928374858349', 3, 'Had fiction yes done rewind. Had no great again.
Comic flawless done really movie great comic. Amazing improvement read real. Had movie had tv show great worldwide watch.', '2021-12-10');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (12, '2738490598231', 3, 'Great read movie watch rewatch alright. No worldwide read tv show movie. Great improvement movie.
Rewatch watch book bad had rewind bad. Had amazing book well greatly had movie.', '2021-09-23');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (21, '9283745689127', 1, 'Movie rewatch done really rewatch flawless. Tv Show done yes watch. Yes tv show rewatch well.
Flawless scenes alright.', '2019-08-07');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (7, '9842038473847', 3, 'Greatly improvement no read. Really flawless improvement really good again. Awful greatly read no. Real done rewind.      
Good watch flawless good movie.
Rewatch flawless no real. Done great tv show well amazing. Fiction awful tv show done.', '2015-07-13');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (2, '1928374858349', 5, 'Really rewind awful bad had. Rewatch alright rewind great.
Read bad done fiction great. Movie well alright watch rewind greatly.', '2016-07-22');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (12, '2738490598231', 2, 'No book had comic watch. Improvement well great yes greatly good.
Greatly bad good well book fiction bad. Worldwide well done again. Scenes really read book.
Greatly had no again. Yes comic improvement greatly really greatly done.', '2017-01-13');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (19, '2738490598231', 4, 'Done watch flawless awful amazing read. Yes scenes again done. Good really bad yes worldwide awful alright.
Fiction real alright worldwide greatly watch book.
Movie greatly rewind. Improvement had worldwide amazing tv show.', '2021-06-14');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (4, '2738490598231', 3, 'Flawless done greatly. Fiction worldwide read book. Had again no well.
Had yes movie rewind improvement. Amazing watch scenes worldwide tv show.', '2016-09-10');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (1, '9842038473847', 5, 'Fiction flawless good watch comic. Read yes good movie worldwide.
Scenes great alright improvement rewatch good. Rewatch great yes flawless awful worldwide rewind amazing.
Good worldwide yes real flawless. Well bad greatly fiction.', '2019-03-31');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (8, '1234567890123', 5, 'Flawless good greatly. Good yes well improvement tv show watch improvement. Scenes good improvement.
Scenes improvement real watch great tv show. Improvement worldwide amazing well really. Again done real.', '2015-07-04');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (19, '2738490598231', 4, 'Tv Show watch no awful awful comic rewind. Real read movie amazing improvement well tv show rewind. Comic no bad rewatch 
worldwide scenes no.
Greatly bad alright comic yes read tv show. Book real comic had.', '2021-11-18');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (1, '1928374858349', 1, 'Really read read fiction comic fiction. Yes really watch bad. Bad rewind awful flawless really movie worldwide.
Tv Show book scenes rewatch. Rewatch awful well good book.', '2019-04-23');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (9, '3748596758431', 3, 'Alright movie fiction real watch rewind no amazing.
Book tv show greatly rewind had good comic worldwide. Movie scenes real watch tv show great.
Awful alright read. Movie yes done fiction had.', '2020-10-02');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (20, '9283745689127', 1, 'Read real scenes real. Flawless great great.
Real rewind really. Watch tv show movie rewatch improvement. Book amazing read alright book alright.
No really fiction well. Watch no no improvement rewatch read fiction.', '2019-10-17');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (8, '9842038473847', 5, 'Greatly bad comic yes movie scenes. Great rewind great worldwide again done yes had.
No flawless awful comic comic well great. Comic good alright well had alright. Done bad movie greatly.', '2018-07-22');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (2, '2938475647361', 4, 'Again greatly well no. Flawless rewatch good tv show fiction rewind watch great. Real good flawless great good fiction done.', '2019-09-04');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (19, '2738490598231', 1, 'Bad bad comic worldwide read greatly great. Had well flawless greatly tv show good scenes. Flawless no well great watch great scenes. Yes real great had.', '2020-09-08');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (7, '1928374858349', 5, 'Worldwide flawless rewind awful. Real fiction no movie. Great worldwide tv show book no movie.
Awful improvement well had real worldwide.', '2020-11-11');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (17, '3748596758431', 2, 'Rewatch again amazing tv show yes no watch. Watch greatly good awful bad flawless rewatch.
Amazing had improvement really good. Greatly improvement again movie comic.
Improvement again scenes flawless good. Comic had awful.', '2017-11-22');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (11, '2738490598231', 2, 'Had greatly done well. Well scenes had bad again movie improvement. Bad improvement comic tv show again.
Real bad amazing amazing read great awful. Amazing rewind amazing movie. Read flawless again fiction fiction watch.', '2016-04-07');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (5, '3748596758431', 5, 'Amazing had really rewind really amazing real improvement. Well rewatch alright comic well. Watch yes worldwide.', '2019-07-07');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (15, '9283745689127', 2, 'Rewatch bad watch improvement tv show improvement. Movie awful again alright scenes great awful. Fiction tv show no yes rewind.
Well flawless again really movie amazing done done. Good great bad worldwide.', '2019-10-17');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (2, '1928374858349', 1, 'Worldwide tv show read amazing again done. Well bad read awful bad greatly book. Yes awful had comic rewatch great done.  
Bad rewatch really yes. Done rewatch yes amazing.
Fiction had great watch comic. Worldwide no rewind scenes.', '2019-05-16');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (15, '2938475647361', 4, 'Rewatch again rewatch done. Really again no greatly. Alright rewatch good fiction. Book book scenes watch movie awful no.Flawless fiction worldwide had no. Good greatly improvement tv show. Awful bad done really tv show done flawless yes.', '2017-02-11');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (2, '9283745689127', 5, 'Scenes awful well alright again rewind great rewind. No watch awful watch worldwide alright. Comic flawless improvement well movie.
Movie done read. Fiction alright worldwide awful watch.', '2015-12-26');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (20, '3748596758431', 4, 'Alright greatly again no rewatch scenes. Alright flawless rewatch worldwide. Awful amazing rewind improvement scenes rewatch.', '2017-05-04');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (16, '1234567890123', 4, 'Well alright great movie fiction. Movie flawless amazing comic. Greatly read movie had great scenes.
Read rewind worldwide comic awful done bad. Good bad alright done amazing amazing.', '2018-05-04');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (13, '1234567890123', 4, 'Scenes worldwide rewatch. Good scenes again well good.
Read comic read tv show bad book had.
Great alright flawless greatly movie read. Again good again done real.
Flawless rewind well alright well. Great amazing fiction had.', '2021-10-03');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (3, '9842038473847', 2, 'Greatly worldwide worldwide worldwide. Again book bad worldwide had awful.
Read done again great had fiction comic.
Again good comic fiction.
No comic amazing bad comic. Had watch watch amazing no improvement book.', '2015-08-31');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (17, '1928374858349', 5, 'Amazing really yes read read again yes. Watch awful done. Book improvement really real again.
Well had bad. Tv Show again alright great really flawless watch.', '2018-08-07');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (16, '2738490598231', 3, 'Alright flawless had real watch scenes. Greatly amazing movie again flawless. Comic no read done had fiction read.', '2017-07-26');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (12, '1928374858349', 4, 'Real rewind really flawless worldwide book greatly. No real awful worldwide. Done flawless comic watch again.
Read book book rewind alright. Well scenes amazing awful bad really greatly worldwide.', '2018-11-03');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (17, '3748596758431', 3, 'Awful rewind good really. Rewind bad fiction real.
Great no tv show movie no watch. Done good yes movie. Scenes rewatch tv show awful.
Worldwide scenes rewind rewatch. Rewind tv show comic scenes. Real awful real alright had.', '2018-05-10');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (8, '9283745689127', 4, 'Book movie no rewatch had. No yes alright greatly. Had watch real good rewind great.
Really read greatly. Had rewatch comic fiction. Scenes awful no rewind alright scenes watch.', '2020-09-12');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (15, '1234567890123', 3, 'Fiction fiction real fiction fiction tv show. Amazing read real amazing. Scenes real had book read worldwide done.       
Awful worldwide flawless watch rewatch. Bad great worldwide well awful movie.
Real rewind had improvement.', '2021-08-13');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (17, '9283745689127', 2, 'Read scenes great flawless. Had rewind greatly comic rewind good.
Real watch real. Well flawless fiction scenes alright. Amazing rewind rewatch.
Read no watch great. Yes yes comic improvement greatly.', '2016-02-29');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (7, '9283745689127', 1, 'Read yes no improvement real. Tv Show comic really awful. Had really awful watch.
Well rewind yes fiction again. Rewatch rewatch flawless done watch really greatly. Had awful had. No movie done good.', '2020-05-13');

INSERT INTO public.rating(
        customer_id, isbn, rating, review, review_date)
        VALUES (20, '3748596758431', 3, 'Read had really comic amazing alright. Bad had well bad. Good good movie fiction. Improvement comic alright real done awful.
Improvement again real comic really. Rewind real greatly scenes. Done had well flawless amazing.', '2019-02-21');
