-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select FullName = c.FirstName + ' ' + c.LastName, i.Total, c.Country, EmployeeName = e.FirstName + ' ' + e.LastName
from Invoice as i, Customer as c, Employee as e
where i.CustomerId = c.CustomerId
and e.EmployeeId = c.SupportRepId