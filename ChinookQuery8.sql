-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

select Count(*)
from Invoice
where Year(InvoiceDate) = 2009
or YEAR(InvoiceDate) = 2011