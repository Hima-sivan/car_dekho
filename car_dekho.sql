#car_dekho
create database car_dekho;
use car_dekho;
select * from car_table;
select count(*) from car_table;
describe car_table;
select distinct(seats) from car_table;
select count(distinct(fuel)) from car_table;
select distinct(owner) from car_table;
select distinct(transmission) from car_table;
update car_table set transmission='Manual' where transmission=' Manual';
update car_table set transmission='Automatic' where transmission=' Automatic';
select distinct(seats) from car_table;
select trim(name) as name1,year from car_table order by name1;
update car_table set Name=trim(Name); 
select * from car_table order by name;
select count(*) from car_table where fuel='electric' order by name;
select fuel,count(*) as cnt from car_table group by fuel order by fuel desc limit 2;
select * from car_table limit 10;
select * from car_table order by km_driven desc limit 10;
select * from car_table order by km_driven limit 10;
select fuel,avg(selling_price) as avg_price from car_table group by fuel order by avg_price desc limit 3;
select substring_index(name,' ',1) from car_table;
alter table car_table add column Company varchar(100);
alter table car_table modify Company varchar(100) first;
set sql_safe_updates=0;
update car_table set Company=substring_index(name,' ',1);
alter table car_table modify name varchar(200) after seats;
update car_table set max_power=trim(max_power);
update car_table set max_power=substring_index(max_power,'b',1);
alter table car_table modify max_power float;
select * from car_table limit 7885,1;
delete from car_table where name= 'Maruti Omni CNG';
select * from car_table where year>=2021 and selling_price<1000000;
select year, avg(selling_price) from car_table group by year order by year desc;
select km_driven,avg(selling_price) from car_table group by km_driven order by km_driven desc;
select company,avg(selling_price) from car_table group by company order by avg(selling_price) desc;
select avg(km_driven) as average_km ,min(km_driven) as minimum_km,max(km_driven) as maximum_km from car_table;
select avg(selling_price) as average_price,min(selling_price) as minimum_price,max(selling_price) as maximum_price from car_table;
select * from car_table;
update car_table set torque=substring_index(torque,' ',1);
alter table car_table modify torque float;
select max(mileage) from car_table;
select min(mileage) from car_table;

select mileage,case when mileage<10 then 'Low mileage'
when mileage>=10 and mileage<=19 then 'Average mileage'
else 'High mileage' end as New_column from car_table;
select avg(km_driven) from car_table;
set sql_safe_updates=0;
select km_driven,case when km_driven<10000 then 'Less than 10k'
when km_driven>=10000 and km_driven<=1000000 then 'Between 10k and 100k'
else 'Above 100k' end as km_Driven_category from car_table;
alter table car_table add column km_Driven_category varchar(50);
update car_table set km_Driven_category=case when km_driven<10000 then 'Less than 10k'
when km_driven>=10000 and km_driven<=1000000 then 'Between 10k and 100k'
else 'Above 100k' end;
select km_Driven_category,avg(selling_price) from car_table group by km_Driven_category ;
alter table car_table add column mileage_category varchar(50);

update car_table set mileage_category=case when mileage<10 then 'Low'
when mileage>=10 and mileage<=20 then 'Average'
else 'High' end;  
select mileage_category,avg(selling_price) from car_table group by mileage_category;
delete from car_table where mileage=0;
select * from car_table where mileage_category='Low';

#wild card operator
select* from car_table where fuel like "p%";
select* from car_table where fuel like "%l";
select* from car_table where fuel like "p_____";
select* from car_table where fuel like "p___o_";
select* from car_table where fuel like "______";
select* from car_table where name like "Maruti%lxi";
select* from car_table where year like "2022";

select * from car_table;
#select seller_type,transmission,fuel from car_table group by seller_type,transmission,fuel;

#select fuel,max(selling_price) as max_price from car_table group by fuel order by max_price desc limit 1;
#select count(*) as cnt from car_table group by company,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,name order by cnt desc ;
#select company,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,name having count(*)>2 order by company ;
#create temporary table new1 select company,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,name, count(*) from car_table group by company,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,name having count(*)>1 order by company;
 
 



select * from car_table;
select year from car_table order by year ;
select year,count(year) from car_table group by year;
select count(company) from car_table order by company ;
select min(selling_price),year from car_table group by year order by year desc limit 1 ;


select name,max(max_power) as max_power from car_table group by name order by max_power  ;
select year,avg(km_driven) as max_power from car_table group by year order by year desc  ;
select distinct * from car_table;
create temporary table new select distinct * from car_table; 
select count(*)  from new;


select year,count(year) from car_table group by year order by count(year) desc;
select min(torque),name from car_table group by torque,name order by min(torque) ;
select * from car_table where fuel=petrol;
select count(*) from car_table where owner='four and above owner' order by name;
select company,count(seats) from car_table group by company order by count(seats) desc;
select seats,count(seats) from car_table group by seats order by count(seats) ;
