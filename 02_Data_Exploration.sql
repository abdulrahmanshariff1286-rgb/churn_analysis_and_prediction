USE db_Churn;
GO

Select Gender, COUNT(Gender) as TotalCount,
Count(Gender) * 100.0  / (Select Count(*) from Customer_Data) as Percentage 
From Customer_Data
Group By Gender;


USE db_Churn;
GO
Select Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from Customer_Data) as Percentage 
From Customer_Data
Group By Contract;

USE db_Churn;
GO
Select Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select Sum(Total_Revenue) from Customer_Data) * 100.0 as RevPercentage 
from Customer_Data
Group By Customer_Status;


USE db_Churn;
GO
Select State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from Customer_Data) as Percentage
from Customer_Data
Group By State
Order By Percentage desc;



USE db_Churn;
GO
Select Distinct Internet_Type
from Customer_Data