CREATE TABLE STUDENTS (
    ST_ID SERIAL PRIMARY KEY,
    ST_NAME VARCHAR(20),
    ST_LAST VARCHAR(20)
);

INSERT INTO STUDENTS (ST_NAME, ST_LAST) VALUES 
    ('Konul', 'Gurbanova'),
    ('Shahnur', 'Isgandarli'),
    ('Natavan', 'Mammadova');

SELECT*FROM STUDENTS;