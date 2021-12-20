create table customer
	(ID         		SERIAL,
	 name				varchar(40),
	 email      		varchar(50) NOT NULL UNIQUE,
	 password			varchar(20) NOT NULL,
	 phone				varchar(11),
	 address			varchar(80),
	 credit_card		varchar(20),
	 primary key (ID)
	);

create table "order"
	(ID					SERIAL,
	 customer_id		bigint,
	 order_date			timestamp,
	 credit_card		varchar(20) NOT NULL,
	 billing_address	varchar(80) NOT NULL,
	 destination		varchar(80) NOT NULL,
	 status				varchar(10),
	 primary key(ID),

	 foreign key (customer_id) references customer (ID)
	 	on delete cascade
	);

create table shipment
	(tracking_no   			SERIAL,
	 shipment_date			date,
	 shipping_status		varchar(10),
	 estimated_arrival		date,
	 arrival_date			date,
	 current_address		varchar(80),
	 order_id				bigint,
	 primary key (tracking_no),
	 foreign key (order_id) references "order" (ID)
	 	on delete cascade
	);

create table genre
	(ID		SERIAL,
	 name	varchar(20),
	 primary key(ID)
	);
	
create table author
	(ID			SERIAL,
	 name		varchar(40),
	 email		varchar(50),
	 bio		varchar(255),
	 website	varchar(50),
	 primary key (ID)
	);

create table publisher
	(ID				SERIAL,
	 name			varchar(40) NOT NULL,
	 email			varchar(50) NOT NULL,
	 phone			varchar(11) NOT NULL,
	 address		varchar(80) NOT NULL,
	 bank_account	varchar(20) NOT NULL,
	 primary key (ID)
	);

create table book
	(ISBN			varchar(13),
	 publisher_id	bigint,
	 title			varchar(50) NOT NULL,
	 publish_date	date NOT NULL,
	 edition		numeric(2,0),
	 description	varchar(255),
	 price			numeric(5,2),
	 print_length	numeric(4,0),
	 stock			numeric(3,0) NOT NULL,
	 publisher_fee	numeric(5,2),
	 primary key (ISBN),
	 foreign key (publisher_id) references publisher (ID)
	 	on delete set null
	);

create table finances
	(order_id		bigint,
	 ISBN			varchar(13),
	 quantity		numeric(3,0),
	 primary key (order_id, ISBN),
	 foreign key (order_id) references "order" (ID)
	 	on delete cascade,
	 foreign key (ISBN) references book
	 	on delete cascade
	);

create table written_by
	(author_id	bigint,
	 ISBN		varchar(13),
	 primary key(author_id, ISBN),
	 foreign key(author_id) references author (ID)
	 	on delete cascade,
	 foreign key(ISBN) references book
	 	on delete cascade
	);

create table "contains"
	(genre_id	bigint,
	 ISBN		varchar(13),
	 primary key(genre_id, ISBN),
	 foreign key(genre_id) references genre (ID)
	 	on delete cascade,
	 foreign key(ISBN) references book
	 	on delete cascade
	);

create table rating
	(ID				SERIAL,
	 customer_id	bigint,
	 ISBN			varchar(13),
	 rating			numeric(1,0) NOT NULL,
	 review			varchar(255),
	 review_date	date,
	 primary key(ID),
	 foreign key(customer_id) references customer (ID)
	 	on delete cascade,
	 foreign key(ISBN) references book
	 	on delete cascade
	);
