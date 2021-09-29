SELECT
    *
FROM
    boardt
ORDER BY
    b_ref DESC,
    b_step ASC;

SELECT
    *
FROM
    boardt
WHERE
        b_ref = 26
    AND b_step >= 2;

ALTER TABLE boardt ADD (
    b_ip VARCHAR2(15) DEFAULT '0.0.0.0'
);

ALTER TABLE boardt ADD (
    b_ref   NUMBER(5),
    b_step  NUMBER(5) DEFAULT 0,
    b_level NUMBER(5) DEFAULT 0
);

UPDATE boardt
SET
    b_ref = b_id;

COMMIT;