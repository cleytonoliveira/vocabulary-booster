SELECT
A.ContactName AS Nome,
A.Country AS País,
COUNT(B.Country) AS `Número de compatriotas`
FROM w3schools.customers AS B
INNER JOIN w3schools.customers AS A
ON A.Country = B.Country AND A.CustomerID <> B.CustomerID
GROUP BY Nome, País
ORDER BY Nome ASC;
