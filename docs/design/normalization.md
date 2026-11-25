NORMALIZATION – MOTOFUEL TRACKER



1\. UNNORMALIZED FORM (UNF)

The raw CSV data is unnormalized. It contains a repeating group: DriverName, DriverPhone, and PlateNumber repeat for multiple trips.

Dependency Removed: Repeating group (Driver details repeat for every trip).



2\. FIRST NORMAL FORM (1NF)

We create a primary key (TripID). All columns must have atomic values. The repeating group is moved to its own table.

Tables after 1NF:

\- Trips: TripID (PK), DriverName, DriverPhone, PlateNumber, PickupDate, FareAmount, FuelCost

Dependency Removed: Partial dependency (DriverName and DriverPhone depend on the Driver, not the Trip).



3\. SECOND NORMAL FORM (2NF)

We remove partial dependencies by splitting the Drivers table. DriverName and DriverPhone depend on DriverID, not TripID.

Tables after 2NF:

\- Trips: TripID (PK), DriverID (FK), PlateNumber, PickupDate, FareAmount, FuelCost

\- Drivers: DriverID (PK), DriverName, DriverPhone

Dependency Removed: Transitive dependency (PlateNumber and FuelCost depend on the DriverID, not the TripID).



4\. THIRD NORMAL FORM (3NF)

We remove transitive dependencies. The PlateNumber depends on the DriverID. The FuelCost depends on the Vehicle, not the Trip.

Final Tables after 3NF:

\- Drivers: DriverID (PK), DriverName, DriverPhone

\- Vehicles: PlateNumber (PK), DriverID (FK)

\- Trips: TripID (PK), PlateNumber (FK), PickupDate, FareAmount

\- Fuel\_Purchases: FuelID (PK), PlateNumber (FK), FuelDate, FuelCost

Dependency Removed: Transitive dependency (PlateNumber depends on DriverID).

