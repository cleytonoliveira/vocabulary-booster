SELECT
P.ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
ON P.ProductID = O.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média;
