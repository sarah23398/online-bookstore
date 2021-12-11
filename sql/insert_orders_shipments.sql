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