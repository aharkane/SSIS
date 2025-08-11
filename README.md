# SSIS
# SSIS Sales Data ETL Project

## 📌 Overview
This project demonstrates an **ETL (Extract, Transform, Load)** process built using **SQL Server Integration Services (SSIS)**.  
It extracts Products data from CSV files, transforms it by applying business rules and lookups, and loads it into a SQL Server database.

The goal of this project is to showcase my skills in:
- Building and configuring SSIS packages
- Implementing transformations and error handling
- Working with SQL Server databases and data flows

---

## 🛠 Technologies Used
- **SQL Server Integration Services (SSIS)**
- **SQL Server** (for source and target databases)
- **T-SQL** (for table creation and data manipulation)
- **CSV** (as source data format)

---

## 📂 Project Structure
SSIS-Sales-ETL-Project/
│
├── SSIS-Package/ # SSIS solution and package files
│ ├── Products_ETL.dtsx
│ ├── Products_ETL.dtproj
│ ├── SSIS-Solution.sln
│
├── Sample-Data/ # Example input data
│ ├── Products_source.csv
│ ├── lookup_table.csv
│
├── SQL-Scripts/ # SQL scripts for setup
│ ├── create_tables.sql
│ ├── load_target.sql
│
└── README.md
