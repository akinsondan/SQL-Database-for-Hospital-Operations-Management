# Hospital Management SQL Database

## Overview
This repository includes:
- The SQL dump file `Dump20240325.sql` to set up the Hospital Management System database.
- A `queries/` folder with SQL scripts for testing and managing the database.

## Requirements
- MySQL Server
- MySQL Workbench
- SQL dump file: `Dump20240325.sql`
- Queries folder: `queries/`

## Setup Instructions

1. **Start MySQL Server**  
   Ensure your MySQL server is running.

2. **Create the Database**  
   - Open MySQL Workbench and connect to your MySQL server.
   - Open a new SQL tab and run the following command:

     ```sql
     CREATE DATABASE hospital_management;
     ```

   - Click the lightning bolt icon (Execute) to run the command.

3. **Import the Dump File**  
   - Go to `Server` > `Data Import`.
   - Choose `Import from Self-Contained File`.
   - Click `Browse` and select `Dump20240325.sql`.
   - In the `Default Schema to be Imported To` section, select `hospital_management`.
   - Click `Start Import`.

4. **Verify the Import**  
   - Open a new SQL tab.
   - Run the following commands:

     ```sql
     USE hospital_management;
     SHOW TABLES;
     ```

   - Click the lightning bolt icon (Execute) to check that the tables are present.

## Testing with Queries

1. **Navigate to the Queries Folder**  
   Locate the `queries/` folder with SQL scripts.

2. **Execute SQL Scripts**  
   - Open a new SQL tab.
   - Open each SQL script from the `queries/` folder.
   - Execute the scripts by clicking the lightning bolt icon (Execute).

## Support
For assistance, contact [akinsondan@gmail.com](mailto:akinsondan@gmail.com).
