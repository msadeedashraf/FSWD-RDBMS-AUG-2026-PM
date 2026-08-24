SELECT TOP (1000) [empid]
      ,[lastname]
      ,[firstname]
      ,[title]
      ,[titleofcourtesy]
      ,[birthdate]
      ,[hiredate]
      ,[address]
      ,[city]
      ,[region]
      ,[postalcode]
      ,[country]
      ,[phone]
      ,[mgrid]
  FROM [TSQL].[HR].[Employees]


  select * from [TSQL].[HR].[Employees]
  select * from hr.employees


  select 
    e.firstname, 
    e.lastname, 
    e.hiredate, 
    e.city
  from hr.Employees as e

  select * from hr.employees as e 
  where 
  e.city = 'london'

    select 
    e.firstname, 
    e.lastname, 
    e.hiredate  
    
    from hr.employees as e 
  where 
  e.city = 'london'


    select 
    e.firstname +  ' '+  e.lastname, 
    e.hiredate  
    
    from hr.employees as e 
  where 
  e.city = 'london'


      select 
    e.firstname +  ' '+  e.lastname as 'full name', 
    e.hiredate  
    
    from hr.employees as e 
  where 
  e.city = 'london'


    select 
    e.firstname +  ' '+  e.lastname as [full name], 
    e.hiredate  
    
    from hr.employees as e 
  where 
  e.city = 'london'

  --distinct 

  select distinct e.country  from hr.employees as e

  select distinct e.country, city  from hr.employees as e


  select distinct e.country, city  from hr.employees as e
  order by e.city

select distinct e.country, city  from hr.employees as e
  order by e.country, e.city
