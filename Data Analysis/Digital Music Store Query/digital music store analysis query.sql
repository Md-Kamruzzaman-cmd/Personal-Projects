Q1 : who is the most senior employee?
select * from employee
order by levels desc
limit 1

Q2 : which countries have the most invoices?

select count(*) as invoices, billing_country from invoice
group by billing_country
order by invoices desc

Q3 : what are th top 3 values of total invoice?

select total from invoice
order by total desc
limit 3

Q4 : which city has the best customers? we would like
to through a promotional music festival in the city we
make the most money. write a query that returns one city
that has the highest sum of invoice totals.
Return both the city name and sum of all invoice totals.

select billing_city, sum(total) as invoice_sum from invoice
group by billing_city
order by invoice_sum desc
limit 1

Q5 : who is the best customer? the customer who has
spent the most money will be declared the best customer.
write a query that returns the person who has spent
the most money.

select customer.customer_id,
first_name, last_name,
sum(invoice.total) as total
from customer join invoice on
customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1

Q6 : write query to return the email, first name,
last name and genre of all rock music listeners.
return list ordered alphabatically by email starting
with A.

select distinct first_name, last_name, email
from customer join invoice on
customer.customer_id = invoice.customer_id
join invoice_line on
invoice.invoice_id = invoice_line.invoice_id
where track_id in (
	select track_id from track join genre on 
	track.genre_id = genre.genre_id
	where genre.name like 'Rock'
)
order by email

Q7 : Lets invite the artists who have written the
most rock music in our dataset. write a query that
returns the artist name and total track count of the
top 10 rock bands.

select distinct artist.name, count(track.track_id)
as total_tracks from artist

join album on artist.artist_id = album.artist_id
join track on album.album_id = track.album_id
join genre on track.genre_id = genre.genre_id

where genre.name like 'Rock'

group by artist.name
order by total_tracks desc
limit 10

Q8 : Return all the track names that have a song  length
longer than the average song length. return the name and
miliseconds for each track. order by song length.

select name, milliseconds from track
where milliseconds > (
	select avg(milliseconds) from track
)
order by milliseconds desc

Q9 : find how much amount spent by each customer
on artists? write a query to return customer name,
artist name and total spent.

select c.first_name, c.last_name, artist.name,
sum(il.unit_price*il.quantity) as amount_spent
from invoice i
join customer c on c.customer_id = i.customer_id
join invoice_line il on il.invoice_id = i.invoice_id
join track t on t.track_id = il.track_id
join album a on a.album_id = t.album_id
join artist on artist.artist_id = a.artist_id
group by 1,2,3

Q10 : write a query that returns country along with
most popular genre(based on purchase quantity).

with popular_genre as (
	select c.country, g.name,
	count(il.quantity) as amount_sale,
	row_number() over(partition by c.country
		order by count(il.quantity) desc)
	from invoice i
	join customer c on c.customer_id = i.customer_id
	join invoice_line il on il.invoice_id = i.invoice_id
	join track t on t.track_id = il.track_id
	join genre g on g.genre_id = t.genre_id
	group by 1,2
	order by 3 desc
)
select * from popular_genre
where row_number = 1
limit 10

Q11 : write a query that determines the customer that
has spent the most on music for each country.

with recursive 
	customer_with_country as (
		select first_name, last_name, billing_country, sum(total) as
		total_spending from invoice join
		customer on customer.customer_id = invoice.customer_id
		group by 1,2,3
		order by 4 desc),

country_max_spending as (
	select billing_country, max(total_spending) as max_spending
	from customer_with_country
	group by billing_country
)

select first_name, last_name, total_spending, cc.billing_country
from customer_with_country cc join country_max_spending cs
on cc.billing_country = cs.billing_country
where cc.total_spending = cs.max_spending