
select * from [dbo].[employees] e 


select * 
into managers
from employees 
where employee_id in 
			(
			select distinct manager_id from [dbo].[employees] e where manager_id is not null
			)



select * 
into employee_backup
from employees 
where 1 = 0

select * 
--, year(hire_date) as h_date  
from employees 
where year(hire_date) >= '1995'
--order by h_date

insert into [dbo].[employee_backup]
select  [first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary]
      ,[manager_id]
      ,[department_id]
from employees 
where year(hire_date) >= '1995'



SELECT 
  FROM [HR].[dbo].[employee_backup]


