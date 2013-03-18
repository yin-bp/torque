
# -----------------------------------------------------------------------
# TD_APP_BOM
# -----------------------------------------------------------------------
drop table if exists TD_APP_BOM;

CREATE TABLE TD_APP_BOM
(
    ID VARCHAR(100) NOT NULL,
    BM VARCHAR(10) NOT NULL,
    APP_NAME_EN VARCHAR(100),
    APP_NAME VARCHAR(100) NOT NULL,
    APPLY_DOMAIN VARCHAR(100),
    DESCRIPTION VARCHAR(500),
    SOFT_LEVEL DECIMAL(22),
    SUPPLIER VARCHAR(100),
    START_YEAR VARCHAR(20),
    STATE DECIMAL(22),
    RD_TYPE DECIMAL(22),
    VERSION_NO VARCHAR(1000),
    DOMAIN_URL VARCHAR(500),
    STRUCT_MODE VARCHAR(100),
    SOFT_LANGUAGE VARCHAR(100),
    DEVELOP_TOOL VARCHAR(100),
    DB_TYPE VARCHAR(100),
    DEPARTMENT_DEVELOP VARCHAR(100),
    PRODUCT_MANAGER VARCHAR(100),
    DEPARTMENT_MAINTAIN VARCHAR(100),
    SYS_MANAGER VARCHAR(100),
    PLAN_TYPE DECIMAL(22),
    EVOLVE_STRATEGY VARCHAR(200),
    EVOLVE_PLAN VARCHAR(200),
    EVOLVE_DEPART VARCHAR(100),
    MANAGE_SCOPE DECIMAL(22),
    MAIN_DESCRIPTION VARCHAR(500),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# TD_PORTAL_APPINFO
# -----------------------------------------------------------------------
drop table if exists TD_PORTAL_APPINFO;

CREATE TABLE TD_PORTAL_APPINFO
(
    APPID DECIMAL(22) NOT NULL,
    APPNAME VARCHAR(50) NOT NULL,
    APPNAMEEN VARCHAR(50),
    STATE DECIMAL,
    WSURL VARCHAR(500),
    PRIMARY KEY(APPID));


# -----------------------------------------------------------------------
# TD_PORTAL_P_MONITOR
# -----------------------------------------------------------------------
drop table if exists TD_PORTAL_P_MONITOR;

CREATE TABLE TD_PORTAL_P_MONITOR
(
    ID VARCHAR(50) NOT NULL,
    APPID DECIMAL(22),
    USETIME DECIMAL(22),
    MONITORTIME TIMESTAMP,
    PRIMARY KEY(ID));

