[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Migration and Rollback</title>
</head>
<body>

<h1>Database Migration and Rollback</h1>

<h2>Migration Steps</h2>

<h3>Rename Columns and Change Data Types:</h3>
<ul>
    <li>Rename the column <strong>ST_ID</strong> to <strong>STUDENT_ID</strong> in the <strong>STUDENTS</strong> table.</li>
    <li>Change the data type of columns <strong>ST_NAME</strong> and <strong>ST_LAST</strong> to accommodate longer names.</li>
    <li>Rename the column <strong>INTEREST</strong> to <strong>INTERESTS</strong> in the <strong>INTERESTS</strong> table.</li>
</ul>

<h3>Backing Up Data and Modifying Table Structure:</h3>
<ul>
    <li>Create a backup table called <strong>INTERESTS_BACKUP</strong> to store interests for each student.</li>
    <li>Copy interests from the original <strong>INTERESTS</strong> table into the backup table.</li>
    <li>Drop the original <strong>INTERESTS</strong> table.</li>
    <li>Rename the backup table to replace the original <strong>INTERESTS</strong> table.</li>
</ul>

<h2>Rollback Steps</h2>

<h3>Restore the Original Interests Data:</h3>
<ul>
    <li>Create a temporary table to hold interests in the original format.</li>
    <li>Copy interests from the modified table structure into the temporary table.</li>
    <li>Drop the modified table.</li>
    <li>Rename the temporary table to replace the original table.</li>
</ul>

<h3>Rollback Changes to Students Table:</h3>
<ul>
    <li>Undo column renaming and data type changes in the <strong>STUDENTS</strong> table to revert to the original structure.</li>
</ul>

</body>
</html>