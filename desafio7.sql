SELECT 
  ar.artist AS artista,
  al.album AS album,
  COUNT(af.artist_id) AS seguidores
FROM 
  SpotifyClone.artist AS ar
  INNER JOIN
    SpotifyClone.album AS al
    ON ar.artist_id = al.artist_id
  INNER JOIN
    SpotifyClone.artist_favorite AS af
    ON al.artist_id = af.artist_id
GROUP BY ar.artist, al.album
ORDER BY seguidores DESC, ar.artist, al.album;
