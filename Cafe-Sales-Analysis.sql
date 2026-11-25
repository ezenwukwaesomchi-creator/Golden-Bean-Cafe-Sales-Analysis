--1. What is total revenue and number of transactions? 
SELECT sum(Total_Spent) as Total_Revenue,
count(Transaction_ID) as Number_of_Transactions
from cafe_sales

--2. Which items earn the most and least revenue? 
Select Item, sum(Total_Spent) as Revenue
From cafe_sales
Group by Item
Order by Revenue DESC

--3. Which items sell the most units? 
Select Item, sum(Quantity) as Unit_Sold
from cafe_sales
Group by Item
Order by Unit_Sold DESC

--4. What is monthly revenue, and which month performed best? 
Select Month_Name, sum(Total_Spent) as Monthly_Revenue
From cafe_sales
Group by Month_Name
Order by Monthly_Revenue DESC

--5. Which day of the week has the highest revenue? 
Select Day_of_Week, sum(Total_Spent) as Daily_Revenue
from cafe_sales
group by Day_of_Week
Order by Daily_Revenue DESC

--6. How does revenue compare between In-store and Takeaway? 
Select Location, Count (*) as Transactions, sum(Total_Spent) as Total_Revenue
from cafe_sales
Group by Location
Order by Total_Revenue DESC

--7. What share of transactions use each payment method? 
Select Payment_Method, Count(Transaction_ID) as Number_of_Transactions_Per_Payment_Method from cafe_sales
Group by Payment_Method
Order by Number_of_Transactions_Per_Payment_Method DESC


--8. What is the average transaction value per payment method? 
Select Payment_Method, AVG(Total_Spent) as Average_Transaction_Value,
Count(Transaction_ID) as Total_Transactions
From cafe_sales
Group by Payment_Method
Order by Average_Transaction_Value DESC


