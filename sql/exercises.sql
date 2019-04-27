#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#
#        e x e r c i s e s

# Important: Remember to add a semi-colon at the end of each query.

# ---------------------------------------------------------#

## 1. SELECT statements

# 1a. Select all columns from the actor table.
SELECT 
    *
FROM
    actor;

# 1b. Select only the last_name column from the actor table.
SELECT 
    last_name
FROM
    actor;

# 1c. Select only the following columns from the film table.
#
# COLUMN NAME           Note
# title                 Exists in film table.
# description           Exists in film table.
# rental_duration       Exists in film table.
# rental_rate           Exists in film table.
# total_rental_cost     rental_duration * rental_rate
SELECT 
    title,
    description,
    rental_duration,
    rental_rate,
    rental_duration * rental_rate AS total_rental_cost
FROM
    film;

# ---------------------------------------------------------#


## 2. DISTINCT operator

# 2a. Select all distinct (different) last names from the actor table.
SELECT DISTINCT
    last_name
FROM
    actor;


# 2b. Select all distinct (different) postal codes from the address table.
SELECT DISTINCT
    postal_code
FROM
    address;


# 2c. Select all distinct (different) ratings from the film table.
SELECT DISTINCT
    rating
FROM
    film;


# ---------------------------------------------------------#


## 3. WHERE clause

# 3a. Select the title, description, rating, movie length columns from the films table that last 3 hours or longer.
SELECT 
    title, description, rating, length
FROM
    film
WHERE
    length >= 180;

# 3b. Select the payment id, amount, and payment date columns from the payments table for payments made on or after 05/27/2005.
SELECT 
    payment_id, amount, payment_date
FROM
    payment
WHERE
    payment_date >= DATE('2005-05-27 00:00:00');


# 3c. Select the primary key, amount, and payment date columns from the payment table for payments made on 05/27/2005.
SSELECT 
    payment_id, amount, payment_date
FROM
    payment
WHERE
    payment_date >= DATE('2005-05-27 00:00:00')
        AND payment_date <= DATE('2005-05-28 00:00:00');


# 3d. Select all columns from the customer table for rows that have a last name beginning with "S" and a first name ending with "N".
SELECT 
    *
FROM
    customer
WHERE
    last_name LIKE '%s'
        AND first_name LIKE 'n%';


# 3e. Select all columns from the customer table for rows where the customer is inactive or has a last name ending with "M".
SELECT 
    *
FROM
    customer
WHERE
    active = 0 OR last_name LIKE 'm%';


# 3f. Select all columns from the category table for rows where the primary key is greater than 4 and the name field begins with either "C", "S" or "T".
SELECT 
    *
FROM
    category
WHERE
    category_id < 4 AND (name LIKE 'n%')
        OR (name LIKE 'c%')
        OR (name LIKE 't%');

# 3g. Select all columns minus the password column from the staff table for rows that contain a password.
SELECT 
    staff_id,
    first_name,
    last_name,
    address_id,
    picture,
    email,
    store_id,
    active,
    username,
    password,
    last_update
FROM
    staff
WHERE
    password IS NOT NULL;


# 3h. Select all columns minus the password column from the staff table for rows that do not contain a password.
SELECT 
    staff_id,
    first_name,
    last_name,
    address_id,
    picture,
    email,
    store_id,
    active,
    username,
    password,
    last_update
FROM
    staff
WHERE
    password IS NULL;

# ---------------------------------------------------------#


## 4. IN operator

# 4a. Select the phone and district columns from the address table for addresses in California, England, Taipei, or West Java.
SELECT 
    phone, district
FROM
    address
WHERE
    district IN ('California' , 'England', 'Taipei', 'West Java');


# 4b. Select the payment id, amount, and payment date columns from the payment table for payments made on 05/25/2005, 05/27/2005, and 05/29/2005.
# (Use the IN operator and the DATE function, instead of the AND operator as in previous exercises.)
SELECT 
    payment_id, amount, payment_date
FROM
    payment
WHERE
    CAST(payment_date AS date) IN ('2005-05-25' , '2005-05-27', '2005-05-29');

# 4c. Select all columns from the film table for films rated G, PG-13 or NC-17.
SELECT 
    *
FROM
    film
WHERE
    rating IN ('G' , 'PG-13', 'NC-17');


# ---------------------------------------------------------#


## 5. BETWEEN operator

# 5a. Select all columns from the payment table for payments made between midnight 05/25/2005 and 1 second before midnight 05/26/2005.
SELECT 
    *
FROM
    payment
WHERE
    CAST(payment_date AS DATETIME) BETWEEN '2005-05-25 00:00:00.000' AND '2005-05-26 23:59:59.000';

# 5b. Select the following columns from the film table for films where the length of the description is between 100 and 120.
#
# COLUMN NAME           Note
# title                 Exists in film table.
# description           Exists in film table.
# release_year          Exists in film table.
# total_rental_cost     rental_duration * rental_rate

SELECT 
    title,
    description,
    release_year,
    rental_duration * rental_rate AS total_rental_cost
FROM
    film
WHERE
    LENGTH(description) BETWEEN '100' AND '120';


# ---------------------------------------------------------#


## 6. LIKE operator

