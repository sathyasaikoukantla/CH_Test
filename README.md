**Data Engineering Project : Century Health**

This project is build with Airflow, Python, Great expectation and dbt. This project involves building end to end ETL pipeline, In which I am getting the data from multiple sources like csv, parquet and Excel files. I am using dbt to build the ETL pipeline, where I am consuming the data from different sources and populating them in an postgres rds instance and I am consuming these tables from postgres in raw format and transforming them as views by detecting data quality issues and adding some expectations from great expectation tool and also includes some tests from dbt and finally populating these transformed tables into Postgres as views and then building a fact dimension model on top of it as a presentation layer. I used airflow as an orchestratory tool to automate my ETL pipeline.

**Data Lineage Graph** - 
Shows how the data was flowing from sources to presentation layer

![image](https://github.com/user-attachments/assets/28716ac7-ccd0-4bc9-b405-a2f0f8529f30)

**ER Diagram** - 
Explains how each of the data set was related to each other

![image](https://github.com/user-attachments/assets/fa29b187-b4b1-4d23-8a20-bdd4e95762b2)

**Great Expectation Integration into dbt**

![image](https://github.com/user-attachments/assets/87a036ed-d980-4b48-b684-435a9b75bfb1)



**Description of a few files added **

1. profiles.yml - It has the credentials of RDS instance
2. DataQualityIssues.txt - It has a few of the DataQuality issues which i found during my exploration
3. ch_test_dag.py - It contains the code to orchestrate the dbt project

