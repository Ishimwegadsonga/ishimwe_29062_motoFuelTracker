DATA DICTIONARY



DRIVERS TABLE

Column Name: DriverID | Meaning: Unique identifier for a driver | Required: Yes | Unique: Yes

Column Name: DriverName | Meaning: Full name of the driver | Required: Yes | Unique: No

Column Name: DriverPhone | Meaning: Contact phone number | Required: Yes | Unique: No



VEHICLES TABLE

Column Name: PlateNumber | Meaning: Vehicle license plate | Required: Yes | Unique: Yes

Column Name: DriverID | Meaning: Links vehicle to driver | Required: Yes | Unique: No



TRIPS TABLE

Column Name: TripID | Meaning: Unique identifier for a trip | Required: Yes | Unique: Yes

Column Name: PlateNumber | Meaning: Links trip to vehicle | Required: Yes | Unique: No

Column Name: PickupDate | Meaning: Date and time of the trip | Required: Yes | Unique: No

Column Name: FareAmount | Meaning: Amount charged for the trip | Required: Yes | Unique: No



FUEL\_PURCHASES TABLE

Column Name: FuelID | Meaning: Unique identifier for a fuel purchase | Required: Yes | Unique: Yes

Column Name: PlateNumber | Meaning: Links purchase to vehicle | Required: Yes | Unique: No

Column Name: FuelDate | Meaning: Date of fuel purchase | Required: Yes | Unique: No

Column Name: FuelCost | Meaning: Cost of the fuel | Required: Yes | Unique: No

