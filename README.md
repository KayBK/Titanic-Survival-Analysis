
🚢 Titanic Survival Analysis – Data Analytics Project
📌 Overview

This project analyzes the Titanic passenger dataset to identify the key factors that influenced survival during the disaster. The goal is to explore how demographic and socioeconomic variables such as gender, age, passenger class, and fare impacted survival outcomes.

The project follows a complete data analytics workflow including data cleaning, exploratory data analysis (EDA), SQL-based querying, and dashboard visualization.


📊 Dataset
Source: Kaggle Titanic Dataset
Records: 891 passengers
Features: PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, Embarked, Cabin

🛠️ Tools & Technologies
Python (Pandas, NumPy, Matplotlib, Seaborn)
PostgreSQL (SQL analysis)
Tableau (Dashboard development)
Jupyter Notebook (EDA and data cleaning)
Gamma (Presentation/report creation)

🔄 Project Workflow
1. Data Loading
Dataset imported into Python using Pandas
Initial structure and missing values explored

3. Data Cleaning & Preprocessing
Handled missing values in Age and Embarked columns
Created Age groups (Child, Teenager, Young Adult, Adult, Senior)
Engineered features such as:
Cabin availability indicator
Family size (SibSp + Parch)
Fare quartile grouping

4. Exploratory Data Analysis (EDA)
Analyzed survival distribution across:
Gender
Passenger class
Age groups
Fare categories
Identified key relationships between variables

5. SQL Analysis (PostgreSQL)
Data loaded into PostgreSQL database
SQL queries used to:
Calculate survival rates
Group passengers by demographics
Analyze interaction effects (e.g., Sex × Pclass)

6. Data Visualization (Tableau)
Built an interactive dashboard including:
KPI metrics (survival rate, total passengers)
Survival breakdown by key features
Heatmaps and bar charts
Interactive filters for exploration

7. Reporting
Findings summarized in a structured report
Presentation created using Gamma for storytelling and communication

📊 Dashboard Features
KPI summary (Total passengers, survival rate, mortality rate)
Survival analysis by:
Gender
Passenger class
Age group
Fare group
Interaction analysis (Gender × Class)
Interactive filters for dynamic exploration

📈 Key Results / Insights
Females had a significantly higher survival rate than males
First-class passengers were more likely to survive compared to lower classes
Children had higher survival rates than adults and seniors
Higher fare passengers showed better survival outcomes
Passengers with known cabin information had higher survival probability

These insights highlight how socioeconomic and demographic factors influenced survival during emergencies.

▶️ How to Run This Project
1. Clone the repository
git clone https://github.com/your-username/titanic-survival-analysis.git

2. Install dependencies
pip install pandas numpy matplotlib seaborn

3. Run the Jupyter Notebook
jupyter notebook

4. SQL Setup (PostgreSQL)
Import cleaned dataset into PostgreSQL
Run SQL queries from /sql_queries folder

5. Tableau Dashboard
Open Tableau file in /tableau_dashboard
Connect dataset and explore visuals

👨‍💻 About the Author

I'm Kwabena Boakye Kokro a Data Analyst with a strong interest in turning raw data into meaningful insights that support better decision-making. I specialize in data cleaning, exploratory data analysis, SQL, and data visualization using tools such as Python, PostgreSQL, PowerBI and Tableau.

I enjoy working on real-world datasets to build practical projects that demonstrate how data can be used to uncover patterns, solve problems, and communicate insights clearly to both technical and non-technical audiences.



📌 Conclusion

This project demonstrates a complete end-to-end data analytics workflow, from raw data to actionable insights. It highlights how data can be used to uncover patterns in real-world scenarios and support better decision-making
