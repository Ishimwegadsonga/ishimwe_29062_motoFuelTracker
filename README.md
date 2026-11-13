MOTOFUEL TRACKER


Student: Ishimwe Gad
Student ID: 29062
Course: INSY 8311 — Database Development with PL/SQL
Instructor: Eric Maniraguha
Phase: 0 — Research and Proposal


1 PROBLEM STATEMENT

Commercial motorcycle taxi operators in Kigali generate daily cash revenue, yet most lack a structured method to monitor fuel consumption, routine maintenance expenses, and actual net income. Without clear financial visibility, drivers frequently operate at an unrecognized loss on low-demand or high-expense days, which erodes household earnings and limits long-term financial planning.


2 PROJECT OBJECTIVES

Primary Goal:
Develop an Oracle PL/SQL database application designed to capture, evaluate, and report daily net earnings versus operational expenses for motorcycle taxi drivers.

Specific Deliverables:
1 Store daily fuel purchases, passenger trip fares, and repair expenses inside a normalized Oracle relational schema.
2 Calculate net daily profit or loss for individual drivers using custom PL/SQL functions.
3 Detect and flag consecutive loss-making days automatically through database triggers.
4 Connect a real-time Power BI reporting dashboard so drivers and transport cooperatives can monitor financial trends.


3 DATA SOURCES
---------------
- Primary Dataset: NYC Yellow Taxi Trip Data from Kaggle, adapted to model trip distances and fare distributions.
  URL: https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data
- Supplemental Data: Regional fuel price benchmarks and Rwandan urban transport statistics used to calibrate local operating costs.


4 PLANNED INNOVATION

Selected Approach: Interactive Analytics Dashboard (Microsoft Power BI)

Overview:
A live reporting interface linked directly to the Oracle database. The dashboard will display daily net revenue curves, compare fuel expenditures against maintenance costs, and highlight an automated alert table identifying drivers experiencing sustained financial losses.


5 PLANNED DATABASE SCHEMA

 districts (district_id, name)
 drivers (driver_id, name, plate_number, district_id)
 rides (ride_id, driver_id, ride_date, fare_amount)
 fuel_purchases (fuel_id, driver_id, purchase_date, liters, cost)
 maintenance (maint_id, driver_id, maint_date, cost, description)
 daily_summary (aggregated view or summary table populated via PL/SQL)


6 PLANNED PL/SQL ARCHITECTURE

 Stored Procedures: record_ride, record_fuel, and compute_daily_profit to handle transactional inserts and daily rollups.
 Stored Functions: calc_profit(driver_id, date) and driver_monthly_avg to return real-time financial metrics.
 Cursors: Explicit cursors to iterate through driver records when compiling monthly performance summaries.
 Triggers: Automated business rules that raise an alert when a driver records three consecutive days of negative profit and reject fuel entries exceeding market price ceilings.
 Packages: pkg_driver_reports to group related reporting procedures and functions into a single modular unit.
 Auditing: An audit trigger that captures and logs all modifications made to the fuel_purchases table.
 Exception Handling: Custom user-defined exceptions to validate and reject negative fares or unrealistic fuel quantities.


7 REFERENCES (APA 7TH EDITION)
-------------------------------
Note: Consult docs/research/research_log.md for the complete annotated six-source bibliography.

1 Habimana, J. (2023). Financial inclusion for informal workers.
2 Kaggle. (2023). NYC yellow taxi trip data.
3 National Institute of Statistics of Rwanda (NISR). (2024). Rwanda transport statistics report.
4 Nkurunziza, A., et al. (2022). Motorcycle taxi industry in Kigali.
5 Oracle. (2024). PL/SQL language reference 21c.
6 YegoMoto. (2023). Mobile ride-hailing platform.