-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

select tr.Name as Track_Name, ab.Title as Album_Name, g.Name as Genre_Type, md.Name as Media_Type
from Track as tr
	Left Outer Join MediaType as md
		on tr.MediaTypeId = md.MediaTypeId
	Right Outer Join Album as ab
		on tr.AlbumId = ab.AlbumId
	Join Genre as g
		on tr.GenreId = g.GenreId