# 🛒 Zepto E-commerce SQL Data Analysis Project

## 📌 Overview
This project is based on an e-commerce inventory dataset inspired by Zepto, one of India’s fastest-growing quick-commerce startups.  
It demonstrates how SQL can be used for **data cleaning, exploration, and business analysis** in a real-world scenario.

---

## ⚙️ Project Workflow

### 1. Database & Table Creation
- Created a `zepto` table with product attributes like SKU, category, name, MRP, discount, quantity, weight, and stock status.
- Adjusted datatypes to match CSV import.

### 2. Data Import & Cleaning
- Imported CSV data into MySQL Workbench.
- Removed invalid rows (e.g., products with price = 0).
- Converted values from paise to rupees for consistency.

### 3. Data Exploration
- Counted rows and sampled data.
- Checked for `NULL` values.
- Listed distinct categories.
- Compared in-stock vs out-of-stock products.
- Identified duplicate product names.

### 4. Business Analysis Queries
- **Q1:** Top 10 best-value products by discount percentage.  
- **Q2:** High-MRP products that are out of stock.  
- **Q3:** Estimated revenue per category.  
- **Q4:** Products with MRP > ₹500 and discount < 10%.  
- **Q5:** Top 5 categories by average discount.  
- **Q6:** Price per gram for products above 100g.  
- **Q7:** Grouped products into Low, Medium, Bulk categories.  
- **Extra:** Total inventory weight per category.  

---

