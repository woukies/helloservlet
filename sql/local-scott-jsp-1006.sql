SELECT
    *
FROM
    boardt
ORDER BY
    b_id DESC;

ALTER TABLE boardt ADD (
    b_fname VARCHAR2(100),
    b_fsize NUMBER(10)
);

DELETE boardt
WHERE
    b_id = 43;

COMMIT;