SELECT
    *
FROM
    (
        SELECT
            ROW_NUMBER()
            OVER(
                ORDER BY
                    b_ref DESC, b_step ASC
            ) "B_ORDER",
            b.*
        FROM
            boardt b
    )
WHERE
    b_order BETWEEN 11 AND 20;

SELECT
    *
FROM
    boardt;

SELECT
    COUNT(*)
FROM
    boardt;