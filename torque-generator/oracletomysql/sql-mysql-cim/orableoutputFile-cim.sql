ALTER TABLE GROUP_USERS 
        DROP FOREIGN KEY GROUP_USERS_FK_1;
    
ALTER TABLE GROUP_USERS 
        DROP FOREIGN KEY GROUP_USERS_FK_2;
    
ALTER TABLE MQ_BROKER 
        DROP FOREIGN KEY MQ_BROKER_FK_1;
    
ALTER TABLE MQ_BROKER 
        DROP FOREIGN KEY MQ_BROKER_FK_2;
    
ALTER TABLE MQ_PROPERTIES 
        DROP FOREIGN KEY MQ_PROPERTIES_FK_1;
    
ALTER TABLE MQ_REAL_NODES 
        DROP FOREIGN KEY MQ_REAL_NODES_FK_1;
    
ALTER TABLE MQ_ROUTENODE 
        DROP FOREIGN KEY MQ_ROUTENODE_FK_1;
    
ALTER TABLE TD_REMINDINFO 
        DROP FOREIGN KEY TD_REMINDINFO_FK_1;
    
ALTER TABLE TD_SD_NOTEPAPER 
        DROP FOREIGN KEY TD_SD_NOTEPAPER_FK_1;
    
ALTER TABLE TD_SD_NOTIC 
        DROP FOREIGN KEY TD_SD_NOTIC_FK_1;
    
ALTER TABLE TD_SD_NOTIC 
        DROP FOREIGN KEY TD_SD_NOTIC_FK_2;
    
ALTER TABLE TD_SD_RATIFYADVICE 
        DROP FOREIGN KEY TD_SD_RATIFYADVICE_FK_1;
    
ALTER TABLE TD_SD_RATIFYADVICE 
        DROP FOREIGN KEY TD_SD_RATIFYADVICE_FK_2;
    
ALTER TABLE TD_SD_REMIND 
        DROP FOREIGN KEY TD_SD_REMIND_FK_1;
    
ALTER TABLE TD_SD_SHARE 
        DROP FOREIGN KEY TD_SD_SHARE_FK_1;
    
ALTER TABLE TD_SD_SHARE 
        DROP FOREIGN KEY TD_SD_SHARE_FK_2;
    
ALTER TABLE TD_SM_DICTDATA 
        DROP FOREIGN KEY TD_SM_DICTDATA_FK_1;
    
ALTER TABLE TD_SM_DICTKEYWORDS 
        DROP FOREIGN KEY TD_SM_DICTKEYWORDS_FK_1;
    
ALTER TABLE TD_SM_GROUPROLE 
        DROP FOREIGN KEY TD_SM_GROUPROLE_FK_1;
    
ALTER TABLE TD_SM_LOGDETAIL 
        DROP FOREIGN KEY TD_SM_LOGDETAIL_FK_1;
    
ALTER TABLE TD_SM_LOGDETAIL_HIS 
        DROP FOREIGN KEY TD_SM_LOGDETAIL_HIS_FK_1;
    
ALTER TABLE TD_SM_ORGJOB 
        DROP FOREIGN KEY TD_SM_ORGJOB_FK_1;
    
ALTER TABLE TD_SM_ORGJOBROLE 
        DROP FOREIGN KEY TD_SM_ORGJOBROLE_FK_1;
    
ALTER TABLE TD_SM_ORGJOBROLE 
        DROP FOREIGN KEY TD_SM_ORGJOBROLE_FK_2;
    
ALTER TABLE TD_SM_ORGJOBROLE 
        DROP FOREIGN KEY TD_SM_ORGJOBROLE_FK_3;
    
ALTER TABLE TD_SM_ORGMANAGER 
        DROP FOREIGN KEY TD_SM_ORGMANAGER_FK_1;
    
ALTER TABLE TD_SM_ORGMANAGER 
        DROP FOREIGN KEY TD_SM_ORGMANAGER_FK_2;
    
ALTER TABLE TD_SM_ORGROLE 
        DROP FOREIGN KEY TD_SM_ORGROLE_FK_1;
    
ALTER TABLE TD_SM_ORGUSER 
        DROP FOREIGN KEY TD_SM_ORGUSER_FK_1;
    
ALTER TABLE TD_SM_ORGUSER 
        DROP FOREIGN KEY TD_SM_ORGUSER_FK_2;
    
ALTER TABLE TD_SM_TAXCODE_ORGANIZATION 
        DROP FOREIGN KEY TD_SM_TAXCODE_ORGANIZATION_FK_1;
    
ALTER TABLE TD_SM_TAXCODE_ORGANIZATION 
        DROP FOREIGN KEY TD_SM_TAXCODE_ORGANIZATION_FK_2;
    
ALTER TABLE TD_SM_USERJOBORG 
        DROP FOREIGN KEY TD_SM_USERJOBORG_FK_1;
    
ALTER TABLE TD_SM_USERROLE 
        DROP FOREIGN KEY TD_SM_USERROLE_FK_1;
    
ALTER TABLE TD_SP_HOLIDAY 
        DROP FOREIGN KEY TD_SP_HOLIDAY_FK_1;
    
ALTER TABLE MQ_NODE 
        DROP FOREIGN KEY MQ_NODE_FK_1;
    
ALTER TABLE TD_SD_SCHEDULAR 
        DROP FOREIGN KEY TD_SD_SCHEDULAR_FK_1;
    
ALTER TABLE TD_SD_SCHEDULAR 
        DROP FOREIGN KEY TD_SD_SCHEDULAR_FK_2;
    
ALTER TABLE TD_SM_DICTTYPE 
        DROP FOREIGN KEY TD_SM_DICTTYPE_FK_1;
    
ALTER TABLE MQ_NODE_FACTORY 
        DROP FOREIGN KEY MQ_NODE_FACTORY_FK_1;
    
ALTER TABLE MQ_CLIENT_CA 
        DROP FOREIGN KEY MQ_CLIENT_CA_FK_1;
    
ALTER TABLE MQ_CLIENT_CA 
        DROP FOREIGN KEY MQ_CLIENT_CA_FK_2;
    

# -----------------------------------------------------------------------
# GROUP_USERS
# -----------------------------------------------------------------------
drop table if exists GROUP_USERS;

CREATE TABLE GROUP_USERS
(
    USER_ID DECIMAL(10) NOT NULL,
    GROUP_ID DECIMAL(10) NOT NULL,
    PRIMARY KEY(USER_ID,GROUP_ID));


# -----------------------------------------------------------------------
# MQ_BROKER
# -----------------------------------------------------------------------
drop table if exists MQ_BROKER;

CREATE TABLE MQ_BROKER
(
    CA_DATE DATETIME,
    BROKER_ID DECIMAL(10) NOT NULL,
    BROKER_NAME VARCHAR(32),
    IS_PERSISTENT DECIMAL(1) default 0,
    IS_USEMIRRQ DECIMAL(1) default 1,
    MEM_MAXLIMIT VARCHAR(50) default '200 mb',
    STORE_LIMITE VARCHAR(50) default '500 mb',
    STORE_NAME VARCHAR(50),
    TEMP_LIMITE VARCHAR(250) default '200 mb',
    SERVER_IP VARCHAR(100),
    JMX_PORT VARCHAR(10) default '1099',
    JMX_CREATECON DECIMAL(1) default 1,
    JMX_CREMBSERVER DECIMAL(1) default 0,
    USE_CLUSTER DECIMAL(1) default 0,
    NC_NAME VARCHAR(32) default 'default_nc',
    NC_URI VARCHAR(4000),
    DATADIRECTORY VARCHAR(128),
    PA_DATASOURCE VARCHAR(255),
    USE_SSL DECIMAL(1) default 0,
    SSL_KS DECIMAL(10),
    SSL_KSPASSWORD VARCHAR(64),
    SSL_TS DECIMAL(10),
    SSL_DIRECTORY VARCHAR(200),
    SSL_TSPASSWORD VARCHAR(64),
    IS_USEJMX DECIMAL(1) default 1,
    USE_AUTH DECIMAL(1) default 0,
    NEEDSUPDATE DECIMAL(1) default 1,
    USE_PERMISSION DECIMAL(1) default 0,
    USE_LOG DECIMAL(1) default 0,
    PERSISTENT_TYPE DECIMAL(1) default 0,
    MAXFILELENGTH VARCHAR(50) default '20m',
    SYNCONWRITE DECIMAL(1) default 0,
    CONDUITSUBSCRIPTIONS DECIMAL(1) default 0,
    PRIMARY KEY(BROKER_ID));


