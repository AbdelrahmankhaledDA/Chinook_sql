SELECT COUNT (FirstName) AS "rock fans"
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
JOIN Invoiceline ON Invoice.InvoiceId = InvoiceLine.Invoiceid
WHERE TrackId IN(
	SELECT TrackId FROM Track
	JOIN Genre ON Track.GenreId = Genre.GenreId
	WHERE Genre.Name LIKE 'Rock' 
);


SELECT customer.CustomerId, SUM(total) AS "total_rev"
FROM customer
JOIN invoice ON customer.CustomerId = invoice.CustomerId
GROUP BY (customer.CustomerId)
ORDER BY "total_rev" DESC;

SELECT Artist.Name, COUNT(Album.ArtistId) AS "Albums produced"
FROM Album
JOIN Artist on Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name 
ORDER BY "Albums produced" DESC;

SELECT Genre.Name , COUNT(Track.GenreId) AS "Number of produces"
FROM Track
JOIN Genre on
Track.GenreId = Genre.GenreId
GROUP BY Genre.Name
ORDER BY "Number of produces" DESC;

SELECT Genre.Name , COUNT(Track.GenreId) AS "Number of produces"
FROM Track
JOIN Genre on
Track.GenreId = Genre.GenreId
GROUP BY Genre.Name
ORDER BY "Number of produces" DESC;

SELECT Employee.EmployeeId , COUNT(Customer.SupportRepId) AS "Number of replyies"
FROM Customer
JOIN Employee on
Employee.EmployeeId= Customer.SupportRepId
GROUP BY Employee.EmployeeId
ORDER BY "Number of replyies" DESC;