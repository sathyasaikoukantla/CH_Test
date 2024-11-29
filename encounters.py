import pandas as pd

df = pd.read_parquet('seeds/encounters.parquet')

df.to_csv('seeds/raw_encounters.csv', index=False)
