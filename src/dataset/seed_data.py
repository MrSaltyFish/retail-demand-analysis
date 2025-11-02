import pandas as pd
import os
from sqlalchemy import create_engine

engine = create_engine("postgresql+psycopg2://postgres:root@localhost:5432/retail_demand_analysis")

script_dir = os.path.dirname(os.path.abspath(__file__))
file_path = os.path.join(script_dir, "online_retail.xlsx")

df_raw = pd.read_excel(file_path)
df_raw.columns = df_raw.columns.str.lower().str.strip().str.replace(' ', '_')
print(df_raw.columns)
df_raw.to_sql("transactions_raw", engine, schema="retail_raw", if_exists="replace", index=False)
print("Done.")