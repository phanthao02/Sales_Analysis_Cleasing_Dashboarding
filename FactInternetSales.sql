-- Cleansed FactInternetSales Table
SELECT
	[ProductKey],
    [OrderDateKey],
    [DueDateKey],
    [ShipDateKey],
    [CustomerKey],
    --[PromotionKey]
    --[CurrencyKey]
    --[SalesTerritoryKey]
    [SalesOrderNumber],
    --[SalesOrderLineNumber]
    --[RevisionNumber]
    --[OrderQuantity]
    --[UnitPrice]
    --[ExtendedAmount]
    --[UnitPriceDiscountPct]
    --[DiscountAmount]
    --[ProductStandardCost]
    --[TotalProductCost]
    [SalesAmount]
    --[TaxAmt]
    --[Freight]
    --[CarrierTrackingNumber]
    --[CustomerPONumber]
    --[OrderDate]
    --[DueDate]
    --[ShipDate]
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2 -- This query is used to ensure we extract 2 years of date from the database
ORDER BY
	OrderDate ASC