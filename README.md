# Task 6: Sales Trend Analysis Using Aggregations

## Objective

To analyze monthly revenue and order volume from the sales dataset to identify time-based sales trends.

## Dataset Used

online_sales_dataset.csv from Kaggle

## Steps Performed

• Imported the dataset into SQLite database using DB Browser for SQLite

• Extracted year and month from InvoiceDate using strftime('%Y', InvoiceDate) and strftime('%m', InvoiceDate)

• Calculated monthly revenue using SUM((Quantity * UnitPrice) - Discount)

• Calculated monthly order volume using COUNT(DISTINCT InvoiceNo)

• Grouped data by year and month using GROUP BY

• Sorted results chronologically using ORDER BY year, month

• Filtered results for a specific year (optional) using WHERE strftime('%Y', InvoiceDate) = '2020'

## Tools Used

• SQLite

• DB Browser for SQLite

## Output

A summarized dataset showing monthly revenue and order volume ready for analysis. 
