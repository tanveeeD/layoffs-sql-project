USE world_layoffs;

-- 1. Maximum layoffs in a single event
SELECT MAX(total_laid_off) AS max_layoffs
FROM layoffs_cleaned;

-- 2. Range of percentage layoffs
SELECT MAX(percentage_laid_off), MIN(percentage_laid_off)
FROM layoffs_cleaned
WHERE percentage_laid_off IS NOT NULL;

-- 3. Companies that laid off 100% of employees
SELECT *
FROM layoffs_cleaned
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- 4. Companies with biggest single layoffs
SELECT company, total_laid_off
FROM layoffs_cleaned
ORDER BY total_laid_off DESC
LIMIT 10;

-- 5. Companies with the most total layoffs
SELECT company, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY company
ORDER BY total_layoffs DESC
LIMIT 10;

-- 6. Layoffs by location
SELECT location, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY location
ORDER BY total_layoffs DESC;

-- 7. Layoffs by country
SELECT country, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY country
ORDER BY total_layoffs DESC;

-- 8. Layoffs by year
SELECT YEAR(date) AS year, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY year
ORDER BY year;

-- 9. Layoffs by industry
SELECT industry, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY industry
ORDER BY total_layoffs DESC;

-- 10. Layoffs by company stage
SELECT stage, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY stage
ORDER BY total_layoffs DESC;

-- 11. Rolling monthly layoffs trend
WITH monthly_layoffs AS (
    SELECT DATE_FORMAT(date,'%Y-%m') AS month,
           SUM(total_laid_off) AS total_layoffs
    FROM layoffs_cleaned
    GROUP BY month
)
SELECT month,
       SUM(total_layoffs) OVER (ORDER BY month) AS rolling_total_layoffs
FROM monthly_layoffs;
