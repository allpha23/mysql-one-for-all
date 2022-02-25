SELECT 
  FORMAT(MIN(p.value_plan), 2) AS faturamento_minimo,
  FORMAT(MAX(p.value_plan), 2) AS faturamento_maximo,
  FORMAT(AVG(p.value_plan), 2) AS faturamento_medio,
  FORMAT(SUM(p.value_plan), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN
  SpotifyClone.customer AS c
  ON c.plan_id = p.plan_id;