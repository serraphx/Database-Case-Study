CREATE TABLE CUSTOMER
(	CUST_ID int primary key,
	CUST_NAME varchar(30) not null,
	CUST_STATE varchar(11) not null,
	CUST_CITY varchar(50) not null
)

CREATE TABLE BID
(	BID_ID int primary key,
	CUST_ID int foreign key references CUSTOMER (CUST_ID),
	BID_DATE date not null,
	BID_TOTAL_AMOUNT numeric(10, 2) not null
)

CREATE TABLE REPAIR
(	REPAIR_ID int primary key,
	BID_ID int foreign key references BID (BID_ID),
	REPAIR_HOURS numeric(7, 2) not null,
	REPAIR_TOTAL_COST numeric(10, 2) not null
)

CREATE TABLE SUPPLIER
(	SUPPLIER_ID int primary key,
	SUPPLIER_NAME varchar(50) not null,
	SUPPLIER_ADDRESS varchar(50) not null
)

CREATE TABLE CUSTOMER_PAYMENT
(	CUST_PAYMENT_ID int primary key,
	CUST_ID int foreign key references CUSTOMER (CUST_ID),
	PAYMENT_AMOUNT float not null,
	PAYMENT_DATE date not null,
	TOTAL_AMOUNT_DUE float not null
)

CREATE TABLE MATERIAL
(	MATERIAL_ID int primary key,
	SUPPLIER_ID int foreign key references SUPPLIER (SUPPLIER_ID),
	REPAIR_ID int foreign key references REPAIR (REPAIR_ID),
	MATERIAL_DESC varchar(50) not null,
	MATERIAL_COST float not null
)

CREATE TABLE SUPPLIER_PAYMENT
(	SUPPLIER_PAYMENT_ID int primary key,
	SUPPLIER_ID int foreign key references SUPPLIER (SUPPLIER_ID),
	PAYMENT_AMOUNT float not null,
	PAYMENT_DATE date not null,
	TOTAL_AMOUNT_DUE float not null
)