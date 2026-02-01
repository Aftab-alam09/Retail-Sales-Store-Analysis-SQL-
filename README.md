# 🛒 Retail Sales Analysis using SQL (EDA → Advanced Analytics)

## 📌 Project Overview
This project performs an end-to-end **retail sales analysis** using SQL, focusing on **business-relevant insights** rather than just queries.

The goal is to answer **stakeholder-driven questions** such as:
- How is revenue changing over time?
- Which products and customer segments drive performance?
- Where are risks and growth opportunities?
- How can this analysis support future BI dashboards?

The analysis follows a structured analytics workflow:  
**Data Loading → EDA → Fact Analysis → Comparative → Cumulative → Advanced Insights**

---

## 🧠 Business Context
Retail stakeholders care about:
- Revenue trends
- Product and category performance
- Customer behavior
- Risk concentration
- Decision-ready insights

This project is designed to simulate how a **data analyst supports retail decision-making** using SQL before visualization or dashboarding.

---

## 🗂️ Dataset Description
The dataset represents **transaction-level retail sales data** with fields such as:
- Transaction ID
- Date
- Customer ID
- Gender
- Age Group
- Product Category
- Quantity
- Price
- Total Amount

Each row represents a single purchase transaction.

---

## 🔍 Analysis Structure

### 1️⃣ Data Definition & Loading
**File:** `DDL_data_load.sql`  
- Table schema creation  
- Data loading logic  
- Ensures data integrity and consistency  

---

### 2️⃣ Exploratory Data Analysis (EDA)
**File:** `data_exp.sql`  
- Row counts and basic sanity checks  
- Distribution checks  
- Null and data-quality validation  

Purpose: *Understand the data before analyzing it.*

---

### 3️⃣ Fact Analysis by Dimension
**File:** `fact_by_dimesnion.sql`  
- Revenue by product category  
- Sales by customer demographics  
- Time-based aggregations  

Purpose: *Identify what contributes most to overall performance.*

---

### 4️⃣ Comparative Analysis
**File:** `Comparision_Analysis.sql`  
- Period-over-period comparisons  
- Day-over-day / month-over-month logic  

Purpose: *Answer “What changed compared to before?”*

---

### 5️⃣ Cumulative Analysis
**File:** `Cumulative analysis.sql`  
- Running totals  
- Progress toward overall revenue  

Purpose: *Track growth and progress, not just snapshots.*

---

### 6️⃣ Advanced & Driver Analysis
**File:** `Advance_Analysis.sql`  
- Contribution analysis  
- Performance concentration  
- Revenue drivers  

Purpose: *Support higher-level business decisions.*

---

## 📊 Key Insights (Example)
- Revenue trends vary significantly by product category.
- A small subset of categories contributes a large share of total revenue.
- Certain customer segments consistently generate higher average order value.
- Growth in some periods is driven more by volume than pricing.

*(Exact insights depend on query results and time filters.)*

---

## 🚀 Future Improvements
- Power BI dashboard for stakeholders
- KPI monitoring (targets vs actuals)
- Time-based performance alerts
- Customer cohort and retention analysis

---

## 🛠️ Skills Demonstrated
- SQL (joins, aggregations, window functions)
- EDA & data quality checks
- Trend, cumulative, and comparative analysis
- Business-oriented analytical thinking
- Structuring analysis for decision support

---

## 🔑 Key Takeaway
> This project demonstrates how **SQL analysis translates raw transactional data into business-relevant insights**, forming a strong foundation for BI dashboards and stakeholder reporting.
