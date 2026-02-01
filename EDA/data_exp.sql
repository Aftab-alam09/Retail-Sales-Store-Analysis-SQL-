

--Total_No_Quantity Sold, AVG_Quantity, MINIMUM_Qunatity, Maximum_Quantity
Select 
	sum(Quantity) as Total_unit_sold,
	Avg(Quantity) AVG_Quantity,
	MIN(Quantity) MINIMUM_Qunatity,
	MAX(Quantity) Maximum_Quantity
from dbo.retail_sales;

-- AVG_price_unit_Sold, MINIMUM_price_unit, Maximum_Price_unit
Select 
	Avg(Price_per_Unit) AVG_Price_Unit_sold,
	MIN(Price_per_Unit) MINIMUM_Price_Unit,
	MAX(Price_per_Unit) Maximum_Price_unit
from dbo.retail_sales;

-- Total_Revenue_amt, AVG_Total_sales_amt, MINIMUM_Sales_amt, Maximum_Sales_amt
Select 
	sum(Total_Amount) as Total_Revenue_amt,
	Avg(Total_Amount) AVG_Total_sales_amt,
	MIN(Total_Amount) MINIMUM_Sales_amt,
	MAX(Total_Amount) Maximum_Sales_amt
from dbo.retail_sales;
-- AVG_Age, MINIMUM_Age, Maximum_Age of Customers
Select 
	Avg(Age) AVG_Age,
	MIN(Age) MINIMUM_Age,
	MAX(Age) Maximum_Age
from dbo.retail_sales;





