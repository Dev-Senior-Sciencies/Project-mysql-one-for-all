SELECT
US.usuario AS usuario,
COUNT(T.use_id) AS qtde_musicas_ouvidas,
ROUND(SUM(C.duract_seconds/60), 2) AS total_minutos
FROM
SpotifyClone.t_history_date AS T
INNER JOIN
SpotifyClone.t_user AS US ON T.use_id = US.use_id
INNER JOIN
SpotifyClone.t_songs AS C ON C.songs_id = T.songs_id
GROUP BY T.use_id
ORDER BY US.usuario;