# -----------------------------------------------------------------------
# MQ_PROPERTIES
# -----------------------------------------------------------------------
drop table if exists MQ_PROPERTIES;

CREATE TABLE MQ_PROPERTIES
(
    PRO_ID DECIMAL(10) NOT NULL,
    TASK_ID DECIMAL(10),
    PRO_NAME VARCHAR(100) NOT NULL,
    PRO_TYPE VARCHAR(20) default 'string',
    STRING_VALUE LONGTEXT,
    VALUE_NUMBER DECIMAL(22),
    VALUE_OBJECT LONGBLOB,
    VALUE_BOOLEAN DECIMAL(1) default 0,
    PRIMARY KEY(PRO_ID));


# -----------------------------------------------------------------------
# MQ_REAL_NODES
# -----------------------------------------------------------------------
drop table if exists MQ_REAL_NODES;

CREATE TABLE MQ_REAL_NODES
(
    VIRTUAL_NODEID DECIMAL(10),
    REAL_NODE_ID DECIMAL(10) NOT NULL,
    DESTINATION_TYPE DECIMAL(1) default 0,
    DESTINATION_NAME VARCHAR(100) NOT NULL,
    PRIMARY KEY(REAL_NODE_ID));


# -----------------------------------------------------------------------
# MQ_ROUTENODE
# -----------------------------------------------------------------------
drop table if exists MQ_ROUTENODE;

CREATE TABLE MQ_ROUTENODE
(
    NODE_ID DECIMAL(10),
    OWNER DECIMAL(10),
    OWNER_TYPE VARCHAR(100));


# -----------------------------------------------------------------------
# TD_REMINDINFO
# -----------------------------------------------------------------------
drop table if exists TD_REMINDINFO;

