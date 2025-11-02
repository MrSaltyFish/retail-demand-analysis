# retail-demand-analysis

This analytics solution is built to identify the true drivers of sales (price, discount, season, location, marketing spend) - and show how the company could improve revenue and forecast future demand by optimizing these levers.

Dataset: https://archive.ics.uci.edu/dataset/502/online+retail+ii

Details:

- InvoiceNo: Invoice number
  - Nominal
  - A 6-digit integral number uniquely assigned to each transaction. If this code starts with the letter 'c', it indicates a cancellation.
- StockCode: Product (item) code
  - Nominal
  - A 5-digit integral number uniquely assigned to each distinct product.
- Description: Product (item) name. Nominal.
- Quantity: The quantities of each product (item) per transaction
  - Numeric.
- InvoiceDate: Invoice date and time
  - Numeric
  - The day and time when a transaction was generated.
- UnitPrice: Unit price
  - Numeric
  - Product price per unit in sterling (Â£).
- CustomerID: Customer number
  - Nominal
  - A 5-digit integral number uniquely assigned to each customer.
- Country: Country name
  - Nominal
  - The name of the country where a customer resides.
