-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select FullName = e.FirstName + ' ' + e.LastName
from Invoice as i, Customer as c, Employee as e
where i.CustomerId = c.CustomerId
and e.EmployeeId = c.SupportRepId
Group by e.FirstName + ' ' + e.LastName

