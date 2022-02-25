SELECT 
  COUNT(DISTINCT music_id) AS cancoes,
  COUNT(DISTINCT ar.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM 
  SpotifyClone.music AS m,
  SpotifyClone.artist AS ar,
  SpotifyClone.album AS al;