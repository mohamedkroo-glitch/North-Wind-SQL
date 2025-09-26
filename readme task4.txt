Task 4: SQL Analysis of the Northwind Database
Objective
The objective of this task is to use SQL queries to extract and analyze data from a database.

Tools Used
Microsoft SQL Server Management Studio (SSMS)

GitHub

Analysis & Insights
This project involved writing a series of SQL queries to answer key business questions about the Northwind database. Each query, along with its analytical insight, is detailed below.

1. Linking Customers to Orders
Business Question: Who are the specific customers placing each order?

Insight: This query provides a foundational view for customer service and sales by linking every order directly to a customer's name. It serves as the first step in building a comprehensive order history for each client.

2. Revenue from Active Products
Business Question: What is our total revenue from active, non-discontinued products?

Insight: By filtering out discontinued items using a WHERE clause, this analysis focuses on the current top-performing products. This information is vital for inventory management and helps the marketing team decide where to focus its budget and sales efforts.

3. Identifying Top-Spending Customers
Business Question: Who are our most valuable customers (VIPs) based on total spending?

Insight: This query segments customers by their total expenditure, identifying high-value individuals. This is crucial for creating targeted loyalty programs and personalized marketing campaigns to improve customer retention and lifetime value.

4. Supplier Product Counts
Business Question: How many products does each supplier provide, including those who supply none?

Insight: Using a LEFT JOIN, this analysis is key for supply chain management. It identifies our dependency on key suppliers and also flags inactive suppliers (those with zero products), which can help in contract negotiations and database cleanup.

5. Products Sourced from a Specific Country (Subquery)
Business Question: Which specific products are sourced from suppliers located in the USA?

Insight: This provides a geographical view of the supply chain. The insight is useful for logistics, calculating shipping costs, or launching country-specific marketing campaigns (e.g., "Sourced in the USA").

6. Total Sales by Country (Using a View)
Business Question: What is the total sales distribution across different countries?

Insight: This high-level analysis reveals the top-performing international markets. A VIEW was created to simplify this complex query. The results can guide strategic decisions on where to focus international marketing budgets and potential expansion plans.

Project Files
queries.sql: A single SQL file containing all the queries used for this analysis.

/screenshots: A folder containing screenshots of the output for each query.