-- Cleansed DimCustomer Table
SELECT
	c.customerkey AS CustomerKey,
    --[GeographyKey],
    --[CustomerAlternateKey],
    --[Title],
    c.FirstName AS [First Name],
    --[MiddleName],
    c.LastName AS [Last Name],
    -- Combine First and Last Name
	c.FirstName + ' ' + c.LastName AS [Full Name],
	--[NameStyle],
    --[BirthDate],
    --[MaritalStatus],
    --[Suffix],
    CASE c.Gender WHEN 'M' THEN 'Male'
				  WHEN 'F' THEN 'Female'
	END AS Gender,
    --[EmailAddress],
    --[YearlyIncome],
    --[TotalChildren],
    --[NumberChildrenAtHome],
    --[EnglishEducation],
    --[SpanishEducation],
    --[FrenchEducation],
    --[EnglishOccupation],
    --[SpanishOccupation],
    --[FrenchOccupation],
    --[HouseOwnerFlag],
    --[NumberCarsOwned],
    --[AddressLine1],
    --[AddressLine2],
    --[Phone],
    [DateFirstPurchase],
    --[CommuteDistance]
	g.City AS [Customer City] -- Joined in Customer City from DimGeography table
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] As g ON g.GeographyKey = c.GeographyKey
  -- Ordered List by CustomerKey Ascending
  ORDER BY
	CustomerKey ASC