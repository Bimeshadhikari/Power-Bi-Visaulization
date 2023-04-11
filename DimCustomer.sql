--cleansed DIM_customer
SELECT 
      c.customerkey as CustomerKey,
       c.FirstName as [First Name],
       c.lastname as [Last Name],
	   c.FirstName+ ' '+LastName as [Full Name],
      case c.gender When 'M' THEN 'Male' When 'F' THEN 'Female' END as Gender,
	 c.datefirstpurchase as  DateFirstPurchase,
	  g.city as [Customer City]--join customer city from Geography table   
  FROM 
  dbo.dimcustomer as c 
  LEFT join dbo.DimGeography as g ON g.GeographyKey=c.GeographyKey
  order by 
  CustomerKey ASC