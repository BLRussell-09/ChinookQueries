-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

select FullName = e.FirstName + ' ' + e.LastName, count(i.InvoiceId) as Total_Sales
from Invoice as i, Customer as c, Employee as e
where i.CustomerId = c.CustomerId
and e.EmployeeId = c.SupportRepId
Group by e.FirstName + ' ' + e.LastName
