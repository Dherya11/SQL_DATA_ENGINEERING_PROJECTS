-- Count Rows - Aggregations Only 
SELECT 
    COUNT(*)
FROM 
    job_postings_fact   ; 



-- Count Rows - Window Functions
SELECT 
    job_id ,
    COUNT(*) OVER ()
FROM 
    job_postings_fact;    