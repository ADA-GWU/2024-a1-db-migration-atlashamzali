-- Create a temporary table to hold interests in the original format
CREATE TABLE FIRST_INTERESTS_TABLE (
    STUDENT_ID INTEGER REFERENCES STUDENTS(STUDENT_ID),
    INTEREST VARCHAR
);

-- Insert data into the temporary table by unpacking interests from the array
INSERT INTO FIRST_INTERESTS_TABLE (STUDENT_ID, INTEREST)
SELECT STUDENT_ID, UNNEST(interests)
FROM INTERESTS;

-- Drop the migrated INTERESTS table
DROP TABLE INTERESTS;

-- Display the content of the temporary table to ensure data integrity
SELECT * FROM FIRST_INTERESTS_TABLE;

-- Rename the temporary table to replace the original INTERESTS table
ALTER TABLE FIRST_INTERESTS_TABLE RENAME TO INTERESTS;

-- Display the content of the new INTERESTS table
SELECT * FROM INTERESTS;

-- Rollback the changes made to the STUDENTS table
-- Rename the column STUDENT_ID back to ST_ID
ALTER TABLE STUDENTS RENAME COLUMN STUDENT_ID TO ST_ID;

-- Change the length of columns ST_NAME and ST_LAST back to 20
ALTER TABLE STUDENTS ALTER COLUMN ST_NAME TYPE VARCHAR(20);
ALTER TABLE STUDENTS ALTER COLUMN ST_LAST TYPE VARCHAR(20);


SELECT * FROM STUDENTS;



