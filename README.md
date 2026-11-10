DA-01 – Enterprise Business Intelligence Suite for a Multi-Region Company

Project Overview

This project is an Enterprise Business Intelligence solution developed using Microsoft Power BI and SQL Server.

It combines sales, finance, product, customer, HR, and supply chain data to create interactive dashboards and support business decision-making.

The project uses the AdventureWorksDW2022 sample database.

Project Objectives

- Develop interactive Power BI dashboards.
- Analyze sales, finance, product, customer, HR, and inventory data.
- Create business KPIs using DAX.
- Implement drill-through functionality.
- Apply regional Row-Level Security.
- Automate SQL sales data export.

Tools and Technologies

- Microsoft Power BI Desktop
- Power Query Editor
- DAX
- Microsoft SQL Server Express
- SQL Server Management Studio (SSMS)
- SQLCMD
- Windows Command Prompt
- Windows Task Scheduler

Dataset

- Database: AdventureWorksDW2022
- Main Sales Table: FactInternetSales
- Additional Tables: FactFinance, DimEmployee, FactProductInventory
- Total Records in FactInternetSales: 60,398
- Database Platform: SQL Server Express

Dashboards

Five interactive dashboard pages were developed:

1. Finance Dashboard
2. Sales Dashboard
3. Product Dashboard
4. Customer Dashboard
5. HR & Supply Chain Dashboard

Each dashboard includes relevant KPI cards, charts, and interactive slicers to support business analysis.

DAX Measures

- Total Sales
- Sales YTD
- YoY Growth %
- Margin %
- Rolling Average

Security

Implemented three Row-Level Security roles:

- North America Manager
- Europe Manager
- Pacific Manager

Data Export and Automation

- SQL scripts created using SSMS.
- Sales data exported using SQLCMD.
- Windows Task Scheduler configured for daily execution at 1:00 PM.

Project Limitations

- Power BI Service publishing was not completed.
- Azure Data Factory was not implemented.
- Automated Power BI Service dataset refresh was not configured.
- Further validation of DAX calculations is required.

Project Status

Developed and tested using Power BI Desktop and SQL Server Express.

Testing

- Database connection verified.
- Data quality checks performed.
- Dashboard slicers and charts tested.
- Drill-through functionality tested.
- Regional RLS roles tested.
- SQLCMD export executed successfully.
- Scheduled task execution verified.
- HR and inventory dashboard visuals and slicers tested.

Documentation

The project includes:

- Project Documentation
- System Architecture Diagram
- Data Documentation
- Power BI Dashboard User Guide
- Project Testing Report
- Individual Project Reflection
- Project Presentation

Conclusion

This project demonstrates practical skills in SQL, Power BI, data cleaning, data visualization, DAX, and business intelligence.

It provides an interactive reporting solution to support business analysis and decision-making.