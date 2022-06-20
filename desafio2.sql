SELECT
COUNT(songs) AS cancoes,
COUNT(DISTINCT favorite_id) AS artistas,
COUNT(DISTINCT album_id) AS albuns
FROM SpotifyClone.t_songs;