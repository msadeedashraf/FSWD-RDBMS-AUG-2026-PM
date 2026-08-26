USE HR;

SELECT    

	department_id,
	COUNT(*) AS employee_count,
	ROUND(AVG(salary), 2) AS average_salary

FROM employees

	WHERE salary > 3000

GROUP BY 	department_id 

HAVING AVG(salary) > 6000

ORDER BY average_salary DESC;


SELECT    
*
	
FROM employees

	WHERE salary > 3000