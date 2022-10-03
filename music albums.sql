SELECT *
FROM Albums

-- Top selling Album

SELECT Album, Artist, WorldwideSales
FROM Albums
ORDER BY WorldwideSales DESC

-- Artists with more albums in the top selling list

SELECT Artist, COUNT(Album) AS 'Albums in top selling list'
FROM Albums
GROUP BY Artist
ORDER BY [Albums in top selling list] DESC

-- Album length vs sales

SELECT Album, Artist, Hours, WorldwideSales
FROM Albums
ORDER BY 3 DESC

-- Finding soundtracks

SELECT Album, Artist, Genre, WorldwideSales
FROM Albums
WHERE Artist like '%Soundtrack%'

-- Genres appearing most number of times in the top sales 

SELECT Genre, COUNT(Genre) AS Count
FROM Albums
GROUP BY Genre
ORDER BY COUNT(Genre) DESC

-- Top selling artist in the 2000s

SELECT Artist, WorldwideSales, Album, Year
FROM Albums
WHERE Year > 1999
ORDER BY WorldwideSales DESC

-- Top selling artist in the 90s

SELECT Artist, WorldwideSales, Album, Year
FROM Albums
WHERE Year < 2000
ORDER BY WorldwideSales DESC


--Removing albums that are movie soundtracks

DELETE FROM Albums 
WHERE Artist like '%Soundtrack%'


