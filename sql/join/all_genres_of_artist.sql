select track.title, artist.name, genre.name
from track join genre join album join artist on
track.genre_id = genre.genre_id and track.album_id = album.album_id and album.artist_id = artist.artist_id
order by album.name;