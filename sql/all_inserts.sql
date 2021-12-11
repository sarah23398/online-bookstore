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
            VALUES ('1', '16', '2018-06-29', '4628465347992678', '071 Crystal Valley Port John, AB N3S 6E2', '071 Crystal Valley Port John, AB N3S 6E2', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('1', '2018-07-03', 'DELIVERED', '2018-07-05', '2018-07-08', '071 Crystal Valley Port John, AB N3S 6E2', '1');
    
INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('2', '11', '2017-03-15', '4059395268371461', '9745 Williams Harbors Apt. 198 Jonathanview, YT M2A8Y4', '9745 Williams Harbors Apt. 198 Jonathanview, YT M2A8Y4', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('2', '2017-03-22', 'DELIVERED', '2017-03-27', '2017-03-28', '9745 Williams Harbors Apt. 198 Jonathanview, YT M2A8Y4', '2');
    
INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('3', '2', '2018-03-22', '4188577368126531', '35506 Flores Square Suite 340 North Anthonychester, MB L4N 4Y9', '72274 Watson Spur Apt. 808 East Whitneyport, YT E8S 5P3', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('3', '2018-03-29', 'DELIVERED', '2018-04-01', '2018-04-01', '72274 Watson Spur Apt. 808 East Whitneyport, YT E8S 5P3', '3');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('4', '9', '2017-04-28', '4502443907607441', '267 Julia Stravenue North Sarashire, ON L3C1B8', '0827 Robert Manor Knappborough, QC K8M5X3', 'FULFILLED');      

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('4', '2017-05-04', 'DELIVERED', '2017-05-10', '2017-05-10', '0827 Robert Manor Knappborough, QC K8M5X3', '4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('5', '2', '2018-10-11', '4829872560758602', '92639 Hughes Field Apt. 601 Lake Kathleen, ON G3M8A3', '2015 Patricia Ramp South Susan, YT P4N 3K6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('5', '2018-10-16', 'DELIVERED', '2018-10-18', '2018-10-19', '2015 Patricia Ramp South Susan, YT P4N 3K6', '5');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('6', '11', '2021-03-03', '4005129313614442', '6235 Jerry Fork Apt. 437 Perezmouth, ON R8G 5L6', '6235 Jerry Fork Apt. 437 Perezmouth, ON R8G 5L6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('6', '2021-03-08', 'DELIVERED', '2021-03-15', '2021-03-18', '6235 Jerry Fork Apt. 437 Perezmouth, ON R8G 5L6', '6');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('7', '5', '2021-04-18', '4974287857762337', '7115 Anderson Court Lake Deannaburgh, NU E3R 2X3', '7115 Anderson Court Lake Deannaburgh, NU E3R 2X3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('7', '2021-04-25', 'DELIVERED', '2021-04-30', '2021-04-30', '7115 Anderson Court Lake Deannaburgh, NU E3R 2X3', '7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('8', '7', '2017-12-25', '4798129078689531', '609 Martin Manors Suite 380 Rachelburgh, SK S8L2J9', '514 Deborah Rue West Alexiston, NS J2H6S7', 'FULFILLED');  

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('8', '2017-12-28', 'DELIVERED', '2018-01-02', '2018-01-05', '514 Deborah Rue West Alexiston, NS J2H6S7', '8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('9', '7', '2020-03-24', '4898191067887103', '519 Sanchez Forge Suite 125 North Lisa, NU Y2R 7T6', '55535 Blanchard Plains Lake Ronaldtown, NS C4J 1A2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('9', '2020-03-28', 'DELIVERED', '2020-04-03', '2020-04-06', '55535 Blanchard Plains Lake Ronaldtown, NS C4J 1A2', '9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('10', '7', '2018-10-14', '4532782931128856', '744 Rhodes Squares Terriport, AB C6E7N8', '60807 Cindy Islands Apt. 947 Lake Rachaelstad, SK B6J 3X1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('10', '2018-10-21', 'DELIVERED', '2018-10-25', '2018-10-28', '60807 Cindy Islands Apt. 947 Lake Rachaelstad, SK B6J 3X1', '10');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('11', '9', '2017-04-12', '4517062697259511', '14346 Cardenas Crescent Suite 771 East Megan, BC X8C6K4', '14346 Cardenas Crescent Suite 771 East Megan, BC X8C6K4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('11', '2017-04-15', 'DELIVERED', '2017-04-17', '2017-04-18', '14346 Cardenas Crescent Suite 771 East Megan, BC X8C6K4', '11');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('12', '10', '2021-08-11', '4925269074030805', '87883 Schroeder Ports Apt. 371 Nancytown, BC X5S 3E9', '87883 Schroeder Ports Apt. 371 Nancytown, BC X5S 3E9', 
'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('12', '2021-08-13', 'DELIVERED', '2021-08-14', '2021-08-16', '87883 Schroeder Ports Apt. 371 Nancytown, BC X5S 3E9', '12');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('13', '4', '2020-10-27', '4909353416346952', '86706 Justin Square North Tammy, AB E6P7B9', '5243 Davis Brooks Brianland, NT K2L8H7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('13', '2020-10-28', 'DELIVERED', '2020-11-03', '2020-11-04', '5243 Davis Brooks Brianland, NT K2L8H7', '13');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('14', '3', '2020-01-09', '4452749009458925', '387 Dunn Corners Port Daltonbury, MB L2K8S8', '387 Dunn Corners Port Daltonbury, MB L2K8S8', 'FULFILLED');      

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('14', '2020-01-16', 'DELIVERED', '2020-01-22', '2020-01-24', '387 Dunn Corners Port Daltonbury, MB L2K8S8', '14');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('15', '14', '2021-12-02', '4957187031824782', '70981 Richardson Port Jameston, ON L8H3V5', '70981 Richardson Port Jameston, ON L8H3V5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('15', '2021-12-06', 'DELIVERED', '2021-12-13', '2021-12-14', '70981 Richardson Port Jameston, ON L8H3V5', '15');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('16', '13', '2021-05-02', '4427114714121577', '8827 Yang Shoals West Rachel, NS A6L6V1', '8827 Yang Shoals West Rachel, NS A6L6V1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('16', '2021-05-06', 'DELIVERED', '2021-05-09', '2021-05-11', '8827 Yang Shoals West Rachel, NS A6L6V1', '16');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('17', '21', '2015-11-22', '4511893336731536', '7859 Cortez Harbor Suite 099 Port Sara, MB X5X8A6', '7859 Cortez Harbor Suite 099 Port Sara, MB X5X8A6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('17', '2015-11-23', 'DELIVERED', '2015-11-26', '2015-11-29', '7859 Cortez Harbor Suite 099 Port Sara, MB X5X8A6', '17');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('18', '21', '2018-06-15', '4762917703949847', '2664 Chase Glen West Tammyview, NL S6V1A1', '725 Brooks Islands Apt. 012 Wardfurt, NT G7A7H1', 'FULFILLED');   

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('18', '2018-06-20', 'DELIVERED', '2018-06-22', '2018-06-22', '725 Brooks Islands Apt. 012 Wardfurt, NT G7A7H1', '18');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('19', '1', '2016-01-19', '4930645965176612', '580 Phelps River Suite 789 Raymondland, ON Y7R 1Y5', '20587 Blackwell Lane West Malik, NS T7N1A8', 'FULFILLED');
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('19', '2016-01-24', 'DELIVERED', '2016-01-31', '2016-02-02', '20587 Blackwell Lane West Malik, NS T7N1A8', '19');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('20', '20', '2020-01-24', '4802557203899829', '5593 Jeffrey Stravenue Suite 242 West Curtis, BC P2A8N8', '5593 Jeffrey Stravenue Suite 242 West Curtis, BC P2A8N8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('20', '2020-01-26', 'DELIVERED', '2020-01-30', '2020-02-01', '5593 Jeffrey Stravenue Suite 242 West Curtis, BC P2A8N8', '20');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('21', '11', '2021-09-22', '4036704682361933', '5954 Thomas Mission Port Donna, BC G3A8S3', '5954 Thomas Mission Port Donna, BC G3A8S3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('21', '2021-09-24', 'DELIVERED', '2021-10-01', '2021-10-03', '5954 Thomas Mission Port Donna, BC G3A8S3', '21');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('22', '15', '2021-08-26', '4706909686328502', '189 Conner Plains Apt. 083 East Frank, YT N7R8T3', '189 Conner Plains Apt. 083 East Frank, YT N7R8T3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('22', '2021-09-01', 'DELIVERED', '2021-09-07', '2021-09-09', '189 Conner Plains Apt. 083 East Frank, YT N7R8T3', '22');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('23', '19', '2017-11-27', '4129621780787694', '843 Jones Hill Henrybury, QC R3X 1M4', '843 Jones Hill Henrybury, QC R3X 1M4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('23', '2017-12-02', 'DELIVERED', '2017-12-09', '2017-12-12', '843 Jones Hill Henrybury, QC R3X 1M4', '23');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('24', '13', '2016-05-31', '4392060302553484', '359 Ruben Mountain Paulstad, PE T1N7N8', '359 Ruben Mountain Paulstad, PE T1N7N8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('24', '2016-06-06', 'DELIVERED', '2016-06-09', '2016-06-12', '359 Ruben Mountain Paulstad, PE T1N7N8', '24');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('25', '1', '2016-09-04', '4752504030655446', '526 Lawson Gateway Suite 114 Kennethchester, NS Y6N 7X6', '526 Lawson Gateway Suite 114 Kennethchester, NS Y6N 7X6', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('25', '2016-09-05', 'DELIVERED', '2016-09-07', '2016-09-07', '526 Lawson Gateway Suite 114 Kennethchester, NS Y6N 7X6', '25');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('26', '5', '2016-08-07', '4339489785729723', '01588 Roberts Flats New Cathyfort, NS N5E 6A7', '77011 Megan Land Staceymouth, SK G1L 6J2', 'FULFILLED');       

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('26', '2016-08-09', 'DELIVERED', '2016-08-15', '2016-08-16', '77011 Megan Land Staceymouth, SK G1L 6J2', '26');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('27', '18', '2017-10-19', '4685689846515751', '0601 Campbell Glens North Anthony, ON M9L3T8', '0601 Campbell Glens North Anthony, ON M9L3T8', 'FULFILLED');   

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('27', '2017-10-21', 'DELIVERED', '2017-10-23', '2017-10-24', '0601 Campbell Glens North Anthony, ON M9L3T8', '27');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('28', '15', '2021-10-27', '4264173291902912', '657 Erin Garden Apt. 839 Scottmouth, NL P6X1J4', '657 Erin Garden Apt. 839 Scottmouth, NL P6X1J4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('28', '2021-10-30', 'DELIVERED', '2021-11-02', '2021-11-05', '657 Erin Garden Apt. 839 Scottmouth, NL P6X1J4', '28');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('29', '10', '2019-04-12', '4166401017424054', '5859 Hopkins Locks Richmondmouth, QC B6R 1K7', '5859 Hopkins Locks Richmondmouth, QC B6R 1K7', 'FULFILLED');   

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('29', '2019-04-14', 'DELIVERED', '2019-04-21', '2019-04-23', '5859 Hopkins Locks Richmondmouth, QC B6R 1K7', '29');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('30', '21', '2019-06-02', '4187485527192645', '43475 Chad Stravenue Lake Matthewfurt, PE L9M 9L8', '43475 Chad Stravenue Lake Matthewfurt, PE L9M 9L8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('30', '2019-06-06', 'DELIVERED', '2019-06-08', '2019-06-08', '43475 Chad Stravenue Lake Matthewfurt, PE L9M 9L8', '30');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('31', '15', '2021-04-24', '4612721682462042', '074 Shannon Road Suite 315 South Manuelborough, SK T7T4M4', '1783 Watts Lock Watkinstown, QC X7L 1C8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('31', '2021-04-27', 'DELIVERED', '2021-04-30', '2021-04-30', '1783 Watts Lock Watkinstown, QC X7L 1C8', '31');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('32', '14', '2019-06-27', '4289598574181969', '946 Drake Lights Suite 119 Kerrtown, PE T5N 5H2', '946 Drake Lights Suite 119 Kerrtown, PE T5N 5H2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('32', '2019-06-29', 'DELIVERED', '2019-07-02', '2019-07-02', '946 Drake Lights Suite 119 Kerrtown, PE T5N 5H2', '32');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('33', '8', '2017-11-23', '4616953375659883', '96806 Taylor Haven Suite 385 Lake Autumnshire, AB M6Y 4S9', '96806 Taylor Haven Suite 385 Lake Autumnshire, AB M6Y 4S9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('33', '2017-11-24', 'DELIVERED', '2017-11-26', '2017-11-29', '96806 Taylor Haven Suite 385 Lake Autumnshire, AB M6Y 4S9', '33');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('34', '13', '2015-11-09', '4412077274549536', '73181 Morales Passage East Amy, BC H9H5Y2', '73181 Morales Passage East Amy, BC H9H5Y2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('34', '2015-11-15', 'DELIVERED', '2015-11-16', '2015-11-16', '73181 Morales Passage East Amy, BC H9H5Y2', '34');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('35', '13', '2019-09-05', '4274756204923013', '5403 Adams Streets Suite 225 West Matthewbury, YT R3R 6K5', '0725 Amanda Ports Bookerville, AB P8T4T9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address, order_id)
            VALUES ('35', '2019-09-10', 'DELIVERED', '2019-09-16', '2019-09-17', '0725 Amanda Ports Bookerville, AB P8T4T9', '35');

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
