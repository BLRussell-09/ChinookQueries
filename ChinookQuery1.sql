-- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.*/

select FullName = FirstName + ' ' + LastName, CustomerId, Country 
from dbo.Customer
where Country != 'USA';