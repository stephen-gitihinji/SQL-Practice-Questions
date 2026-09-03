-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

--An addition row in the sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES(16, 2, 14, 1, '2023-09-05', 400.00);
-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);


-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from Customers;


-- 2. Write a query to select the total number of products from the `Products` table.
select * from Products

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price from products p 
	where price > 500

-- 4. Write a query to find the average price of all products from the `Products` table.
select avg(price) from Products

-- 5. Write a query to find the total sales amount from the `Sales` table.
select sum(total_amount) from sales

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status from customers

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name, ' ', last_name) as full_name
	from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select * from products p 
	where category = 'Electronics';
-- 9. Write a query to find the highest price from the `Products` table.
select max(price) from products

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select p.product_name, count(s) as product_sales
	from products p 
	left join
	sales s on p.product_id = s.product_id 
	group by p.product_name;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_name, sum(s.quantity_sold) as total_quantity_sold
	from products p
	left join sales s on p.product_id = s.product_id
	group by p.product_name;
-- 12. Write a query to find the lowest price of products in the `Products` table.
select min(price) from products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select concat(c.first_name, ' ', c.last_name) as customer_of_above_1000, p.price
	from customers c
	left join sales s on c.customer_id = s.customer_id 
	left join products p on s.product_id = p.product_id
	where price > 1000

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select p.product_name, s.total_amount	
	from products p 
	join sales s on p.product_id = s.product_id

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
	select concat(c.first_name, ' ', c.last_name ) as customer, s.total_amount
		from customers c 
		join sales s on c.customer_id = s.customer_id

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
		select c.first_name, c.last_name, p.product_name, s.quantity_sold
			from customers c
			join sales s on c.customer_id = s.customer_id 
			join products p on p.product_id = s.product_id;

-- * 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select * from customers c1
 join customers c2 on c1.membership_status = c2.membership_status
 where c1.membership_status = c2.membership_status
 and c1.customer_id < c2.customer_id;


-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_name, count(s)
	from products p 
	join sales s on p.product_id = s.product_id
	group by p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select * from products p 
	where p.stock_quantity < 10

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select p.product_name as sales_less_than_5
	from products p 
	join sales s on p.product_id = s.product_id
	group by p.product_name
	having count(*) < 5; 

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select concat(c.first_name, ' ', c.last_name) as customers, p.category 
	from customers c 
	join sales s on c.customer_id = s.customer_id
	join products p on s.product_id = p.product_id
	where p.category in ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select p.product_name, sum(s.total_amount) as total_sales_amount
	from sales s
	join products p on s.product_id = p.product_id
	group by p.product_name;
	
-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select concat(c.first_name, ' ', last_name) as customers_in_2023
	from customers c 
	join sales s on c.customer_id = s.customer_id
	where extract(year from s.sale_date) = '2023'

-- 24. Write a query to find the customers with the highest total sales in 2023.
select concat(c.first_name, ' ', last_name) as customers, count(s) as number_of_sales 
	from customers c
	join sales s on c.customer_id = s.customer_id
	where extract(year from s.sale_date) = '2023'
	group by c.customer_id;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select p.product_name as expensive_product_sold, p.price
	 from products p 
	 join sales s on p.product_id = s.product_id
	 where price = (select max(price) from products)
	 
-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
	 select concat(c.first_name, ' ', c.last_name) as customers, sum(s.total_amount) as amount_spent
	 	from customers c
	 	join sales s on c.customer_id = s.customer_id
	 	group by c.customer_id
	 	having sum(s.total_amount) > 500

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
	 	select concat(c.first_name, ' ', c.last_name) as customers, sum(total_amount) as total_sales_made
	 		from customers c
	 		join sales s on c.customer_id = s.customer_id
	 		join products p on s.product_id = p.product_id 
	 		group by c.customer_id 
	 		having c.membership_status = 'Gold'

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
	 select p.product_name, i.stock_quantity
	 	from products p
	 	join inventory i on p.product_id = i.product_id
	 	where i.stock_quantity < 10

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
	 	select concat(c.first_name, ' ', c.last_name) as customers, sum(s.quantity_sold)
	 		from customers c
	 		join sales s on c.customer_id = s.customer_id
	 		group by c.customer_id 
	 		having sum(s.quantity_sold)  > 5

