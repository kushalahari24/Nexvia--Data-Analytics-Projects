USE AdventureWorksDW2022;
GO

SELECT
    GETDATE() AS LastRefreshTime,
    COUNT(*) AS TotalSalesRecords,
    SUM(SalesAmount) AS TotalSales
FROM dbo.FactInternetSales;
GO