CREATE TABLE INTERESTS (
    STUDENT_ID INTEGER,
    INTEREST VARCHAR(20)
);

INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES
    (1, 'Tennis'),
    (1, 'Literature'),
    (2, 'Math'),
    (2, 'Tennis'),
    (3, 'Math'),
    (3, 'Music'),
    (2, 'Football'),
    (1, 'Chemistry'),
    (3, 'Chess');

SELECT * FROM INTERESTS;