[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <p>Before performing migration, ensure that the required tables are set up correctly. Execute the following SQL scripts in the specified order:</p>
    <p>This script sets up the <code>STUDENTS</code> table.</p>
    <p><b>psql -d assignment1 -f students_table.sql</b></p>

    <p>This script sets up the <code>INTERESTS</code> table.</p>
    <p><b>psql -d assignment1 -f students_table.sql</b></p>

    <h1>Database Migration and Rollback</h1>

    <h2>Migration Steps</h2>
    <p>Once the tables are set up, proceed with the migration process using the <code>db_migration.sql</code> script:</p>
    <p>Run the migration script using the following command:</p>
    <p><b>psql -d assignment1 -f db_migration.sql</b></p>
    <h3>Rename Columns and Change Data Types:</h3>
    <p>
        During migration, we update column names and adjust how data is stored to match new needs.
    </p>
    <ul>
        <li>Rename the column <strong>ST_ID</strong> to <strong>STUDENT_ID</strong> in the <strong>STUDENTS</strong> table for clarity.</li>
        <li>Change how long names are stored for <strong>ST_NAME</strong> and <strong>ST_LAST</strong> columns to fit longer names.</li>
        <li>Rename <strong>INTEREST</strong> to <strong>INTERESTS</strong> in the <strong>INTERESTS</strong> table for clarity.</li>
    </ul>

    <h3>Backing Up Data and Modifying Table Structure:</h3>
    <p>
        Before making big changes, we make sure to save existing data safely and adjust how tables are set up.
    </p>
    <ul>
        <li>Create a backup table called <strong>INTERESTS_BACKUP</strong> to save interests for each student.</li>
        <li>Copy interests from the original <strong>INTERESTS</strong> table into the backup table.</li>
        <li>Remove the original <strong>INTERESTS</strong> table to prepare for changes.</li>
        <li>Rename the backup table to replace the original <strong>INTERESTS</strong> table.</li>
    </ul>

    <h2>Rollback Steps</h2>
    <p>After executing the migration script, verify that the changes have been applied successfully by querying the tables.</p>
    <p>Run the rollback script using the following command:</p>
    <p><b>psql -d assignment1 -f db_rollback.sql</b></p>
    <h3>Restore the Original Interests Data:</h3>
    <p>
        If things don't go as planned, we need a way to put everything back how it was.
    </p>
    <ul>
        <li>Create a temporary table to hold interests in the original way.</li>
        <li>Copy interests from the changed table into the temporary one.</li>
        <li>Delete the changed table.</li>
        <li>Rename the temporary table to replace the original one.</li>
    </ul>

    <h3>Rollback Changes to Students Table:</h3>
    <p>
        Sometimes we also need to undo changes to the <strong>STUDENTS</strong> table.
    </p>
    <ul>
        <li>Undo any column renaming or data type changes to the <strong>STUDENTS</strong> table to put it back how it was.</li>
    </ul>
</body>
</html>
