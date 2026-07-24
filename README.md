# 📊 Website/App User Funnel Drop-off Analysis

A data analytics project that analyzes user behavior through a website/app funnel using **SQL** and **Python**. The project calculates conversion rates, identifies the largest user drop-off stage, and visualizes the funnel to provide actionable business insights.

---

## 📌 Project Overview

Understanding where users leave a signup or checkout process is a key responsibility of Product and Data Analysts. This project performs a funnel analysis on event-level user data to determine:

- Number of unique users at each funnel stage
- Stage-to-stage conversion rates
- Drop-off percentage between stages
- Biggest funnel leakage point
- Visual insights using Python

---

## 🎯 Objectives

- Analyze user progression through the funnel
- Calculate conversion rate at each stage
- Identify the stage with the highest user drop-off
- Visualize funnel performance
- Provide business recommendations to improve conversions

---

## 🛠️ Tech Stack

- **SQL (MySQL Workbench)**
- **Python**
- **Pandas**
- **Matplotlib**
- **Jupyter Notebook**

---

## 📂 Dataset

The dataset contains event-level user activity with the following columns:

| Column | Description |
|---------|-------------|
| user_id | Unique user identifier |
| step | Funnel stage reached |
| timestamp | Time of the event |

Example Funnel:

```
Visited Site
      ↓
Signup Started
      ↓
Details Filled
      ↓
Email Verified
      ↓
Purchase Completed
```

---

## 📈 SQL Analysis

The following SQL concepts were used:

- SELECT
- GROUP BY
- COUNT(DISTINCT)
- CASE
- ORDER BY
- Common Table Expressions (CTE)
- LAG() Window Function

### Analysis Performed

- Count unique users at each stage
- Calculate conversion rates
- Compute drop-off percentages
- Identify the largest drop-off stage

---

## 🐍 Python Analysis

Using Pandas and Matplotlib:

- Read SQL output CSV
- Analyze funnel metrics
- Find maximum drop-off stage
- Generate visualizations

---

## 📊 Visualizations

The project includes:

- 📌 User Funnel Bar Chart
- 📈 Conversion Rate Line Chart
- 📉 Drop-off Rate Bar Chart
- 🥧 User Distribution Pie Chart

---

## 📋 Project Workflow

```
CSV Dataset
      │
      ▼
MySQL Workbench
      │
      ├── Import Data
      ├── SQL Queries
      ├── Funnel Analysis
      └── Export Results
      │
      ▼
Python
      │
      ├── Pandas
      ├── Data Analysis
      ├── Visualization
      └── Business Insights
```

---

## 📊 Key Metrics

- Total Users at Each Funnel Stage
- Conversion Rate (%)
- Drop-off Rate (%)
- Biggest Drop-off Stage

---

## 💡 Business Insights

The analysis identifies the funnel stage where the maximum number of users leave the process. Based on this finding, product teams can:

- Simplify the user journey
- Reduce unnecessary steps
- Improve verification experience
- Optimize UI/UX
- Increase overall conversion rates

---

## 📁 Project Structure

```
Website-App-Funnel-Analysis/
│
├── Dataset/
│   └── funnel_events_sample.csv
│
├── SQL/
│   └── funnel_analysis.sql
│
├── Python/
│   └── funnel_analysis.ipynb
│
├── Images/
│   ├── user_funnel.png
│   ├── conversion_rate.png
│   ├── dropoff_rate.png
│   └── pie_chart.png
│
└── README.md
```

---

## 🚀 How to Run

### SQL

1. Open MySQL Workbench
2. Create a database
3. Import the CSV file
4. Run the SQL queries
5. Export the results as CSV

### Python

```bash
pip install pandas matplotlib
```

Run:

```bash
jupyter notebook
```

Open:

```
funnel_analysis.ipynb
```

Execute all cells.

---

## 📚 Skills Demonstrated

- SQL Data Analysis
- Window Functions
- Funnel Analysis
- Conversion Rate Calculation
- Drop-off Analysis
- Data Cleaning
- Data Visualization
- Business Intelligence
- Product Analytics

---

## 🎓 Learning Outcome

This project demonstrates how SQL and Python can be combined to solve real-world product analytics problems commonly encountered in technology companies. It showcases the ability to transform raw event-level data into actionable insights through structured analysis and visualization.

---

## 👨‍💻 Author

**Arun Kumar T**

