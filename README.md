# Project Title: Airflow-Based Data Pipeline with Astronomer, DBT, Soda, and Metabase for Data Processing on GCP

![Main Image Placeholder](https://user-images.githubusercontent.com/22219089/268885855-c0e1b490-510d-43aa-b34c-9e6ea3c750a5.png)

## Project Overview

This project aims to demonstrate the creation and automation of a data pipeline using Apache Airflow while leveraging various tools and technologies to manage data processing tasks. The project primarily focuses on extracting, transforming, and loading data into Google BigQuery. Key tools utilized include Astro (an Airflow wrapper), DBT for data modeling, Soda for data quality checks, and Metabase for data visualization. Google Cloud Platform (GCP) serves as the data storage solution.

## Project Objectives

1. **Stay Updated on Data Engineering Technologies:** The project's primary goal is to explore and gain practical experience with new tools and technologies in the data engineering domain. This hands-on approach ensures staying current with industry advancements.

2. **Efficiently Manage Tool Integration:** The project addresses the challenges associated with integrating multiple tools and handling dependencies within a data pipeline. It provides insights into orchestrating complex toolchains effectively.

## Key Phases in the Data Pipeline

The project follows a structured workflow:

1. **Data Ingestion:** Create a data ingestion pipeline to pull new data into Google BigQuery.

2. **Data Quality Checks:** Implement custom data quality checks using Soda. These checks are configured through YAML files and applied to the data.

3. **Data Transformation:** Utilize DBT for data modeling and transforming data into a star schema.

4. **Data Loading:** Use data pipelines to load the extracted and transformed data into Google BigQuery.

5. **Data Reporting and Analytics:** Leverage Metabase to create dashboards and visualizations for reporting and analytics.

## Data Architecture

The project employs various tools and programming languages to facilitate data flow. The architecture involves:

- Data Ingestion
- Data Quality Checks
- Data Transformation
- Data Loading
- Data Reporting and Analytics

## Dataset Used

The "Online Retail II" dataset contains transactions from a UK-based online retail company. The data covers the period from 01/12/2009 to 09/12/2011 and includes sales of unique all-occasion giftware. The customer base primarily consists of wholesalers.

Dataset Link: [Online Retail Dataset](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)

## Tools and Technologies

The project integrates the following tools and technologies:

1. **Google BigQuery (GCP):** A fully managed data warehouse and analytics platform for data storage and analysis.

2. **Soda:** A data quality framework and toolset for automating data quality checks.

3. **DBT (Data Build Tool):** An open-source tool for data modeling and transformation.

4. **Astro CLI:** A command-line interface for simplifying Apache Airflow setup and management.

5. **Metabase:** An open-source business intelligence tool for data visualization and analysis.

6. **Visual Studio Code:** A versatile code editor.

7. **Docker:** A platform for packaging and distributing applications as containers.

8. **Git Version Control:** A distributed version control system for tracking changes in source code.

## Implementation Steps

The project's implementation follows a structured approach:

1. **Set Up Airflow Environment Using Astro CLI:** This step involves configuring the Astro project, setting up GCP connections, and creating the necessary directory structure for Airflow tasks.

2. **Create Data Ingestion Pipeline with DAGs in Airflow:** Tasks are defined within the DAG to upload CSV data to Google Cloud Storage (GCS) and create datasets in BigQuery. These tasks are executed using operators and external Python functions.

3. **Perform Data Quality Checks with Soda:** Data quality checks are conducted manually using the Soda CLI and programmatically within the DAG. The checks verify the integrity and quality of the extracted data.

4. **Transform Data Using DBT:** The project implements star schema data modeling using DBT. DBT models are integrated into the DAG for systematic execution, resulting in the creation of fact and dimension tables in BigQuery.

5. **Run Data Quality Checks on Transformed Data:** After the data is transformed, additional data quality checks are performed to ensure that the transformed data complies with specified criteria.

6. **Create Data Visualization and Dashboards with Metabase:** Metabase is set up locally and used to generate reports and dashboards for data visualization and analytics, utilizing the transformed data.

By following these steps, the project successfully builds an end-to-end data pipeline while effectively managing various data engineering tools.

## Conclusion

This project demonstrates the practical application of data engineering tools and technologies, showcasing their integration into a data pipeline for efficient data processing on Google Cloud Platform. It highlights the importance of staying updated with industry advancements and mastering tool integration.
