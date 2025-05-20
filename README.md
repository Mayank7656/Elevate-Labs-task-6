# Elevate-Labs-task-6

# 📊 Sales Trend Analysis with MySQL

This project analyzes monthly trends in **revenue** and **order volume** using sales data stored in a MySQL database. It demonstrates how to use SQL aggregation functions and date extraction for time-based insights.

---

## 📦 Dataset Overview

The dataset used is a cleaned version of an e-commerce order log containing basic order info:

**CSV Columns (used in this project):**
- `order_id` – Unique identifier for each order
- `product_id` – ID of the purchased product
- `order_date` – Date when the order was placed (YYYY-MM-DD)
- `amount` – Total order value (in currency units)

---

## 🛠 Prerequisites

- MySQL Workbench installed
- Local MySQL Server running
- Cleaned CSV file (`online_sales_dataset.csv`) ready

---

## 📥 Step-by-Step Setup

### 🧱 1. Create the Database and Table

In MySQL Workbench, execute:

```sql
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);
