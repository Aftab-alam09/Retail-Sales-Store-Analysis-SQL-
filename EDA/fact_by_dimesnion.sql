--sales By product
select
	Product_Category,
	sum(Total_Amount) as Total_Sales
from dbo.retail_sales 
group by Product_Category 
order by sum(Total_Amount) desc;

-- Sales BY Age

select distinct
	Age,
	sum(Total_Amount) as Total_Sales
from dbo.retail_sales 
group by Age 
order by Age;

--Top N age Customers and Bottom N age customers.

select Top 5
	Age,
	sum(Total_Amount) as Total_Sales
from dbo.retail_sales 
group by Age 
order by sum(Total_Amount) desc;
--
select Top 5
	Age,
	sum(Total_Amount) as Total_Sales
from dbo.retail_sales 
group by Age 
order by sum(Total_Amount) Asc;

-- Sales BY gender

select 
	Gender,
	sum(Total_Amount) as Total_Sales
from dbo.retail_sales
group by Gender 
order by sum(Total_Amount) desc;

