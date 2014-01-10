-----------------------------------------------------------------------------
-- business_params
-----------------------------------------------------------------------------
drop table business_params;

CREATE TABLE business_params
(
    NODE_ID VARCHAR(368) NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    VALUE VARCHAR(100),
    PARAM_TYPE VARCHAR(368) NOT NULL,
    ISBIGDATA BIGINT default 0,
    BIGDATA BLOB,
    RN BIGINT NOT NULL,
    PRIMARY KEY(NODE_ID,NAME,PARAM_TYPE,RN));

-----------------------------------------------------------------------------
-- cim_collect_strategy
-----------------------------------------------------------------------------
drop table cim_collect_strategy;

CREATE TABLE cim_collect_strategy
(
    ID BIGINT NOT NULL,
    BUSINESS_ID BIGINT,
    BUSINESS_TYPE VARCHAR(200),
    FREQUENCYF_D INTEGER,
    FREQUENCYF_H INTEGER,
    FREQUENCYF_M INTEGER,
    FREQUENCYF_S INTEGER,
    FREQUENCYF_MS INTEGER,
    ACTIVE_FLAG INTEGER,
    GATHER_TYPE INTEGER,
    CRONTAB VARCHAR(100),
    STARTTIME TIMESTAMP default '0000-00-00 00:00:00' NOT NULL,
    ENDTIME TIMESTAMP default '0000-00-00 00:00:00' NOT NULL,
    JOBACTION VARCHAR(100),
    EXECUTE_MODE VARCHAR(20) default 'server',
    SYNED BIGINT default 0,
    DELETED BIGINT default 0,
    STATE_ INTEGER,
    PRIMARY KEY(ID));

-----------------------------------------------------------------------------
-- cim_datacache
-----------------------------------------------------------------------------
drop table cim_datacache;

CREATE TABLE cim_datacache
(
    CACHEID VARCHAR(200) NOT NULL,
    PLUGINID VARCHAR(200),
    CATEGORY VARCHAR(200),
    DATA_CACHE BLOB,
    PRIMARY KEY(CACHEID));

-----------------------------------------------------------------------------
-- cim_reg_lock
-----------------------------------------------------------------------------
drop table cim_reg_lock;

CREATE TABLE cim_reg_lock
(
    REGISTED BIGINT,
    SERVER_ID VARCHAR(380) NOT NULL,
    AGENT_ID VARCHAR(380) NOT NULL,
    PRIMARY KEY(SERVER_ID,AGENT_ID));

-----------------------------------------------------------------------------
-- tableinfo
-----------------------------------------------------------------------------
drop table tableinfo;

CREATE TABLE tableinfo
(
    TABLE_NAME VARCHAR(255) NOT NULL,
    TABLE_ID_NAME VARCHAR(255),
    TABLE_ID_INCREMENT INTEGER default 1,
    TABLE_ID_VALUE INTEGER default 0,
    TABLE_ID_GENERATOR VARCHAR(255),
    TABLE_ID_TYPE VARCHAR(255),
    TABLE_ID_PREFIX VARCHAR(255),
    PRIMARY KEY(TABLE_NAME));

