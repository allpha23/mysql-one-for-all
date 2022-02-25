SELECT 
   h.customer_id AS quantidade_musicas_no_historico
FROM
  SpotifyClone.customer AS c
  INNER JOIN
    SpotifyClone.history AS h
    ON c.customer_id = h.customer_id
WHERE c.customer = 'Bill'
GROUP BY c.customer_id;
