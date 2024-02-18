[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

<h1>Database Migration and Rollback</h1>
<h2>Migration Steps<h2>
<h3>Rename Columns and Change Data Types:<h3>
Rename the column ST_ID to STUDENT_ID in the STUDENTS table.
Change the data type of columns ST_NAME and ST_LAST to accommodate longer names.
Rename the column INTEREST to INTERESTS in the INTERESTS table.
<h3>Backing Up Data and Modifying Table Structure:<h3>
Create a backup table called INTERESTS_BACKUP to store interests for each student.
Copy interests from the original INTERESTS table into the backup table.
Drop the original INTERESTS table.
Rename the backup table to replace the original INTERESTS table.

<h2>Rollback Steps<h2>
<h3>Restore the original Interests data:<h3>
Create a temporary table to hold interests in the original format.
Copy interests from the modified table structure into the temporary table.
Drop the modified table.
Rename the temporary table to replace the original table.
<h3>Rollback Changes to Students Table:<h3>
Undo column renaming and data type changes in the STUDENTS table to revert to the original structure.

