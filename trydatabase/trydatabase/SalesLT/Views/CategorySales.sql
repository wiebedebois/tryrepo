CREATE VIEW Saleslt.CategorySales
AS
SELECT  c.Name AS Category,
        o.CustomerID AS Cust,
        od.OrderQty AS Qty,
        YEAR(o.orderdate) AS Orderyear
FROM    SalesLT.ProductCategory AS c
        INNER JOIN SalesLT.product AS p ON c.ProductCategoryID=p.ProductCategoryID
        INNER JOIN Saleslt.SalesOrderDetail AS od ON p.productid=od.productid
        INNER JOIN Saleslt.SalesOrderHeader AS o ON od.SalesOrderID=o.SalesOrderID
--WHERE c.ParentProductCategoryID IN (1,2,3,)