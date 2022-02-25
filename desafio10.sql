SELECT 
   m.music AS nome,
   COUNT(h.play_date) AS reproducoes
FROM
  SpotifyClone.music AS m
  INNER JOIN
    SpotifyClone.history AS h
    ON h.music_id = m.music_id
  INNER JOIN
    SpotifyClone.customer AS c
    ON c.customer_id = h.customer_id
WHERE c.plan_id = 1 OR c.plan_id = 3
GROUP BY m.music_id
ORDER BY nome;
