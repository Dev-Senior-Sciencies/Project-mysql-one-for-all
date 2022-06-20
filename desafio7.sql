SELECT
A.artistic AS artista,
CD.album AS album,
COUNT(F.favorite_id) AS seguidores
FROM
SpotifyClone.t_artistic AS A
INNER JOIN
SpotifyClone.t_album AS CD
ON A.favorite_id = CD.favorite_id
INNER JOIN
SpotifyClone.t_favorite AS F
ON F.favorite_id = CD.favorite_id
GROUP BY
artista, album, F.favorite_id
ORDER BY
seguidores DESC, artista ASC, album ASC;