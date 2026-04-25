CREATE OR REPLACE VIEW Business_Analytics.v_churn_analysis AS
SELECT 
    *,
    -- Safely extract the year from date column in SQL
    YEAR(STR_TO_DATE(Last_Purchase_Date, '%m/%d/%Y')) AS Purchase_Year,
    -- Calculate how many days since they last bought something
    DATEDIFF('2026-01-01', STR_TO_DATE(Last_Purchase_Date, '%m/%d/%Y')) AS Days_Since_Last_Purchase
FROM Business_Analytics.churn_data;