-- 30. Write a query to find the average quantity sold per product.
	 	select p.product_name, avg(s.quantity_sold) as average_sold
	 		from products p 
	 		join sales s on p.product_id = s.product_id
	 		group by p.product_id;

-- 31. Write a query to find the number of sales made in the month of December 2023.
	 select count(*) as total_sales_in_2023
	 	from sales 
	 	where extract(year from sale_date) = '2023';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
	select concat(c.first_name, ' ', c.last_name) as customers, sum(s.total_amount) as total_amount_spent
		from customers c
		join sales s on c.customer_id = s.customer_id
		where extract(year from s.sale_date) = '2023'
		group by c.customer_id
		order by sum(s.total_amount ) desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
	select p.product_name, sum(s.quantity_sold) as total_items_sold
		from products p
		join sales s on p.product_id = s.product_id
		join inventory i on s.product_id = i.product_id
		group by p.product_id, i.product_id ;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
		select p.product_name, count(s.product_id)
			from products p 
			join sales s on p.product_id = s.product_id
			group by p.product_id
			order by count(s.product_id) desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
	select concat(c.first_name, ' ', c.last_name ), c.registration_date, s.sale_date, s.sale_date - c.registration_date as date_difference
		from customers c
		join sales s on c.customer_id = s.customer_id 
		where c.registration_date + interval '7 days' - s.sale_date > '0' and s.sale_date > c.registration_date;

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
	select * from products p
		join sales s on p.product_id = s.product_id 
		where price between 100 and 500
	
-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
		with customer_frequency as(
			select customer_id, count(*) as sales 
			from sales
			group by customer_id)
		select concat(c.first_name, ' ', c.last_name) as customers, cf.sales 
			from customers c
			join customer_frequency cf on c.customer_id = cf.customer_id
			where cf.sales = (select max(sales) from customer_frequency)
--			group by c.customer_id, cf.sales
--			having cf.sales = max(cf.sales)
			

-- 38. Write a query to find the total quantity of products sold per customer.
select concat(c.first_name, ' ', c.last_name) as customer, sum(s.quantity_sold)
	from customers c 
	join sales s on c.customer_id = s.customer_id
	group by c.customer_id;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.

select * from inventory as low_stock where stock_quantity = (select min(stock_quantity) from inventory)
	union
	select * from inventory as high_stock where stock_quantity = (select max(stock_quantity) from inventory);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select product_name, sum(s.total_amount)
	from products p 
	join sales s on p.product_id = s.product_id
	group by p.product_name 
	having p.product_name like '%phone%';
	

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
	select concat(c.first_name, ' ', c.last_name) as customers, p.product_name, sum(s.total_amount) as total_sales_amount
		from customers c
		join sales s on c.customer_id = s.customer_id
		join products p on s.product_id = p.product_id
		group by c.customer_id,p.product_id;
		
-- 42. Write a query to find the total sales of products by category.
	select p.category, count(s.product_id) as total_sales_amount
		from products p
		join sales s on p.product_id = s.product_id
		group by p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select extract(year from s.sale_date) as year, extract(month from s.sale_date) as month, p.product_name, count(s.product_id)
	from products p 
	join sales s on p.product_id = s.product_id
	group by extract(year from s.sale_date), extract(month from s.sale_date),p.product_id
	order by year, month;
-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
	select p.product_name as sold_items_on_stock, i.stock_quantity
		from sales s
		join inventory i on s.product_id = i.product_id 
		join products p on i.product_id = p.product_id;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
		select concat(c.first_name, ' ', c.last_name) as customers, sum(s.total_amount) as total_purchases
			from customers c
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id 
			order by total_purchases desc
			limit 5; 

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select count(distinct product_id) from sales s 
	where extract(year from s.sale_date) = '2023'

