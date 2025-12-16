SELECT 
    tb.startyear AS YEAR, 
    COUNT(*) AS TOTAL_MOVIES, 
    ROUND(AVG(tr.averagerating), 3) AS YEARLY_AVG
FROM 
    imdb00.title_basics tb
JOIN 
    imdb00.title_ratings tr ON tb.tconst = tr.tconst
WHERE 
    tb.titletype = 'movie' 
    AND tb.startyear BETWEEN '2010' AND '2019'
    AND tr.numvotes >= 100000
GROUP BY 
    tb.startyear
ORDER BY 
    YEARLY_AVG DESC;
