-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select i.BillingCountry, Count(*) as Invoices_per_Country
from Invoice as i
group by BillingCountry