-- Bucket Salaries 
-- < 25 = 'Low'
-- 25 - 50 = 'Medium'
-- ? 50 = 'High'

SELECT 
    job_title_short,
    salary_hour_avg,
    CASE 
        WHEN salary_hour_avg < 25 THEN 'Low'
        WHEN salary_hour_avg < 50 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM job_postings_fact
WHERE salary_hour_avg IS NOT NULL 
LIMIT 10;        

-- Handling Missings Data (Nulls)
-- Filter NULL salary values 
SELECT 
    job_title_short,
    salary_hour_avg,
    CASE 
        WHEN salary_hour_avg IS NULL THEN 'Missisng'
        WHEN salary_hour_avg < 25 THEN 'Low'
        WHEN salary_hour_avg < 50 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM job_postings_fact
LIMIT 10;   

-- Categorizing Categorical Values 
-- Categorizing the 'job_title' column values as;
   -- 'Data Analyst'
   -- 'Data Engineer'
   -- 'Data Scientist'

SELECT 
    job_title_short,
    CASE 
        WHEN job_title LIKE '%Data%' AND job_title LIKE '%Analyst%' THEN 'Data Analyst'
        WHEN job_title LIKE '%Data%' AND job_title LIKE '%Engineer%' THEN 'Data Engineer'
        WHEN job_title LIKE '%Data%' AND job_title LIKE '%Scientist%' THEN 'Data Scientist'
        ELSE 'Other'
    END AS job_title_category, job_title_short
FROM job_postings_fact
ORDER BY RANDOM()
LIMIT 20;    