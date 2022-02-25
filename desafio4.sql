SELECT DISTINCT (c.customer) AS usuario,
  IF(MAX(YEAR(h.play_date)) = '2021', 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM 
  SpotifyClone.customer AS c
  INNER JOIN
    SpotifyClone.history AS h
    ON c.customer_id = h.customer_id
GROUP BY h.customer_id ORDER BY c.customer;
