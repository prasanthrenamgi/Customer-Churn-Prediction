SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count(*) from Churn_Data)  as Percentage
from Churn_Data
Group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from Churn_Data)  as Percentage
from Churn_Data
Group by Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from Churn_Data) * 100  as RevPercentage
from Churn_Data
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from Churn_Data)  as Percentage
from Churn_Data
Group by State
Order by Percentage desc

SELECT DISTINCT Internet_Type
FROM Churn_Data