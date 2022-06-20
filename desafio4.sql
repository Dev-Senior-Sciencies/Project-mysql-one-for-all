SELECT
US.usuario AS usuario,
IF (MAX(YEAR(T.history)) = 2021,
'Usuário ativo',
'Usuário inativo') AS condicao_usuario
FROM
SpotifyClone.t_user AS US
INNER JOIN
SpotifyClone.t_history_date AS T
ON T.use_id = US.use_id
GROUP BY usuario
ORDER BY usuario;