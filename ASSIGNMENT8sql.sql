use magicstore;
alter table used_device_data add column device_id int not null auto_increment primary key first;
select * from used_device_data;


select count(device_id) from used_device_data;

select device_brand, count(device_brand) from used_device_data group by device_brand order by count(device_brand) desc;

#QUESTION 1. what is the average sreen size for devices of each brand?
select device_brand, avg(screen_size) from used_device_data group by device_brand;

#QUESTION 2. Which brand has the most devices with 5G capabilities?
select device_brand, count(5g) from used_device_data where 5g = 'Yes' group by device_brand  order by count(5g) desc;
#Answer is Huawei and Oppo each with 14 5g capability devices.

#QUESTION 3. What is the average rear camera megapixel count for devices of each brand?
select device_brand, avg(rear_camera_mp) from used_device_data group by device_brand;

#QUESTION 4. WHAT IS THE AVERAGE BATTERY CAPACITY FOR DEVICES OF EACH BRAND?
select device_brand, avg(battery) from used_device_data group by device_brand;

#QUESTION 5. WHICH OPERATING SYSTEM IS USED BY THE MAJORITY OF DEVICES WITH 4G CONNECTITITY?
select distinct(device_brand), os, count(os) from used_device_data where 4g = 'yes' group by device_brand order by count(os) desc;
#ANSWER IS ANDROID

#QUESTION 6. WHAT IS THE AVERAGE WEIGHT OF DEVICES WITH DIFFERENT SCREEN SIZES
select device_brand, screen_size,avg(weight) as result from used_device_data group by screen_size;

select distinct(device_brand) from used_device_data;

#QUESTION 7. WHAT IS THE AVERAGE INTERNAL MEMORY CAPACITY FOR DEVICES OF EACH BRAND
select device_brand, internal_memory, avg(internal_memory) as result from used_device_data group by internal_memory;

#QUESTION 8. WHAT IS THE AVERAGE RAM CAPACITY FOR DEVICES OF EACH BRAND.
select device_brand, ram, avg(ram) as result from used_device_data group by ram;

#QUESTION 9. WHAT IS THE AVERAGE DAYS USED FOR DEVICES RELEASED IN EACH YEAR?
select release_year, avg(days_used) from used_device_data group by release_year order by avg(days_used);

#QUESTION 10. WHAT IS THE AVERAGE NORMALIZED USED PRICE FOR DEVICES OF EACH BRAND?
select device_brand, avg(normalized_used_price) from used_device_data group by device_brand;

#QUESTION 11. WHAT IS THE AVERAGE NORMALIZED NEW PRICES FOR DEVICES OF EACH BRAND?
select device_brand, avg(normalized_new_price) from used_device_data group by device_brand;

#QUESTION 12. WHAT IS THE AVERAGE FRONT CAMERA MEGAPIXEL COUNT FOR DEVICES WITH DIFFERENT SCREEN SIZES?

#QUESTION 13. WHAT IS THE DISTRIBUTION OF DEVICES BY OPERATING SYSTEM FOR EACH BRAND?
select device_brand, os, count(os) as result from used_device_data group by device_brand;

#QUESTION 14. WHAT IS THE DISTRIBUTION OF DEVICES BY SCREEN SIZE FOR EACH BRAND?
select device_brand,screen_size, count(screen_size) from used_device_data group by screen_size;

#QUESTION 15. WHAT IS THE DISTRIBUTION OF DEVICES BY BATTERY CAPACITY FOR EACH BRAND?
select device_brand,battery, count(battery) from used_device_data group by battery;

#QUESTION 16. WHAT IS THE DISTRIBUTION OF DEVICES BY INTERNAL MEMORY FOR EACH BRAND?
select device_brand,internal_memory, count(internal_memory) from used_device_data group by internal_memory;

#QUESTION 17. WHAT IS THE DISTRIBUTION OF DEVICES BY RAM FOR EACH BRAND?
select device_brand,ram, count(ram) from used_device_data group by ram;

#QUESTION 18. WHAT IS THE DISTRIBUTION OF DEVICES BY WEIGHT FOR EACH BRAND?
select device_brand, weight, count(weight) from used_device_data group by weight;

#QUESTION 19. WHAT IS THE DISTRIBUTION OF DEVICES BY FRONT CAMERA MEGAPIXEL COUNT FOR EACH BRAND?
select device_brand, front_camera_mp, count(front_camera_mp) from used_device_data group by front_camera_mp;

#QUESTION 19. WHAT IS THE DISTRIBUTION OF DEVICES BY REAR CAMERA MEGAPIXEL COUNT FOR EACH BRAND?
select device_brand,rear_camera_mp, count(rear_camera_mp) from used_device_data group by rear_camera_mp;


 
  