## 📞 Telecom Customer Churn SQL & ML Data Analyst Portfolio Project

This is a complete, real-world data analyst portfolio project based on telecom customer data. This project simulates real analyst workflows, from raw data exploration and cleaning in SQL Server to building a predictive Machine Learning model in Python, and finally visualizing business insights in Power BI.

This project is perfect for:
* 📊 Data Analyst aspirants who want to build a strong **Portfolio Project** for interviews and LinkedIn
* 📚 Anyone learning SQL, Python, and Power BI hands-on
* 💼 Preparing for interviews in data science, predictive modeling, or business intelligence

## 📌 Project Overview

The goal is to simulate how actual data analysts work behind the scenes to use SQL, ML, and BI tools to:

✅ Set up a relational database using SQL Server to host messy telecom customer data
✅ Perform **Exploratory Data Analysis (EDA)** to explore demographics, contracts, and service subscriptions
✅ Implement **Data Cleaning** to handle null values, standardize text, and create production-ready views
✅ Build a **Machine Learning Model** (Random Forest) in Python to predict future customer churn
✅ Create an interactive **Power BI Dashboard** to profile at-risk customers and drive retention strategies

## 📁 Dataset Overview

The dataset mimics what you’d typically encounter in a real-world telecom CRM system. Each row represents a unique customer, detailing their demographics, subscribed services, account information, and whether they stayed or churned.

## 🧾 Columns:

* **Customer_ID:** Unique identifier for each customer entry (Primary Key)
* **Gender / Age / Married / State:** Customer demographic and geographic data
* **Internet_Type / Phone_Service:** Specific services the customer is subscribed to
* **Contract:** Customer's contract type (Month-to-Month, One Year, Two Year)
* **Monthly_Charge / Total_Revenue:** Financial metrics indicating customer value
* **Customer_Status:** Target variable indicating if the customer Stayed, Churned, or Joined

## 🔧 Project Workflow

Here’s a step-by-step breakdown of what we do in this project:

### 🔗 1. Database & Table Creation
We start by setting up `db_Churn` in SQL Server and importing the raw flat file to establish our base data.

### 🔗 2. Data Exploration
* Counted the total number of records and checked distinct values across columns.
* Grouped data by Gender, Contract type, and State to understand the distribution of the customer base.
* Identified the percentage of revenue coming from churned vs. active customers.

### 🔗 3. Data Cleaning
* Checked for null values across all service columns (like Device Protection, Online Backup).
* Used `ISNULL()` to replace missing values with 'No' or 'None' to ensure data consistency.
* Created a clean production table (`prod_Churn`) ready for analysis.

```sql
SELECT 
    Customer_ID,
    Gender,
    ISNULL(Internet_Type, 'None') AS Internet_Type,
    ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    Contract,
    Monthly_Charge,
    Customer_Status
INTO [db_Churn].[dbo].[prod_Churn]
FROM [db_Churn].[dbo].[Customer_Data];
```

### 🔗 4. Creating Views for Machine Learning
* Built specific SQL Views (`vw_ChurnData` and `vw_JoinData`) to separate historical data for training the model and new data for predicting future churners.

### 🔗 5. Predictive Modeling (Python)
* Connected a Jupyter Notebook directly to the SQL Server database.
* Preprocessed categorical data using Label Encoding.
* Trained a **Random Forest Classifier** (`scikit-learn`) achieving ~84% accuracy.
* Exported the predicted churn risk for new customers into a CSV.

### 🔗 6. Dashboard Visualization (Power BI)
* Connected Power BI to the SQL database and the Python prediction CSV.
* Built an **Executive Summary** to track overall churn metrics.
* Designed a **Churner Profile** dashboard to visually identify traits of high-risk customers for targeted marketing.

## 🖼️ Dashboard Previews

![Executive Summary](Images/Executive_Summary.png)
![Churner Profile](Images/Churner_Profile.png)

---

## 👨‍💻 About the Author

Hey, I'm **Abdul Rahman** — an engineering student based in Bangalore and an aspiring data professional. I enjoy breaking down complex datasets into clear, actionable insights and building end-to-end pipelines.

🚀 **Stay Connected & Check Out My Work**

If you enjoyed this project, let's stay in touch! I regularly share my learning journey and portfolio projects. 

💼 **LinkedIn:** [Your LinkedIn Profile URL]  
🐙 **GitHub:** [Your GitHub Profile URL]  

📂 **Other Projects You Might Like:**
* [AutoTrend Analytics](Link-To-Your-Repo) - *(Add a brief 1-sentence description here about your saved personal project!)*
