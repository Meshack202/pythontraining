create database practice;
use practice;
create table mywork(brandid int not null primary key, brand text not null,screensize float not null);
insert into mywork(brandid, brand, screensize) values
(1, 'A', 1.1),
(2, 'A', 1.2),
(3, 'A', 1.1),
(4, 'B', 1.1),
(5, 'B', 1.1),
(6, 'A', 1.2),
(7, 'C', 1.2),
(8, 'C', 1.1),
(9, 'A', 1.3),
(10, 'B', 1.2),
(11, 'A', 1.1),
(12, 'D', 1.2),
(13, 'C', 1.1),
(14, 'D', 1.2);

select * from mywork;
# what is the distribution of device by screensize for each brand?
select brand, screensize, count(screensize) from mywork group by brand;
# select device_brand with H as start of their name
select device_brand from used_device_data where device_brand like 'H%';

# select device brand with er as last letter of the name
  select device_brand from used_device_data where device_brand like '%er';

# device brand with n as 3rd letter 
select device_brand from used_device_data where device_brand like '___n%';
   
# device with six letter words
select device_brand from used_device_data where device_brand like '______';
select device_brand