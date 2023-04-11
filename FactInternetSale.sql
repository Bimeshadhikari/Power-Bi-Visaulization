

--cleaned fact internetsales table
SELECT
       [ProductKey],
       [OrderDateKey],
       [DueDateKey],
       [ShipDateKey],
       [CustomerKey],
       [SalesOrderNumber],
       [SalesAmount]
      
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where
  LEFT (OrderDateKey, 4)>=YEAR(GETDATE())-2  --we always only bring two years of date from extraction
  order by
  OrderDateKey asc