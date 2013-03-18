
-----------------------------------------------------------------------------
-- TABLEINFO
-----------------------------------------------------------------------------
DROP TABLE TABLEINFO CASCADE CONSTRAINTS;

CREATE TABLE TABLEINFO
(
    TABLE_NAME VARCHAR2(255) NOT NULL,
    TABLE_ID_NAME VARCHAR2(255),
    TABLE_ID_INCREMENT NUMBER(5) default 1,
    TABLE_ID_VALUE NUMBER(20) default 0,
    TABLE_ID_GENERATOR VARCHAR2(255),
    TABLE_ID_TYPE VARCHAR2(255),
    TABLE_ID_PREFIX VARCHAR2(255)
);

ALTER TABLE TABLEINFO
    ADD CONSTRAINT TABLEINFO_PK
PRIMARY KEY (TABLE_NAME);







