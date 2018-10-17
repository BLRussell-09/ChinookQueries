-- sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

select * 
from Employee
where title = 'Sales Support Agent'