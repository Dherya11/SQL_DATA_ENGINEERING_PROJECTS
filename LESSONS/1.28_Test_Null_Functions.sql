SELECT CHAR_LENGTH('SQL');

SELECT LOWER('SQL');

SELECT UPPER('sql');

SELECT LEFT('SQL', 2);

SELECT RIGHT('SQL', 2);

SELECT SUBSTRING('SQL',2, 1);

SELECT CONCAT('SQL', '-', 'Functions');

SELECT TRIM(' SQL ');

SELECT REPLACE('SQL', 'Q', '_');

SELECT REGEXP_REPLACE('data.bro@gamil.com', '^.*(@)', '\1');


-- Final Example - Cleanup this using Test functions
WITH title_lower AS(
    SELECT 
        job_title,
        LOWER(TRIM(job_title)) AS job_title_clean
    FROM 
        job_postings_fact    

)

SELECT 
    job_title, 
    CASE 
        WHEN job_title_clean LIKE '%data%'
         AND job_title_clean LIKE '%analyst%' THEN 'Data Analyst'
        WHEN job_title_clean LIKE '%data%'
         AND job_title_clean LIKE '%scientist%' THEN 'Data Scientist'
        WHEN job_title_clean LIKE '%data%'
         AND job_title_clean LIKE '%engineer%' THEN 'Data Engineer'
        ELSE 'Other'
    END AS job_title_company
FROM title_lower
ORDER BY RANDOM()
LIMIT 30;