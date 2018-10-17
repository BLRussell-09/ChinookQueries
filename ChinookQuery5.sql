-- unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.

select BillingCountry
from Invoice
Group By BillingCountry