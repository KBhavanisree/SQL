create database clinictrial_exercise;
use clinictrial_exercise;
select * from clinictrial;

#1. Add index name fast on Name 
create index fast_I on clinictrial (name);

#2. Describe the schema of table 
describe clinictrial;

#3. Find average of Age 
select avg(age) as AVG_age from clinictrial;

#4. Find minimum of Age
select min(age) as MIN_AGE from clinictrial;
 
#5. Find maximum of Age
select max(age) as Max_AGE from clinictrial;

#6. Find average age of those were pregnant and not pregnant 
select * from clinictrial;
select pregnant, count(pregnant) as Result from clinictrial group by Pregnant;
select pregnant, avg(age) as result from clinictrial group by Pregnant;

#7. Find average blood pressure of those had drug reaction and did not had drug reaction 
select drug_reaction, avg(bp) as result from clinictrial group by Drug_Reaction;

#8. Add new column name as ‘Age_group’ and those having age between 16 & 21 should be categorized as Low, 
#more than 21 and less than 35 should be categorized as Middle and above 35 should be categorized as High.  
select*, case when age between 16 and 21 then 'low' 
when age between 21 and 35 then 'middle' when age > 35 then 'high' end as AGE_GROUP from clinictrial; 

alter table clinictrial add column AGE_GROUP varchar(10) after age;
update clinictrial set AGE_GROUP = case when age between 16 and 21 then 'low' 
when age between 21 and 35 then 'middle' when age > 35 then 'high' end;
 select * from clinictrial;
    
#9. Change ‘Age’ of Reetika to 32
update clinictrial set age =32 where name = 'reetika';
 select * from clinictrial where name = 'reetika';
 select name, age from clinictrial where name = 'reetika';
 
#10. Change name of Reena as Shara’ 
update clinictrial set name = 'shara' where name = 'reena';
select name from clinictrial where name = 'shara';

#11. Remove Chlstrl column 
alter table clinictrial drop column Chlstrl;

#12. Select only Name, Age and BP 
select name, age, bp from clinictrial;

#13. Select ladies whose first name starts with ‘E’
select name from clinictrial where name like 'E%';
 
#14. Select ladies whose Age_group were Low 
select * from clinictrial;
select name, age_group from clinictrial where age_group = 'low';
select * from clinictrial where age_group = 'low';

#15. Select ladies whose Age_group were High 
select name, age_group from clinictrial where age_group = 'high';

#16. Select ladies whose name starts with ‘A’ and those were pregnant  
select * from clinictrial where name like 'A%';

#17. Identify ladies whose BP was more than 120  
select name , bp from clinictrial where bp > 120;

#18. Identify ladies whose BP was between 100 and 120  
select * from clinictrial where bp between 100 and 120;

#19. Identify ladies who had low anxiety aged less than 30 
select * from clinictrial where Anxty_LH = 'no' and age < 30;

#20. Select ladies whose name ends with ‘i’ 
select name from clinictrial where name like '%i';

#21. Select ladies whose name ends with ‘a’  
select name from clinictrial where name like '%a';

#22. Select ladies whose name starts with ‘K’ 
select name from clinictrial where name like 'K%';

#23. Select ladies whose name have ‘a’ anywhere  
select name from clinictrial where name like '%a%';

#24. Order ladies in ascending way based on ‘BP’ 
select name, bp from clinictrial order by bp asc;

#25. Order ladies in descending way based on ‘Age’
select name, age from clinictrial order by age desc;
select * from clinictrial;