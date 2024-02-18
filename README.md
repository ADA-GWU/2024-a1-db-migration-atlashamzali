[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <p>Before performing migration, ensure that the required tables are set up correctly. Execute the following SQL scripts in the specified order:</p>
    <h2>Setting Up Tables</h2>
    <p>This script sets up the <code>STUDENTS</code> table:</p>
    <p><b>psql -d assignment1 -f students_table.sql</b></p>
    <p>This script sets up the <code>INTERESTS</code> table:</p>
    <p><b>psql -d assignment1 -f interests_table.sql</b></p>
    <h1>Database Migration and Rollback</h1>
    <h2>Migration Steps</h2>
    <p>Once the tables are set up, proceed with the migration process using the <code>db_migration.sql</code> script:</p>
    <p>Run the migration script using the following command:</p>
    <p><b>psql -d assignment1 -f db_migration.sql</b></p>
    <h3>Rename Columns and Change Data Types</h3>
    <p>During migration, update column names and adjust data types to match new requirements:</p>
    <ul>
        <li>Rename the column <strong>ST_ID</strong> to <strong>STUDENT_ID</strong> in the <strong>STUDENTS</strong> table for clarity.</li>
        <li>Adjust data types for <strong>ST_NAME</strong> and <strong>ST_LAST</strong> columns to accommodate longer names.</li>
        <li>Rename <strong>INTEREST</strong> to <strong>INTERESTS</strong> in the <strong>INTERESTS</strong> table for clarity.</li>
    </ul>
    <h3>Backing Up Data and Modifying Table Structure</h3>
    <p>Before making significant changes, ensure data safety and adjust table structures as needed:</p>
    <ul>
        <li>Create a backup table called <strong>INTERESTS_BACKUP</strong> to preserve interests data.</li>
        <li>Copy interests from the original <strong>INTERESTS</strong> table into the backup table.</li>
        <li>Remove the original <strong>INTERESTS</strong> table to prepare for changes.</li>
        <li>Rename the backup table to replace the original <strong>INTERESTS</strong> table.</li>
    </ul>
    <h2>Rollback Steps</h2>
    <p>After executing the migration script, verify that the changes have been applied successfully by querying the tables.</p>
    <p>Run the rollback script using the following command:</p>
    <p><b>psql -d assignment1 -f db_rollback.sql</b></p> 
    <h3>Restore the Original Interests Data</h3>
    <p>If issues arise, restore the original interests data:</p>
    <ul>
        <li>Create a temporary table to hold interests in the original format.</li>
        <li>Copy interests from the changed table into the temporary one.</li>
        <li>Delete the changed table.</li>
        <li>Rename the temporary table to replace the original one.</li>
    </ul>
    <h3>Rollback Changes to Students Table</h3>
    <p>If needed, undo changes to the <strong>STUDENTS</strong> table:</p>
    <ul>
        <li>Undo any column renaming or data type adjustments to restore the table to its original state.</li>
    </ul>

</body>
</html>
