# -----------------------------------------------------------------------
# J3_SERVICE_CATEGORY_BAG
# -----------------------------------------------------------------------
drop table if exists J3_SERVICE_CATEGORY_BAG;

CREATE TABLE J3_SERVICE_CATEGORY_BAG
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));
    
# -----------------------------------------------------------------------
# J3_SERVICE_PROJECTION
# -----------------------------------------------------------------------
drop table if exists J3_SERVICE_PROJECTION;

CREATE TABLE J3_SERVICE_PROJECTION
(
    BUSINESS_KEY VARCHAR(510) NOT NULL,
    SERVICE_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(BUSINESS_KEY,SERVICE_KEY));
    
# -----------------------------------------------------------------------
# J3_SERVICE_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_SERVICE_DESCR;

CREATE TABLE J3_SERVICE_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));

# -----------------------------------------------------------------------
# J3_SERVICE_NAME
# -----------------------------------------------------------------------
drop table if exists J3_SERVICE_NAME;

CREATE TABLE J3_SERVICE_NAME
(
    ID DECIMAL(19) NOT NULL,
    LANG_CODE VARCHAR(10),
    NAME VARCHAR(510) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BUSINESS_SERVICE
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_SERVICE;

CREATE TABLE J3_BUSINESS_SERVICE
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    BUSINESS_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ENTITY_KEY));        