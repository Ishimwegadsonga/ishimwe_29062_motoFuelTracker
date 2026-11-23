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



 Phase I – Business Process Modeling
 Selected Process: MotoFuel Tracker – Daily Ride, Fuel, and Profit Tracking
Modeling Tool Used: diagrams.net (Draw.io)
Published Diagram Link: [Click here to view the live diagram](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&dark=auto#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22aIBdbA-zt5QfniJ5zQZd%22%3E7Vxbc%2BI2FP41zLQPMLbli3jcXHabmXQm2cx020cFK%2BCusagsQthfXwlkbEsGbGMZaPdl1z7W9ZzznZtEBuB2%2FvGFosXsdxLieOBY4ccA3A0cxx7DMf9PUNaSAoG1pUxpFEpaTniJfmBJzJotoxCnpYaMkJhFizJxQpIET1iJhiglq3KzNxKXZ12gKdYILxMU69RvUchmWyp0gpz%2BG46ms2xm25c7nqOssdxJOkMhWRVI4H4AbikhbPs0%2F7jFseBexpdtv897vu4WRnHC6nRwf3x%2Bvx%2F%2B%2BGO4%2FueZPH6FX5%2B%2FPAzlNnCocSEfVpJSsqQTfGAsR7Zj64x5YtgX%2BUoom5EpSVB8n1NvKFkmIRYrtPhb3uaRkAUn2pz4N2ZsLRUDLRnhpBmbx%2FJriN%2FQMmaP6BXHN2jyfboZ8ZbEhPIWW%2BnexOLrEwrDKJlupnIsl5OlOiE6xezAvtxtu3cUL%2BW%2BdtLjeo%2FJHDO65g0ojhGL3suMRFL%2Fprt2uYj4g5RSA4k5%2BwVUYHwcc4CIra9mEcMvC7SR3IqDtMw%2BrpQL%2FJCkHGSSom025Qxikoopwx%2BFSXUmzApgcJ2Rt%2B24yqHjSzjIYcbyVdoHxx85niHOuXU4lyukfZx7svETphFfIqb7WEjxhNBQqIjgcxtWAp2RtlPmpAPKrMxeO%2Bejd34%2Bvi2FnzHDR9fviY%2Bwge0tQDsJPwm%2Fxt8mMUrTaFLJS2lRTzGPfKbPUZyNy5dE13%2FKYTcvfxW%2F3H0UP92t5VtNE%2BvVNLFFUXpSLpVmtyBfryxea2RZLtgv0s2knMNoXWiwIFHC0sKangShoDNWWWd8MHJ9RUG2Y1b3B57SX7GBW98rOxV9vLoOdRxFd7eC0MbZqO%2BOze01elzLMszI%2FHWZduKbWtkAaOk2QPFKrlvmoz02ZQRs58KtQH%2FIHFojp2Nc%2BoocM2NeD5W%2BVd27MSy1ZajqZBiXNjiby04Rl7%2FI2UQS%2BDpw%2FJgJhYze%2BeNUPE4oRgxnH%2Fj2Ct9awduvgLfi4j016jQHb%2FcnvHN4H8iJWsEbqHJsBG%2FVyLeGt7YM2DO8%2FbPB%2BzUmk%2B9Cv5MMLQbg6ozdw%2FztDq5N6iHnj8n79c0QtA%2Bb92LHc8rYCVpiUB1Hi9hMY7Be7GsCgxMUT5ZcmlRMT8kb%2B%2BXXCj9L%2BQYj%2FN6zp1VDKBdAQ9DNJr5Y6PYKVmh5QcfO1lfrItBr4Gy13mpqWjuWVgbaefGegJ4lnYfVisOIlRWpCuwpo%2BQ7ztQnIYlQnzdu3xUSiqNpIjSUzyjswI0AasRx%2F0l%2BmEdhWFFP11QuIa2ADnSgKwmzGlGbS5idWrnMhfJ%2FjVNDAgBBbwKoF22eu8pT5Zzsw87Jg6aOHpxLr%2FX255x4FugFXdd5AsUp%2BHbJNx1v7zZJHAO7erbGvkxbhhr9mvZl5wtal4twU%2Fax0uV8jlrmjjVOc%2FzxERZ3hvHMRl%2BlYzIWGASqjTXml4B94TY2P0EbecUztPzU7KQzNOBoUjVmxEU5IHC6zjA81ztkxRtW61tbZe%2FMVjkT5DlKCbIYb6EYt7z0UWWTlbjL7c8mg1NtgjS0Vx90QRAcqLy0C7qUlCPwlAtoKq6UsCloFnSps9mK0tSGt7oMS7ETpuG9uzp4hXGCuQTWU05jPGNFfjC%2B8EChB7uw1wjobhVUo7x54U4ZCKoANoy7TL%2FO4FbJAidiZrLibRzr5oH%2FE6J0VnUebqBOXyNN8oIjwunuFmYtsBm6Pvge4dUGJUnY0o7prBwrnFSCG2jMjrknBzf%2FZzsG3ZbpgTZQz6f9bq17zF3eAOca0xVYgjJYfCUWG6unQt2BxfsJlgZgUYKxcdtcWhuo5xup8hbu5YrdcFEoO6y5FL3yyhUedwxb6pUykJYtmNarky8KycxMhIG7OOdaDUteFQxg0PUlP5hdypKiHvqHywxQuQNv2%2BBwh6GtdmhUmFC7D9smSNpAfdvKkw8pr7xYVt%2BOQU1j7BGEjusHEFjioZ0GwCOaZFoBTi6MHDFqgv6EGE%2FRkg3FscCuiJX9utb572qNZmislpYCqpcd1YEMK0q29assYc7J9scIlMuWDlrlNUeLmZopVy%2BpdfdjzJNPPX9i9iBmy3FmoMaZtSGrRCXaQKYhe83X5p4e%2BZ5fnh8ryqXpOmV43mWxdD%2B4911d7Q7MtUo7FyqkOUo4rDu3qFmVrcW9Ef6a%2F3mNLZDyv1IC7v8F%3C%2Fdiagram%3E%3C%2Fmxfile%3E)
Supporting Explanation: [Click here to view the PDF](docs/business_process/business_process_explanation.pdf)