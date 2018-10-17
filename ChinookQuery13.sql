-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

select InvoiceLineId, InvoiceId, I.TrackId, t.Name, Ar.Name
from InvoiceLine as I, Track as t 
	Left Outer Join Album as ab
		On t.AlbumId = ab.AlbumId
	Right Outer Join Artist as Ar
		On Ab.ArtistId = Ar.ArtistId 
order by InvoiceId