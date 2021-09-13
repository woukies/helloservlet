CREATE TABLE membert (
    mem_uid     VARCHAR2(15) PRIMARY KEY,
    mem_pwd     VARCHAR2(15) NOT NULL,
    mem_name    VARCHAR2(20) NOT NULL,
    mem_email   VARCHAR2(50),
    mem_regdate DATE,
    mem_address VARCHAR2(100)
);

drop table membert;