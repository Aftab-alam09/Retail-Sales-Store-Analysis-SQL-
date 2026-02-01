
--

-- cumulative sales and segment Analysis BY sales
Select 
DATETRUNC(month,date) as date,
Product_Category,
sum(Quantity) Total_qunatity,
sum(Total_Amount) Total_amount
from dbo.retail_sales 
group by DATETRUNC(month,date),Product_Category
order by  DATETRUNC(month,date);


--
with monthly_sales_category as (
Select 
DATETRUNC(month,date) as date,
Product_Category,
sum(Quantity) Total_qunatity,
sum(Total_Amount) Total_amount
from dbo.retail_sales 
group by DATETRUNC(month,date),Product_Category
)
select 
	date,
	Product_Category,
	Total_qunatity,
	sum(Total_qunatity) over (order by date rows between unbounded preceding and current row) Running_total_Quantity,
	Total_amount,
	Sum(Total_amount) over (order by date rows between unbounded preceding and current row) Running_total_AMT
from monthly_sales_category
where Product_Category='Beauty';
--
select 
date,
Product_Category,
Total_qunatity,
sum(Total_qunatity) over 
(order by date rows between unbounded preceding and current row) Running_total_Quantity,
Total_amount,
Sum(Total_amount) over 
(order by date rows between unbounded preceding and current row) Running_total_AMT
from (Select 
DATETRUNC(month,date) as date,
Product_Category,
sum(Quantity) Total_qunatity,
sum(Total_Amount) Total_amount
from dbo.retail_sales 
group by DATETRUNC(month,date),Product_Category)t
where Product_Category='Clothing';
--
select 
date,
Product_Category,
Total_qunatity,
sum(Total_qunatity) over 
(order by date rows between unbounded preceding and current row) Running_total_Quantity,
Total_amount,
Sum(Total_amount) over 
(order by date rows between unbounded preceding and current row) Running_total_AMT
from (Select 
DATETRUNC(month,date) as date,
Product_Category,
sum(Quantity) Total_qunatity,
sum(Total_Amount) Total_amount
from dbo.retail_sales 
group by DATETRUNC(month,date),Product_Category)t
where Product_Category='Electronics';



Select top 10 * from dbo.retail_sales


