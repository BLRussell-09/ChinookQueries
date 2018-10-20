-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

select i.InvoiceId as Invoice_Number, count(il.InvoiceLineId) as Line_Item_Quantity
from Invoice as i
	join InvoiceLine as il
	on i.InvoiceId = il.InvoiceId
group by i.InvoiceId