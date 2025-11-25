# 🌍 East Africa Financial Analysis Using Python, SQL and PowerBI

## 📌 Project Overview  
This project aims to build an **end-to-end data engineering & analytics pipeline** to study **financial inclusion across East African countries** using a synthetic dataset of 50,000 rows. It simulates real-world data challenges by including missing values, logical inconsistencies, negative income values, and malformed categorical fields.

### 🔧 Core Components
1. **Python Data Pipeline** — cleaning, transforming, validating data  
2. **SQL Database Integration** — storing and analyzing cleaned data  
3. **Data Visualization** — insights using Python (Matplotlib/Seaborn) or Power BI  

---

## 📊 Dataset Description  
The dataset includes **50,000 records** representing demographic and financial inclusion details.

| Column             | Description |
|-------------------|-------------|
| `age`             | Age of the individual |
| `gender`          | Gender (with missing/malformed entries) |
| `country`         | Country of residence |
| `education_level` | Highest education achieved |
| `has_bank_account`| Bank account ownership (inconsistent labels) |
| `mobile_money_user` | Mobile money usage |
| `loan_access`     | Access to credit or loan facilities |
| `monthly_income`  | Reported monthly income (contains negative values) |


# 🚀 Project Phases

## **Phase 1: Python Data Pipeline**
The goal is to build a robust pipeline that cleans and transforms the dataset.

### ✔ Tasks Include:
- Load raw data using **pandas**
- Identify & fix logical errors:
  - Replace invalid age values
  - Normalize `has_bank_account` (yes / no / unknown → 1 / 0 / NaN)
  - Remove or impute negative incomes
  - Standardize gender values
  - Clean missing entries
- Save the cleaned dataset to a new CSV file

---

## **Phase 2: SQL Integration**
The cleaned dataset is imported into **SQL** for analysis.

### 🔍 Key SQL Queries include:
- **Count of users per country**
- **Average income by education level**
- **Correlation between bank account ownership & mobile money usage**
- **Segmentation by financial inclusion status**  
  (e.g., users with bank account AND mobile money AND loan access)

---

## **Phase 3: Data Visualization**

### **Power BI Dashboard**
Upload the cleaned CSV and build:
- 🌍 **Country-wise inclusion map**
- 📈 **Income distribution & credit access**
- 👩‍🦰 **Gender-wise financial inclusion**

![Dashboard](https://github.com/user-attachments/assets/5bf536ea-1e77-435d-a246-8fc106813cf9)

---
---
---
---
---
