use magicstore;
select * from used_device_data;
select distinct os from used_device_data;
select device_brand, os,
    case os
    when 'Android' then 1
    when 'others' then 2
    else 3
    end as operatingsystem from used_device_data;
    
    # select device_brand with H as start of their name
select device_brand from used_device_data where device_brand like 'H%';

# select device brand with er as last letter of the name
  select device_brand from used_device_data where device_brand like '%er';

# device brand with n as 3rd letter 
select device_brand from used_device_data where device_brand like '___n%';
   
# device with six letter words
select device_brand from used_device_data where device_brand like '______';
