# retail-demand-analysis

---

Problem Statement: To understand sales performance drivers, customer behavior, and product profitability across regions and time, enabling data-driven pricing, inventory, and marketing decisions.

---

Dataset: https://archive.ics.uci.edu/dataset/502/online+retail+ii

Dataset Details:

- InvoiceNo: Invoice number

  - Nominal
  - A 6-digit integral number uniquely assigned to each transaction. If this code starts with the letter 'c', it indicates a cancellation.

- StockCode: Product (item) code

  - Nominal
  - A 5-digit integral number uniquely assigned to each distinct product.

- Description: Product (item) name

  - Nominal.

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

---

### Observations:

- InvoiceNo: Invoice number -> Primary Key
- CustomerID: Customer number -> Foreign Key
- StockCode: Product (item) code -> Foreign Key

  - Description: Product (item) name -> Droppable, depends on StockCode

- UnitPrice: Unit price -> Informative
- Quantity: The quantities of each product (item) per transaction -> Quantity

- InvoiceDate: Invoice date and time -> Informative, Time-Series Analysis
- Country: Country name -> Informative, 37 different countries

---
