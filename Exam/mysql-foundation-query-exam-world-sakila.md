# MySQL Foundation Query Exam

## World + Sakila Sample Databases

**Name:** ______________________________  
**Date:** ______________________________  

### Instructions

- Write one MySQL query for each question.
- Read each question carefully before writing your query.
- Use the **World** or **Sakila** database as indicated.
- Do **not** use `JOIN`. We have not covered joins yet.
- Use only the SQL concepts we have covered in class.
- Your query should return exactly what the question is asking for.
- Pay attention to column selection, filtering, sorting, and aliases where needed.

---

## Part A — World Database

### Question 1

Using the `country` table, display the country name, continent, and population for every country.

---

### Question 2

Using the `country` table, display the country name, region, and population for countries in **Asia**.

---

### Question 3

Using the `country` table, display the country name and population for all countries. Show the country with the **largest population first**.

---

### Question 4

Using the `country` table, find the **10 most populated countries in the world**. Display the country name and population.

---

### Question 5

Using the `country` table, display all the **different continents** available in the table. Do not show duplicate continent names.

---

### Question 6

Using the `country` table, find countries with a population **between 20 million and 50 million**. Display the country name and population. Show the smallest population first.

---

### Question 7

Using the `country` table, find countries that are in **Asia, Europe, or North America**. Display the country name and continent.

---

### Question 8

Using the `city` table, find cities whose name **starts with the letter S**. Display the city name, country code, and population. Show the largest population first.

---

### Question 9

Using the `city` table, return the following information in one result:

- total number of cities
- smallest city population
- largest city population
- average city population

Give each calculated column a meaningful name.

---

### Question 10

Using the `country` table, find the **number of countries in each continent**. Display the continent and number of countries. Show the continent with the most countries first.

---

## Part B — Sakila Database

### Question 11

Using the `film` table, display the title, rental rate, and replacement cost of films with a **rental rate greater than 4**. Show the highest rental rate first.

---

### Question 12

Using the `film` table, find films that have a rating of **PG** and are **longer than 120 minutes**. Display the title, rating, and length. Show the longest film first.

---

### Question 13

Using the `film` table, find films with a length **between 90 and 120 minutes**. Display the title, length, and rating. Show the shortest film first.

---

### Question 14

Using the `film` table, find films with a rating of **PG, PG-13, or G**. Display the title and rating.

---

### Question 15

Using the `actor` table, display the actor's first name and last name. Also create another column called **FullName** that combines the first name and last name into one value.

For example:

`PENELOPE GUINESS`

---

### Question 16

Using the `customer` table, find customers whose last name **ends with the letter S**. Display the first name, last name, and email address. Sort the results alphabetically by last name.

---

### Question 17

Using the `film` table, find the **average film length for each rating**. Display the rating and average length. Round the average length to **2 decimal places**.

---

### Question 18

Using the `film` table, find the ratings that have **more than 200 films**. Display the rating and number of films.

---

## Part C — Subquery Challenge

### Question 19

Using the Sakila `film` table, find films that are **longer than the average length of all films**.

Display:

- title
- length

Show the longest film first.

**Requirement:** Use a subquery.

---

### Question 20

Using the World `country` table, find countries whose population is **greater than the average population of all countries**.

Display:

- country name
- continent
- population

Show the most populated country first.

**Requirement:** Use a subquery.

---

# End of Exam

Before submitting, check your work:

- Did you use the correct database and table?
- Did you select only the columns requested?
- Did you apply the correct condition?
- Did you sort the result when the question asked you to?
- Did you use an alias where a calculated column needed a meaningful name?
- Did you avoid `JOIN` in all 20 questions?
