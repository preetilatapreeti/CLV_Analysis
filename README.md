# E-Commerce Customer Churn & Lifetime Value (CLV) Analysis

## Overview

This project analyzes customer churn patterns and lifetime value for an e-commerce business operating across six countries. Using SQL for data preparation and Power BI for interactive visualization, it identifies at-risk customers, explores churn drivers across demographics and product categories, and delivers actionable insights to improve customer retention.

## Project Structure

```
clv-churn-analysis/
├── README.md                   # Project documentation
├── .gitignore                  # Git ignore rules
├── data/
│   └── final_churn_v2.csv      # Cleaned dataset (2,000 records)
├── sql/
│   └── churn_analysis.sql      # SQL view for feature engineering
├── reports/
│   └── E-Commerce Customer Churn & Lifetime Value (CLV) Analysis.pbix
└── docs/
    └── data_dictionary.md      # Column definitions and data types
```

## Key Findings

- **62.9% churn rate** — 1,258 out of 2,000 customers have churned
- **Only 2.6% flagged as "At Risk"** — a narrow window for intervention before customers churn entirely
- Churn analysis spans **6 countries**: USA, UK, Canada, India, Pakistan, Germany
- **5 product categories** tracked: Electronics, Sports, Clothing, Home, Beauty

## Dataset

The dataset contains **2,000 customer order records** with 20 features covering demographics, transaction history, and behavioral indicators.

| Customer Status | Count | Percentage |
|:---|---:|---:|
| Churned | 1,258 | 62.9% |
| Active | 691 | 34.6% |
| At Risk | 51 | 2.6% |

See [`docs/data_dictionary.md`](docs/data_dictionary.md) for full column definitions.

## SQL — Data Preparation

The SQL script creates a reusable view (`v_churn_analysis`) in MySQL that engineers two key features from raw data:

- **Purchase_Year** — extracted from the `Last_Purchase_Date` string
- **Days_Since_Last_Purchase** — recency metric calculated relative to a reference date

This view feeds directly into the Power BI report.

## Power BI Report

The interactive dashboard visualizes:

- Churn rate segmented by country, product category, and subscription status
- Customer lifetime value distribution and spend patterns
- Recency vs. frequency analysis for customer segmentation
- At-risk customer identification for targeted retention campaigns

### How to View

**Option A — Power BI Service (Mac/Web):**
1. Go to [app.powerbi.com](https://app.powerbi.com) and sign in
2. Navigate to your Workspace → **Upload** → **Browse**
3. Select the `.pbix` file from the `reports/` folder

**Option B — Power BI Desktop (Windows):**
1. Download [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
2. Open the `.pbix` file directly

## Getting Started

### Prerequisites

- **Power BI** account (free or Pro) for viewing the report
- **MySQL** (optional) — only needed if recreating the SQL view from scratch
- **Git** — for cloning the repository

### Setup

```bash
# Clone the repository
git clone https://github.com/your-username/clv-churn-analysis.git
cd clv-churn-analysis

# (Optional) Set up Git LFS for the .pbix file
git lfs install
git lfs track "*.pbix"
```

### Recreating the SQL View (Optional)

If you want to rebuild the data pipeline from scratch:

1. Import `data/final_churn_v2.csv` into a MySQL table called `Business_Analytics.churn_data`
2. Run `sql/churn_analysis.sql` to create the analysis view

## Tools & Technologies

- **MySQL** — data cleaning and feature engineering
- **Power BI** — interactive dashboards and data visualization
- **Git / GitHub** — version control and project sharing

## License

This project is for educational and portfolio purposes.

### Author

Preeti Lata
