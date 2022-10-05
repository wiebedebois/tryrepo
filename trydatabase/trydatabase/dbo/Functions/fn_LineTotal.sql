CREATE FUNCTION dbo.fn_LineTotal ( @orderid INT )
RETURNS TABLE
AS
RETURN
    SELECT  SalesOrderID, productid, unitprice, OrderQty, UnitPriceDiscount,
            CAST(( OrderQty * unitprice * ( 1 - UnitPriceDiscount ) ) AS DECIMAL(8, 2)) AS line_total
    FROM    Saleslt.SalesOrderDetail
    WHERE   SalesOrderID = @orderid ;