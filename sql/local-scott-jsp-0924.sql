SELECT
    *
FROM
    boardt
ORDER BY
    b_id;

ALTER TABLE boardt ADD (
    b_date DATE
);

ALTER TABLE boardt ADD (
    b_hit NUMBER(5) DEFAULT 0
);

ALTER TABLE boardt ADD (
    b_pwd varchar2(12)
);
 
DESC boardt;

COMMIT;