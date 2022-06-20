SELECT
A.artistic AS artista,
CD.album AS album
FROM SpotifyClone.t_artistic AS A 
INNER JOIN
SpotifyClone.t_album AS CD
ON A.favorite_id = CD.favorite_id
WHERE A.artistic = 'Walter Phoenix'
ORDER BY album;