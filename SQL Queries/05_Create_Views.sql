Create or Alter View vw_ChurnData as
   Select * from prod_Churn where Customer_Status In ('Churned','Stayed')
   GO
Create or Alter View vw_JoinData as
   Select * from prod_Churn where Customer_Status = 'Joined'
   GO
