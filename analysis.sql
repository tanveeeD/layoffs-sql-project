-- Data Analysis 

-- 1.Companies with most layoffs
SELECT company, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY company
ORDER BY total_layoffs DESC
LIMIT 10;

-- 2. Layoffs by industry
SELECT industry, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY industry
ORDER BY total_layoffs DESC;

-- 3. Layoffs by year
SELECT YEAR(date) AS year, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY year
ORDER BY year;

-- 4. Layoffs by country
SELECT country, SUM(total_laid_off) AS total_layoffs
FROM layoffs_cleaned
GROUP BY country
ORDER BY total_layoffs DESC;
