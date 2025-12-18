SELECT * FROM online_sales_dataset;

SELECT 
    InvoiceDate,
    strftime('%Y', InvoiceDate) AS year,
    strftime('%m', InvoiceDate) AS month
FROM online_sales_dataset
LIMIT 5;

SELECT 
    strftime('%Y', InvoiceDate) AS year,
    strftime('%m', InvoiceDate) AS month,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
LIMIT 10;

SELECT 
    strftime('%Y', InvoiceDate) AS year,
    strftime('%m', InvoiceDate) AS month,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales_dataset
GROUP BY year, month
LIMIT 10;

SELECT 
    strftime('%Y', InvoiceDate) AS year,
    strftime('%m', InvoiceDate) AS month,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;

SELECT 
    strftime('%Y', InvoiceDate) AS year,
    strftime('%m', InvoiceDate) AS month,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales_dataset
WHERE strftime('%Y', InvoiceDate) = '2020'
GROUP BY year, month
ORDER BY year, month;





