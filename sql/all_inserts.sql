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
            VALUES ('1', '9', '2021-03-13', '4970457555388644', '105 Kaiser Lights Port Lori, NS N5K7A5', '105 Kaiser Lights Port Lori, NS N5K7A5', 'FULFILLED');
    
INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('1', '2021-03-17', 'DELIVERED', '2021-03-21', '2021-03-21', '105 Kaiser Lights Port Lori, NS N5K7A5');
    
INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('2', '3', '2020-07-09', '4167473642432496', '8374 Raymond Ports West Kristinfurt, QC B7C 8C4', '8374 Raymond Ports West Kristinfurt, QC B7C 8C4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('2', '2020-07-11', 'DELIVERED', '2020-07-12', '2020-07-15', '8374 Raymond Ports West Kristinfurt, QC B7C 8C4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('3', '21', '2021-07-25', '4122835634823474', '28046 Skinner Lights New Jonathonville, SK L4G 8E4', '52780 Morris Knolls Apt. 469 Port Jameshaven, MB E5M1X4', 
'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('3', '2021-08-01', 'DELIVERED', '2021-08-08', '2021-08-11', '52780 Morris Knolls Apt. 469 Port Jameshaven, MB E5M1X4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('4', '11', '2019-12-15', '4297633859730832', '5170 Taylor Square Suite 923 Weaverchester, NS V3V9J9', '9619 Colin Extension Ashleyshire, MB P1C3N2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('4', '2019-12-21', 'DELIVERED', '2019-12-22', '2019-12-25', '9619 Colin Extension Ashleyshire, MB P1C3N2');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('5', '14', '2017-05-26', '4996476911566271', '03976 Perez Radial Apt. 630 Mcdanielbury, NL P6M5B1', '3590 Jack Mission North Keithhaven, NT C1S5H3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('5', '2017-05-27', 'DELIVERED', '2017-06-03', '2017-06-03', '3590 Jack Mission North Keithhaven, NT C1S5H3');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('6', '10', '2016-03-07', '4487371995995858', '87846 Sharon Ranch Adamport, BC H7E3R2', '04579 Campbell Bridge Josephport, SK L9N8L8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('6', '2016-03-14', 'DELIVERED', '2016-03-21', '2016-03-24', '04579 Campbell Bridge Josephport, SK L9N8L8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('7', '14', '2017-06-19', '4265456025116795', '45663 Phillip Mills Suite 422 Gaineschester, NU B7A3V3', '45663 Phillip Mills Suite 422 Gaineschester, NU B7A3V3', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('7', '2017-06-24', 'DELIVERED', '2017-06-29', '2017-06-29', '45663 Phillip Mills Suite 422 Gaineschester, NU B7A3V3');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('8', '6', '2019-09-21', '4307280512445115', '50076 Berg Lake West Matthew, NB R3J 8B1', '73535 Cunningham Run Apt. 287 Johnsonbury, AB Y3B6G7', 'FULFILLED'); 

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('8', '2019-09-27', 'DELIVERED', '2019-10-04', '2019-10-07', '73535 Cunningham Run Apt. 287 Johnsonbury, AB Y3B6G7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('9', '18', '2015-09-03', '4264514189315248', '7745 Jason Square Apt. 752 Warnerburgh, PE M4M 1G2', '99067 Valerie Turnpike Apt. 809 East George, NL S1C5Y5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('9', '2015-09-04', 'DELIVERED', '2015-09-10', '2015-09-11', '99067 Valerie Turnpike Apt. 809 East George, NL S1C5Y5');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('10', '8', '2017-09-06', '4733588694382029', '66552 Davis Court Woodsshire, QC B1E 5J9', '66552 Davis Court Woodsshire, QC B1E 5J9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('10', '2017-09-07', 'DELIVERED', '2017-09-14', '2017-09-14', '66552 Davis Court Woodsshire, QC B1E 5J9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('11', '14', '2019-12-23', '4040253361340127', '1636 Doyle Bridge Apt. 205 Joshuachester, NL C1T 1C5', '06709 Sarah Motorway Harpertown, NL P2B 6X7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('11', '2019-12-30', 'DELIVERED', '2020-01-01', '2020-01-02', '06709 Sarah Motorway Harpertown, NL P2B 6X7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('12', '19', '2018-05-22', '4620118097505665', '710 Derrick Vista Apt. 353 Jessicaview, AB R9B 1C5', '30624 Merritt Curve Williamsshire, NB K7Y 7G8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('12', '2018-05-27', 'DELIVERED', '2018-06-01', '2018-06-03', '30624 Merritt Curve Williamsshire, NB K7Y 7G8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('13', '16', '2020-12-03', '4176185200191269', '012 Foster Meadows Shawnburgh, SK X6J 3H7', '1201 Randy Drives Suite 745 Port Ashley, YT A5P 8A2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('13', '2020-12-05', 'DELIVERED', '2020-12-10', '2020-12-13', '1201 Randy Drives Suite 745 Port Ashley, YT A5P 8A2');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('14', '5', '2020-03-03', '4557032724460391', '447 Flores Roads Suite 813 Lake Jennifer, YT J1V5L2', '270 Snyder Lights Port Roberttown, NT S9H8B7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('14', '2020-03-05', 'DELIVERED', '2020-03-10', '2020-03-11', '270 Snyder Lights Port Roberttown, NT S9H8B7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('15', '11', '2015-07-03', '4685391700825661', '8841 Carter Keys Suite 008 Port Catherine, NT K1L 9S4', '8841 Carter Keys Suite 008 Port Catherine, NT K1L 9S4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('15', '2015-07-06', 'DELIVERED', '2015-07-11', '2015-07-12', '8841 Carter Keys Suite 008 Port Catherine, NT K1L 9S4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('16', '1', '2020-08-03', '4388831739344457', '891 Peters Street East Shannon, YT L2E6J9', '238 Lisa Plain Ronaldfort, YT J7X6V7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('16', '2020-08-10', 'DELIVERED', '2020-08-16', '2020-08-19', '238 Lisa Plain Ronaldfort, YT J7X6V7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('17', '13', '2015-08-22', '4886992702681742', '914 Davidson Centers Suite 888 West Michael, QC R6Y 1A8', '914 Davidson Centers Suite 888 West Michael, QC R6Y 
1A8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('17', '2015-08-23', 'DELIVERED', '2015-08-28', '2015-08-31', '914 Davidson Centers Suite 888 West Michael, QC R6Y 1A8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('18', '8', '2021-01-28', '4128591567681413', '1712 Ian Villages Suite 905 Autumnburgh, MB C5M8N9', '1712 Ian Villages Suite 905 Autumnburgh, MB C5M8N9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('18', '2021-01-29', 'DELIVERED', '2021-01-31', '2021-02-01', '1712 Ian Villages Suite 905 Autumnburgh, MB C5M8N9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('19', '15', '2019-07-31', '4496320266853824', '1216 Robinson Flat Karenbury, NT J1J9G9', '1216 Robinson Flat Karenbury, NT J1J9G9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('19', '2019-08-03', 'DELIVERED', '2019-08-09', '2019-08-09', '1216 Robinson Flat Karenbury, NT J1J9G9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('20', '17', '2019-05-12', '4246529429422672', '32454 Hamilton Roads Thomasside, SK P5L 6E2', '32454 Hamilton Roads Thomasside, SK P5L 6E2', 'FULFILLED');     

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('20', '2019-05-16', 'DELIVERED', '2019-05-21', '2019-05-22', '32454 Hamilton Roads Thomasside, SK P5L 6E2');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('21', '5', '2017-01-08', '4543663246842885', '26534 Hill Circles East Ashley, NT V4Y 9M1', '26534 Hill Circles East Ashley, NT V4Y 9M1', 'FULFILLED');        

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('21', '2017-01-12', 'DELIVERED', '2017-01-16', '2017-01-19', '26534 Hill Circles East Ashley, NT V4Y 9M1');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('22', '7', '2017-03-13', '4745682904917637', '426 Jillian Camp East Johnberg, QC X7L 4R9', '426 Jillian Camp East Johnberg, QC X7L 4R9', 'FULFILLED');        

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('22', '2017-03-16', 'DELIVERED', '2017-03-22', '2017-03-24', '426 Jillian Camp East Johnberg, QC X7L 4R9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('23', '16', '2017-07-29', '4968873080543376', '74302 Bethany Shore Port Melissa, YT Y9R5R6', '74302 Bethany Shore Port Melissa, YT Y9R5R6', 'FULFILLED');     

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('23', '2017-08-05', 'DELIVERED', '2017-08-07', '2017-08-10', '74302 Bethany Shore Port Melissa, YT Y9R5R6');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('24', '8', '2016-11-07', '4833655924726686', '1449 Brian Spring Apt. 587 East David, SK G4L5T8', '24840 Brian Roads Shawntown, NS L4A3K4', 'FULFILLED');      

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('24', '2016-11-10', 'DELIVERED', '2016-11-14', '2016-11-16', '24840 Brian Roads Shawntown, NS L4A3K4');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('25', '18', '2020-04-23', '4246059049816228', '03320 Lopez Viaduct Livingstonhaven, MB G5C 3G1', '425 Fritz Lane Port Tonya, NT N7N 8V1', 'FULFILLED');       

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('25', '2020-04-25', 'DELIVERED', '2020-04-27', '2020-04-29', '425 Fritz Lane Port Tonya, NT N7N 8V1');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('26', '13', '2020-11-06', '4355092373514611', '939 Emily Light Ryanport, SK B9L1V2', '939 Emily Light Ryanport, SK B9L1V2', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('26', '2020-11-11', 'DELIVERED', '2020-11-18', '2020-11-21', '939 Emily Light Ryanport, SK B9L1V2');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('27', '20', '2020-05-13', '4600176965754066', '39268 Noble Rapids Franklinshire, NB G9L 9E3', '63488 Summers Rue Shafferbury, BC B8V 3M3', 'FULFILLED');      

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('27', '2020-05-14', 'DELIVERED', '2020-05-19', '2020-05-22', '63488 Summers Rue Shafferbury, BC B8V 3M3');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('28', '11', '2021-02-13', '4789700471629612', '527 Khan Skyway Apt. 536 Kimberlyview, NT S3C6N9', '90619 Peggy Hollow Apt. 535 New Kimberlyview, BC R6Y 4K5', 
'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('28', '2021-02-20', 'DELIVERED', '2021-02-21', '2021-02-24', '90619 Peggy Hollow Apt. 535 New Kimberlyview, BC R6Y 4K5');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('29', '3', '2018-08-18', '4400600192614035', '7870 Jones Circle Suite 248 New Jennifer, QC J3N 9L9', '23109 Heather Ridges Port Michaelland, SK S3X8R8', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('29', '2018-08-24', 'DELIVERED', '2018-08-29', '2018-08-30', '23109 Heather Ridges Port Michaelland, SK S3X8R8');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('30', '4', '2017-07-06', '4308722074680828', '798 Sarah Well North Tiffanyton, SK A3L5R8', '823 Paul Drive Apt. 246 Port Dylanchester, NT L7E3Y5', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('30', '2017-07-13', 'DELIVERED', '2017-07-20', '2017-07-23', '823 Paul Drive Apt. 246 Port Dylanchester, NT L7E3Y5');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('31', '8', '2015-12-24', '4605815531486779', '917 Todd Estate Suite 346 Guerreroshire, YT V5B5A8', '507 Kelly Drive Port Jessicafurt, NT A5R3N7', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('31', '2015-12-29', 'DELIVERED', '2015-12-30', '2015-12-31', '507 Kelly Drive Port Jessicafurt, NT A5R3N7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('32', '14', '2021-03-25', '4871523801635813', '2891 Katherine Junctions Port Christopherchester, MB N6N 7S3', '2910 Ross Mission Apt. 666 North Rhonda, BC A3C2K1', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('32', '2021-03-30', 'DELIVERED', '2021-04-01', '2021-04-01', '2910 Ross Mission Apt. 666 North Rhonda, BC A3C2K1');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('33', '11', '2017-11-26', '4181442321535434', '219 Michael Motorway Apt. 953 Lake Maria, YT T8C4K9', '219 Michael Motorway Apt. 953 Lake Maria, YT T8C4K9', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('33', '2017-12-01', 'DELIVERED', '2017-12-04', '2017-12-05', '219 Michael Motorway Apt. 953 Lake Maria, YT T8C4K9');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('34', '6', '2016-09-08', '4574283166591552', '12785 Jared Corner New Danieltown, NT P2H9H7', '12785 Jared Corner New Danieltown, NT P2H9H7', 'FULFILLED');    

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('34', '2016-09-11', 'DELIVERED', '2016-09-18', '2016-09-21', '12785 Jared Corner New Danieltown, NT P2H9H7');

INSERT INTO public."order"(
            id, customer_id, order_date, bank_account, billing_address, destination, status)
            VALUES ('35', '14', '2021-04-29', '4223184640493537', '319 Smith Trail Apt. 015 Mejialand, YT M6K3H4', '96682 Daniel Wells Suite 355 Kingport, NL E8X1L4', 'FULFILLED');

INSERT INTO public.shipment(
            tracking_no, shipment_date, shipping_status, estimated_arrival, arrival_date, current_address)
            VALUES ('35', '2021-05-06', 'DELIVERED', '2021-05-07', '2021-05-08', '96682 Daniel Wells Suite 355 Kingport, NL E8X1L4');

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