-- 47. Write a query to find the products that have not been sold in the last 6 months.
	select product_name
		from products p
		join sales s on p.product_id = s.product_id
		where s.sale_date  > now() - interval '6 months'

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
		select p.product_name, p.price, sum(s.quantity_sold) as total_quantity_sold
			from products p 
			join sales s on p.product_id = s.product_id
			where p.price between 200 and 800
			group by p.product_id;
-- 49. Write a query to find the customers who spent the most money in the year 2023.
with customer_spending as(
	select customer_id, sum(total_amount) as amount_spent from sales s 
	group by customer_id)
select concat(c.first_name, ' ', c.last_name) as customers, cs.amount_spent
		from customers c
		join customer_spending cs on c.customer_id = cs.customer_id
		where cs.amount_spent = (select max(amount_spent) from customer_spending);
--		group by c.customer_id, cs.amount_spent
--		having cs.amount_spent = max(cs.amount_spent)
			
-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
	select p.product_name, count(p.product_id) as nummber_of_times_sold, p.price
		from products p 
		join sales s on s.product_id = p.product_id 
		group by p.product_id
		having count(p.product_id) > 100 and p.price>200;


	
-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?

	select concat(c.first_name, ' ', c.last_name), sum(total_amount) as amount_spent
		from customers as c
		join sales s on c.customer_id = s.customer_id
		group by c.customer_id
		having sum(total_amount) > (select avg(customer_total)
							from (select sum(total_amount) as customer_total from sales group by customer_id))
	
-- 52. Which products are priced higher than the average price of all products?
							
	select product_name, price from products 
	where price > (select avg(price) from products)

-- 53. Which customers have never made a purchase?
	select concat(first_name, ' ', last_name) from customers
	where customer_id not in (select customer_id from sales) 

-- 54. Which products have never been sold?
	select product_name from products p
	where product_id not in (select product_id from sales)

-- 55. Which customer made the single most expensive purchase?
	select concat(c.first_name, ' ', c.last_name), s.total_amount 
	from customers c
	join sales s on c.customer_id = s.customer_id
	where total_amount = (select max(total_amount) from sales)

-- 56. Which products have total sales greater than the average total sales across all products?
	-- getting the avg sales for each product
	select p.product_name, count(s.product_id)
		from products p
		join sales s on p.product_id = s.product_id
		group by p.product_id 
		having count(s.product_id) > (select avg( product_sales) from (select count(product_id) as product_sales from sales s group by product_id))
		
-- 57. Which customers registered earlier than the average registration date?
	select concat(c.first_name, ' ', c.last_name), registration_date from customers c
		where registration_date > (select to_timestamp(avg(extract(epoch from registration_date)))::date 
			from customers);

-- 58. Which products have a price higher than the average price within their own category?
	select p.product_name, p.category, price 
	from products p
	where price > (select avg(price) as average_price from products 
		group by category having category = p.category)
		
