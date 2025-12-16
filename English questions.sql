SELECT 
    tb_series.primarytitle AS TOP_TVSERIES, 
    tb_series.startyear AS TVSERIES_STARTYEAR, 
    ROUND(AVG(tr_episode.averagerating), 3) AS AVG_TVSERIES_RATING
FROM 
    imdb00.title_basics tb_series
JOIN 
    imdb00.title_episode te ON te.parenttconst = tb_series.tconst
JOIN 
    imdb00.title_basics tb_episode ON tb_episode.tconst = te.tconst
JOIN 
    imdb00.title_ratings tr_episode ON tr_episode.tconst = tb_episode.tconst
WHERE 
    tb_series.titletype = 'tvSeries'
GROUP BY 
    tb_series.tconst, tb_series.primarytitle, tb_series.startyear
HAVING 
    AVG(tr_episode.averagerating) >= 7.5
    AND SUM(tr_episode.numvotes) >= 500000
ORDER BY 
    AVG_TVSERIES_RATING DESC;
