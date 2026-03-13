# Layoffs SQL Data Cleaning and Analysis

This project focuses on cleaning and analyzing a global layoffs dataset using SQL.  
The goal was to prepare messy real-world data for analysis and extract insights about layoffs trends across companies, industries, and countries.

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



---

## Tools Used

- MySQL
- SQL
- MySQL Workbench
- GitHub

---

## Key SQL Concepts Used

- `ROW_NUMBER()` window function
- `GROUP BY`
- `ORDER BY`
- Aggregate functions (`SUM`)
- Data standardization
- Data cleaning techniques




