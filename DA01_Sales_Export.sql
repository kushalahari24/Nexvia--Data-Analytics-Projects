USE AdventureWorksDW2022;
GO

SELECT
    SalesOrderNumber,
    OrderDate,
    ProductKey,
    CustomerKey,
    OrderQuantity,
    SalesAmount
FROM dbo.FactInternetSales;