/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
NOTE:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Therefore, we maintained a backup of the database 
    if it exists.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
  
-- Step 1: Check if the database exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- Step 2: Backup the database before dropping
    BACKUP DATABASE DataWarehouse
    TO DISK = 'C:\Backups\DataWarehouse.bak'
    WITH FORMAT, INIT, NAME = 'Full Backup of DataWarehouse';

    -- Step 3: Force single-user mode to disconnect all sessions
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    -- Step 4: Drop the database safely
    DROP DATABASE DataWarehouse;
END;


-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas for 3 layers - Bronze, Silver, Gold
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
