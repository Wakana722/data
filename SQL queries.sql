WITH actor_avg_ratings AS (
    SELECT 
        tb.startyear AS year,
        'Drama' AS genre,
        nb.primaryname AS actor_name,
        ROUND(AVG(tr.averagerating), 3) AS avg_rating
    FROM 
        imdb00.title_basics tb
    JOIN 
        imdb00.title_ratings tr ON tb.tconst = tr.tconst
    JOIN 
        imdb00.title_principals tp ON tb.tconst = tp.tconst
    JOIN 
        imdb00.name_basics nb ON tp.nconst = nb.nconst
    WHERE 
        tb.startyear BETWEEN '2005' AND '2019'
        AND tb.genres LIKE '%Drama%'
        AND tr.numvotes >= 75000
        AND tp.ordering IN ('1', '2')
    GROUP BY 
        tb.startyear, nb.primaryname
),
max_ratings AS (
    SELECT 
        year,
        genre,
        MAX(avg_rating) AS max_avg_rating
    FROM 
        actor_avg_ratings
    GROUP BY 
        year, genre
)
SELECT 
    ar.year AS YEAR,
    ar.genre AS GENRE,
    ar.avg_rating AS HIGHEST_AVG_ACTORRATING,
    ar.actor_name AS MOST_POPULAR_ACTOR
FROM 
    actor_avg_ratings ar
JOIN 
    max_ratings mr ON ar.year = mr.year 
                   AND ar.genre = mr.genre 
                   AND ar.avg_rating = mr.max_avg_rating
ORDER BY 
    ar.year ASC;
