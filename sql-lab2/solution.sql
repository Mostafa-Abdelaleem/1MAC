--------- Q1 ---------

select  billingcountry, count(*)
from invoice
group by 1
order by 2 desc

--------- Q2 ---------

select  billingcity,sum(total)
from invoice
group by 1
order by 2 desc
limit 1

--------- Q3 ---------

select c.customerid,c.firstname,c.lastname,sum(i.total)
from invoice i
join customer c
on i.customerid=c.customerid
group by 1,2,3
order by 4 desc
limit 1

--------- Q4 ---------

select distinct(c.email),c.firstname,c.lastname,g.name
from customer c
join invoice i 
on i.customerid=c.customerid
join invoiceline il
on il.invoiceid=i.invoiceid
join track t 
on t.trackid=il.trackid
join genre g
on g.genreid=t.genreid
where g.name = "Rock"
order by 1

--------- Q5 ---------

with t1 as (
select c.customerid,c.firstname,c.lastname,c.country,sum(i.total) TotalSpent
from customer c
join invoice i 
on c.customerid = i.customerid
group by 1,2,3),
      t2 as(
select customerid,firstname,lastname,country,max(TotalSpent) as TotalSpent
from t1
group by 4)


select t1.customerid,t1.firstname,t1.lastname,t1.country,t1.TotalSpent
from t1  
join t2
on t1.country = t2.country and t1.TotalSpent = t2.TotalSpent
order by 4,5 desc