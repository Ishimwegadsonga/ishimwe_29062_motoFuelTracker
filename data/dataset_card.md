DATASET CARD



SOURCE INFORMATION

Source Link: https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data

License: CC0 (Public Domain)

Format: CSV

Size: 500 records, 7 columns

Date Collected: November 2026

What One Record Represents: A single moto taxi trip, including driver details, vehicle plate, pickup date, fare amount, and fuel cost.



DATA QUALITY CHECK (DO NOT FIX YET)

Missing Values: 0 missing values.

Duplicate Rows: 0 duplicate TripIDs (each trip is unique).

Data Type Issues: PickupDate is stored as text (needs conversion to DATE in Phase IV).

Anomalies: DriverName and DriverPhone repeat for multiple trips (redundancy). FuelCost does not match actual fuel purchases per trip (it repeats).



NOTES

Personal data has been anonymised (names are fake, phone numbers are fake).

This data will be normalized into 3NF in the next steps.

