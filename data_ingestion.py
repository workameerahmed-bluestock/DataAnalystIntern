import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("sqlite:///data/mutual_fund.db")

df = pd.read_csv("data/raw/07_scheme_performance.csv")

df.to_sql(
    "scheme_performance",
    engine,
    if_exists="replace",
    index=False
)

print("Data loaded successfully!")