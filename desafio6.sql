SELECT
    MIN(planing_value) AS faturamento_minimo,
    MAX(planing_value) AS faturamento_maximo,
    ROUND(AVG(planing_value), 2) AS faturamento_medio,
    SUM(planing_value) AS faturamento_total
FROM
    t_planing
    JOIN t_user ON planing_id = t_user.t_planing_planing_id;
