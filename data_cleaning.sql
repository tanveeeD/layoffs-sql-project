USE world_layoffs;

CREATE TABLE layoffs_staging AS
SELECT * FROM layoffs;

-- when we are data cleaning we usually follow a few steps
-- 1. check for duplicates and remove any
-- 2. standardize data and fix errors
-- 3. Look at null values and see what 
-- 4. remove any columns and rows that are not necessary 

-- 1. Remove Duplicate
CREATE TABLE layoffs_cleaned AS
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY company, location, industry, total_laid_off,
                            percentage_laid_off, date, stage, country, funds_raised_millions
           ) AS row_num
    FROM layoffs_staging
) t
WHERE row_num = 1;

-- 2. Standardize the data
SET SQL_SAFE_UPDATES = 0;

UPDATE layoffs_cleaned
SET industry = 'Crypto'
WHERE industry IN ('Crypto Currency','CryptoCurrency');

-- 3. Fix country formatting
UPDATE layoffs_cleaned
SET country = TRIM(TRAILING '.' FROM country);

-- 4. Fix date formatting
UPDATE layoffs_cleaned
SET date = STR_TO_DATE(date, '%m/%d/%Y');

--5. Remove useless rows
DELETE FROM layoffs_cleaned
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

ALTER TABLE layoffs_cleaned
DROP COLUMN row_num;


