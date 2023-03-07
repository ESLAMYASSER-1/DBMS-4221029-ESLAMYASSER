
-- MySQL Storage Engines 
		-- 1- innoDB ==> supports foreign keys and indexes 
        -- 2- MyISAM ==> provides high-speed storage and full text searching
        -- 3- Example ==> used to teach developers how to create new storage engines 
        -- 4- ARCHIVE ==> used to store large amounts of data 
        -- 5- CVS    ==> stores data in text files seperated by commas 
        -- 6- BLACKHOLES ==> Accepts data but always returns empty 
        -- 7- FEDERATED ==> stores data in a remote database 



CREATE DATABASE Market;

USE Market;

CREATE TABLE IF NOT EXISTS customers(
	id int ,
    name varchar(255) not null,
    country varchar(255) not null,
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS orders(
	order_id int,
    order_name varchar(255) not null,
    purchase_date timestamp default current_timestamp(),
    PRIMARY KEY (order_id),
    foreign key(order_id) references customers(id)
    );
    
CREATE TABLE IF NOT EXISTS products(
	product_id int ,
    product_name varchar(255) not null,
    price varchar(255) not null,
    PRIMARY KEY (product_id),
    foreign key(product_id) references customers(id),
    foreign key(product_id) references orders(order_id)
    );    
    
 --  drop database Market;