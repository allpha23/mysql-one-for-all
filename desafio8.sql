SELECT 
  ar.artist AS artista,
  al.album AS album
FROM 
  SpotifyClone.artist AS ar
  INNER JOIN
    SpotifyClone.album AS al
    ON ar.artist_id = al.artist_id
WHERE ar.artist = 'Walter Phoenix'
ORDER BY al.album;
