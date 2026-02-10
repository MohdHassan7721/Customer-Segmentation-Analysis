Use credit_card_customers;
# Total Customers
SELECT COUNT(*) AS Total_Customers
FROM creditcard_customers;

# Avg Credit Limit by Segment
SELECT Credit_Segment,
    AVG(Avg_Credit_Limit) AS Avg_Limit
FROM creditcard_customers
GROUP BY Credit_Segment
ORDER BY Avg_Limit DESC;

# Card Ownership Analysis
SELECT Credit_Segment,
    AVG(Total_Credit_Cards) AS Avg_Cards
FROM creditcard_customers
GROUP BY Credit_Segment;

# Channel Usage Behavior
SELECT Credit_Segment,
    AVG(Total_visits_bank) AS Bank_Visits,
    AVG(Total_visits_online) AS Online_Visits,
    AVG(Total_calls_made) AS Calls
FROM creditcard_customers
GROUP BY Credit_Segment;

# High Value Customer Count
SELECT COUNT(*) AS High_Value_Customers
FROM creditcard_customers
WHERE Credit_Segment = 'High Value';

# Engagement Score
SELECT Credit_Segment,
    AVG(Total_Visits) AS Engagement_Level
FROM creditcard_customers
GROUP BY Credit_Segment;