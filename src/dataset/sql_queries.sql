-- Creating schemas
CREATE SCHEMA retail_raw;
CREATE SCHEMA retail_curated;

-- Creating a curated database of transactions
CREATE TABLE retail_curated.transactions AS
SELECT
    transactions_raw.invoice,
    stockcode,
    description,
    COALESCE(quantity, 0) AS quantity,
    CAST(invoicedate AS TIMESTAMP) AS invoicedate,
    ROUND(CAST(price AS NUMERIC), 2) AS unitprice,
    customer_id,
    country,
    quantity * price AS revenue
FROM retail_raw.transactions_raw
WHERE quantity > 0 AND price > 0 AND customer_id IS NOT NULL;
