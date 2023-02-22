create database magicstore;
use magicstore2;
show databases;
drop database magicstore2;
set @price = 40000;
select @price;
use magicstore;
create table MobilePhoneRecords(itemid int not null primary key, ItemName text not null, ItemCategory varchar(50) not null);
show columns from MobilePhoneRecords;
alter table MobilePhoneRecords add column ItemModel varchar(45) not null;
alter table MobilePhoneRecords add column ItemBrand varchar(40) not null after ItemCategory;
alter table MobilePhoneRecords add column duplicateid int not null first;
alter table MobilePhoneRecords drop column duplicateid;
alter table MobilePhoneRecords modify column ItemBrand text;
alter table  MobilePhoneRecords change ItemModel ItemModelNumber varchar(56) not null;
alter table  MobilePhoneRecords rename to MobilePhones;
show tables;
#truncate table MobilePhones; (use to remove all the items in the table created)
#drop table MobilePhones; (use to delete the table itself)
use magicstore;
show columns from MobilePhones;