WITH inputDateTemp AS (
    SELECT '2020-08-16' AS start, '2020-08-16' AS end
)
SELECT 
    *
FROM 
    calendar, inputDateTemp
WHERE 
    -- the whole trick is to provide the opposite : start = inputEnd, end = InputStart
    startD <= inputDateTemp.end
    AND 
    endD >= inputDateTemp.start
;
