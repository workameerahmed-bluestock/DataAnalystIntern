# Data Dictionary

## investor_transactions

| Column | Data Type | Description |
|---------|-----------|-------------|
| investor_id | TEXT | Unique investor ID |
| transaction_date | DATE | Date of transaction |
| amfi_code | INTEGER | AMFI Scheme Code |
| transaction_type | TEXT | SIP, Lumpsum or Redemption |
| amount_inr | REAL | Transaction amount in INR |
| state | TEXT | Investor state |
| city | TEXT | Investor city |
| city_tier | TEXT | Tier of city (T30/B30) |
| age_group | TEXT | Investor age group |
| gender | TEXT | Male/Female |
| annual_income_lakh | REAL | Annual income in lakhs |
| payment_mode | TEXT | Payment method |
| kyc_status | TEXT | Verified or Pending |

---

## scheme_performance

| Column | Data Type | Description |
|---------|-----------|-------------|
| amfi_code | INTEGER | AMFI Scheme Code |
| scheme_name | TEXT | Mutual fund scheme |
| fund_house | TEXT | Fund management company |
| category | TEXT | Fund category |
| plan | TEXT | Growth/Direct/Regular |
| return_1yr_pct | REAL | One-year return (%) |
| return_3yr_pct | REAL | Three-year return (%) |
| return_5yr_pct | REAL | Five-year return (%) |
| benchmark_3yr_pct | REAL | Benchmark return |
| alpha | REAL | Alpha value |
| beta | REAL | Beta value |
| sharpe_ratio | REAL | Sharpe Ratio |
| sortino_ratio | REAL | Sortino Ratio |
| std_dev_ann_pct | REAL | Annual standard deviation |
| max_drawdown_pct | REAL | Maximum drawdown |
| aum_crore | REAL | Assets Under Management (Crores) |
| expense_ratio_pct | REAL | Expense ratio |
| morningstar_rating | INTEGER | Morningstar Rating |
| risk_grade | TEXT | Risk category |