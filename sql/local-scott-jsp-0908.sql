CREATE TABLE member2 (
    id    VARCHAR2(20) PRIMARY KEY,
    pw    VARCHAR2(20),
    name  VARCHAR2(20),
    class NUMBER(2),
    tel   VARCHAR2(20)
);

INSERT INTO member2 VALUES (
    'tyBird',
    'ab11',
    '김태은',
    1,
    '010-293-4874'
);

INSERT INTO member2 VALUES (
    'yjWood',
    'abcd',
    '이은정',
    2,
    '010-923-1245'
);

INSERT INTO member2 VALUES (
    'jinBear',
    '3333',
    '조진이',
    2,
    '010-2022-7244'
);

SELECT
    *
FROM
    member2;

COMMIT;

DELETE FROM member2
WHERE
    id = 'cookie';