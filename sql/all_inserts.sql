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
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('1', '2015-12-31', 'DELIVERED', '2016-01-01', '2016-01-03', '38306 Justin Junctions Maryberg, NL G4L 4X1');
    
INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('1', '1', '14', '2015-12-29', '4841894558999588', '7095 Walker Fords Apt. 778 South Brandimouth, NT X6S 4P6', '38306 Justin Junctions Maryberg, NL G4L 4X1', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('2', '2021-10-07', 'DELIVERED', '2021-10-10', '2021-10-10', '50754 James Isle New Rebecca, NU P1T 9N8');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('2', '2', '5', '2021-09-30', '4221429886430962', '42758 Tara Centers Apt. 299 Port Cindychester, PE A6J2R6', '50754 James Isle New Rebecca, NU P1T 9N8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('3', '2017-11-16', 'DELIVERED', '2017-11-21', '2017-11-24', '056 Craig Key Apt. 366 Lake Larrytown, NL X6Y9H5');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('3', '3', '16', '2017-11-09', '4683964753342628', '056 Craig Key Apt. 366 Lake Larrytown, NL X6Y9H5', '056 Craig Key Apt. 366 Lake Larrytown, 
NL X6Y9H5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('4', '2017-02-22', 'DELIVERED', '2017-02-27', '2017-03-01', '56105 Newman Rapid Lake Lisa, BC B2T9S6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('4', '4', '2', '2017-02-21', '4329256445657988', '358 Jacqueline Point Suite 353 East Rhondabury, BC K2T 2N1', '56105 Newman Rapid Lake Lisa, 
BC B2T9S6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('5', '2017-02-01', 'DELIVERED', '2017-02-08', '2017-02-08', '2852 Michael Haven Port Benjamin, YT C2B3N6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('5', '5', '11', '2017-01-25', '4929424319728673', '2852 Michael Haven Port Benjamin, YT C2B3N6', '2852 Michael Haven Port Benjamin, YT C2B3N6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('6', '2018-01-20', 'DELIVERED', '2018-01-21', '2018-01-23', '1177 Ross Vista Apt. 145 Chenmouth, NT X5M 3H5');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('6', '6', '8', '2018-01-17', '4469770617684315', '664 Kevin Landing Lake Antonioton, AB P5Y4R7', '1177 Ross Vista Apt. 145 Chenmouth, NT X5M 3H5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('7', '2021-08-15', 'DELIVERED', '2021-08-16', '2021-08-18', '2628 Matthew Isle Suite 274 East Margaretchester, NT P3T2V6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('7', '7', '7', '2021-08-10', '4372892151877802', '2628 Matthew Isle Suite 274 East Margaretchester, NT P3T2V6', '2628 Matthew Isle Suite 274 East Margaretchester, NT P3T2V6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('8', '2020-07-31', 'DELIVERED', '2020-08-05', '2020-08-06', '6732 Graham Motorway Apt. 939 Bryanmouth, MB H4M4N1');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('8', '8', '1', '2020-07-24', '4178743462652093', '6732 Graham Motorway Apt. 939 Bryanmouth, MB H4M4N1', '6732 Graham Motorway Apt. 939 Bryanmouth, MB H4M4N1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('9', '2018-04-22', 'DELIVERED', '2018-04-24', '2018-04-25', '82243 Brianna Parkways Suite 016 West Kevinborough, PE L7C 6G6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('9', '9', '5', '2018-04-21', '4909210775603458', '575 Catherine Branch North Steven, NT H2E 1T3', '82243 Brianna Parkways Suite 016 West Kevinborough, PE L7C 6G6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('10', '2019-07-27', 'DELIVERED', '2019-08-02', '2019-08-02', '95159 Jerry Road Apt. 541 Wilsonmouth, NL A6E6V8');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('10', '10', '5', '2019-07-25', '4983704579303751', '32022 Ellis Expressway Osbornetown, NS G6J 1T6', '95159 Jerry Road Apt. 541 Wilsonmouth, NL A6E6V8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('11', '2019-06-16', 'DELIVERED', '2019-06-23', '2019-06-26', '873 Simpson Stream Apt. 762 Mckeefurt, SK V5C3N2');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('11', '11', '10', '2019-06-12', '4955723835984638', '873 Simpson Stream Apt. 762 Mckeefurt, SK V5C3N2', '873 Simpson Stream Apt. 762 Mckeefurt, SK V5C3N2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('12', '2018-05-16', 'DELIVERED', '2018-05-17', '2018-05-18', '6340 Patricia Greens East Emilychester, YT T2E7X5');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('12', '12', '9', '2018-05-15', '4184687656006024', '24194 Christopher Shoal Apt. 861 Lake Evelynton, SK V3B8A4', '6340 Patricia Greens East Emilychester, YT T2E7X5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('13', '2018-05-11', 'DELIVERED', '2018-05-13', '2018-05-15', '68019 Robinson Hollow Kristinside, NT E7H 8A6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('13', '13', '20', '2018-05-05', '4027441712849824', '29021 Matthew Estates Suite 723 Millerland, ON M6V 6B8', '68019 Robinson Hollow Kristinside, NT E7H 8A6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('14', '2016-10-09', 'DELIVERED', '2016-10-11', '2016-10-14', '08416 Jackson Spur Toddmouth, YT T7L1S8');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('14', '14', '17', '2016-10-08', '4594290589824870', '08416 Jackson Spur Toddmouth, YT T7L1S8', '08416 Jackson Spur Toddmouth, YT T7L1S8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('15', '2018-09-03', 'DELIVERED', '2018-09-09', '2018-09-10', '959 Gallagher Mount New Cathy, QC K4L 4L3');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('15', '15', '9', '2018-08-29', '4519264241783412', '959 Gallagher Mount New Cathy, QC K4L 4L3', '959 Gallagher Mount New Cathy, QC K4L 4L3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('16', '2017-03-31', 'DELIVERED', '2017-04-05', '2017-04-05', '5751 Mark Mountains Apt. 859 Lake Gregory, ON M7T 6C4');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('16', '16', '2', '2017-03-25', '4786408342370860', '5751 Mark Mountains Apt. 859 Lake Gregory, ON M7T 6C4', '5751 Mark Mountains Apt. 859 Lake Gregory, ON M7T 6C4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('17', '2018-08-24', 'DELIVERED', '2018-08-29', '2018-08-31', '45346 John Port Webbtown, BC B3S 7G7');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('17', '17', '15', '2018-08-19', '4723650705111235', '45346 John Port Webbtown, BC B3S 7G7', '45346 John Port Webbtown, BC B3S 7G7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('18', '2018-02-17', 'DELIVERED', '2018-02-20', '2018-02-20', '85786 Cindy Lakes Suite 260 New Colleen, NB B2Y1R3');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('18', '18', '19', '2018-02-12', '4700675474706565', '85786 Cindy Lakes Suite 260 New Colleen, NB B2Y1R3', '85786 Cindy Lakes Suite 260 New Colleen, NB B2Y1R3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('19', '2020-10-31', 'DELIVERED', '2020-11-04', '2020-11-05', '807 Glenn Harbor Jenniferton, BC B8G3G3');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('19', '19', '8', '2020-10-28', '4274836915409393', '6663 David Divide Apt. 301 Martinezstad, NB H7X 1L5', '807 Glenn Harbor Jenniferton, BC B8G3G3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('20', '2018-11-02', 'DELIVERED', '2018-11-09', '2018-11-12', '340 Williams Shores West Craigland, PE X6K7N9');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('20', '20', '21', '2018-10-30', '4435462895468626', '8422 Gary Wall East Derekmouth, YT C4Y8X9', '340 Williams Shores West Craigland, PE X6K7N9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('21', '2017-01-13', 'DELIVERED', '2017-01-20', '2017-01-20', '88081 Paul Bridge Apt. 114 South Jasonmouth, NT J4N 4X3');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('21', '21', '6', '2017-01-12', '4662984872841198', '939 Morgan Shoal West Karashire, NL M1M4L6', '88081 Paul Bridge Apt. 114 South Jasonmouth, NT J4N 4X3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('22', '2020-02-27', 'DELIVERED', '2020-02-29', '2020-03-03', '446 Darrell Mews Lake Roseton, ON J6K2G6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('22', '22', '3', '2020-02-24', '4291448516011500', '446 Darrell Mews Lake Roseton, ON J6K2G6', '446 Darrell Mews Lake Roseton, ON J6K2G6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('23', '2020-08-31', 'DELIVERED', '2020-09-03', '2020-09-03', '320 Peterson Terrace West Johnborough, ON X9Y1J5');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('23', '23', '5', '2020-08-30', '4381881003100231', '320 Peterson Terrace West Johnborough, ON X9Y1J5', '320 Peterson Terrace West Johnborough, ON X9Y1J5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('24', '2020-06-08', 'DELIVERED', '2020-06-10', '2020-06-13', '059 Garza Court Suite 046 Robertstad, NL X2X 1T9');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('24', '24', '15', '2020-06-03', '4437279311446046', '059 Garza Court Suite 046 Robertstad, NL X2X 1T9', '059 Garza Court Suite 046 Robertstad, NL X2X 1T9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('25', '2021-09-17', 'DELIVERED', '2021-09-18', '2021-09-18', '16569 Irwin Wells Suite 340 Mcdowellside, AB J2E 6X9');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('25', '25', '17', '2021-09-11', '4954835697565163', '72774 Brenda Valley Jessicaborough, NT L2R2T8', '16569 Irwin Wells Suite 340 Mcdowellside, AB J2E 6X9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('26', '2018-06-05', 'DELIVERED', '2018-06-09', '2018-06-11', '748 Stephanie Gardens Wardbury, NB R5J 6R1');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('26', '26', '13', '2018-06-02', '4590129546510475', '748 Stephanie Gardens Wardbury, NB R5J 6R1', '748 Stephanie Gardens Wardbury, NB R5J 6R1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('27', '2021-09-11', 'DELIVERED', '2021-09-13', '2021-09-14', '5740 Potter Gardens Edwardston, SK K4H6X1');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('27', '27', '13', '2021-09-07', '4648803988132780', '9551 Rodriguez Causeway Andrewborough, NB V5X 7R6', '5740 Potter Gardens Edwardston, SK K4H6X1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('28', '2017-11-10', 'DELIVERED', '2017-11-17', '2017-11-19', '372 Hall Haven Suite 462 Lake Brian, BC J5H4H6');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('28', '28', '21', '2017-11-08', '4187834269029236', '372 Hall Haven Suite 462 Lake Brian, BC J5H4H6', '372 Hall Haven Suite 462 Lake Brian, BC J5H4H6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('29', '2016-01-13', 'DELIVERED', '2016-01-17', '2016-01-19', '28269 Jackson View West Jeffrey, ON R2Y2V7');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('29', '29', '2', '2016-01-07', '4012456926619554', '28269 Jackson View West Jeffrey, ON R2Y2V7', '28269 Jackson View West Jeffrey, ON R2Y2V7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('30', '2020-09-21', 'DELIVERED', '2020-09-23', '2020-09-23', '5228 Randall Centers East Ericaport, SK J3L1N1');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('30', '30', '1', '2020-09-14', '4858718331642589', '5228 Randall Centers East Ericaport, SK J3L1N1', '5228 Randall Centers East Ericaport, SK 
J3L1N1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('31', '2021-02-23', 'DELIVERED', '2021-02-25', '2021-02-25', '1733 James Mountain Suite 033 West Shaun, SK C7T 4V7');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('31', '31', '2', '2021-02-21', '4960504816541065', '1733 James Mountain Suite 033 West Shaun, SK C7T 4V7', '1733 James Mountain Suite 033 West Shaun, SK C7T 4V7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('32', '2021-07-22', 'DELIVERED', '2021-07-27', '2021-07-30', '63334 Garrett Flat Suite 033 Laurenshire, NB X1R 8B4');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('32', '32', '1', '2021-07-18', '4079920586416353', '63334 Garrett Flat Suite 033 Laurenshire, NB X1R 8B4', '63334 Garrett Flat Suite 033 Laurenshire, NB X1R 8B4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('33', '2019-03-28', 'DELIVERED', '2019-03-30', '2019-03-31', '48056 Tamara Cove South Lisafort, NB R1T6K5');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('33', '33', '1', '2019-03-23', '4253259518472137', '989 Larson Pines Suite 295 North Allisonbury, QC L7Y 6X5', '48056 Tamara Cove South Lisafort, NB R1T6K5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('34', '2016-10-11', 'DELIVERED', '2016-10-17', '2016-10-18', '2663 Karen Crescent Roberthaven, NL M6R2P2');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('34', '34', '16', '2016-10-06', '4049820671879589', '2663 Karen Crescent Roberthaven, NL M6R2P2', '2663 Karen Crescent Roberthaven, NL M6R2P2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('35', '2019-05-31', 'DELIVERED', '2019-06-03', '2019-06-04', '739 Emily Park Aliciafort, AB R3V1M7');

INSERT INTO public."order"(
            id, tracking_no, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('35', '35', '10', '2019-05-27', '4535562591203489', '739 Emily Park Aliciafort, AB R3V1M7', '739 Emily Park Aliciafort, AB R3V1M7', 'FULFILLED');
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
