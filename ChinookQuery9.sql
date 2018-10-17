-- total_sales_{year}.sql: What are the respective total sales for each of those years?

select Sum(i.Total) as Sold_in_2011, (Select SUM(i.Total) from Invoice as i where Year(i.InvoiceDate) = 2009) as Sold_In_2009
from Invoice as i
where Year(InvoiceDate) = 2011
