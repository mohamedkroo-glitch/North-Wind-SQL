use Northwind2021;
SELECT
    o.Id AS OrderId,
    o.OrderDate,
    c.FirstName,
    c.LastName
FROM
    dbo.Orders AS o
JOIN
    dbo.Customer AS c ON o.CustomerId = c.Id;

SELECT
    p.ProductName,
    SUM(oi.UnitPrice * oi.Quantity) AS TotalRevenue
FROM
    dbo.Product AS p
JOIN
    dbo.OrderItem AS oi ON p.Id = oi.ProductId
WHERE
    p.IsDiscontinued = 0
GROUP BY
    p.ProductName
ORDER BY
    TotalRevenue DESC;

SELECT
    c.FirstName,
    c.LastName,
    SUM(oi.UnitPrice * oi.Quantity) AS TotalSpent
FROM
    dbo.Customer AS c
JOIN
    dbo.Orders AS o ON c.Id = o.CustomerId
JOIN
    dbo.OrderItem AS oi ON o.Id = oi.OrderId
GROUP BY
    c.FirstName,
    c.LastName
ORDER BY
    TotalSpent DESC;

SELECT
    s.CompanyName,
    COUNT(p.Id) AS NumberOfProducts
FROM
    dbo.Supplier AS s
LEFT JOIN
    dbo.Product AS p ON s.Id = p.SupplierId
GROUP BY
    s.CompanyName
ORDER BY
    NumberOfProducts DESC;

CREATE VIEW Vw_CustomerOrders AS
SELECT
    c.Country,
    c.City,
    p.ProductName,
    oi.Quantity,
    oi.UnitPrice
FROM
    dbo.Customer c
JOIN
    dbo.Orders o ON c.Id = o.CustomerId
JOIN
    dbo.OrderItem oi ON o.Id = oi.OrderId
JOIN
    dbo.Product p ON oi.ProductId = p.Id;

SELECT
    Country,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM
    Vw_CustomerOrders
GROUP BY
    Country
ORDER BY
    TotalSales DESC;
    SELECT
    ProductName,
    UnitPrice
FROM
    dbo.Product
WHERE
    SupplierId IN (SELECT Id FROM dbo.Supplier WHERE Country = 'USA');