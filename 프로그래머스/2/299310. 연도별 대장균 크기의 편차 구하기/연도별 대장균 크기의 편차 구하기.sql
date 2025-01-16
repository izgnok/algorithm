-- 코드를 작성해주세요
SELECT YEAR(i.DIFFERENTIATION_DATE) AS YEAR, ABS(j.MAX_SIZE - i.SIZE_OF_COLONY) AS YEAR_DEV, i.ID
FROM ECOLI_DATA AS i
JOIN 
(   
    SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_SIZE
    FROM ECOLI_DATA
    GROUP BY YEAR(DIFFERENTIATION_DATE)
) AS j
ON YEAR(i.DIFFERENTIATION_DATE) = j.YEAR
ORDER BY YEAR ASC, YEAR_DEV ASC