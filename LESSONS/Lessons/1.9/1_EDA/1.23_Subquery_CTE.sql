-- Subquery 
SELECT * 
FROM (
    SELECT * 
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
    OR salary_hour_avg IS NOT NULL
) AS valid_salaries
LIMIT 10;

-- CTE
WITH valid_salaries AS (
    SELECT * 
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
    OR salary_hour_avg IS NOT NULL
)
SELECT * 
FROM valid_salaries;

-- Scenario 1 - Subquery in 'SELECT'
-- Show each jobs salary next to the overall market median:
SELECT 
    job_title_short,
    (
     SELECT MEDIAN(salary_year_avg)
     FROM job_postings_fact

    ) AS market_median_salary
FROM job_postings_fact
LIMIT 10   ; 

-- Scenario 2 -  Subquery in FROM 
-- stage only jobs that are remote before aggregatings:
SELECT 
    job_title_short,
    MEDIAN(salary_year_avg) AS median_salary,
    (
    SELECT MEDIAN(salary_year_avg)
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
    ) AS Market_remote_median_salary
FROM(
    SELECT 
        job_title_short,
        salary_year_avg
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
    ) AS clean_jobs
GROUP BY job_title_short
LIMIT 10   ; 

-- Scenario 3 - Subquery in HAVING 
-- keep only those jobs that have a salary above the overall market median:

SELECT 
    job_title_short,
    MEDIAN(salary_year_avg) AS median_salary,
    (
    SELECT MEDIAN(salary_year_avg)
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
    ) AS Market_remote_median_salary
FROM(
    SELECT 
        job_title_short,
        salary_year_avg
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
    ) AS clean_jobs
GROUP BY job_title_short
HAVING MEDIAN(salary_year_avg) > (
    SELECT MEDIAN(salary_year_avg)
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
)
LIMIT 10   ; 

