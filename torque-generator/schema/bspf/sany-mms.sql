
# -----------------------------------------------------------------------
# MATERIEL_TEST
# -----------------------------------------------------------------------
drop table if exists MATERIEL_TEST;

CREATE TABLE MATERIEL_TEST
(
    ID VARCHAR(100) NOT NULL,
    APPLY_NAME VARCHAR(100),
    APPLY_TIME TIMESTAMP,
    MATERIEL_NAME VARCHAR(100),
    MATERIEL_NUM DECIMAL,
    TITLE VARCHAR(100),
    PROCESS_INSTANCE_ID VARCHAR(100),
    PRIMARY KEY(ID));

