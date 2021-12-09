create table customer
	(ID         		varchar(8),
	 name				varchar(40),
	 email      		varchar(50),
	 password			varchar(20),
	 phone				varchar(11),
	 address			varchar(60),
	 bank_account		varchar(16),
	 primary key (ID)
	);
	
create table shipment
	(tracking_no   			varchar(8),
	 shipment_date			date,
	 shipping_status		varchar(10),
	 estimated_arrival		date,
	 arrival_date			date,
	 current_address		varchar(60),
	 order_id				varchar(8),
	 primary key (tracking_no)
	);

create table cust_order
	(ID					varchar(8),
	 tracking_no		varchar(8),
	 customer_id		varchar(8),
	 order_date			timestamp,
	 bank_account		varchar(16),
	 billing_address	varchar(60),
	 destination		varchar(60),
	 status				varchar(10),
	 primary key(ID),
	 foreign key (tracking_no) references shipment
	 	on delete set null,
	 foreign key (customer_id) references customer (ID)
	 	on delete cascade
	);

alter table shipment add constraint fk_shipment_order foreign key (order_id) references cust_order (ID);

create table genre
	(ID		varchar(8),
	 name	varchar(15),
	 primary key(ID)
	);
	
create table author
	(ID			varchar(8),
	 name		varchar(40),
	 email		varchar(50),
	 bio		varchar(255),
	 website	varchar(50),
	 primary key (ID)
	);

create table publisher
	(ID				varchar(8),
	 name			varchar(40),
	 email			varchar(50),
	 phone			varchar(11),
	 address		varchar(60),
	 bank_account	varchar(16),
	 primary key (ID)
	);

create table book
	(ISBN			varchar(13),
	 publisher_id	varchar(8),
	 title			varchar(50),
	 publish_date	date,
	 edition		numeric(2,0),
	 description	varchar(255),
	 price			numeric(5,2),
	 print_length	varchar(10),
	 stock			numeric(3,0),
	 publisher_fee	numeric(5,2),
	 primary key (ISBN),
	 foreign key (publisher_id) references publisher (ID)
	 	on delete set null
	);

create table finances
	(order_id		varchar(8),
	 ISBN			varchar(13),
	 quantity		numeric(3,0),
	 primary key (order_id, ISBN),
	 foreign key (order_id) references cust_order (ID)
	 	on delete cascade,
	 foreign key (ISBN) references book
	 	on delete cascade
	);

create table written_by
	(author_id	varchar(8),
	 ISBN		varchar(13),
	 primary key(author_id, ISBN),
	 foreign key(author_id) references author (ID)
	 	on delete cascade,
	 foreign key(ISBN) references book
	 	on delete cascade
	);

create table genre_contains
	(genre_id	varchar(8),
	 ISBN		varchar(13),
	 primary key(genre_id, ISBN),
	 foreign key(genre_id) references genre (ID)
	 	on delete cascade,
	 foreign key(ISBN) references book
	 	on delete cascade
	);
