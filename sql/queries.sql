-- 1. Top 5 Funds by AUM
SELECT scheme_name, aum_crore
FROM scheme_performance
ORDER BY aum_crore DESC
LIMIT 5;

-- 2. Average Expense Ratio
SELECT AVG(expense_ratio_pct) AS average_expense_ratio
FROM scheme_performance;

-- 3. Transaction Count by Type
SELECT transaction_type, COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY transaction_type;

-- 4. KYC Status Distribution
SELECT kyc_status, COUNT(*) AS total
FROM investor_transactions
GROUP BY kyc_status;

-- 5. Transactions by State
SELECT state, COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY state
ORDER BY total_transactions DESC;

-- 6. Funds with Expense Ratio > 1%
SELECT scheme_name, expense_ratio_pct
FROM scheme_performance
WHERE expense_ratio_pct > 1
ORDER BY expense_ratio_pct DESC;

-- 7. Top 5 Funds by 5-Year Return
SELECT scheme_name, return_5yr_pct
FROM scheme_performance
ORDER BY return_5yr_pct DESC
LIMIT 5;

-- 8. Average Annual Income by City Tier
SELECT city_tier,
AVG(annual_income_lakh) AS avg_income
FROM investor_transactions
GROUP BY city_tier;

-- 9. Gender-wise Transactions
SELECT gender,
COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY gender;

-- 10. Top 5 States by Transactions
SELECT state,
COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY state
ORDER BY total_transactions DESC
LIMIT 5;