CREATE TABLE TD_REMINDINFO
(
    ID DECIMAL(22) NOT NULL,
    TIME DATETIME,
    TYPE VARCHAR(255),
    SOURCE VARCHAR(255),
    CONTENT VARCHAR(1000),
    USER_ID DECIMAL(22),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# TD_SD_NOTEPAPER
# -----------------------------------------------------------------------
drop table if exists TD_SD_NOTEPAPER;

CREATE TABLE TD_SD_NOTEPAPER
(
    NOTEPAPER_ID DECIMAL(22) NOT NULL,
    TIME DATETIME,
    CONTENT VARCHAR(1024),
    USER_ID DECIMAL(22),
    PRIMARY KEY(NOTEPAPER_ID));


# -----------------------------------------------------------------------
# TD_SD_NOTIC
# -----------------------------------------------------------------------
drop table if exists TD_SD_NOTIC;

CREATE TABLE TD_SD_NOTIC
(
    CONTENT VARCHAR(1000),
    BEGINTIME DATETIME,
    ENDTIME DATETIME,
    PLACE VARCHAR(255),
    EXECUTOR_ID DECIMAL(22),
    NOTIC_ID DECIMAL(22) NOT NULL,
    STATUS DECIMAL(22) default 0,
    TOPIC VARCHAR(255),
    SOURCE VARCHAR(255),
    NOTIC_PLANNER_ID DECIMAL(22),
    PRIMARY KEY(NOTIC_ID));


# -----------------------------------------------------------------------
# TD_SD_RATIFYADVICE
# -----------------------------------------------------------------------
drop table if exists TD_SD_RATIFYADVICE;

CREATE TABLE TD_SD_RATIFYADVICE
(
    SCHEDULAR_ID DECIMAL(22),
    RATIFIER_ID DECIMAL(22),
    ADVICE VARCHAR(1000),
    RATIFYADVICE_ID DECIMAL(22) NOT NULL,
    PRIMARY KEY(RATIFYADVICE_ID));


# -----------------------------------------------------------------------
# TD_SD_REMIND
# -----------------------------------------------------------------------
drop table if exists TD_SD_REMIND;

CREATE TABLE TD_SD_REMIND
(
    REMIND_ID DECIMAL(22) NOT NULL,
    ISSYSTEM DECIMAL(22),
    ISEMAIL DECIMAL(22),
    ISMESSAGE DECIMAL(22),
    SCHEDULAR_ID DECIMAL(22),
    REMIND_BEGIN_TIME DATETIME,
    REMIND_END_TIME DATETIME,
    INTERVAL_TIME DECIMAL(22),
    INTERVALTYPE DECIMAL(22),
    TRIGGERTYPE DECIMAL(22) default 0,
    CRON_TIME VARCHAR(255),
    PRIMARY KEY(REMIND_ID));


# -----------------------------------------------------------------------
# TD_SD_SHARE
# -----------------------------------------------------------------------
drop table if exists TD_SD_SHARE;

CREATE TABLE TD_SD_SHARE
(
    VIEWUSER_ID DECIMAL(22) NOT NULL,
    SCHEDULAR_ID DECIMAL(22) NOT NULL,
    PRIMARY KEY(VIEWUSER_ID,SCHEDULAR_ID));


# -----------------------------------------------------------------------
# TD_SM_DICTDATA
# -----------------------------------------------------------------------
drop table if exists TD_SM_DICTDATA;

CREATE TABLE TD_SM_DICTDATA
(
    DICTDATA_ID VARCHAR(50) NOT NULL,
    DICTTYPE_ID VARCHAR(50),
    DICTDATA_NAME VARCHAR(100),
    DICTDATA_VALUE VARCHAR(100),
    DICTDATA_ORDER DECIMAL(10) default 0,
    PRIMARY KEY(DICTDATA_ID));


# -----------------------------------------------------------------------
# TD_SM_DICTKEYWORDS
# -----------------------------------------------------------------------
drop table if exists TD_SM_DICTKEYWORDS;

CREATE TABLE TD_SM_DICTKEYWORDS
(
    KEYWORD_ID DECIMAL(10) NOT NULL,
    DICTTYPE_ID VARCHAR(50),
    FILED_NAME VARCHAR(50),
    JAVA_PROPERTY VARCHAR(50),
    PRIMARY KEY(KEYWORD_ID));


# -----------------------------------------------------------------------
# TD_SM_GROUPROLE
# -----------------------------------------------------------------------
drop table if exists TD_SM_GROUPROLE;

CREATE TABLE TD_SM_GROUPROLE
(
    GROUP_ID DECIMAL(22) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESOP_ORIGIN_USERID VARCHAR(50) default '1',
    PRIMARY KEY(GROUP_ID,ROLE_ID));


# -----------------------------------------------------------------------
# TD_SM_LOGDETAIL
# -----------------------------------------------------------------------
drop table if exists TD_SM_LOGDETAIL;

CREATE TABLE TD_SM_LOGDETAIL
(
    DETAIL_ID DECIMAL(10) NOT NULL,
    OPER_TABLE VARCHAR(50),
    LOG_ID DECIMAL(22),
    OP_KEY_ID VARCHAR(50),
    DETAIL_CONTENT LONGTEXT,
    OP_TYPE DECIMAL(1),
    PRIMARY KEY(DETAIL_ID));


# -----------------------------------------------------------------------
# TD_SM_LOGDETAIL_HIS
# -----------------------------------------------------------------------
drop table if exists TD_SM_LOGDETAIL_HIS;

CREATE TABLE TD_SM_LOGDETAIL_HIS
(
    DETAIL_ID DECIMAL(10) NOT NULL,
    OPER_TABLE VARCHAR(50),
    LOG_ID DECIMAL(22),
    OP_KEY_ID VARCHAR(50),
    DETAIL_CONTENT LONGTEXT,
    OP_TYPE DECIMAL(1),
    PRIMARY KEY(DETAIL_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGJOB
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGJOB;

CREATE TABLE TD_SM_ORGJOB
(
    ORG_ID VARCHAR(50) NOT NULL,
    JOB_ID VARCHAR(50) NOT NULL,
    JOB_SN DECIMAL(22),
    PRIMARY KEY(ORG_ID,JOB_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGJOBROLE
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGJOBROLE;

CREATE TABLE TD_SM_ORGJOBROLE
(
    ORG_ID VARCHAR(50) NOT NULL,
    JOB_ID VARCHAR(50) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESOP_ORIGIN_USERID VARCHAR(50) default '1',
    PRIMARY KEY(ORG_ID,JOB_ID,ROLE_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGMANAGER
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGMANAGER;

CREATE TABLE TD_SM_ORGMANAGER
(
    USER_ID DECIMAL(22) NOT NULL,
    ORG_ID VARCHAR(50) NOT NULL,
    PRIMARY KEY(USER_ID,ORG_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGROLE
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGROLE;

CREATE TABLE TD_SM_ORGROLE
(
    ORG_ID VARCHAR(50) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESOP_ORIGIN_USERID VARCHAR(50) default '1',
    PRIMARY KEY(ORG_ID,ROLE_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGUSER
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGUSER;

CREATE TABLE TD_SM_ORGUSER
(
    ORG_ID VARCHAR(50) NOT NULL,
    USER_ID DECIMAL(22) NOT NULL,
    PRIMARY KEY(USER_ID));


# -----------------------------------------------------------------------
# TD_SM_TAXCODE_ORGANIZATION
# -----------------------------------------------------------------------
drop table if exists TD_SM_TAXCODE_ORGANIZATION;

CREATE TABLE TD_SM_TAXCODE_ORGANIZATION
(
    ORG_ID VARCHAR(50) NOT NULL,
    DICTTYPE_ID VARCHAR(50) NOT NULL,
    DATA_VALUE VARCHAR(100) NOT NULL,
    OPCODE VARCHAR(10) NOT NULL,
    DATA_NAME VARCHAR(100),
    PRIMARY KEY(ORG_ID,DICTTYPE_ID,DATA_VALUE,OPCODE));


# -----------------------------------------------------------------------
# TD_SM_USERJOBORG
# -----------------------------------------------------------------------
drop table if exists TD_SM_USERJOBORG;

CREATE TABLE TD_SM_USERJOBORG
(
    USER_ID DECIMAL(22) NOT NULL,
    JOB_ID VARCHAR(50) NOT NULL,
    ORG_ID VARCHAR(50) NOT NULL,
    SAME_JOB_USER_SN DECIMAL(22),
    JOB_SN DECIMAL(22),
    JOB_STARTTIME DATETIME,
    JOB_FETTLE DECIMAL(22),
    PRIMARY KEY(USER_ID,JOB_ID,ORG_ID));


# -----------------------------------------------------------------------
# TD_SM_USERROLE
# -----------------------------------------------------------------------
drop table if exists TD_SM_USERROLE;

CREATE TABLE TD_SM_USERROLE
(
    USER_ID DECIMAL(22) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESOP_ORIGIN_USERID VARCHAR(50) default '1',
    PRIMARY KEY(USER_ID,ROLE_ID));


# -----------------------------------------------------------------------
# TD_SP_HOLIDAY
# -----------------------------------------------------------------------
drop table if exists TD_SP_HOLIDAY;

CREATE TABLE TD_SP_HOLIDAY
(
    HOLIDAY VARCHAR(10) NOT NULL,
    YHOLIDAY VARCHAR(4) NOT NULL,
    MHOLIDAY VARCHAR(2) NOT NULL,
    ORG_ID VARCHAR(50),
    PRIMARY KEY(HOLIDAY,YHOLIDAY,MHOLIDAY));


# -----------------------------------------------------------------------
# MQ_NODE
# -----------------------------------------------------------------------
drop table if exists MQ_NODE;

CREATE TABLE MQ_NODE
(
    NODE_ID DECIMAL(10) NOT NULL,
    NODE_FACTORY_ID DECIMAL(10),
    NODE_NAME VARCHAR(64),
    DEST_TYPE DECIMAL(1) default 0,
    DESTINATION VARCHAR(32),
    REMARK VARCHAR(256),
    ISVALIDATE DECIMAL(1) default 0,
    ISPERSISTENT DECIMAL(1) default 0,
    PRIORITY DECIMAL(2) default 1,
    EXPIRATION VARCHAR(100) default '0',
    PRIMARY KEY(NODE_ID));


# -----------------------------------------------------------------------
# TD_SD_SCHEDULAR
# -----------------------------------------------------------------------
drop table if exists TD_SD_SCHEDULAR;

CREATE TABLE TD_SD_SCHEDULAR
(
    SCHEDULAR_ID DECIMAL(22) NOT NULL,
    PLANNER_ID DECIMAL(22),
    EXECUTOR_ID DECIMAL(22),
    REQUEST_ID DECIMAL(22),
    TOPIC VARCHAR(255),
    PLACE VARCHAR(255),
    CONTENT VARCHAR(1000),
    BEGINTIME DATETIME,
    ENDTIME DATETIME,
    TYPE VARCHAR(255),
    ISPUBLICAFFAIR DECIMAL(22),
    ESSENTIALITY VARCHAR(255),
    ISHISTORY DECIMAL(22),
    ISLEISURE DECIMAL(22),
    STATUS DECIMAL(22),
    ISOPEN DECIMAL(22) default null,
    PARTNER VARCHAR(255),
    PRIMARY KEY(SCHEDULAR_ID));


# -----------------------------------------------------------------------
# TD_SM_DICTTYPE
# -----------------------------------------------------------------------
drop table if exists TD_SM_DICTTYPE;

CREATE TABLE TD_SM_DICTTYPE
(
    DATA_VALIDATE_FIELD VARCHAR(50),
    DATA_CREATE_ORGID_FIELD VARCHAR(50),
    DICTTYPE_TYPE DECIMAL(2),
    IS_TREE DECIMAL(1) default 0,
    DICTTYPE_ID VARCHAR(50) NOT NULL,
    USER_ID DECIMAL(22),
    DICTTYPE_NAME VARCHAR(100),
    DICTTYPE_DESC VARCHAR(100),
    DICTTYPE_PARENT VARCHAR(50),
    DATA_TABLE_NAME VARCHAR(50),
    DATA_NAME_FILED VARCHAR(50),
    DATA_VALUE_FIELD VARCHAR(50),
    DATA_ORDER_FIELD VARCHAR(50),
    DATA_TYPEID_FIELD VARCHAR(50),
    DATA_DBNAME VARCHAR(50),
    DATA_PARENTID_FIELD VARCHAR(50),
    DATA_NAME_CN VARCHAR(100) default '名称',
    DATA_VALUE_CN VARCHAR(100) default '真实值',
    KEY_GENERAL_TYPE DECIMAL(2),
    NAME_GENERAL_TYPE VARCHAR(100),
    KEY_GENERAL_INFO VARCHAR(100),
    NEEDCACHE DECIMAL(1) default 1,
    ENABLE_VALUE_MODIFY DECIMAL(1) default 0,
    PRIMARY KEY(DICTTYPE_ID));


# -----------------------------------------------------------------------
# MQ_NODE_FACTORY
# -----------------------------------------------------------------------
drop table if exists MQ_NODE_FACTORY;

CREATE TABLE MQ_NODE_FACTORY
(
    NODE_FACTORY_ID DECIMAL(10) NOT NULL,
    NODE_FACTORY_NAME VARCHAR(100),
    SERVER_URL VARCHAR(4000),
    USE_AUTH DECIMAL(1) default 0,
    USER_NAME VARCHAR(50),
    FACTORY_TYPE VARCHAR(50) default 'CMQ',
    USER_PASSWORD VARCHAR(50),
    CA_ID DECIMAL(10),
    USE_SSL DECIMAL(1) default 0,
    USE_FAILOVER DECIMAL(1) default 1,
    RECONNECTDELAY DECIMAL(22) default 10,
    MAXRECONNECTDELAY DECIMAL(22) default 30000,
    USEEXPONENTIALBACKOFF DECIMAL(1) default 1,
    BACKOFFMUTIPLER DECIMAL(10) default 2,
    MAXRECONNECTTIMES DECIMAL(4) default 5,
    RANDOMIZE DECIMAL(1) default 1,
    CON_COLLISIONAVOIDANCEPERCENT DECIMAL(4) default 15,
    CON_MAXIMUMREDELIVERIES DECIMAL(4) default 6,
    CON_INITIALREDELIVERYDELAY DECIMAL(22) default 1000,
    CON_USECOLLISIONAVOIDANCE DECIMAL(1) default 0,
    CON_USEEXPONENTIALBACKOFF DECIMAL(1) default 0,
    CON_BACKOFFMULTIPLIER DECIMAL(4) default 5,
    PRIMARY KEY(NODE_FACTORY_ID));


# -----------------------------------------------------------------------
# MQ_CLIENT_CA
# -----------------------------------------------------------------------
drop table if exists MQ_CLIENT_CA;

CREATE TABLE MQ_CLIENT_CA
(
    CA_ID DECIMAL(10) NOT NULL,
    CA_NAME VARCHAR(50),
    TS_FILE DECIMAL(10),
    KS_FILE DECIMAL(10),
    CA_DATE DATETIME,
    CA_DIRECTORY VARCHAR(200) default 'd:/keystore',
    CA_TSORIN_NAME VARCHAR(200),
    CA_KSORIN_NAME VARCHAR(200),
    TS_PASSWORD VARCHAR(50),
    KS_PASSWORD VARCHAR(50),
    NEEDSUPDATE DECIMAL(1) default 1,
    PRIMARY KEY(CA_ID));


# -----------------------------------------------------------------------
# AGENT_WORKLOAD
# -----------------------------------------------------------------------
drop table if exists AGENT_WORKLOAD;

CREATE TABLE AGENT_WORKLOAD
(
    AGENTID DECIMAL(19),
    BUSINESSID VARCHAR(200),
    BUSINESSNAME VARCHAR(254),
    TASKNAME VARCHAR(254),
    COMMITTIME DATETIME,
    RESULT VARCHAR(256),
    PERFORMER VARCHAR(32),
    NEXTPERFORMER VARCHAR(32),
    EXT1 DECIMAL(19),
    EXT2 VARCHAR(32),
    EXT3 VARCHAR(64));


# -----------------------------------------------------------------------
# ASSIGNMENT_AGENT
# -----------------------------------------------------------------------
drop table if exists ASSIGNMENT_AGENT;

CREATE TABLE ASSIGNMENT_AGENT
(
    ID DECIMAL(19),
    CLIENT VARCHAR(50),
    AGENT VARCHAR(50),
    STARTTIME DATETIME,
    ENDTIME DATETIME,
    REALENDTIME DATETIME,
    PROCDEFID VARCHAR(100));


# -----------------------------------------------------------------------
# ESB_PARAMS
# -----------------------------------------------------------------------
drop table if exists ESB_PARAMS;

CREATE TABLE ESB_PARAMS
(
    NODE_ID DECIMAL(10) NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    VALUE VARCHAR(100),
    PARAM_TYPE VARCHAR(200) NOT NULL,
    PRIMARY KEY(NODE_ID,NAME,PARAM_TYPE));


# -----------------------------------------------------------------------
# MQ_BIG_LOB
# -----------------------------------------------------------------------
drop table if exists MQ_BIG_LOB;

CREATE TABLE MQ_BIG_LOB
(
    LOB_ID DECIMAL(10) NOT NULL,
    LOB_CONTENT LONGBLOB,
    LOB_NAME VARCHAR(100),
    PRIMARY KEY(LOB_ID));


# -----------------------------------------------------------------------
# MQ_CONNECTORS
# -----------------------------------------------------------------------
drop table if exists MQ_CONNECTORS;

CREATE TABLE MQ_CONNECTORS
(
    BROKER_ID DECIMAL(10),
    CONNECTOR_ID DECIMAL(10) NOT NULL,
    CONNECTOR_URI VARCHAR(255),
    CONNECTOR_NAME VARCHAR(50),
    CON_PROTOCOL VARCHAR(50),
    CLUSTER_URI VARCHAR(255),
    ISMONITOR DECIMAL(1) default 0,
    PRIMARY KEY(CONNECTOR_ID));


# -----------------------------------------------------------------------
# MQ_GROUP
# -----------------------------------------------------------------------
drop table if exists MQ_GROUP;

CREATE TABLE MQ_GROUP
(
    BROKER_ID DECIMAL(10),
    GROUP_ID DECIMAL(10) NOT NULL,
    GROUP_NAME VARCHAR(100),
    PRIMARY KEY(GROUP_ID));


# -----------------------------------------------------------------------
# MQ_HUGEMESSAGE_SCHEDULE
# -----------------------------------------------------------------------
drop table if exists MQ_HUGEMESSAGE_SCHEDULE;

CREATE TABLE MQ_HUGEMESSAGE_SCHEDULE
(
    TASK_ID DECIMAL(10) NOT NULL,
    SCHEDULE_ID VARCHAR(50) NOT NULL,
    STATES LONGTEXT,
    FILE_PATH VARCHAR(500),
    FILE_SIZE DECIMAL(22),
    SEGMENT_SIZE DECIMAL(22),
    DEST_NAME VARCHAR(30),
    FINISHED VARCHAR(2) default '0',
    REG_DATE TIMESTAMP default CURRENT_TIMESTAMP,
    ISBROKE DECIMAL(1) default 1,
    USEPARREL DECIMAL(1) default 1,
    TASKTYPE DECIMAL(1) default 0 NOT NULL,
    SENDPATH VARCHAR(500),
    MACHINE_UUID VARCHAR(100),
    BUSSINESS_ID VARCHAR(255),
    PRIMARY KEY(TASK_ID));


# -----------------------------------------------------------------------
# MQ_HUGEMESSAGE_SCHEDULECHECK
# -----------------------------------------------------------------------
drop table if exists MQ_HUGEMESSAGE_SCHEDULECHECK;

CREATE TABLE MQ_HUGEMESSAGE_SCHEDULECHECK
(
    TASK_ID DECIMAL(10) NOT NULL,
    SCHEDULE_ID VARCHAR(50) NOT NULL,
    STATES LONGTEXT,
    FILE_PATH VARCHAR(500),
    FILE_SIZE DECIMAL(22),
    SEGMENT_SIZE DECIMAL(22),
    DEST_NAME VARCHAR(30),
    FINISHED VARCHAR(2) default '0',
    REG_DATE TIMESTAMP default CURRENT_TIMESTAMP,
    ISBROKE DECIMAL(1) default 1,
    USEPARREL DECIMAL(1) default 1,
    TASKTYPE DECIMAL(1) default 0 NOT NULL,
    SENDPATH VARCHAR(500),
    MACHINE_UUID VARCHAR(100),
    BUSSINESS_ID VARCHAR(255));


# -----------------------------------------------------------------------
# MQ_MEM_CONF
# -----------------------------------------------------------------------
drop table if exists MQ_MEM_CONF;

CREATE TABLE MQ_MEM_CONF
(
    CONFIG_ID DECIMAL(10) NOT NULL,
    BROKER_ID DECIMAL(10),
    OBJECT_TYPE DECIMAL(1) default 0,
    OBJECT_NAME VARCHAR(100),
    MEM_LIMIT VARCHAR(100) default '5 mb',
    DEAD_PREFIX VARCHAR(100),
    PRODUCERFLOWCONTROL DECIMAL(1) default 0,
    PRIMARY KEY(CONFIG_ID));


# -----------------------------------------------------------------------
# MQ_MIRROR_TABLE
# -----------------------------------------------------------------------
drop table if exists MQ_MIRROR_TABLE;

CREATE TABLE MQ_MIRROR_TABLE
(
    MIRROR_NAME VARCHAR(255),
    MIRROR_ID DECIMAL(10) NOT NULL,
    BROKER_ID DECIMAL(10),
    REMARK VARCHAR(500),
    MIRROR_PREFIX VARCHAR(100),
    COPYMESSAGE DECIMAL(1) default 0,
    PRIMARY KEY(MIRROR_ID));


# -----------------------------------------------------------------------
# MQ_MON_TABLE
# -----------------------------------------------------------------------
drop table if exists MQ_MON_TABLE;

CREATE TABLE MQ_MON_TABLE
(
    MONITOR_ID DECIMAL(10) NOT NULL,
    MQ_MONITOR_IP VARCHAR(100),
    MQ_MONITOR_PORT VARCHAR(10),
    MQ_JMXMON_PORT VARCHAR(10),
    MQ_TCP_PORT VARCHAR(10),
    MQ_USER VARCHAR(50),
    MQ_PASSWORD VARCHAR(50),
    MONITOR_NAME VARCHAR(100),
    PRIMARY KEY(MONITOR_ID));


# -----------------------------------------------------------------------
# MQ_PERMISSIONS
# -----------------------------------------------------------------------
drop table if exists MQ_PERMISSIONS;

CREATE TABLE MQ_PERMISSIONS
(
    RESOURCE_TYPE VARCHAR(100) default 'queue' NOT NULL,
    RES_NAME VARCHAR(100) NOT NULL,
    RES_OP VARCHAR(50) NOT NULL,
    GROUP_TYPE VARCHAR(50) default 'group' NOT NULL,
    GROUP_NAME VARCHAR(100) NOT NULL,
    BROKER_ID DECIMAL(10) NOT NULL,
    AUTHOR VARCHAR(100) default 'admin',
    AUTH_DATE DATETIME,
    PRIMARY KEY(RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID));


# -----------------------------------------------------------------------
# MQ_POLICY_TABLE
# -----------------------------------------------------------------------
drop table if exists MQ_POLICY_TABLE;

CREATE TABLE MQ_POLICY_TABLE
(
    BROKER_ID DECIMAL(10),
    POLICY_ID DECIMAL(10));


# -----------------------------------------------------------------------
# MQ_ROUTERS
# -----------------------------------------------------------------------
drop table if exists MQ_ROUTERS;

CREATE TABLE MQ_ROUTERS
(
    ROUTER_ID DECIMAL(10) NOT NULL,
    ROUTER_NAME VARCHAR(64),
    ROUTER_REGULAR LONGTEXT,
    ISVALID DECIMAL(1) default 1,
    IMPORTCLASS LONGTEXT,
    ORDERBY DECIMAL(5),
    OWNER DECIMAL(10),
    OWNER_TYPE VARCHAR(100),
    PRIMARY KEY(ROUTER_ID));


# -----------------------------------------------------------------------
# MQ_RULES_TPL
# -----------------------------------------------------------------------
drop table if exists MQ_RULES_TPL;

CREATE TABLE MQ_RULES_TPL
(
    RULE_TPL_ID DECIMAL(10) NOT NULL,
    RULES LONGTEXT,
    RULES_NAME VARCHAR(200),
    MODIFIABLE DECIMAL(1) default 1,
    TPL_AUTH VARCHAR(50) default 'admin',
    TPL_DESC LONGTEXT,
    RUTE_IMAGE VARCHAR(255),
    IMPORTCLASS LONGTEXT,
    ORDERBY DECIMAL(4),
    TPL_TYPE DECIMAL(1) default 0,
    PRIMARY KEY(RULE_TPL_ID));


# -----------------------------------------------------------------------
# MQ_SEGMENT_RECV_CACHE
# -----------------------------------------------------------------------
drop table if exists MQ_SEGMENT_RECV_CACHE;

CREATE TABLE MQ_SEGMENT_RECV_CACHE
(
    SEGMENT_ID VARCHAR(300) NOT NULL,
    CONTENT LONGBLOB,
    OFFSET DECIMAL(22),
    FILENAME VARCHAR(500),
    SCHEDULEID VARCHAR(50),
    FILESIZE DECIMAL(22),
    SEGMENTSIZE DECIMAL(22),
    REG_DATE TIMESTAMP default CURRENT_TIMESTAMP,
    SEND_DESTINCTION VARCHAR(200) NOT NULL,
    PRIMARY KEY(SEGMENT_ID,SEND_DESTINCTION));


# -----------------------------------------------------------------------
# MQ_SEGMENT_RECV_CACHECHECK
# -----------------------------------------------------------------------
drop table if exists MQ_SEGMENT_RECV_CACHECHECK;

CREATE TABLE MQ_SEGMENT_RECV_CACHECHECK
(
    SEGMENT_ID VARCHAR(300) NOT NULL,
    CONTENT LONGBLOB,
    OFFSET DECIMAL(22),
    FILENAME VARCHAR(500),
    SCHEDULEID VARCHAR(50),
    FILESIZE DECIMAL(22),
    SEGMENTSIZE DECIMAL(22),
    REG_DATE TIMESTAMP default CURRENT_TIMESTAMP,
    SEND_DESTINCTION VARCHAR(200) NOT NULL);


# -----------------------------------------------------------------------
# MQ_USERS
# -----------------------------------------------------------------------
drop table if exists MQ_USERS;

CREATE TABLE MQ_USERS
(
    BROKER_ID DECIMAL(10),
    USER_ID DECIMAL(10) NOT NULL,
    USER_NAME VARCHAR(50),
    USER_PASSWORD VARCHAR(50),
    PRIMARY KEY(USER_ID));


# -----------------------------------------------------------------------
# MQ_VIRTUAL_NODES
# -----------------------------------------------------------------------
drop table if exists MQ_VIRTUAL_NODES;

CREATE TABLE MQ_VIRTUAL_NODES
(
    BROKER_ID DECIMAL(10),
    NODE_NAME VARCHAR(100) NOT NULL,
    VIRTUAL_NODEID DECIMAL(10) NOT NULL,
    NODE_TYPE DECIMAL(1) default 0,
    COPYMESSAGE DECIMAL(1) default 1,
    FORWARDONLY DECIMAL(1) default 1,
    PRIMARY KEY(VIRTUAL_NODEID));


# -----------------------------------------------------------------------
# ROUTER_SERVERS
# -----------------------------------------------------------------------
drop table if exists ROUTER_SERVERS;

CREATE TABLE ROUTER_SERVERS
(
    SERVER_ID DECIMAL(10) NOT NULL,
    SERVER_NAME VARCHAR(50),
    SERVER_DESC VARCHAR(200),
    PRIMARY KEY(SERVER_ID));


# -----------------------------------------------------------------------
# RPC_SERVER
# -----------------------------------------------------------------------
drop table if exists RPC_SERVER;

CREATE TABLE RPC_SERVER
(
    ID VARCHAR(100) NOT NULL,
    RPC_NAME VARCHAR(50),
    RPC_PROTOCOL VARCHAR(50),
    RPC_ADDR VARCHAR(100),
    RPC_USER VARCHAR(50),
    RPC_PASSWORD VARCHAR(50),
    RPC_MC DECIMAL(1),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# TABLEINFO
# -----------------------------------------------------------------------
drop table if exists TABLEINFO;

CREATE TABLE TABLEINFO
(
    TABLE_NAME VARCHAR(255) NOT NULL,
    TABLE_ID_NAME VARCHAR(255),
    TABLE_ID_INCREMENT DECIMAL(5) default 1,
    TABLE_ID_VALUE DECIMAL(20) default 0,
    TABLE_ID_GENERATOR VARCHAR(255),
    TABLE_ID_TYPE VARCHAR(255),
    TABLE_ID_PREFIX VARCHAR(255),
    PRIMARY KEY(TABLE_NAME));


# -----------------------------------------------------------------------
# TB_SM_INPUTTYPE
# -----------------------------------------------------------------------
drop table if exists TB_SM_INPUTTYPE;

CREATE TABLE TB_SM_INPUTTYPE
(
    INPUT_TYPE_ID DECIMAL(5) NOT NULL,
    INPUT_TYPE_DESC VARCHAR(200),
    DATASOURCE_PATH VARCHAR(200),
    INPUT_TYPE_NAME VARCHAR(200) NOT NULL,
    SCRIPT VARCHAR(4000),
    PRIMARY KEY(INPUT_TYPE_ID));


# -----------------------------------------------------------------------
# TD_SEC_SMS_INTERFACE
# -----------------------------------------------------------------------
drop table if exists TD_SEC_SMS_INTERFACE;

CREATE TABLE TD_SEC_SMS_INTERFACE
(
    MESSAGE_ID VARCHAR(20),
    CONTENT VARCHAR(2000),
    DONETIME VARCHAR(40),
    STATUS DECIMAL(22) default 0,
    MESSAGE_TYPE DECIMAL(22) default 0,
    SRCMOBILE VARCHAR(20),
    DSTMOBILE VARCHAR(40),
    WORKER_NAME VARCHAR(40),
    ID DECIMAL(22) NOT NULL,
    SENDTIME VARCHAR(40),
    MEETINGID VARCHAR(50),
    RETRY DECIMAL(22) default 0);


# -----------------------------------------------------------------------
# TD_SM_DICATTACHFIELD
# -----------------------------------------------------------------------
drop table if exists TD_SM_DICATTACHFIELD;

CREATE TABLE TD_SM_DICATTACHFIELD
(
    DICTTYPE_ID VARCHAR(50),
    FIELD_NAME VARCHAR(50),
    LABEL VARCHAR(100),
    INPUT_TYPE_ID DECIMAL(5),
    TABLE_COLUMN VARCHAR(50),
    ISNULLABLE DECIMAL(1),
    ISUNIQUE DECIMAL(1) default 0,
    DATEFORMAT VARCHAR(20),
    SN DECIMAL(5) default 1);


# -----------------------------------------------------------------------
# TD_SM_GROUP
# -----------------------------------------------------------------------
drop table if exists TD_SM_GROUP;

CREATE TABLE TD_SM_GROUP
(
    GROUP_ID DECIMAL(22) NOT NULL,
    GROUP_NAME VARCHAR(100),
    GROUP_DESC VARCHAR(100),
    REMARK1 VARCHAR(100),
    REMARK2 VARCHAR(100),
    REMARK3 VARCHAR(100),
    REMARK4 VARCHAR(100),
    REMARK5 VARCHAR(100),
    PARENT_ID DECIMAL(22),
    OWNER_ID DECIMAL(22) default 1,
    PRIMARY KEY(GROUP_ID));


# -----------------------------------------------------------------------
# TD_SM_INITYEAR_HOLIDAY
# -----------------------------------------------------------------------
drop table if exists TD_SM_INITYEAR_HOLIDAY;

CREATE TABLE TD_SM_INITYEAR_HOLIDAY
(
    ORG_ID VARCHAR(50),
    YHOLIDAY VARCHAR(4) NOT NULL,
    PRIMARY KEY(YHOLIDAY));


# -----------------------------------------------------------------------
# TD_SM_JOB
# -----------------------------------------------------------------------
drop table if exists TD_SM_JOB;

CREATE TABLE TD_SM_JOB
(
    JOB_ID VARCHAR(50) NOT NULL,
    JOB_NAME VARCHAR(100),
    JOB_DESC VARCHAR(200),
    JOB_FUNCTION VARCHAR(200),
    JOB_AMOUNT VARCHAR(100),
    JOB_NUMBER VARCHAR(100),
    JOB_CONDITION VARCHAR(200),
    JOB_RANK VARCHAR(100),
    OWNER_ID DECIMAL(22) default 1,
    PRIMARY KEY(JOB_ID));


# -----------------------------------------------------------------------
# TD_SM_LOG
# -----------------------------------------------------------------------
drop table if exists TD_SM_LOG;

CREATE TABLE TD_SM_LOG
(
    LOG_ID DECIMAL(22) NOT NULL,
    LOG_OPERUSER VARCHAR(50),
    OP_ORGID VARCHAR(50),
    OPER_MODULE VARCHAR(200),
    LOG_VISITORIAL VARCHAR(200),
    LOG_OPERTIME DATETIME,
    LOG_CONTENT LONGTEXT,
    REMARK1 VARCHAR(100),
    OPER_TYPE DECIMAL(1),
    PRIMARY KEY(LOG_ID));


# -----------------------------------------------------------------------
# TD_SM_LOGMODULE
# -----------------------------------------------------------------------
drop table if exists TD_SM_LOGMODULE;

CREATE TABLE TD_SM_LOGMODULE
(
    LOGMODULE VARCHAR(50),
    STATUS DECIMAL(22),
    MODULE_DESC VARCHAR(50),
    ID VARCHAR(50) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# TD_SM_LOG_HIS
# -----------------------------------------------------------------------
drop table if exists TD_SM_LOG_HIS;

CREATE TABLE TD_SM_LOG_HIS
(
    LOG_ID DECIMAL(22) NOT NULL,
    LOG_OPERUSER VARCHAR(50),
    OP_ORGID VARCHAR(50),
    OPER_MODULE VARCHAR(200),
    LOG_VISITORIAL VARCHAR(200),
    LOG_OPERTIME DATETIME,
    LOG_CONTENT LONGTEXT,
    REMARK1 VARCHAR(100),
    OPER_TYPE DECIMAL(1),
    PRIMARY KEY(LOG_ID));


# -----------------------------------------------------------------------
# TD_SM_ORGANIZATION
# -----------------------------------------------------------------------
drop table if exists TD_SM_ORGANIZATION;

CREATE TABLE TD_SM_ORGANIZATION
(
    ORG_ID VARCHAR(50) NOT NULL,
    ORG_SN DECIMAL(22) NOT NULL,
    ORG_NAME VARCHAR(40) NOT NULL,
    PARENT_ID VARCHAR(100) NOT NULL,
    PATH VARCHAR(1000),
    LAYER VARCHAR(200),
    CHILDREN VARCHAR(1000),
    CODE VARCHAR(100),
    JP VARCHAR(40),
    QP VARCHAR(40),
    CREATINGTIME DATETIME,
    CREATOR VARCHAR(100) default '1

',
    ORGNUMBER VARCHAR(100),
    ORGDESC VARCHAR(300),
    REMARK1 VARCHAR(100),
    REMARK2 VARCHAR(100),
    REMARK3 VARCHAR(100),
    REMARK4 VARCHAR(100),
    REMARK5 VARCHAR(100),
    CHARGEORGID VARCHAR(50),
    ISPARTYBUSSINESS DECIMAL(1) default 1,
    SATRAPJOBID VARCHAR(50),
    ORG_LEVEL VARCHAR(1) default '1',
    ORG_XZQM VARCHAR(10),
    ISDIRECTLYPARTY DECIMAL(1) default 0,
    ISFOREIGNPARTY DECIMAL(1) default 0,
    ISJICHAPARTY DECIMAL(1) default 0,
    ISDIRECTGUANHU DECIMAL(1) default 0,
    PRIMARY KEY(ORG_ID));


# -----------------------------------------------------------------------
# TD_SM_PERMISSION_ORIGINE
# -----------------------------------------------------------------------
drop table if exists TD_SM_PERMISSION_ORIGINE;

CREATE TABLE TD_SM_PERMISSION_ORIGINE
(
    ORIGINE_TYPE VARCHAR(50) NOT NULL,
    ORIGINE_ID VARCHAR(20) NOT NULL,
    OP_ID VARCHAR(50) NOT NULL,
    RES_ID VARCHAR(100) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESTYPE_ID VARCHAR(50) NOT NULL,
    TYPES VARCHAR(50) NOT NULL,
    PRIMARY KEY(ORIGINE_TYPE,ORIGINE_ID,OP_ID,RES_ID,ROLE_ID,RESTYPE_ID,TYPES));


# -----------------------------------------------------------------------
# TD_SM_RES
# -----------------------------------------------------------------------
drop table if exists TD_SM_RES;

CREATE TABLE TD_SM_RES
(
    RES_ID VARCHAR(50) NOT NULL,
    RESTYPE_ID VARCHAR(50),
    TITLE VARCHAR(500),
    ROLE_USAGE VARCHAR(1),
    PARENT_ID VARCHAR(50),
    PATH VARCHAR(1000),
    MARKER VARCHAR(200),
    RESERVED1 VARCHAR(200),
    RESERVED3 VARCHAR(200),
    RESERVED4 VARCHAR(200),
    RESERVED5 VARCHAR(200),
    ATTR1 VARCHAR(200),
    ATTR2 VARCHAR(200),
    ATTR3 VARCHAR(200),
    ATTR4 VARCHAR(200),
    ATTR5 VARCHAR(200),
    ATTR6 VARCHAR(200),
    ATTR7 VARCHAR(200),
    ATTR8 VARCHAR(200),
    ATTR9 VARCHAR(200),
    ATTR10 VARCHAR(200),
    ATTR11 VARCHAR(200),
    ATTR12 VARCHAR(200),
    ATTR13 VARCHAR(200),
    ATTR14 VARCHAR(200),
    ATTR15 VARCHAR(200),
    ATTR16 VARCHAR(200),
    ATTR17 VARCHAR(200),
    ATTR18 VARCHAR(200),
    ATTR19 VARCHAR(200),
    ATTR20 VARCHAR(200),
    ATTR21 VARCHAR(200),
    ATTR22 VARCHAR(200),
    ATTR23 VARCHAR(200),
    ATTR24 VARCHAR(200),
    ATTR25 VARCHAR(200),
    ATTR26 VARCHAR(200),
    ATTR27 VARCHAR(1000),
    PRIMARY KEY(RES_ID));


# -----------------------------------------------------------------------
# TD_SM_ROLE
# -----------------------------------------------------------------------
drop table if exists TD_SM_ROLE;

CREATE TABLE TD_SM_ROLE
(
    ROLE_ID VARCHAR(50) NOT NULL,
    ROLE_NAME VARCHAR(100) NOT NULL,
    ROLE_TYPE VARCHAR(100),
    ROLE_DESC VARCHAR(1024),
    ROLE_USAGE VARCHAR(1),
    REMARK1 VARCHAR(100),
    REMARK2 VARCHAR(100),
    REMARK3 VARCHAR(100),
    OWNER_ID DECIMAL(22) default 1,
    PRIMARY KEY(ROLE_ID));


# -----------------------------------------------------------------------
# TD_SM_ROLERESOP
# -----------------------------------------------------------------------
drop table if exists TD_SM_ROLERESOP;

CREATE TABLE TD_SM_ROLERESOP
(
    OP_ID VARCHAR(50) NOT NULL,
    RES_ID VARCHAR(100) NOT NULL,
    ROLE_ID VARCHAR(50) NOT NULL,
    RESTYPE_ID VARCHAR(50) NOT NULL,
    AUTO VARCHAR(50),
    RES_NAME VARCHAR(500),
    TYPES VARCHAR(50) NOT NULL,
    AUTHORIZATION_TYPE DECIMAL(22) default 0,
    USE_COUNT DECIMAL(22),
    AUTHORIZATION_STIME TIMESTAMP default CURRENT_TIMESTAMP,
    AUTHORIZATION_ETIME DATETIME,
    USE_COUNTED DECIMAL(22),
    PRIMARY KEY(OP_ID,RES_ID,ROLE_ID,RESTYPE_ID,TYPES));


# -----------------------------------------------------------------------
# TD_SM_ROLETYPE
# -----------------------------------------------------------------------
drop table if exists TD_SM_ROLETYPE;

CREATE TABLE TD_SM_ROLETYPE
(
    TYPE_NAME VARCHAR(100),
    TYPE_DESC VARCHAR(500),
    TYPE_ID DECIMAL(22) NOT NULL,
    CREATOR_USER_ID VARCHAR(20) default '1
',
    CREATOR_ORG_ID VARCHAR(20) default '1
',
    PRIMARY KEY(TYPE_ID));


# -----------------------------------------------------------------------
# TD_SM_USER
# -----------------------------------------------------------------------
drop table if exists TD_SM_USER;

CREATE TABLE TD_SM_USER
(
    USER_ID DECIMAL(22) NOT NULL,
    USER_SN DECIMAL(22) NOT NULL,
    USER_NAME VARCHAR(200) NOT NULL,
    USER_PASSWORD VARCHAR(40) NOT NULL,
    USER_REALNAME VARCHAR(100) NOT NULL,
    USER_PINYIN VARCHAR(100),
    USER_SEX VARCHAR(100),
    USER_HOMETEL VARCHAR(100),
    USER_WORKTEL VARCHAR(100),
    USER_WORKNUMBER VARCHAR(100),
    USER_MOBILETEL1 VARCHAR(100),
    USER_MOBILETEL2 VARCHAR(100),
    USER_FAX VARCHAR(100),
    USER_OICQ VARCHAR(100),
    USER_BIRTHDAY DATETIME,
    USER_EMAIL VARCHAR(100),
    USER_ADDRESS VARCHAR(200),
    USER_POSTALCODE VARCHAR(10),
    USER_IDCARD VARCHAR(50),
    USER_ISVALID DECIMAL(22),
    USER_REGDATE DATETIME,
    USER_LOGINCOUNT DECIMAL(22),
    USER_TYPE VARCHAR(100),
    REMARK1 VARCHAR(100),
    REMARK2 VARCHAR(100),
    REMARK3 VARCHAR(100),
    REMARK4 VARCHAR(100),
    REMARK5 VARCHAR(100),
    PAST_TIME DATETIME,
    DREDGE_TIME VARCHAR(50),
    LASTLOGIN_DATE DATETIME,
    WORKLENGTH VARCHAR(50),
    POLITICS VARCHAR(100),
    ISTAXMANAGER DECIMAL(1),
    LOGON_IP VARCHAR(15),
    CERT_SN VARCHAR(50),
    PRIMARY KEY(USER_ID));


# -----------------------------------------------------------------------
# TD_SM_USERGROUP
# -----------------------------------------------------------------------
drop table if exists TD_SM_USERGROUP;

CREATE TABLE TD_SM_USERGROUP
(
    GROUP_ID DECIMAL(22) NOT NULL,
    USER_ID DECIMAL(22) NOT NULL,
    PRIMARY KEY(GROUP_ID,USER_ID));


# -----------------------------------------------------------------------
# TD_SM_USERJOBORG_HISTORY
# -----------------------------------------------------------------------
drop table if exists TD_SM_USERJOBORG_HISTORY;

CREATE TABLE TD_SM_USERJOBORG_HISTORY
(
    USER_ID DECIMAL(22) NOT NULL,
    JOB_ID VARCHAR(50) NOT NULL,
    JOB_NAME VARCHAR(100) NOT NULL,
    ORG_ID VARCHAR(50) NOT NULL,
    ORG_NAME VARCHAR(100) NOT NULL,
    JOB_STARTTIME DATETIME,
    JOB_QUASHTIME DATETIME,
    JOB_FETTLE DECIMAL(22));


# -----------------------------------------------------------------------
# V_TB_RES_ORG_USER_WRITE
# -----------------------------------------------------------------------
drop table if exists V_TB_RES_ORG_USER_WRITE;

CREATE TABLE V_TB_RES_ORG_USER_WRITE
(
    USER_ID VARCHAR(50) NOT NULL,
    ORG_ID VARCHAR(100) NOT NULL);

ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES MQ_USERS (USER_ID)
;

ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_2
    FOREIGN KEY (GROUP_ID)
    REFERENCES MQ_GROUP (GROUP_ID)
;

ALTER TABLE MQ_BROKER
    ADD CONSTRAINT MQ_BROKER_FK_1
    FOREIGN KEY (SSL_TS)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_BROKER
    ADD CONSTRAINT MQ_BROKER_FK_2
    FOREIGN KEY (SSL_KS)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_PROPERTIES
    ADD CONSTRAINT MQ_PROPERTIES_FK_1
    FOREIGN KEY (TASK_ID)
    REFERENCES MQ_HUGEMESSAGE_SCHEDULE (TASK_ID)
;

ALTER TABLE MQ_REAL_NODES
    ADD CONSTRAINT MQ_REAL_NODES_FK_1
    FOREIGN KEY (VIRTUAL_NODEID)
    REFERENCES MQ_VIRTUAL_NODES (VIRTUAL_NODEID)
;

ALTER TABLE MQ_ROUTENODE
    ADD CONSTRAINT MQ_ROUTENODE_FK_1
    FOREIGN KEY (NODE_ID)
    REFERENCES MQ_NODE (NODE_ID)
;

ALTER TABLE TD_REMINDINFO
    ADD CONSTRAINT TD_REMINDINFO_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_NOTEPAPER
    ADD CONSTRAINT TD_SD_NOTEPAPER_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_NOTIC
    ADD CONSTRAINT TD_SD_NOTIC_FK_1
    FOREIGN KEY (NOTIC_PLANNER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_NOTIC
    ADD CONSTRAINT TD_SD_NOTIC_FK_2
    FOREIGN KEY (EXECUTOR_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_RATIFYADVICE
    ADD CONSTRAINT TD_SD_RATIFYADVICE_FK_1
    FOREIGN KEY (RATIFIER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_RATIFYADVICE
    ADD CONSTRAINT TD_SD_RATIFYADVICE_FK_2
    FOREIGN KEY (SCHEDULAR_ID)
    REFERENCES TD_SD_SCHEDULAR (SCHEDULAR_ID)
;

ALTER TABLE TD_SD_REMIND
    ADD CONSTRAINT TD_SD_REMIND_FK_1
    FOREIGN KEY (SCHEDULAR_ID)
    REFERENCES TD_SD_SCHEDULAR (SCHEDULAR_ID)
;

ALTER TABLE TD_SD_SHARE
    ADD CONSTRAINT TD_SD_SHARE_FK_1
    FOREIGN KEY (VIEWUSER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_SHARE
    ADD CONSTRAINT TD_SD_SHARE_FK_2
    FOREIGN KEY (SCHEDULAR_ID)
    REFERENCES TD_SD_SCHEDULAR (SCHEDULAR_ID)
;

ALTER TABLE TD_SM_DICTDATA
    ADD CONSTRAINT TD_SM_DICTDATA_FK_1
    FOREIGN KEY (DICTTYPE_ID)
    REFERENCES TD_SM_DICTTYPE (DICTTYPE_ID)
;

ALTER TABLE TD_SM_DICTKEYWORDS
    ADD CONSTRAINT TD_SM_DICTKEYWORDS_FK_1
    FOREIGN KEY (DICTTYPE_ID)
    REFERENCES TD_SM_DICTTYPE (DICTTYPE_ID)
;

ALTER TABLE TD_SM_GROUPROLE
    ADD CONSTRAINT TD_SM_GROUPROLE_FK_1
    FOREIGN KEY (ROLE_ID)
    REFERENCES TD_SM_ROLE (ROLE_ID)
;

ALTER TABLE TD_SM_LOGDETAIL
    ADD CONSTRAINT TD_SM_LOGDETAIL_FK_1
    FOREIGN KEY (LOG_ID)
    REFERENCES TD_SM_LOG (LOG_ID)
;

ALTER TABLE TD_SM_LOGDETAIL_HIS
    ADD CONSTRAINT TD_SM_LOGDETAIL_HIS_FK_1
    FOREIGN KEY (LOG_ID)
    REFERENCES TD_SM_LOG_HIS (LOG_ID)
;

ALTER TABLE TD_SM_ORGJOB
    ADD CONSTRAINT TD_SM_ORGJOB_FK_1
    FOREIGN KEY (JOB_ID)
    REFERENCES TD_SM_JOB (JOB_ID)
;

ALTER TABLE TD_SM_ORGJOBROLE
    ADD CONSTRAINT TD_SM_ORGJOBROLE_FK_1
    FOREIGN KEY (ROLE_ID)
    REFERENCES TD_SM_ROLE (ROLE_ID)
;

ALTER TABLE TD_SM_ORGJOBROLE
    ADD CONSTRAINT TD_SM_ORGJOBROLE_FK_2
    FOREIGN KEY (ORG_ID)
    REFERENCES TD_SM_ORGANIZATION (ORG_ID)
;

ALTER TABLE TD_SM_ORGJOBROLE
    ADD CONSTRAINT TD_SM_ORGJOBROLE_FK_3
    FOREIGN KEY (JOB_ID)
    REFERENCES TD_SM_JOB (JOB_ID)
;

ALTER TABLE TD_SM_ORGMANAGER
    ADD CONSTRAINT TD_SM_ORGMANAGER_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SM_ORGMANAGER
    ADD CONSTRAINT TD_SM_ORGMANAGER_FK_2
    FOREIGN KEY (ORG_ID)
    REFERENCES TD_SM_ORGANIZATION (ORG_ID)
;

ALTER TABLE TD_SM_ORGROLE
    ADD CONSTRAINT TD_SM_ORGROLE_FK_1
    FOREIGN KEY (ROLE_ID)
    REFERENCES TD_SM_ROLE (ROLE_ID)
;

ALTER TABLE TD_SM_ORGUSER
    ADD CONSTRAINT TD_SM_ORGUSER_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SM_ORGUSER
    ADD CONSTRAINT TD_SM_ORGUSER_FK_2
    FOREIGN KEY (ORG_ID)
    REFERENCES TD_SM_ORGANIZATION (ORG_ID)
;

ALTER TABLE TD_SM_TAXCODE_ORGANIZATION
    ADD CONSTRAINT TD_SM_TAXCODE_ORGANIZATION_FK_1
    FOREIGN KEY (DICTTYPE_ID)
    REFERENCES TD_SM_DICTTYPE (DICTTYPE_ID)
;

ALTER TABLE TD_SM_TAXCODE_ORGANIZATION
    ADD CONSTRAINT TD_SM_TAXCODE_ORGANIZATION_FK_2
    FOREIGN KEY (ORG_ID)
    REFERENCES TD_SM_ORGANIZATION (ORG_ID)
;

ALTER TABLE TD_SM_USERJOBORG
    ADD CONSTRAINT TD_SM_USERJOBORG_FK_1
    FOREIGN KEY (JOB_ID)
    REFERENCES TD_SM_JOB (JOB_ID)
;

ALTER TABLE TD_SM_USERROLE
    ADD CONSTRAINT TD_SM_USERROLE_FK_1
    FOREIGN KEY (ROLE_ID)
    REFERENCES TD_SM_ROLE (ROLE_ID)
;

ALTER TABLE TD_SP_HOLIDAY
    ADD CONSTRAINT TD_SP_HOLIDAY_FK_1
    FOREIGN KEY (ORG_ID)
    REFERENCES TD_SM_ORGANIZATION (ORG_ID)
;

ALTER TABLE MQ_NODE
    ADD CONSTRAINT MQ_NODE_FK_1
    FOREIGN KEY (NODE_FACTORY_ID)
    REFERENCES MQ_NODE_FACTORY (NODE_FACTORY_ID)
;

ALTER TABLE TD_SD_SCHEDULAR
    ADD CONSTRAINT TD_SD_SCHEDULAR_FK_1
    FOREIGN KEY (EXECUTOR_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SD_SCHEDULAR
    ADD CONSTRAINT TD_SD_SCHEDULAR_FK_2
    FOREIGN KEY (PLANNER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE TD_SM_DICTTYPE
    ADD CONSTRAINT TD_SM_DICTTYPE_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES TD_SM_USER (USER_ID)
;

ALTER TABLE MQ_NODE_FACTORY
    ADD CONSTRAINT MQ_NODE_FACTORY_FK_1
    FOREIGN KEY (CA_ID)
    REFERENCES MQ_CLIENT_CA (CA_ID)
;

ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_1
    FOREIGN KEY (KS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_2
    FOREIGN KEY (TS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

