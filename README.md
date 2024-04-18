# Pizza Sales Report Project
This repository contains SQL queries and Power BI visualizations for analyzing pizza sales data. The project aims to provide insights into various key performance indicators (KPIs) and trends related to pizza sales.

## Overview
In this project, pizza sales data was analyzed to understand various aspects of the business. SQL queries were used to extract, transform, and analyze the data from the pizza sales database. Additionally, the findings were visualized using Power BI to create insightful charts and dashboards.

## Data
The dataset used for this project was gotten from Kaggle and its columns contains information about 
*	Pizza id
*	Orders id
*	Pizza Name id
*	Quantity
*	Order Date
*	Order Time
*	Unit Price
*	Total Price 
*	Pizza Size
*	Pizza Category
*	Pizza Ingredients

This data was used to derive meaningful insights and performance metrics for the pizza sales business.

## Queries
The SQL queries in this repository are written to answer specific analytical questions and provide insights into various KPIs related to pizza sales. These queries include calculations for the problem statement given below.

**KPI REQUIREMENT**
*	The total revenue
*	Average Order Value
*	Total Pizzas Sold
*	Total Orders
*	Average Pizzas Per Order

**CHART REQUIREMENT**
*	Daily Trend for Total Orders
*	Monthly Trend for Total Orders
*	Percentage of Sales by Pizza Category
*	Percentage of Sales by Pizza Size
*	Total Pizzas Sold by Pizza Category
*	Top 5 Best Sellers by Revenue, Total Quantity and Total Orders
* Bottom 5 Worst Sellers by Revenue, Total Quantity and Total Orders

## Visualizations
The visualizations created using Power BI complement the SQL analysis by presenting the insights in a visually appealing and easy-to-understand format. Power query was used to modify columns and create new ones
DAX functions was used to create 
*	Total Orders = DISTINCTCOUNT(pizua_sales_excel_file[order_id])
*	Total Pizza Sold = sum(pizua_sales_excel_file[quantity])
*	Total Revenue = sum(pizua_sales_excel_file[total_price])
*	Average Order Value = [Total Revenue] / [Total Orders]
*	Avg Pizza Per Order = [Total Pizza Sold] / [Total Orders]
*	Order Day = UPPER(LEFT(pizua_sales_excel_file[Day Name], 3))
*	Order Month = UPPER(LEFT(pizua_sales_excel_file[Month Name], 3))
e.t.c

Charts and graphs are used to illustrate trends in sales, distribution of sales by pizza category and size, top-selling pizzas by revenue, quantity, and total orders, as well as best and worst sellers by Revenue, Quantity and Total Orders.

## Pizza Sales Report Home Dashboard
![Pizza Sales Home Dashboard](https://github.com/Theo-Nla/Theo-Works/assets/135545087/7175edc0-f67c-44a2-957f-c335543e748e)

## Pizza Sales Report Best-Worst Sellers Dashboard
![Pizza Sales Best-Worst Sellers Dashboard](https://github.com/Theo-Nla/Theo-Works/assets/135545087/ca02802f-cf74-487d-8b82-d345c5638f49)

## Contributing
Contributions to this project are welcome! If you have suggestions for improving the analysis, adding new queries, or enhancing the visualizations, feel free to open an issue or submit a pull request.

