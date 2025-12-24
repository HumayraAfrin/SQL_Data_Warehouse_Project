# SQL Data Warehouse Project

Welcome to the **SQL Data Warehouse Project** repository!  
This project demonstrates a complete data engineering and analytics workflow—from building a modern data warehouse to generating actionable insights which is designed as a portfolio project.

---



## 📖 Project Overview

Key components of this project include:

- **Data Architecture**  
  Designing a modern warehouse using Bronze, Silver, and Gold layers.

- **ETL Pipelines**  
  Extracting, transforming, and loading data from source systems.

- **Data Modeling**  
  Creating fact and dimension tables optimized for analytics.

- **Analytics & Reporting**  
  Building SQL-based reports and dashboards for business insights.

---



## 🚀 Project Requirements

**Building the Data Warehouse (Data Engineering)**


**Objective**

Develop a scalable data warehouse using SQL Server to consolidate sales data and support informed decision-making.


---

📋 **Specifications**

- **Data Sources** 
The project integrates data from two primary source systems—ERP and CRM—provided as CSV files.

- **Data Quality**  
All ingested data undergoes cleansing and validation to resolve inconsistencies and ensure accuracy prior to analysis.

- **Integration**  
Data from both sources is consolidated into a unified, query-optimized model designed to support analytical workloads.

- **Scope**  
The warehouse focuses exclusively on the most recent dataset. Historical data retention or historization is not required.

- **Documentation**  
Comprehensive documentation of the data model is provided to facilitate understanding and usage by both business stakeholders and analytics teams.


---



## 🏗️ Data Architecture: Medallion Framework

This project follows the **Medallion Architecture**, structured into three layers:

<img width="568" height="359" alt="SQL_DWH_Architecture" src="https://github.com/user-attachments/assets/f31a5829-5405-4711-ad7f-2e17cef5b07e" />

- **Bronze Layer**  
  Raw data ingested from ERP and CRM CSV files into a SQL Server database.

- **Silver Layer**  
  Data cleansing, standardization, and normalization for analytical readiness.

- **Gold Layer**  
  Business-ready data modeled into a star schema for reporting and dashboards.




