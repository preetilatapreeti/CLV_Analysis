# Data Dictionary

## Source

`data/final_churn_v2.csv` — 2,000 records, 20 columns

## Column Definitions

### Identifiers

| Column | Type | Description |
|:---|:---|:---|
| `order_id` | String | Unique order identifier (e.g., ORD5000) |
| `customer_id` | String | Unique customer identifier (e.g., CUST1000) |
| `product_id` | String | Unique product identifier (e.g., PROD200) |

### Customer Demographics

| Column | Type | Description |
|:---|:---|:---|
| `age` | Integer | Customer age |
| `gender` | String | Male or Female |
| `country` | String | Customer location — USA, UK, Canada, India, Pakistan, Germany |

### Subscription & Activity

| Column | Type | Description |
|:---|:---|:---|
| `signup_date` | Date (string) | Account creation date (MM/DD/YYYY) |
| `last_purchase_date` | Date (string) | Most recent purchase date (MM/DD/YYYY) |
| `order_date` | Date (string) | Date of this specific order (MM/DD/YYYY) |
| `subscription_status` | String | Current subscription state — `active`, `paused`, `cancelled` |
| `cancellations_count` | Integer | Number of times the customer has cancelled |
| `purchase_frequency` | Integer | Total number of purchases made |

### Product & Spend

| Column | Type | Description |
|:---|:---|:---|
| `product_name` | String | Name of the purchased product |
| `category` | String | Product category — Electronics, Sports, Clothing, Home, Beauty |
| `preferred_category` | String | Customer's most frequently purchased category |
| `unit_price` | Float | Price per unit |
| `quantity` | Integer | Number of units ordered |

### Engineered Features

| Column | Type | Description |
|:---|:---|:---|
| `Days_Since_Last_Purchase` | Integer | Number of days between last purchase and reference date |
| `Total_Spend` | Float | Calculated as `unit_price × quantity` |
| `Customer_Status` | String | **Target variable** — `Active`, `At Risk`, `Churned` |

## Customer Status Definitions

- **Active** — customer has purchased recently and shows healthy engagement
- **At Risk** — customer shows early warning signs of disengagement
- **Churned** — customer has not purchased within the expected timeframe
