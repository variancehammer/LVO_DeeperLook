import pandas as pd

file2 = raw_input("Enter Round File Name: ")
outfile = raw_input("Enter Output File Name: ")
df1 = pd.read_csv("placings.csv")
df2 = pd.read_csv(file2)
merged = df1.merge(df2, on="Player")
merged.to_csv(outfile,index=False)