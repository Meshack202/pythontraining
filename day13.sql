# EXERCISE
# CREATE A DATABASE FOR THE SUPERMARKET WITH THE NAME PASTAMANSUPERMARKET
# IN THE DATABASE CREATE A FOR ELECTRONICS ITEMS AND ANOTHER TABLE FOR FOOD ITEMS
# BOTH TABLES SHOULD HAVE THE FOLLOWING COLUMNS NAME YOU WILL DETERMINE THE DATA TYPES AND EACH CONSTRAINS
# ITEMID, ITEMNAME, ITEMDESCRIPTION, ITEMCONDITION, ITEMPRICE, ITEMQUANTITY, BRANCHLOCATION
create database PASTAMANSUPERMARKET;
use PASTAMANSUPERMARKET;
create table electronicsitems(itemid int not null primary key, itemname varchar(46) not null, itemdescription varchar(70) not null, itemcondition text not null, itemprice int not null, itemquantity int not null, branchlocation varchar(50) not null);
show columns from electronicsitems;

create table fooditems(itemid int not null primary key, itemname text not null, itemdescription varchar(100) not null, itemcondition varchar(40) not null, itemprice int not null, itemquantity int not null, branchlocation varchar(50) not null);
show columns from fooditems;

#fooditems
#MYSQL QUERY: use to manipulate datas in the mysql
# 1. select query
select * from fooditems;
select foodid,foodname,itemcondition from fooditems;

#. insert
insert into fooditems(foodid,foodname,itemdescription,itemcondition,itemprice,itemquantity,branchlocation) values
(1, 'Golden Penny', 'Indomie', 'Perishable',150,5500, 'Wuse2 Abuja'),
(2, 'Good Mama', 'Rice', 'Perishable',40000,500, 'Kubwa Abuja'),
(3, 'Gino', 'Big Can Tomato', 'Perishable',1500,1000, 'Dutse Abuja'),
(4, 'Gino', 'Paste', 'Perishable',200,5000, 'Dutse Abuja'),
(5, 'Dangote', 'Sugar', 'Perishable',3000,800, 'Deidei Abuja'),
(6, 'Good Mama', 'Rice', 'Perishable',40000,700, 'Gwarinpa Abuja');

select * from fooditems;

# 3. UPDATE query
# to change the quantity of Dangote Sugar from 800 to 1500

update fooditems set itemquantity = 1500 where foodid = 5;

#3. delete query
# to delete Good Mama Rice at Kubwa branch because the item is finished

delete from fooditems where foodid = 2;

#to select from a particular branch
select * from fooditems where branchlocation = 'Wuse2 Abuja';



