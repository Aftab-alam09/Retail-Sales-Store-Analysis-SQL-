select 
	date,
	Product_Category,
	Total_amount_pm,
	Total_amt_Cm,
	Total_amount_pm-Total_amt_Cm as Comparision_sales_by_month,
	Total_qunatity_pm,
	Total_qunatity_cm,
	Total_qunatity_pm-Total_qunatity_cm as Quantity_comparision_by_month 
	from(
	Select 
	DATETRUNC(month,date) as date,
	Product_Category,
	sum(Quantity) Total_qunatity_PM,
	lag(sum(Quantity)) over (order by DATETRUNC(month,date)) Total_qunatity_CM,
	sum(Total_Amount) Total_amount_PM,
	lag(sum(Total_Amount)) over(order by DATETRUNC(month,date)) Total_amt_CM
from dbo.retail_sales 
where Product_Category='Clothing'
group by DATETRUNC(month,date), Product_Category)t


--For Category Analysis Electronics
select 
	date,
	Product_Category,
	Total_amount_pm,
	Total_amt_Cm,
	Total_amount_pm-Total_amt_Cm as Comparision_sales_by_month,
	Total_qunatity_pm,
	Total_qunatity_cm,
	Total_qunatity_pm-Total_qunatity_cm as Quantity_comparision_by_month 
	from(
	Select 
	DATETRUNC(month,date) as date,
	Product_Category,
	sum(Quantity) Total_qunatity_PM,
	lag(sum(Quantity)) over (order by DATETRUNC(month,date)) Total_qunatity_CM,
	sum(Total_Amount) Total_amount_PM,
	lag(sum(Total_Amount)) over(order by DATETRUNC(month,date)) Total_amt_CM
from dbo.retail_sales 
where Product_Category='Electronics'
group by DATETRUNC(month,date), Product_Category)t

---- For Category Analysis Beauty
select 
	date,
	Product_Category,
	Total_amount_pm,
	Total_amt_Cm,
	Total_amount_pm-Total_amt_Cm as Comparision_sales_by_month,
	Total_qunatity_pm,
	Total_qunatity_cm,
	Total_qunatity_pm-Total_qunatity_cm as Quantity_comparision_by_month 
	from(
	Select 
	DATETRUNC(month,date) as date,
	Product_Category,
	sum(Quantity) Total_qunatity_PM,
	lag(sum(Quantity)) over (order by DATETRUNC(month,date)) Total_qunatity_CM,
	sum(Total_Amount) Total_amount_PM,
	lag(sum(Total_Amount)) over(order by DATETRUNC(month,date)) Total_amt_CM
from dbo.retail_sales 
where Product_Category='Electronics'
group by DATETRUNC(month,date), Product_Category)t

Select TOP 10 * from dbo.retail_sales
