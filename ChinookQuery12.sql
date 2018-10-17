-- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

Select InvoiceLineId, InvoiceId, i.TrackId, i.UnitPrice, Quantity, t.TrackId, Name
from InvoiceLine as i, Track as t
where i.TrackId = t.TrackId
order by InvoiceLineId

