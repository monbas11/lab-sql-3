-- count how many different last name are recorded in the data
select count(distinct(last_name)) as distinct_last_names from actor;

-- count different original languages
select count(distinct(language_id)) as distinct_lenguages from language;

select count(rating) from film
where rating = 'PG-13';

select title, length from film
where release_year = 2006
order by length desc
limit 10;

select datediff(current_date(), convert(min(create_date), date)) from sakila.customer;

-- adding new column with month and days. Select only 20 rows 
select *, month(rental_date) as rental_month, day(rental_date) as rental_day, month(return_date) as return_month, day(return_date) as return_day
from rental
limit 20;

select *, 
    case when dayofweek(rental_date) in (1, 7) THEN 'weekend' else 'workday' end as day_type
from rental
limit 20;

-- select month from return datea and order by desc than check how many year we have in the data. Finally count how many rentals were in the last month.
select *, month(return_date) as return_month from rental order by return_month desc;
select count(distinct(year(return_date))) from rental;

select count(return_date) as rental_count from rental
 where month(return_date) = 9;
 



