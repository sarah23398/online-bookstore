--- AUTHORS
INSERT INTO public.author(
	id, name, email, bio, website)
	VALUES ('1', 
			'John Smith', 
			'jsmith@example.org', 
			'John Smith is an author born and brought up in New York. He has written best seller novel "Burger Buns".', 
			'https://example.org'
		   );

INSERT INTO public.author(
	id, name, email, bio, website)
	VALUES ('2', 
			'Penelope Snicket', 
			'me@penelope.org', 
			'Penelope Snicket is known for her work in "Henry Screever and the Last Pizza", making her one of the youngest best-selling author.', 
			'https://penelope.org'
		   );

INSERT INTO public.author(
	id, name, email, bio, website)
	VALUES ('3', 
			'Piplup Pokemon', 
			'piplup@poke.mon', 
			'Piplup Pokemon has written out of these world novels. With their close work with Ash Ketchum, they shine in the Adventure genre.', 
			'https://poke.mon/authors/piplup'
		   );
		   
INSERT INTO public.author(
	id, name, email, bio, website)
	VALUES ('4', 
			'Ash Ketchum', 
			'ash@poke.mon', 
			'After having won the title of "Very Best Pokemon Trainer", Ash moved on to writing, publishing one of the best informative books "Pokemon Training 101".', 
			'https://poke.mon/authors/ash'
		   );

INSERT INTO public.author(
	id, name, email, bio, website)
	VALUES ('5', 
			'Michael Scott', 
			'mscott@dundermifflin.com', 
			'Famously known for his work in the Scranton branch of Dunder Mifflin, he wrote best-selling screenplay for "Threat Level Midnight".', 
			'https://dundermifflin.com'
		   );

--- PUBLISHERS
INSERT INTO public.publisher(
	id, name, email, phone, address, bank_account)
	VALUES ('1',
			'Acme Publishings',
			'https://example.org',
			'18881209384',
			'8467 Main St., Montreal, QC, Canada, H7J 9P7',
		    '92038475657848574321');

INSERT INTO public.publisher(
	id, name, email, phone, address, bank_account)
	VALUES ('2',
			'Snicket Publishings',
			'https://snicket.org',
			'18667890954',
			'956 Hunters Ave., Vancouver, BC, Canada, V7H 9L1',
		    '94857485012673461234');

INSERT INTO public.publisher(
	id, name, email, phone, address, bank_account)
	VALUES ('3',
			'Pokemon Publishing Co.',
			'https://poke.mon',
			'18009556789',
			'123 Pikachu Ave., Toronto, ON, Canada, M5J 2L9',
		    '12345678901221349876');

INSERT INTO public.publisher(
	id, name, email, phone, address, bank_account)
	VALUES ('4',
			'Dunder Mifflin Paper Co.',
			'https://dundermifflin.com',
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
			0.99
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
			0.99
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
			2.99
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
			0.13
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
			0.45
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
			0.10
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
			1.03
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
			1.87
		   );

--- GENRES
INSERT INTO public.genre(id, name) VALUES ('1', 'Fantasy');
INSERT INTO public.genre(id, name) VALUES ('2', 'Mystery');        
INSERT INTO public.genre(id, name) VALUES ('3', 'Romance');        
INSERT INTO public.genre(id, name) VALUES ('4', 'Science Fiction');
INSERT INTO public.genre(id, name) VALUES ('5', 'Thriller');       
INSERT INTO public.genre(id, name) VALUES ('6', 'Suspense');       
INSERT INTO public.genre(id, name) VALUES ('7', 'Western');        
INSERT INTO public.genre(id, name) VALUES ('8', 'Action');
INSERT INTO public.genre(id, name) VALUES ('9', 'Adventure');      
INSERT INTO public.genre(id, name) VALUES ('10', 'Classics');      
INSERT INTO public.genre(id, name) VALUES ('11', 'Comic Book');    
INSERT INTO public.genre(id, name) VALUES ('12', 'Graphic Novel'); 
INSERT INTO public.genre(id, name) VALUES ('13', 'Historical Fiction');
INSERT INTO public.genre(id, name) VALUES ('14', 'Horror');
INSERT INTO public.genre(id, name) VALUES ('15', 'Literary Fiction');
INSERT INTO public.genre(id, name) VALUES ('16', 'Non-Fiction');

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
INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('1','Kenneth Johnston', 'lawrencemary@example.org', 'lawrencemary', '1495448645', '623 Kelley Shores East Andreatown, NL C9S 2M3', '4140317516323400');
            
INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('2','Melissa Ortiz', 'kylemiles@example.net', 'kylemiles', '7248186758', '11383 Livingston Ferry West Dillonbury, QC P1C8P4', '4154040535871521');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('3','Lisa Caldwell', 'greencolin@example.org', 'greencolin', '2582121488', '6688 Hunter Divide Suite 582 New Cynthiahaven, NT H8T3K7', '4195626818495524');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('4','Mary Wright', 'josephrobinson@example.net', 'josephrobinson', '9238433089', '1427 Garcia Heights East Meganview, QC E8X4E4', '4083920360403084');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('5','William Patterson', 'bellbrett@example.com', 'bellbrett', '7261039222', '103 Johnson Tunnel Suite 073 East Dean, AB R9T1A4', '4709685436140606');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('6','Elizabeth Romero', 'tperez@example.com', 'tperez', '1573693466', '272 Thompson Rest Cruzhaven, NL K9E9L8', '4455677427871378');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)

            VALUES ('7','Hailey Meadows', 'brandonnguyen@example.org', 'brandonnguyen', '3480641943', '0046 Jennifer Neck New Hollyborough, NL K6T 7P7', '4332358717333721');
INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('8','Shawn Miller', 'dsimmons@example.com', 'dsimmons', '1500868658', '054 Bird Keys Andersonmouth, NT M9L5J6', '4344130940653548');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('9','Michael Knight', 'brownphilip@example.com', 'brownphilip', '2690874332', '456 John Dam Suite 791 North Wyattberg, NL N8X 4M1', '4692951946196929');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('10','Melanie Townsend', 'zandrews@example.net', 'zandrews', '5781126183', '466 Joshua Ports North Melissa, NB B3Y 3L8', '4721929934860776'); 

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('11','Karla Pierce', 'katrina66@example.com', 'katrina66', '2262551322', '797 Jillian Mews Suite 939 East Jeffrey, MB V5A 2T4', '4368630539800112');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('12','Erin Miller', 'cookrussell@example.net', 'cookrussell', '8072879528', '69529 Susan Shoal Suite 113 Carriefurt, ON G8Y7J8', '4087410878138345');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('13','Shane Cross', 'amy70@example.com', 'amy70', '0477219917', '5375 Carroll Crest Suite 027 South April, AB Y9B6A8', '4974405700912533');   

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('14','Lori Sanders', 'markherrera@example.net', 'markherrera', '0978996610', '8868 Walter Pines Apt. 098 Crawfordtown, QC C6E 9P3', '4316630516276669');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('15','Savannah Butler', 'chenbrittany@example.com', 'chenbrittany', '1020738381', '7474 Brooks Camp Apt. 615 South Steventown, AB T3C 3T9', '4231791118149324');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('16','Olivia Scott', 'harpercheryl@example.com', 'harpercheryl', '3699775088', '3275 Drew Forks Apt. 489 Stephanietown, MB P2N 6N6', '4892692431403085');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('17','Richard Smith', 'rwarner@example.net', 'rwarner', '8905210893', '93126 Stone Road Suite 814 Brandonberg, MB K8H8M7', '4434784697199229');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('18','Heather Carrillo', 'schmidteduardo@example.org', 'schmidteduardo', '8150027215', '842 Wade Rapid Sanchezmouth, NU E3V 4G9', '4744490259316681');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('19','Wendy Taylor', 'kimberly40@example.com', 'kimberly40', '8450102693', '20263 Heather Pine Suite 717 Patriciahaven, PE T8X5C3', '4331657199367383');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('20','Melissa Martinez', 'cookjoseph@example.net', 'cookjoseph', '7886408268', '26801 Tammy Dam Pearsonville, MB X8P5J3', '4714006873399634');

INSERT INTO public.customer(
            id, name, email, password, phone, address, bank_account)
            VALUES ('21','Leslie Barajas', 'john36@example.com', 'john36', '7538091875', '8337 Arthur Drives Port Ianport, QC B9P 3G4', '4607443452988844'); 
    
