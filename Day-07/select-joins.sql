select * from [dbo].[employees]
where department_id = 11

select * from departments

select * from employees as e , departments  as d
where 
e.department_id = d.department_id
and 
d.department_name = 'marketing'

select * from 
	employees as e join departments  as d
	on e.department_id = d.department_id
where 
d.department_name = 'marketing'


select * from employees  as e 
where department_id = 2

select * from departments as d 
where  d.location_id =  1800

select l.location_id from locations as l
where country_id = 'CA'

select c.country_id  from countries as c
where c.country_name = 'Canada'



---Sub Queries 
select * from employees  as e 
where department_id in 
			(
			select d.department_id from departments as d 
			where  d.location_id in 
							(
							select l.location_id from locations as l
							where country_id in 
												(
												select c.country_id  from countries as c
												where c.country_name = 'United States of America'
												)

							)
			)






/*
select * from countries where country_id in (
select distinct country_id from locations 
)
Canada
Germany
United Kingdom
United States of America
*/

--join

select e.* , d.department_name from employees  as e 
		join departments as d 
				on e.department_id = d.department_id
		join locations as l
				on d.location_id = l.location_id
		join countries as c
				on c.country_id = l.country_id
where c.country_name = 'United Kingdom'

