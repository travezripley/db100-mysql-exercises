# MySQL Exercises

## Thee Project in the DB100 * Module @ San Diego Code School

# Stay tuned today, KTRAV Channel 13 We will be bringin you, your local headlines with: 

# Author - Michel Roberts JR.

# Modified by Travis Ripley, * Started Saturday April 26th, 2019 11:00am

## Right after this commercial break:


## Introduction

# MySQL Exercises

## Introduction

In this project we're going to:
* Import a prepopulated database into MySQL called `sakila`
* Write SQL to view and query data from the database
* Write SQL to insert, update and delete records in the database.

## Prerequisites

Make sure you have checked off the following tasks:

- [ ] Download and install [MySQL Community Edition](https://dev.mysql.com/downloads/mysql/) ***and*** [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- [ ] Read as much of [this documentation](https://dev.mysql.com/doc/sakila/en/) as you can. It describes a prepopulated database called `sakila` that we will use as the basis for these SQL exercises.
- [ ] [Follow these instructions](https://dev.mysql.com/doc/sakila/en/sakila-installation.html) to load a sample database called `sakila` into your MySQL server.

## High Level Steps

1. Initialize the Project
2. Review the Project Files
3. Start the first exercise
4. Complete the subsequent exercises

## Step 1 - Initialize the Project

First, we need to perform the usual, repeatable steps to start a new project. Clone the project from [github](https://github.com/SanDiegoCodeSchool/db100-mysql-exercises) and start working through the steps below.

You will also need to add the following file to the root of your project - replacing the values in this file with your MySQL username/password.

**config.js**
```js
module.exports = {
    username: 'your_mysql_username',
    password: 'your_mysql_password'
};
```

## Step 2 - Review the Project Files

Next, review the files that you have been provided. You will notice we have provided 9 exercises in `./sql/exercises.sql` for you to complete and a spec file containing tests. It is recommended that you use MySQL Workbench to test out your queries and visually check your work, then paste your solution in the correct `.sql` file followed by `npm run test`.

## Step 3 - Start the first exercise

Open `sql/exercises.sql` and enter the following answers for the first three `select` questions:

```sql
#                              __
# .--------.--.--.-----.-----.|  |
# |        |  |  |__ --|  _  ||  |
# |__|__|__|___  |_____|__   ||__|
#          |_____|        |__|
#

# Important: Remember to add a semi-colon at the end of each query.

# ---------------------------------------------------------#

## 1. SELECT statements

# 1a. Select all columns from the actor table.
SELECT * FROM actor;

# 1b. Select only the last_name column from the actor table.
SELECT last_name FROM actor;

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
    rental_duration * rental_rate as total_rental_cost
FROM film;

```

Now, open a terminal and run the tests. The first three tests under `SELECT` should pass once you add the above code.

## Step 4 - Complete the subsequent exercises

Now it's your turn. Utilize your resources and knowledge of SQL to complete the rest of the exercises.

## Exit Criteria

- All exercises should pass their associated test.
- Added a README.md to the root of the project
- Upload the project to GitHub

There is no need to publish this to now.sh and you can provide the github url only for this project submission. [Submit your project](https://goo.gl/forms/wx8DLSus7s88lk043) 

##
#Thank you for taking the time to look at my projects,

#Also please follow my progress on youtube: 
https://www.youtube.com/channel/UCXv4p-lDYeWXPlnoRFYCSUg
