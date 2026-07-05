import matplotlib
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df=pd.read_csv(r"C:\Users\hrish\OneDrive\Desktop\E-Commerce analysis project\Ecommerce_Customer_Behavior_Analysis.py")
print(df.head())
print(df.info())
print(df.describe())
print(df.isnull().sum())
print(df.duplicated().sum())
df.drop_duplicates(inplace=True)
df["order_date"]=pd.to_datetime(df["order_date"])
df["Year"]=df["order_date"].dt.year
df["Month"]=df["order_date"].dt.month_name()
df["Day"]=df["order_date"].dt.day
df.to_csv("cleaned_data.csv",index=False)

print("Total Revenue",df["order_value_usd"].sum())
print("Average Order",df["order_value_usd"].mean())
print("Highest",df["order_value_usd"].max())
print("Lowest",df["order_value_usd"].min())

df.groupby("product_category")["order_value_usd"].sum().plot(kind="bar");plt.show()
df.groupby("customer_gender")["order_value_usd"].sum().plot(kind="bar");plt.show()
df["payment_method"].value_counts().plot(kind="pie",autopct="%1.1f%%");plt.ylabel("");plt.show()
df.groupby("product_category")["customer_rating"].mean().plot(kind="bar");plt.show()
df.groupby("Month")["order_value_usd"].sum().plot(kind="line",marker="o");plt.show()
df["returned"].value_counts().plot(kind="bar");plt.show()
df["delivery_time_days"].hist();plt.show()
df["customer_age"].hist();plt.show()
print(df.corr(numeric_only=True))
