SELECT
    *
FROM
    boardt
ORDER BY
    b_id;

DELETE FROM boardt
WHERE
    b_id = 14;

ROLLBACK;