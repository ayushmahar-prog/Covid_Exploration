import pandas as pd
from sqlalchemy import create_engine

db_username = 'postgres'

db_password = 'M***********'



db_host = 'localhost'
db_port = '5432'
db_name = 'CovidExploration'

engine = create_engine(f'postgresql://{db_username}:{db_password}@{db_host}:{db_port}/{db_name}')


df1 = pd.read_csv('/Users/*****/Desktop/****/Data Exploration/CovidDeaths.csv', low_memory=False)
df1.to_sql('CovidDeaths', engine, if_exists='replace', index=False)

df2 = pd.read_csv('/Users/*****/Desktop/****/Data Exploration/CovidVacinations.csv', low_memory=False)
df2.to_sql('CovidVacinations', engine, if_exists='replace', index=False)


print("Tables created and data imported successfully!")
