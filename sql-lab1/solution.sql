--------- Q1 ---------

SELECT *
FROM Invoice
WHERE InvoiceDate BETWEEN '2013-01-01' AND '2014-01-01';

--------- Q2 ---------

SELECT FirstName,LastName,Country
FROM Customer
WHERE Country IN ('Brazil','Canada','India','Sweden') ;

--------- Q3 ---------

SELECT Name,Composer,Title
FROM Track t
JOIN Album a
ON a.AlbumId=t.AlbumId
AND NAME LIKE 'A%'
AND Composer IS NOT NULL ;

--------- Q4 ---------

SELECT FirstName,LastName,Total
FROM Customer c
JOIN Invoice i
ON i.CustomerId=c.CustomerId
ORDER BY Total DESC
Limit 10 ;