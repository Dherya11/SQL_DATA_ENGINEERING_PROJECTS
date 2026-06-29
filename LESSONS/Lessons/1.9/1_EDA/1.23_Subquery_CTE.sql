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
LIMIT 10; 

-- Question: Group jobs by job_title_short. Keep only job titles where the median salary 
-- of that group is higher than the median salary of just remote jobs

SELECT 
    job_title_short,
    MEDIAN(salary_year_avg) AS median_salary
FROM job_postings_fact
GROUP BY job_title_short
HAVING MEDIAN(salary_year_avg) > (
    SELECT MEDIAN(salary_year_avg)
    FROM job_postings_fact
    WHERE job_work_from_home = TRUE
    );

-- CTE Example
-- Compare how much (or less) remote roles pays compared to onsite roles for each job title.
-- Use a CTE to calculate the median salary by title and work arrangement, then compare those medians.

WITH title_median AS (
    SELECT 
        job_title_short,
        job_work_from_home,
        MEDIAN(salary_year_avg) ::INT AS median_salary
    FROM job_postings_fact 
    WHERE job_country = 'India'
    GROUP BY
        job_title_short,
        job_work_from_home
)

SELECT 
   r.job_title_short,
   r.median_salary AS remote_median_salary,
   o.median_salary AS onsite_median_salary,
   (r.median_salary - o.median_salary) AS remote_premium
FROM title_median AS r
INNER JOIN title_median AS o
    ON r.job_title_short = o.job_title_short
WHERE r.job_work_from_Home = TRUE
    AND o.job_work_from_home = FALSE
ORDER BY remote_premium DESC;    

-- SOURCE TABLE AND TARGET TABLE 
SELECT *
FROM range(3) as trc(key) ;

SELECT *
FROM range(3) as tgt(key) ;

SELECT *
FROM range(3) as Src(key) 
WHERE EXISTS(
   SELECT 1
   FROM range(2) as tgt(key)
   WHERE tgt.key = src.key

);

SELECT *
FROM range(3) as Src(key) 
WHERE NOT EXISTS(
   SELECT 1
   FROM range(2) as tgt(key)
   WHERE tgt.key = src.key

);

-- Final Example 
-- Identify Job postings that have no associated skills before loading them into data mart

SELECT * 
FROM job_postings_fact
ORDER BY job_id
LIMIT 10;

SELECT * 
FROM skills_job_dim
ORDER BY job_id
LIMIT 40;

SELECT * 
FROM job_postings_fact AS tgt
WHERE NOT EXISTS(
    SELECT * 
    FROM skills_job_dim AS src
    WHERE tgt.job_id = src.job_id
)
ORDER BY job_id;

