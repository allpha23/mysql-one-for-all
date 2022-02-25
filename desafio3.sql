SELECT 
  c.customer AS usuario,
  COUNT(DISTINCT h.music_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(m.time_sec) / 60, 2) AS 'total_minutos'
FROM 
  SpotifyClone.customer AS c
  INNER JOIN
    SpotifyClone.history AS h
    ON c.customer_id = h.customer_id
  INNER JOIN
    SpotifyClone.music AS m
    ON m.music_id = h.music_id
GROUP BY c.customer_id ORDER BY c.customer;
