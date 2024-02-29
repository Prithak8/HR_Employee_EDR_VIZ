create database human_resources;
use human_resources;



alter table hr
change column ï»¿id emp_id varchar(20) null;

select birthdate
from hr;

-- cleaning birthdate

update hr
set birthdate = 
case
when birthdate like "%/%" then date_format(str_to_date(birthdate,"%m/%d/%Y"),"%Y-%m-%d")
when birthdate like "%-%" then date_format(str_to_date(birthdate,"%m-%d-%Y"),"%Y-%m-%d")
else null
end;

alter table hr
modify column birthdate date;


-- cleaning hire_date

update hr
set hire_date = 
case
when hire_date like "%/%" then date_format(str_to_date(hire_date,"%m/%d/%Y"),"%Y-%m-%d")
when hire_date like "%-%" then date_format(str_to_date(hire_date,"%m-%d-%Y"),"%Y-%m-%d")
else null
end ;


alter table hr
modify column hire_date date;


set sql_safe_updates=0;

UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;

SELECT termdate from hr;

SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;


alter table hr
add column age int;


update hr
set age=timestampdiff(year,birthdate,curdate());


SELECT COUNT(*)
FROM HR WHERE AGE<18;


SELECT COUNT(*)
FROM hr
WHERE termdate = 0000-00-00;



