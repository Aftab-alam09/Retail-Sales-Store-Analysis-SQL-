

select distinct 
datetrunc(MONTH,Date) date,
Product_Category,
sum(Quantity) Total_unit ,
sum(Price_per_Unit) Total_price_Unit,
sum(Total_Amount) Total_Sales
from dbo.retail_sales 
Group by datetrunc(MONTH,Date),PRODUCT_CATEGORY
order by datetrunc(MONTH,Date) asc;

-- the Trend over time for Beauty Product Category and Sales of Beauty Each month 

select distinct 
datetrunc(MONTH,Date) date,
Product_Category,
sum(Quantity) Total_unit ,
sum(Price_per_Unit) Total_price_Unit,
sum(Total_Amount) Total_Sales
from dbo.retail_sales 
where Product_Category ='Beauty'
Group by datetrunc(MONTH,Date),PRODUCT_CATEGORY
order by datetrunc(MONTH,Date) asc;
-- the Trend over time for Electronics and Sales of Electronics Each month 
select distinct 
datetrunc(MONTH,Date) date,
Product_Category,
sum(Quantity) Total_unit ,
sum(Price_per_Unit) Total_price_Unit,
sum(Total_Amount) Total_Sales
from dbo.retail_sales 
where Product_Category ='Electronics'
Group by datetrunc(MONTH,Date),PRODUCT_CATEGORY
order by datetrunc(MONTH,Date) asc;
-- the trend over time for Clothing and Sales of Clothing Each month
select distinct 
datetrunc(MONTH,Date) date,
Product_Category,
sum(Quantity) Total_unit ,
sum(Price_per_Unit) Total_price_Unit,
sum(Total_Amount) Total_Sales
from dbo.retail_sales 
where Product_Category ='clothing'
Group by datetrunc(MONTH,Date),PRODUCT_CATEGORY
order by datetrunc(MONTH,Date) asc;

-- How is our business doinng over the time? Over All and in each Product Category.
WITH monthly_sales AS (
    SELECT
        DATETRUNC(MONTH, [Date]) AS month_date,
        SUM(Quantity) AS monthly_quantity,
        Sum(Total_amount) as monthly_sales_amt
    FROM dbo.retail_sales
    GROUP BY DATETRUNC(MONTH, [Date])
)
SELECT
    month_date,
    monthly_quantity,
    SUM(monthly_quantity) OVER (
        ORDER BY month_date
       rows between unbounded preceding and current row
    ) AS running_total_quantity,
    monthly_sales_amt,
    SUM(monthly_sales_amt) over (order by month_date rows between unbounded preceding and current row) as running_total_sales
FROM monthly_sales
ORDER BY month_date;


