     -- Question 1 
-- Identify the primary keys and foreign keys in maven movies DB. Discuss the difference.
   -- Answer 
   -- The major difference between Primary key and foreign key is Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables. 
select * FROM information_schema.key_column_usage;

   -- Question 2 
 -- List all details of actors.
   -- Answer
   select * from actor;
   
     -- Question 3 
   -- List all customer information from DB.
     -- Answer
     select * from customer;
     
     -- Question 4 
-- List different countries.
  -- Answer
  select distinct country from country;
  
    -- Question 5 
-- Display all active customers.
  -- Answer 
  select customer_id, first_name, Last_name, email from customer where active = 1;
  
  -- Question 6 
-- List of all rental IDs for customer with ID 1
  -- Answer
  select rental_id from rental where customer_id = 1;
  
  -- Question 7 
-- Display all the films whose rental duration is greater than 5 
  -- Answer
  select title, rental_duration from film where rental_duration > 5;
  
  -- Question 8 
-- List the total number of films whose replacement cost is greater than $15 and less than $20
  -- Answer
  select * from film;
select title, replacement_cost from film where replacement_cost > 15 and replacement_cost < 20;

  -- Question 9 
-- Display the count of unique first name of actors
  -- Answer
  select count(distinct first_name) from actor;
  
  -- Question 10
-- Display the first 10 record from the customer table 
  -- Answer
  select * from customer limit 10;
  
 -- Question 11
-- Display the first 3 records from the customer table whose first name starts with 'b'.
  -- Answer
  select first_name from customer where first_name like 'b%' limit 3;
  
  -- Question 12
-- Display the names of the first 5 movies which are rated as 'G'.
  -- Answer
  select * from film where rating = 'G' limit 5;
  
  -- Question 13 
-- Find all customer whose first name starts with "a".
  -- Answer
  select first_name from customer where first_name like 'a%';
  
  -- Question 14 
-- Find all customer whose first name ends with 'a'. 
  -- Answer
  select first_name from customer where first_name like '%a';
  
  -- Question 15 
-- Display the list of first 4 cities which starts and ends with "a". 
 -- Answer
 select city from city where city like 'a%%a' limit 4;
 
 -- Question 16 
-- Find all customers whose first name have "NI" in any position. 
-- Answer
select first_name from customer where first_name like '%NI%';

  -- Question 17 
-- Find all customer whose first name have "R" in the second position.
  -- Answer
  select first_name from customer where first_name like '_R%';
  
  -- Question 18 
-- Find all customer whose first name starts with "a" and are at least 5 characters in lenght.
  -- Answer
  select first_name from customer where first_name like 'a_____%'; 
  
  -- Question 19 
-- Find all customers whose first name starts with "a" and ends with "o". 
 -- Answer 
 select first_name from customer where first_name like 'a%%o';
 
   -- Question 20 
-- Get the films with PG and PG-13 rating using IN operator. 
  -- Answer
  select title from film where rating in ('PG', 'PG-13');
  
  -- Question 21 
-- Get the films with length between 50 to 100 using between operator. 
  -- Answer 
  select * from film where length between 50 and 100;
  
  -- Question 22 
-- Get the top 50 actors using limit operator. 
 -- Answer
 select * from actor limit 50;
 
  -- Question 23 
-- Get the distinct film ids from inventory table. 
-- Answer
select distinct film_id from inventory;