# 6a. Select the following columns from the film table for rows where the description begins with "A Thoughtful".
# Title, Description, Release Year

SELECT 
    title, description, release_year
FROM
    film
WHERE
    description LIKE 'A Thoughtful%';

# 6b. Select the following columns from the film table for rows where the description ends with the word "Boat".
# Title, Description, Rental Duration

SELECT 
    title, description, rental_duration
FROM
    film
WHERE
    description LIKE '%boat';

# 6c. Select the following columns from the film table where the description contains the word "Database" and the length of the film is greater than 3 hours.
# Title, Length, Description, Rental Rate

SELECT 
    title, length, description, rental_rate
FROM
    film
WHERE
    description LIKE '%database%'
        AND LENGTH > '180';


# ---------------------------------------------------------#


## 7. LIMIT Operator

# 7a. Select all columns from the payment table and only include the first 20 rows.

SELECT 
    *
FROM
    payment
LIMIT 20;


# 7b. Select the payment id, payment date and amount columns from the payment table for rows where the payment amount is greater than 5 and only select rows whose zero-based index in the result set is between 51-100.

SELECT 
    payment_id, payment_date, amount
FROM
    payment
WHERE
    amount > 5
LIMIT 50;

# 7c. Select all columns from the customer table, limiting results to those where the zero-based index is between 101-200.

SELECT 
    *
FROM
    customer
WHERE
    customer_id BETWEEN '101' AND '200';

# ---------------------------------------------------------#


## 8. ORDER BY statement

# 8a. Select all columns from the film table and order rows by the length field in ascending order.

SELECT 
    *
FROM
    film
ORDER BY length ASC;


# 8b. Select all distinct ratings from the film table ordered by rating in descending order.

SELECT DISTINCT
    rating
FROM
    film
ORDER BY rating DESC;


# 8c. Select the payment date and amount columns from the payment table for the first 20 payments ordered by payment amount in descending order.

SELECT 
    payment_date, amount
FROM
    payment
ORDER BY amount DESC
LIMIT 20;

# 8d. Select the title, description, special features, length, and rental duration columns from the film table for the first 10 films with behind the scenes footage under 2 hours in length and a rental duration between 5 and 7 days, ordered by length in descending order.

SELECT 
    title,
    description,
    special_features,
    length,
    rental_duration
FROM
    film
WHERE
    special_features LIKE ('%behind the scenes%')
        AND LENGTH < '120'
        AND rental_duration BETWEEN '5' AND '7'
ORDER BY length DESC
LIMIT 10;

# ---------------------------------------------------------#


## 9. JOINS
# (Take some time to compare results of the next three exercises)

# 9a. Select customer first_name/last_name and actor first_name/last_name columns from performing a left join between the customer and actor column on the last_name column in each table. (i.e. `customer.last_name = actor.last_name`)
# Label customer first_name/last_name columns as customer_first_name/customer_last_name
# Label actor first_name/last_name columns in a similar fashion.

SELECT 
    customer.first_name AS customer_first_name,
    customer.last_name AS customer_last_name,
    actor.first_name AS actor_first_name,
    actor.last_name AS actor_last_name
FROM
    customer
        LEFT JOIN
    actor ON customer.last_name = actor.last_name;

# 9b. Select the customer first_name/last_name and actor first_name/last_name columns from performing a right join between the customer and actor column on the last_name column in each table. (i.e. `customer.last_name = actor.last_name`)

SELECT 
    customer.first_name AS customer_first_name,
    customer.last_name AS customer_last_name,
    actor.first_name AS actor_first_name,
    actor.last_name AS actor_last_name
FROM
    customer
        RIGHT JOIN
    actor ON customer.last_name = actor.last_name;

# 9c. Select the customer first_name/last_name and actor first_name/last_name columns from performing an inner join between the customer and actor column on the last_name column in each table. (i.e. `customer.last_name = actor.last_name`)

SELECT 
    customer.first_name AS customer_first_name,
    customer.last_name AS customer_last_name,
    actor.first_name AS actor_first_name,
    actor.last_name AS actor_last_name
FROM
    customer
        INNER JOIN
    actor ON customer.last_name = actor.last_name;

# 9d. Select the city name and country name columns from the city table, performing a left join with the country table to get the country name column.

SELECT 
    city AS city, country AS country
FROM
    city
        LEFT JOIN
    country ON city.country_id = country.country_id;
    
    


# 9e. Select the title, description, release year, and language name columns from the film table, performing a left join with the language table to get the "language" column.
# Label the language.name column as "language" (e.g. `select language.name as language`)

SELECT 
    title, description, release_year, language.name AS language
FROM
    film
        LEFT JOIN
    language ON film.language_id = language.language_id;


# 9f. Select the first_name, last_name, address, address2, city name, district, and postal code columns from the staff table, performing 2 left joins with the address table then the city table to get the address and city related columns.

SELECT 
    first_name,
    last_name,
    address.address AS address,
    address.address2 AS address2,
    city.city AS city,
    address.district AS district,
    address.postal_code AS postal_code
FROM
    staff
        LEFT JOIN
    address ON staff.address_id = address.address_id
        LEFT JOIN
    city ON address.city_id = city.city_id;
  