-- 59. Which customers have spent more than the customer with ID = 10?
		
		select concat(c.first_name, ' ', c.last_name), sum(s.total_amount) 
		from customers c
		join sales s on c.customer_id = s.customer_id
		group by c.customer_id 
		having sum(s.total_amount) > (select sum(total_amount) from sales where customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
	select p.product_name, sum(s.quantity_sold)
	from products p 
	join sales s on p.product_id = s.product_id
	group by p.product_id
	having sum(s.quantity_sold) > (select avg(products_sold) from (select sum(quantity_sold) as products_sold from sales group by product_id));
	

-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
	with amount_spent as (
		select concat(c.first_name, ' ', c.last_name), sum(s.total_amount)
		from customers c
		join sales s on c.customer_id = s.customer_id
		group by c.customer_id
		order by sum(s.total_amount) desc)
	select * from amount_spent limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
 	with total_quantity_sold as (
 		select p.product_name, sum(s.quantity_sold)
 			from products p 
 			join sales s on p.product_id = s.product_id 
 			group by p.product_id 
 			order by sum(quantity_sold) desc
 	)
 	select * from total_quantity_sold limit 3
 	
-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
 	with product_sales as (
 		select p.category, sum(s.total_amount) as category_sales
 			from products p 
 			join sales s on p.product_id = s.product_id
 			group by p.category 
 			order by sum(s.total_amount) desc)
 	select max(category_sales) as highest_revenue from product_sales;
-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
 	with customer_purchases as (
 		select concat(c.first_name, ' ', c.last_name) as customer, count(s.customer_id) as purchases
 		from customers c 
 		join sales s on c.customer_id = s.customer_id
 		group by c.customer_id
 		)
 	select * from customer_purchases
 		where purchases = (select max(purchases) from customer_purchases);

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
 		with product_quantities as (
 			select p.product_name, sum(s.quantity_sold) as quantity
 				from products p 
 				join sales s on p.product_id = s.product_id
 				group by p.product_id)
 		select * from product_quantities 
 			where quantity > (select avg(quantity) from product_quantities);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
		with customer_spending as (
			select concat(c.first_name, ' ', c.last_name), sum(s.total_amount) as spending
			from customers c
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id)
		select * from customer_spending 
			where spending > (select avg(spending) from customer_spending)
			
-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
		with product_revenue as (
		select p.product_name, sum(total_amount) as revenue
			from products p 
			join sales s on p.product_id = s.product_id 
			group by p.product_id)
		select * from product_revenue 
		order by revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
	with monthly_sales as (
	select extract(month from s.sale_date) as months, sum(total_amount) as revenue
		from sales s 
		group by months)
	select max(revenue) from monthly_sales

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
	with product_sales as (
	select p.product_id, p.product_name, count(s.customer_id) as no_of_customers
		from products p 
		join sales s on p.product_id = s.product_id
		group by p.product_id 
		order by p.product_id
	)
	select * from product_sales
		where no_of_customers > 3

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
		with product_quantities as (
 			select p.product_name, sum(s.quantity_sold) as quantity
 				from products p 
 				join sales s on p.product_id = s.product_id
 				group by p.product_id)
		select * from product_quantities 
 			where quantity < (select avg(quantity) from product_quantities);
-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
	select concat(c.first_name,' ',c.last_name) as customers, sum(s.total_amount), row_number() over (order by sum(s.total_amount) desc)
		from customers c
		join sales s on c.customer_id = s.customer_id
		group by c.customer_id 

-- 72. Rank products based on total quantity sold.
		select p.product_name, sum(s.quantity_sold) as product_quantity, row_number() over (order by sum(s.quantity_sold))
			from products p 
			join sales s on p.product_id = s.product_id 
			group by p.product_id;

-- 73. Identify the 3rd highest spending customer.
		with spending_rank as (select concat(c.first_name,' ',c.last_name) as customers, sum(s.total_amount) as amount_spent, row_number() over (order by sum(s.total_amount) desc) as rank
			from customers c 
			join sales s on c.customer_id = s.customer_id 
			group by c.customer_id)
		select * from spending_rank 
			where rank = 3;

-- 74. Identify the 2nd most expensive product.
	with product_prices as (select product_name, price, row_number() over (order by price desc) as price_rank
		from products p)
	select * from product_prices
		where price_rank = 2

-- 75. Show the ranking of products within each category based on price.
		select product_name, category, price, 
			row_number() over (partition by category order by price)  from products
		
-- 76. Show the ranking of customers based on the number of purchases they made.
		select concat(c.first_name, ' ', c.last_name), sum(total_amount) as purchases, row_number() over (order by sum(total_amount) desc) 
			from customers c 
			join sales s on c.customer_id = s.customer_id 
			group by c.customer_id

-- 77. Show the running total of sales amounts ordered by sale_date.
		select sale_date, total_amount, sum(total_amount) over (order by sale_date) as running_sales from sales

-- 78. Show the previous sale amount for each sale ordered by sale_date.
		select sale_date, total_amount, lag(total_amount) over (order by sale_date) from sales

-- 79. Show the next sale amount for each sale ordered by sale_date.
		select sale_date, total_amount, lead(total_amount) over (order by sale_date) from sales

-- 80. Divide customers into 4 groups based on total spending.
		with customer_spending as (
		select concat(c.first_name, ' ', c.last_name) as customers, sum(total_amount) as total_spending
			from customers c
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id)
		select *, ntile(4) over (order by total_spending) from customer_spending;


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
		select concat(c.first_name, ' ', c.last_name) as customers, count(distinct s.product_id) as product_types
			from customers c 
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id
			having count(distinct s.product_id) > 1

-- 82. Which customers purchased products within 7 days of registering?
			select concat(c.first_name, ' ', c.last_name) as customers, c.registration_date, s.sale_date, age(s.sale_date, c.registration_date) as days_of_purchase_after_registration
				from customers c 
				join sales s on c.customer_id = s.customer_id 
				where s.sale_date - c.registration_date between 0 and 7;

-- 83. Which products have lower stock remaining than the average stock quantity?
		select p.product_name, i.stock_quantity from 
			products p 
			join inventory i on p.product_id = i.product_id 
			where i.stock_quantity < (select avg(stock_quantity) from inventory);

--* 84. Which customers purchased the same product more than once?
		with customer_purchases as (select concat(c.first_name, ' ', c.last_name) as customers, s.product_id, count(s.product_id) over (partition by c.customer_id order by c.customer_id) as number_of_times_bought
			from customers c
			join sales s on c.customer_id = s.customer_id
			order by c.customer_id)
		select * from customer_purchases
			where number_of_times_bought>1;
			-- The cte by itself
		select concat(c.first_name, ' ', c.last_name) as customers, s.product_id, count(s.product_id) over (partition by c.customer_id order by c.customer_id) as number_of_times_bought
			from customers c
			join sales s on c.customer_id = s.customer_id
			order by c.customer_id;

-- 85. Which product categories generated the highest total revenue?
	with category_revenue as (select p.category, sum(s.total_amount) as revenue
		from products p 
		join sales s on p.product_id = s.product_id
		group by p.category)
	select * from category_revenue 
		where revenue = (select max(revenue) from category_revenue)
		 

-- 86. Which products are among the top 3 most sold products?
		with product_sales as (select p.product_name, sum(s.quantity_sold) as quantity, rank() over (order by sum(s.quantity_sold) desc) as rank
			from products p 
			join sales s on p.product_id = s.product_id 
			group by p.product_id)
		select product_name, quantity from product_sales 
			where rank <=3;
		

-- 87. Which customers purchased the most expensive product?
		select concat(c.first_name, ' ', c.last_name) as customers, p.product_name, p.price 
			from customers c 
			join sales s on c.customer_id = s.customer_id 
			join products p on p.product_id = s.product_id
			where  p.price = ( select max(price) from products);
			

-- 88. Which products were purchased by the highest number of unique customers?
	with customers_per_product as (select p.product_name, count(s.customer_id) as no_of_customers
		from products p 
		join sales s on p.product_id = s.product_id
		group by p.product_id)
	select * from customers_per_product 
		where no_of_customers = (select max(no_of_customers) from customers_per_product);
-- 89. Which customers made purchases above the average sale amount?
		with customer_purchases as (select concat(c.first_name, ' ', c.last_name) as customers, sum(s.total_amount) as purchases
			from customers c
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id)
		select * from customer_purchases 
			where purchases > (select avg(purchases) from customer_purchases)

-- 90. Which customers purchased more products than the average quantity purchased per customer?
		with customer_quantities as (select concat(c.first_name, ' ', c.last_name) as customers, sum(s.quantity_sold ) as quantity
			from customers c
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id)
		select * from customer_quantities
			where quantity > (select avg(quantity) from customer_quantities);

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
		with customer_spending as (select concat(c.first_name, ' ', c.last_name) as customers, sum(s.total_amount) as amount_spent, row_number() over(order by sum(s.total_amount) desc) as rank
			from customers c 
			join sales s on c.customer_id = s.customer_id
			group by c.customer_id
			order by amount_spent desc)
		select * from customer_spending
			where rank < (select 0.1 * count(rank) from customer_spending)
			

-- 92. Which products contribute to the top 50% of total revenue?
			with product_revenue as (select p.product_name, sum(s.total_amount) as revenue, sum(s.total_amount) over (order by sum(s.total_amount) desc) as running_totals
				from products p 
				join sales s on p.product_id = s.product_id
				group by p.product_id, s.total_amount
				order by sum(s.total_amount) desc)
			select * from product_revenue
				where running_totals <= (select 0.5*sum(revenue) from product_revenue);
--* 93. Which customers made purchases in consecutive months?
		with multiple_purchases as (
		select c.customer_id, concat(c.first_name, ' ', c.last_name) as customer, s.sale_date as purchase_date,
			lead(sale_date) over (order by c.customer_id) as next_date, lead(c.customer_id) over (order by c.customer_id) as next_id
			from customers c
			join sales s on c.customer_id = s.customer_id)
		select * from multiple_purchases
			where customer_id = next_id and (extract(month from next_date) - extract(month from purchase_date) = 1);

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
		with product_analysis as (
			select p.product_id, p.product_name, p.stock_quantity, count(s.quantity_sold) as total_quantity_sold,
				(p.stock_quantity - count(s.quantity_sold)) as difference
				from products p 
				join sales s on p.product_id = s.product_id 
				group by p.product_id
				order by product_id)
		select * from product_analysis 
			where difference = (select max(difference) from product_analysis);
		

-- 95. Which customers have spending above the average spending of their membership tier?
	--(longer version)
	with tier_averages as (select c.membership_status, avg(s.total_amount) membership_average
		from customers c
		join sales s on c.customer_id = s.customer_id
		group by c.membership_status)
--	select * from tier_averages;
	select concat(c.first_name, ' ', c.last_name) as customer, c.membership_status, sum(s.total_amount) as customer_spending
		from customers c
		join sales s on c.customer_id = s.customer_id
		group by c.customer_id
		having sum(s.total_amount) > (select membership_average from tier_averages where c.membership_status = membership_status);
		
	--using window functions (shorter version)
		with membership_averages as 
			(select concat(c.first_name, ' ', c.last_name) as customer, c.membership_status, sum(s.total_amount) as customer_spending,
				avg(s.total_amount) over (partition by c.membership_status) as tier_average
				from customers c 
				join sales s on c.customer_id = s.customer_id
				group by c.customer_id, s.sale_id)
		select * from membership_averages 
			where customer_spending > tier_average
	

-- 96. Which products have higher sales than the average sales within their category?
		with category_averages as (
			select p.product_name, p.category, count(s.sale_id) as product_sales, 
				avg(count(s.sale_id)) over (partition by p.category) as category_average
				from products p 
				join sales s on p.product_id = s.product_id
				group by p.product_id)
		select * from category_averages 
			where product_sales > category_average;
-- 97. Which customer made the largest single purchase relative to their total spending?
	with customer_spending as (
		select concat(c.first_name, ' ', c.last_name) as customer, s.total_amount as purchase, sum(s.total_amount) over (partition by s.customer_id) as total_spending
			from customers c
			join sales s on c.customer_id = s.customer_id),
	spending_ratio as (
		select *, purchase/total_spending as ratio from customer_spending)
	select * from spending_ratio
		where ratio = (select max(ratio) from spending_ratio);
-- 98. Which products rank among the top 3 most sold products within each category?
		with product_ranks as (
			select p.product_name, category, sum(s.quantity_sold) as amount_sold, rank () over ( partition by category order by sum(s.quantity_sold) desc)
				from products p
				join sales s on p.product_id = s.product_id
				group by p.product_id)
		select * from product_ranks
			where rank <= 3;

-- 99. Which customers are tied for the highest total spending?
		with customer_spending as (
			select concat(c.first_name, ' ', c.last_name) as customer, sum(s.total_amount) as spending
				from customers c
				join sales s on c.customer_id = s.customer_id
				group by c.customer_id)
		select * from customer_spending 
			where spending = (select max(spending) from customer_spending);

-- 100. Which products generated sales every year present in the dataset?
--		(select extract(year from sale_date) from sales)
		select p.product_name
			from products p
			join sales s on p.product_id = s.product_id
			group by p.product_id
			having count(distinct extract(year from sale_date)) = (select count(distinct extract(year from sale_date)) from sales)