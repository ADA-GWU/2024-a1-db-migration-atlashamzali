[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>Database Migration and Rollback</h1>

<h2>Migration Steps</h2>

<h3>Rename Columns and Change Data Types:</h3>
<p>
    During the migration process, it's important to update column names and data types to ensure consistency and accommodate any changes in requirements.
</p>
<ul>
    <li>Rename the column <strong>ST_ID</strong> to <strong>STUDENT_ID</strong> in the <strong>STUDENTS</strong> table to provide more descriptive identifiers for student records.</li>
    <li>Change the data type of columns <strong>ST_NAME</strong> and <strong>ST_LAST</strong> to accommodate longer names, ensuring that the database can handle a wider range of student names without truncating them.</li>
    <li>Rename the column <strong>INTEREST</strong> to <strong>INTERESTS</strong> in the <strong>INTERESTS</strong> table for consistency and clarity in the database schema.</li>
</ul>

<h3>Backing Up Data and Modifying Table Structure:</h3>
<p>
    Before making significant changes to the database structure, it's crucial to back up existing data to prevent loss and ensure the ability to revert if necessary.
</p>
<ul>
    <li>Create a backup table called <strong>INTERESTS_BACKUP</strong> to store interests for each student, providing a safety net for the original data.</li>
    <li>Copy interests from the original <strong>INTERESTS</strong> table into the backup table, preserving the data in its current format.</li>
    <li>Drop the original <strong>INTERESTS</strong> table to make way for the modified structure.</li>
    <li>Rename the backup table to replace the original <strong>INTERESTS</strong> table, ensuring that the data remains accessible under the new structure.</li>
</ul>

<h2>Rollback Steps</h2>

<h3>Restore the Original Interests Data:</h3>
<p>
    In the event that the migration process encounters unexpected issues or errors, it's important to have a rollback plan in place to revert to the original database state.
</p>
<ul>
    <li>Create a temporary table to hold interests in the original format, providing a temporary storage solution for the original data.</li>
    <li>Copy interests from the modified table structure into the temporary table, restoring the original data integrity.</li>
    <li>Drop the modified table to remove the altered structure from the database.</li>
    <li>Rename the temporary table to replace the original table, effectively restoring the original data and structure.</li>
</ul>

<h3>Rollback Changes to Students Table:</h3>
<p>
    In addition to restoring interests data, it may be necessary to roll back changes made to the <strong>STUDENTS</strong> table during the migration process.
</p>
<ul>
    <li>Undo column renaming and data type changes in the <strong>STUDENTS</strong> table to revert to the original structure, ensuring consistency with the original database schema.</li>
</ul>

</body>
</html>