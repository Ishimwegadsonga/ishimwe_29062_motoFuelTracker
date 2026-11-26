ARCHIVE LOG LIST;

-- Explanation: Archive logging is a CDB-level (container database) setting.
-- A PDB shares the same redo log files as the CDB. Enabling archive logging
-- requires shutting down and restarting the entire CDB, not just the PDB.

-- On your local installation ONLY:
-- SHUTDOWN IMMEDIATE;
-- STARTUP MOUNT;
-- ALTER DATABASE ARCHIVELOG;
-- ALTER DATABASE OPEN;