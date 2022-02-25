SELECT m.music AS cancao,
  COUNT(h.music_id) AS reproducoes 
FROM 
  SpotifyClone.music AS m
  INNER JOIN
    SpotifyClone.history AS h
    ON m.music_id = h.music_id
GROUP BY h.music_id ORDER BY COUNT(h.music_id) DESC, m.music LIMIT 2;
