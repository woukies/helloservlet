CREATE TABLE boardt (
    b_id      NUMBER(5) PRIMARY KEY,
    b_name    VARCHAR2(20),
    b_email   VARCHAR2(50),
    b_title   VARCHAR2(80),
    b_content VARCHAR2(3000)
);

SELECT
    *
FROM
    boardt;

SELECT
    MAX(b_id)
FROM
    boardt;

DESC boardt;

DELETE FROM boardt
WHERE
    b_id = 2;

COMMIT;

ROLLBACK;

DROP TABLE boardt;