# Layoffs SQL Data Cleaning and Analysis

This project focuses on cleaning and analyzing a global layoffs dataset using SQL.  
The goal was to prepare messy real-world data for analysis and extract insights about layoffs trends across companies, industries, and countries.

This project is based on the SQL Data Cleaning and EDA project tutorial by Alex The Analyst.
I followed the workflow and implemented the data cleaning steps using MySQL on the layoffs dataset.

---

## Dataset

The dataset contains information about global layoffs, including:

- Company name
- Location
- Industry
- Total employees laid off
- Percentage of workforce laid off
- Date of layoffs
- Company stage
- Country
- Funds raised (in millions)

---

## Project Workflow

### 1. Data Cleaning
A staging table was created to preserve the original dataset.  
Several cleaning steps were then applied:

- Removed duplicate records using `ROW_NUMBER()`
- Standardized inconsistent industry values
- Cleaned country formatting
- Converted text dates to SQL `DATE` format
- Removed rows with missing layoff data

All cleaning queries are available in: data_cleaning.sql

### 2. Data Analysis

After cleaning the data, SQL queries were used to analyze layoffs trends:

- Companies with the most layoffs
- Layoffs by industry
- Layoffs by year
- Layoffs by country

All analysis queries are available in: analysis.sql

### 3. Exploratory Data Analysis (EDA)

Additional exploration was performed to identify patterns and trends in the dataset.

Examples include:

- Maximum layoffs in a single event
- Companies that laid off 100% of employees
- Companies with the biggest single layoffs
- Layoffs by company stage
- Rolling layoffs trends over time

All EDA queries can be found in: eda.sql

## SQL Skills Demonstrated

This project demonstrates several important SQL concepts:

- Data Cleaning
- Window Functions (`ROW_NUMBER`)
- Aggregate Functions (`SUM`, `MAX`)
- `GROUP BY`
- `ORDER BY`
- Common Table Expressions (CTE)
- Exploratory Data Analysis

## Project Structure
layoffs-sql-project
│
├── README.md
├── data_cleaning.sql
├── analysis.sql
├── eda.sql
└── layoffs.csv

## Tools Used

- MySQL
- SQL
- MySQL Workbench
- GitHub

## Key SQL Concepts Used

- `ROW_NUMBER()` window function
- `GROUP BY`
- `ORDER BY`
- Aggregate functions (`SUM`)
- Data standardization
- Data cleaning techniques




