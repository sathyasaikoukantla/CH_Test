from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime, timedelta  # Import timedelta

# Default arguments
default_args = {
    'owner': 'Sathya',
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# Define the DAG
with DAG(
    dag_id='ch_test',
    default_args=default_args,
    start_date=datetime(2024, 11, 27),
    schedule_interval='@daily',  
    catchup=False,
) as dag:

    # Task to run dbt models
    dbt_run = BashOperator(
        task_id='dbt_run',
        bash_command='cd PATH && dbt run',
    )

    # Task to test dbt models
    dbt_test = BashOperator(
        task_id='dbt_test',
        bash_command='cd PATH && dbt test',
    )

    dbt_run >> dbt_test
