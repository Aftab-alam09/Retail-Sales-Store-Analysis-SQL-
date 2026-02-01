if OBJECT_ID('dbo.retail_sales','U') is not null
	drop table dbo.retail_sales
Create table dbo.retail_sales (
Transaction_ID int,
Date date,
Customer_ID nvarchar(50),
Gender nvarchar(10),
Age Int,
Product_Category nvarchar(30),
Quantity int,
Price_per_Unit int,Total_Amount int
);


truncate table dbo.retail_sales;
Bulk insert dbo.retail_sales
from 'C:\Users\sufiy\Downloads\retiail_store_datasets\retail_sales_dataset.csv'
with(
tablock,fieldterminator=',',firstrow=2
);

