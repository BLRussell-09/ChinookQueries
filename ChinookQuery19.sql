-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?


select top 1 e.FirstName + ' ' + e.LastName as FullName, count(i.InvoiceId) as Total_Sales, sum(i.Total) as Sales_Price
from Invoice as i
	join Customer as c on i.CustomerId = c.CustomerId
	join Employee as e on e.EmployeeId = c.SupportRepId
where Year(i.InvoiceDate) = 2009
Group by e.FirstName + ' ' + e.LastName
order by Sales_Price desc
