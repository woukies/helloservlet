SELECT
    *
FROM
    boardt
ORDER BY
    b_id DESC;

ALTER TABLE boardt ADD (
    b_rfname VARCHAR2(100)
);

UPDATE boardt
SET
    b_rfname = b_fname;

COMMIT;