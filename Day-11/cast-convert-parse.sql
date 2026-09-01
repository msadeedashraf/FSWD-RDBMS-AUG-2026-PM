select 123 + 3

select     '123' +  cast( '3' as int)

select cast('20060826' as date)


select convert(int , '123')

select convert(varchar(10), GETDATE(), 23)
select convert(varchar(10), GETDATE(), 101)
select convert(varchar(10), GETDATE(), 103)

select parse('August 31, 2026' as Date)

--culture aware parsing

select parse( '31/08/2026' as Date using  'en-GB')

select parse( '08/31/2026' as Date using  'en-US')


