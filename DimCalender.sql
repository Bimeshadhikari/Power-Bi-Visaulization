/****** Script for SelectTopNRows command from SSMS  ******/
--cleaning DIN_Date table
SELECT
      [DateKey],
      [FullDateAlternateKey] as Date,
      [EnglishDayNameOfWeek] as Day,
	  [WeekNumberOfYear] as WeekNO,
      [EnglishMonthName] as Month,
      Left([EnglishMonthName], 3) As MonthShort,
      [MonthNumberOfYear] as MonthNO,
      [CalendarQuarter] as Quater,
      [CalendarYear] as Year
      
  FROM
  [AdventureWorksDW2019]. [dbo].[DimDate]
  where CalendarYear>=2021
