# Lab: MySQL on WSL with MySQL Workbench

## Objective

In this lab, you will:

1. Install Windows Subsystem for Linux (WSL) and Ubuntu.
2. Install MySQL Server inside Ubuntu/WSL.
3. Configure MySQL and create a database user.
4. Install MySQL Workbench on Windows.
5. Connect MySQL Workbench to MySQL running inside WSL.
6. Install a MySQL sample database.
7. Run SQL queries against the sample database.
8. Submit screenshots demonstrating that your environment is working.

---

# Part 1 — Install WSL

## Step 1: Open PowerShell as Administrator

Search for **PowerShell**, right-click **Windows PowerShell** or **Terminal**, and select **Run as administrator**.

## Step 2: Install WSL

```powershell
wsl --install
```

Restart Windows if requested.

## Step 3: Install Ubuntu

If Ubuntu was not automatically installed, open the Microsoft Store, search for **Ubuntu**, and install it.

Launch Ubuntu and create a Linux username and password.

## Step 4: Verify WSL

```powershell
wsl --status
```

You can also check installed Linux distributions:

```powershell
wsl -l -v
```

### Screenshot 1

Take a screenshot showing `wsl --status` or `wsl -l -v`.

---

# Part 2 — Install MySQL Server in WSL

Open Ubuntu.

## Step 1: Update Ubuntu

```bash
sudo apt update && sudo apt upgrade -y
```

## Step 2: Install MySQL Server

```bash
sudo apt install mysql-server -y
```

## Step 3: Start MySQL

```bash
sudo service mysql start
```

Check its status:

```bash
sudo service mysql status
```

You can also check whether MySQL is listening on port 3306:

```bash
sudo ss -tlnp | grep 3306
```

### Screenshot 2

Take a screenshot showing MySQL running.

---

# Part 3 — Secure MySQL

```bash
sudo mysql_secure_installation
```

Follow the prompts. The exact prompts may vary by MySQL version.

---

# Part 4 — Test MySQL from WSL

Enter MySQL:

```bash
sudo mysql
```

Run:

```sql
SELECT VERSION();
SHOW DATABASES;
```

Exit:

```sql
exit;
```

### Screenshot 3

Take a screenshot showing `SELECT VERSION();` and `SHOW DATABASES;`.

---

# Part 5 — Create a User for MySQL Workbench

Instead of using the MySQL `root` account from Windows, create a separate user for Workbench.

```bash
sudo mysql
```

Create the user:

```sql
CREATE USER 'student'@'%' IDENTIFIED BY 'Student123!';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SELECT user, host FROM mysql.user;
exit;
```

> `Student123!` is only an example classroom/lab password. Use a stronger password for real systems.

---

# Part 6 — Install MySQL Workbench on Windows

Download MySQL Workbench from the official MySQL Workbench download page.

Install it using the default settings and launch **MySQL Workbench**.

---

# Part 7 — Connect Workbench to MySQL in WSL

In MySQL Workbench, create a new MySQL connection with:

- **Connection Name:** WSL MySQL
- **Hostname:** 127.0.0.1
- **Port:** 3306
- **Username:** student

Click **Test Connection**, enter the password created earlier, and save the connection.

Run:

```sql
SELECT VERSION();
SHOW DATABASES;
```

### Screenshot 4

Take a screenshot showing MySQL Workbench successfully connected and displaying successful query results.

---

# Part 8 — Install a Sample Database

Use either:

- **World**
- **Sakila**

For beginners, the **World database** is recommended because it is smaller and easier to explore.

Download the World sample database from the official MySQL sample database resources and extract the downloaded file if necessary.

You should have a SQL file similar to:

```text
world.sql
```

---

# Part 9 — Import the World Database

In MySQL Workbench:

**File → Open SQL Script**

Select `world.sql` and execute the script using the lightning bolt button.

Depending on the downloaded format, you may alternatively use:

**Server → Data Import**

After the import finishes, refresh the **SCHEMAS** panel.

Verify the database:

```sql
SHOW DATABASES;
USE world;
SHOW TABLES;
```

You should see tables including:

- `city`
- `country`
- `countrylanguage`

### Screenshot 5

Take a screenshot showing the `world` database and its tables in MySQL Workbench.

---

# Part 10 — Query the World Database

Select the database:

```sql
USE world;
```

## Query 1 — Display Cities

```sql
SELECT *
FROM city
LIMIT 10;
```

### Screenshot 6

Take a screenshot showing the query and results.

## Query 2 — Largest Countries by Population

```sql
SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 5;
```

### Screenshot 7

Take a screenshot showing the query and results.

## Query 3 — Cities with Large Populations

```sql
SELECT Name, CountryCode, Population
FROM city
WHERE Population > 5000000
ORDER BY Population DESC;
```

### Screenshot 8

Take a screenshot showing the query and results.

---

# Part 11 — Optional Sakila Database

If you also install Sakila:

```sql
USE sakila;

SELECT title, length
FROM film
WHERE length > 120;
```

Another example:

```sql
SELECT title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 10;
```

> The `film` table belongs to Sakila, not World.

---

# Troubleshooting

## MySQL Is Not Running

```bash
sudo service mysql status
sudo service mysql start
sudo service mysql status
```

## Workbench Cannot Connect to 127.0.0.1

Verify MySQL works inside WSL:

```bash
sudo mysql
```

Check port 3306:

```bash
sudo ss -tlnp | grep 3306
```

Find the WSL IP address if needed:

```bash
hostname -I
```

If localhost forwarding is not working, your instructor may ask you to test the WSL IP address instead of `127.0.0.1`.

## Access Denied for Root

Do not assume the Linux MySQL `root` account can be used directly from Windows Workbench. Use the dedicated `student` account created in this lab.

## Database Does Not Appear in Workbench

Refresh the **SCHEMAS** panel and verify with:

```sql
SHOW DATABASES;
```

---

# Submission Requirements

- [ ] **Screenshot 1:** WSL/Ubuntu successfully installed
- [ ] **Screenshot 2:** MySQL service running inside WSL
- [ ] **Screenshot 3:** MySQL working from the WSL terminal
- [ ] **Screenshot 4:** MySQL Workbench connected to MySQL in WSL
- [ ] **Screenshot 5:** World sample database successfully installed
- [ ] **Screenshot 6:** `SELECT * FROM city LIMIT 10;`
- [ ] **Screenshot 7:** Top five countries by population
- [ ] **Screenshot 8:** Cities with population greater than 5,000,000

## Final Verification

Before submitting, make sure this works from MySQL Workbench:

```sql
USE world;

SHOW TABLES;

SELECT *
FROM city
LIMIT 10;
```

If these commands work from **MySQL Workbench on Windows**, your Windows → WSL → MySQL → Workbench environment is working correctly.
