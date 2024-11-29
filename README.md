**Data Engineering Project : Century Health**

This project is build with Airflow, Python, Great expectation and dbt. This project involves building end to end ETL pipeline, In which I am getting the data from multiple sources like csv, parquet and Excel files. I am using dbt to build the ETL pipeline, where I am consuming the data from different sources and populating them in an postgres rds instance and I am consuming these tables from postgres in raw format and transforming them as views by detecting data quality issues and adding some expectations from great expectation tool and also includes some tests from dbt and finally populating these transformed tables into Postgres as views and then building a fact dimension model on top of it as a presentation layer. I used airflow as an orchestratory tool to automate my ETL pipeline.

**Data Lineage Graph** - 
Shows how the data was flowing from sources to presentation layer

![image](https://github.com/user-attachments/assets/bb7800bb-b646-403e-9628-92d8e1cf45ee)


**ER Diagram** - 
Explains how each of the data set was related to each other

![image](https://github.com/user-attachments/assets/500d5d6a-ae77-4cb8-8531-39c937e0f1c5)


**Great Expectation Integration into dbt**

![image](https://github.com/user-attachments/assets/df2d2d9d-dbf4-45d3-a00b-25289b401115)

SSN Format Check test in dbt

![image](https://github.com/user-attachments/assets/8beaecd6-2a6f-42fd-8dd3-932aa8399284)

Symptoms cleanup 

![image](https://github.com/user-attachments/assets/2ac4755e-7f7f-46f0-88e3-e6fb5e704386)


Data Analytics Questions:

1. How many distinct patients are in the dataset?
4. What percentage of patients have all 4 symptom categories ≥ 30?
![image](https://github.com/user-attachments/assets/1234b734-1f20-4803-ae4c-0d875ea08fca)


2. Plot the distinct medications over time using a python plotting library. If you notice any duplicates, go back to your data cleaning section to fix.
![image](https://github.com/user-attachments/assets/10666d44-a2d2-48d4-b354-dceba10fc5d1)


3. Create a pie chart indicating the percentage of patients across each racial category and gender.
![image](https://github.com/user-attachments/assets/3662f349-9324-4ebe-8fee-8a8badadf07e)

Dashboard in Power BI for Analytics
![image](https://github.com/user-attachments/assets/94db791c-cfb7-465b-893d-56b8871ed8eb)


**Description of a few files added **

1. profiles.yml - It has the credentials of RDS instance
2. DataQualityIssues.txt - It has a few of the DataQuality issues which i found during my exploration
3. ch_test_dag.py - It contains the code to orchestrate the dbt project (Make Sure to update the PATH while running the code)

   