--- ORDERS AND SHIPMENTS

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('1', '4', '2020-01-26 05:44:20', '4674113960721361', '46877 Martin Causeway Suite 184 Harrisonland, NU J6N 9E1', '46877 Martin Causeway Suite 
184 Harrisonland, NU J6N 9E1', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('1', '2020-02-02', 'DELIVERED', '2020-02-03', '2020-02-06', '46877 Martin Causeway Suite 184 Harrisonland, NU J6N 9E1', '1');
    
INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('2', '2', '2020-02-04 18:18:37', '4549311527816624', '8231 Lopez Avenue Suite 519 Sextonhaven, ON S5P8T9', '88926 Bryan Crossing South Michael, ON E6A 5P3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2', '2020-02-11', 'DELIVERED', '2020-02-13', '2020-02-16', '88926 Bryan Crossing South Michael, ON E6A 5P3', '2');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('3', '16', '2017-07-23 17:16:00', '4788029235292033', '57193 Moore Junction Suite 250 Dawnville, QC R7K 8P1', '1829 Heather Harbors Apt. 655 Medinaside, YT X2N 7R5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('3', '2017-07-24', 'DELIVERED', '2017-07-26', '2017-07-29', '1829 Heather Harbors Apt. 655 Medinaside, YT X2N 7R5', '3');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('4', '17', '2015-10-01 19:17:00', '4149676321698111', '36451 Rodriguez Fork Masonview, NS G7P 7Y7', '3843 Joseph Forks Suite 670 Laurastad, NS M5E 5H7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('4', '2015-10-03', 'DELIVERED', '2015-10-10', '2015-10-11', '3843 Joseph Forks Suite 670 Laurastad, NS M5E 5H7', '4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('5', '19', '2019-05-28 22:35:17', '4456897254928492', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('5', '2019-06-02', 'DELIVERED', '2019-06-07', '2019-06-07', '9995 Dennis Motorway Gonzaleschester, PE P5N4N6', '5');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('6', '18', '2017-03-15 00:05:11', '4324235778641780', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('6', '2017-03-21', 'DELIVERED', '2017-03-25', '2017-03-28', '1376 Rivera Circle Apt. 014 Pattersontown, NU V5S 8A8', '6');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('7', '9', '2019-01-30 10:31:56', '4507575971388666', '6739 Maria Motorway Apt. 909 East Leonardville, NT B1S3V4', '89185 Kent Coves Suite 936 
Stephenborough, NS S2B4V8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('7', '2019-02-04', 'DELIVERED', '2019-02-09', '2019-02-09', '89185 Kent Coves Suite 936 Stephenborough, NS S2B4V8', '7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('8', '11', '2020-05-13 22:20:11', '4541844983104828', '184 David Island Apt. 716 South Tina, NT R3C6J3', '184 David Island Apt. 716 South Tina, NT R3C6J3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('8', '2020-05-16', 'DELIVERED', '2020-05-22', '2020-05-25', '184 David Island Apt. 716 South Tina, NT R3C6J3', '8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('9', '10', '2016-06-21 06:19:07', '4748845316414223', '5724 Julia Heights Williamsshire, NU V8T1S7', '99493 Rebecca Unions Carolberg, MB N8V8E4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('9', '2016-06-27', 'DELIVERED', '2016-07-03', '2016-07-04', '99493 Rebecca Unions Carolberg, MB N8V8E4', '9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('10', '20', '2020-06-12 23:02:47', '4036647423242344', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('10', '2020-06-13', 'DELIVERED', '2020-06-20', '2020-06-20', '6009 Ashley Heights Suite 110 New Aaronhaven, BC A6S2T3', '10');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('11', '7', '2019-07-16 19:44:47', '4651054507950450', '693 Kimberly Field New Greg, PE T7M8P9', '86926 Janet Overpass North Williamborough, NL T1T 6E6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('11', '2019-07-23', 'DELIVERED', '2019-07-28', '2019-07-31', '86926 Janet Overpass North Williamborough, NL T1T 6E6', '11');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('12', '21', '2015-08-27 13:27:13', '4567202461510280', '978 Dominguez Mountain Suite 572 North Kristinafurt, PE K1N 1A5', '956 Jeffrey Knoll Apt. 007 South Pamelaport, SK G5J7K8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('12', '2015-08-28', 'DELIVERED', '2015-09-02', '2015-09-03', '956 Jeffrey Knoll Apt. 007 South Pamelaport, SK G5J7K8', '12');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('13', '19', '2019-07-03 03:54:14', '4694214373620269', '0746 Mackenzie Mountain Apt. 873 Zamoraland, AB G5P 9T1', '353 Robinson Turnpike Raymondshire, ON Y5M 6P7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('13', '2019-07-07', 'DELIVERED', '2019-07-13', '2019-07-15', '353 Robinson Turnpike Raymondshire, ON Y5M 6P7', '13');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('14', '15', '2017-10-14 18:50:29', '4105557071644798', '041 Matthew Station Lopezton, SK A2H 4V4', '041 Matthew Station Lopezton, SK A2H 4V4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('14', '2017-10-21', 'DELIVERED', '2017-10-25', '2017-10-26', '041 Matthew Station Lopezton, SK A2H 4V4', '14');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('15', '18', '2018-07-17 19:48:42', '4986954895656047', '400 Hall Track Floresland, NT G3C4L7', '400 Hall Track Floresland, NT G3C4L7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('15', '2018-07-21', 'DELIVERED', '2018-07-28', '2018-07-28', '400 Hall Track Floresland, NT G3C4L7', '15');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('16', '13', '2020-06-07 13:48:15', '4643055977005551', '82323 John Falls North Lindsay, ON B3K7X6', '82323 John Falls North Lindsay, ON B3K7X6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('16', '2020-06-10', 'DELIVERED', '2020-06-13', '2020-06-15', '82323 John Falls North Lindsay, ON B3K7X6', '16');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('17', '10', '2017-11-07 11:27:51', '4946742747889463', '83524 Mason Garden Suite 447 Samanthamouth, PE H5L 1K4', '23442 Jennifer Forges Suite 
971 Christopherside, NB R7P1K4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('17', '2017-11-08', 'DELIVERED', '2017-11-13', '2017-11-14', '23442 Jennifer Forges Suite 971 Christopherside, NB R7P1K4', '17');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('18', '18', '2019-02-02 14:33:57', '4905656315362332', '370 Morris Gateway Sampsonport, YT N1E 3C5', '370 Morris Gateway Sampsonport, YT N1E 3C5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('18', '2019-02-05', 'DELIVERED', '2019-02-06', '2019-02-08', '370 Morris Gateway Sampsonport, YT N1E 3C5', '18');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('19', '6', '2018-07-26 23:29:37', '4536358812572722', '5489 Blair Trafficway Brownbury, SK S4Y3N9', '7317 Mark Burgs Port Johnstad, NT A3N9S2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('19', '2018-08-01', 'DELIVERED', '2018-08-02', '2018-08-04', '7317 Mark Burgs Port Johnstad, NT A3N9S2', '19');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('20', '19', '2020-08-27 06:52:09', '4013591883715927', '89482 Lane Fort East Bonnie, NT C5K1T5', '49995 Richardson Square Apt. 340 Joelberg, PE E2B9S8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('20', '2020-09-02', 'DELIVERED', '2020-09-06', '2020-09-06', '49995 Richardson Square Apt. 340 Joelberg, PE E2B9S8', '20');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('21', '9', '2019-12-10 16:32:58', '4405264258660823', '298 Anderson Estates Perezhaven, NS V7E 7Y7', '902 Christopher Dam Apt. 126 West Kurt, 
NT E7B2V7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('21', '2019-12-16', 'DELIVERED', '2019-12-21', '2019-12-23', '902 Christopher Dam Apt. 126 West Kurt, NT E7B2V7', '21');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('22', '16', '2016-09-19 13:39:52', '4152254469033584', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('22', '2016-09-22', 'DELIVERED', '2016-09-28', '2016-09-30', '294 Oconnell Trail Suite 994 North Ronaldton, ON C2L9S1', '22');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('23', '10', '2018-04-23 07:19:53', '4277450844477948', '84651 Baker Cove Donaldfurt, ON B7E 5H3', '3314 Smith Radial Apt. 130 South Davidshire, NL E5T 3R8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('23', '2018-04-24', 'DELIVERED', '2018-04-29', '2018-04-30', '3314 Smith Radial Apt. 130 South Davidshire, NL E5T 3R8', '23');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('24', '8', '2018-05-07 00:50:59', '4821034090700319', '989 Alvarez Alley Suite 054 South Ashley, BC G8L 3L9', '5227 Butler Wells Suite 644 Matthewhaven, NT C6K 5J7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('24', '2018-05-08', 'DELIVERED', '2018-05-14', '2018-05-15', '5227 Butler Wells Suite 644 Matthewhaven, NT C6K 5J7', '24');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('25', '6', '2017-07-18 15:39:38', '4694947816370618', '277 Smith Shore Amandaton, AB X7V 5J1', '5836 Christopher Corners Apt. 770 Bethhaven, MB N4L1P4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('25', '2017-07-20', 'DELIVERED', '2017-07-21', '2017-07-24', '5836 Christopher Corners Apt. 770 Bethhaven, MB N4L1P4', '25');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('26', '17', '2019-08-22 15:01:19', '4998590433184856', '25257 Amanda Turnpike Suite 179 South Melissa, NB Y4C 9V3', '314 Kelly Ports Suite 909 Levyshire, NB Y7G 1L4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('26', '2019-08-26', 'DELIVERED', '2019-08-28', '2019-08-31', '314 Kelly Ports Suite 909 Levyshire, NB Y7G 1L4', '26');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('27', '17', '2016-06-11 18:20:02', '4895385455323803', '5984 Jackson Light South Jasonchester, NL C6Y 5H2', '535 Heidi Parks Suite 415 Adammouth, ON C4Y 1S1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('27', '2016-06-12', 'DELIVERED', '2016-06-17', '2016-06-19', '535 Heidi Parks Suite 415 Adammouth, ON C4Y 1S1', '27');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('28', '17', '2018-08-10 23:59:05', '4146710672144772', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('28', '2018-08-14', 'DELIVERED', '2018-08-15', '2018-08-18', '1576 Katie Plains Apt. 986 New Timothy, YT H2L 2R1', '28');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('29', '8', '2018-04-25 04:12:17', '4106203856815845', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('29', '2018-04-29', 'DELIVERED', '2018-05-04', '2018-05-05', '71256 White Mountains Apt. 002 Matthewsfurt, PE P8G7G1', '29');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('30', '2', '2020-07-28 16:46:51', '4044563857592171', '13319 Samuel Drives Suite 143 Markfort, NU M7B 3K2', '91242 Jason Unions Jacobton, QC V6A 6M1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('30', '2020-08-01', 'DELIVERED', '2020-08-02', '2020-08-05', '91242 Jason Unions Jacobton, QC V6A 6M1', '30');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('31', '14', '2020-08-29 14:03:03', '4478993219715480', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('31', '2020-09-02', 'DELIVERED', '2020-09-05', '2020-09-07', '75265 Simpson Village Suite 387 Michelleshire, YT B9Y7B4', '31');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('32', '13', '2017-12-13 05:43:08', '4986606813356122', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('32', '2017-12-14', 'DELIVERED', '2017-12-16', '2017-12-19', '237 Randall Loop Suite 322 Whitneyborough, NB X1G4P1', '32');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('33', '5', '2019-11-02 18:36:42', '4475658852917809', '0928 Anderson Trail Apt. 807 Christensenfort, AB P6R 5L5', '2866 John Curve Stevenborough, NU N8E 3B5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('33', '2019-11-08', 'DELIVERED', '2019-11-12', '2019-11-15', '2866 John Curve Stevenborough, NU N8E 3B5', '33');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('34', '18', '2015-11-21 17:29:47', '4411311487155315', '7645 Darrell Forge Jenkinsside, AB G8R6L5', '5196 Elizabeth Throughway Apt. 998 East Terriview, ON J8K 5E1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('34', '2015-11-27', 'DELIVERED', '2015-12-04', '2015-12-06', '5196 Elizabeth Throughway Apt. 998 East Terriview, ON J8K 5E1', '34');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('35', '8', '2018-08-13 03:45:46', '4526255442728850', '20759 Larsen Points West Jennaberg, QC V4L8T3', '20759 Larsen Points West Jennaberg, QC V4L8T3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('35', '2018-08-17', 'DELIVERED', '2018-08-22', '2018-08-23', '20759 Larsen Points West Jennaberg, QC V4L8T3', '35');

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
