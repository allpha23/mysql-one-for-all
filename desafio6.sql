SELECT 
  ROUND(MIN(p.value_plan), 2) AS faturamento_minimo,
  ROUND(MAX(p.value_plan), 2) AS faturamento_maximo,
  ROUND(AVG(p.value_plan), 2) AS faturamento_medio,
  ROUND(SUM(p.value_plan), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN
  SpotifyClone.customer AS c
  ON c.plan_id = p.plan_id;
