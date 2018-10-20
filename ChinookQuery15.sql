-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

select pl.Name, Count(t.name)
from Playlist as pl
	Left Outer Join PlaylistTrack as pt
		On pl.PlaylistId = pt.PlaylistId
	Right Outer Join Track as t
		On pt.TrackId = t.TrackId
Group by pl.Name
Order by pl.Name

