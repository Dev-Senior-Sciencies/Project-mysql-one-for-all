SELECT
COUNT(h.use_id) as quantidade_musicas_no_historico
FROM SpotifyClone.t_history_date h
INNER JOIN SpotifyClone.t_user u
  on u.planing_id = h.use_id
WHERE usuario = 'Bill';