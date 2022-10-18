--Question 1
select count (*)
from actor
where last_name = 'Wahlberg';

--count 2

--Question 2
select count(*)
from payment
where amount between 3.99 and 5.99;

-count 5607

--Question 3
select count(*), film_id
from inventory
group by film_id
having count(*)= 7;

--answer please run

--Question 4
select count (*)
from customer
where first_name = 'Willie';

--count 2

--Question 5
select staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental_id)desc
limit 1;
--1	8040

--Question 6

select count(distinct district)
from address;

--answer 378

--Question 7
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc
limit 1;

--film_id     count
--508	       15


--Question 8
select count(store_id)
from customer
where store_id = 1 and last_name like '%es';

--13

--Question 9
select amount, count (customer_id)
from payment
where customer_id between 380 and 430
group by amount
having count (customer_id) >=250;

--amount  count
--2.99	  290
--4.99	  281
--0.99	  269

--Question 10

select distinct rating, count(film_id)
from film
group by rating 
order by count(film_id)desc;

--rating      count
--PG-13	       223
--NC-17	       210
--R	           195
--PG	       194
--G	           178














