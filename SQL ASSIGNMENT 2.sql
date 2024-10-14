#create database sales
create database sales;
use sales;
#create a table orders
create table orders(order_id int not null primary key,customer_name varchar(30) not null, product_category varchar(30) not null,
ordered_item varchar(30) not null, contact_number varchar(10) unique not null);
desc orders;

#add new colum to the table

alter table orders add column order_quantity int;
desc orders;
rename table orders to SALES_ORDERS;

#insert 10 ROWS INTO THE SALES_ORDERS TABLE

insert into sales_orders(order_id,customer_name,product_category,ordered_item, contact_number,order_quantity)values
(100,'jo','electronics','laptop',8796543558, 10),
(101,'mathew','furniture','sofa',2368987536, 3),
(102,'joshua', 'electronics','fridge',9854327670,1),
(103,'alby','electronics','washing mechin',3556899988,2),
(104,'eby','electronics','laptop',9567677743,4),
(105,'sijo','electronics','phone',7854324579,3),
(106,'duvan','electronics','laptop',3456789567,6),
(107,'litto','electronics', 'laptop',9897764976,8),
(108,'zinto','electronics','laptop',3678987000,4),
(109,'arjun','electronics','laptop',9235465999,9),
(110,'peter','furniture','table',9191039955,4);
select* from sales_orders;

#retrieve customer_name and ordered_item from the sales_orders table

select customer_name,ordered_item from sales_orders;

#use the update command to change the name of the product for any row.

update sales_orders set ordered_item='laptop'where order_id=102;
select* from sales_orders;

#delete the sales_orders table from the database
drop table sales_orders;
desc sales_orders;




