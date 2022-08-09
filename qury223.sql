-- show all customer records
select * from sales.customers;

-- show total number of customers
select count(*) from sales.customers;

-- show all market records
select * from  sales.markets;

-- show the products that were sold in chennai 
select distinct product_code From sales.transactions where market_code='Mark002';

-- show all trasaction records
select * from sales.transactions;
 -- show top 6 products interms of sales amount
select product_code from sales.transactions order by sales_amount limit 6;

-- show all customer records
select * from sales.customers;

-- Join transaction table and customer table
select sales.transactions.*, sales.customers.* From  sales.transactions INNER JOIN sales.customers on sales.transactions.customer_code=sales.customers.customer_code;

-- show top 6 customer name interms of sales amount
select sales.customers.custmer_name From  sales.transactions INNER JOIN sales.customers on sales.transactions.customer_code=sales.customers.customer_code order by sales.transactions.sales_amount DESC limit 6;

-- show all date records
select * from sales.date;

-- show total revenue in 2019
select sum(sales.transactions.sales_amount) As Revenue,sales.date.year  FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2019 and  (sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r");

-- show total revenue in February,2019 
select sum(sales.transactions.sales_amount) As Revenue,sales.date.year,sales.date.month_name  FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2019 and sales.date.month_name="February" and (sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r");
-- show all market records 
select * from sales.markets;

-- Show total revenue of mumbai in 2019
select sum(sales.transactions.sales_amount) As Revenue,sales.date.year  FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2019 and sales.transactions.market_code="Mark002" and (sales.transactions.currency="INR\r" or sales.transactions.currency="USD\r");
