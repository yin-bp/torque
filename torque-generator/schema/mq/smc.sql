ALTER TABLE GROUP_USERS 
    DROP CONSTRAINT GROUP_USERS_FK_1;
        
ALTER TABLE GROUP_USERS 
    DROP CONSTRAINT GROUP_USERS_FK_2;
        
ALTER TABLE MQ_CONNECTORS 
    DROP CONSTRAINT MQ_CONNECTORS_FK_1;
        
ALTER TABLE MQ_PROPERTIES 
    DROP CONSTRAINT FK_TASK_PROPERTIES;
        
ALTER TABLE MQ_REAL_NODES 
    DROP CONSTRAINT MQ_REAL_NODES_FK_1;
        
ALTER TABLE MQ_ROUTENODE 
    DROP CONSTRAINT MQ_ROUTENODE_FK_1;
        
ALTER TABLE MQ_BROKER 
    DROP CONSTRAINT MQ_BROKER_FK_1;
        
ALTER TABLE MQ_BROKER 
    DROP CONSTRAINT MQ_BROKER_FK_2;
        
ALTER TABLE MQ_NODE 
    DROP CONSTRAINT MQ_NODE_FK_1;
        
ALTER TABLE MQ_NODE_FACTORY 
    DROP CONSTRAINT MQ_NODE_FACTORY_FK_1;
        
ALTER TABLE MQ_CLIENT_CA 
    DROP CONSTRAINT MQ_CLIENT_CA_FK_1;
        
ALTER TABLE MQ_CLIENT_CA 
    DROP CONSTRAINT MQ_CLIENT_CA_FK_2;
        

-----------------------------------------------------------------------------
-- GROUP_USERS
-----------------------------------------------------------------------------
DROP TABLE GROUP_USERS CASCADE CONSTRAINTS;

CREATE TABLE GROUP_USERS
(
    USER_ID NUMBER(10) NOT NULL,
    GROUP_ID NUMBER(10) NOT NULL
);

ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_PK
PRIMARY KEY (USER_ID,GROUP_ID);






-----------------------------------------------------------------------------
-- MQ_CONNECTORS
-----------------------------------------------------------------------------
DROP TABLE MQ_CONNECTORS CASCADE CONSTRAINTS;

CREATE TABLE MQ_CONNECTORS
(
    BROKER_ID NUMBER(10),
    CONNECTOR_ID NUMBER(10) NOT NULL,
    CONNECTOR_URI VARCHAR2(255),
    CONNECTOR_NAME VARCHAR2(50),
    CON_PROTOCOL VARCHAR2(50),
    CLUSTER_URI VARCHAR2(255),
    ISMONITOR NUMBER(1) default 0
);

ALTER TABLE MQ_CONNECTORS
    ADD CONSTRAINT MQ_CONNECTORS_PK
PRIMARY KEY (CONNECTOR_ID);






-----------------------------------------------------------------------------
-- MQ_PROPERTIES
-----------------------------------------------------------------------------
DROP TABLE MQ_PROPERTIES CASCADE CONSTRAINTS;

CREATE TABLE MQ_PROPERTIES
(
    PRO_ID NUMBER(10) NOT NULL,
    TASK_ID NUMBER(10),
    PRO_NAME VARCHAR2(100) NOT NULL,
    PRO_TYPE VARCHAR2(20) default 'string',
    STRING_VALUE CLOB,
    VALUE_NUMBER NUMBER(22),
    VALUE_OBJECT BLOB,
    VALUE_BOOLEAN NUMBER(1) default 0
);

ALTER TABLE MQ_PROPERTIES
    ADD CONSTRAINT MQ_PROPERTIES_PK
PRIMARY KEY (PRO_ID);






-----------------------------------------------------------------------------
-- MQ_REAL_NODES
-----------------------------------------------------------------------------
DROP TABLE MQ_REAL_NODES CASCADE CONSTRAINTS;

CREATE TABLE MQ_REAL_NODES
(
    VIRTUAL_NODEID NUMBER(10),
    REAL_NODE_ID NUMBER(10) NOT NULL,
    DESTINATION_TYPE NUMBER(1) default 0,
    DESTINATION_NAME VARCHAR2(100) NOT NULL
);

ALTER TABLE MQ_REAL_NODES
    ADD CONSTRAINT MQ_REAL_NODES_PK
PRIMARY KEY (REAL_NODE_ID);






-----------------------------------------------------------------------------
-- MQ_ROUTENODE
-----------------------------------------------------------------------------
DROP TABLE MQ_ROUTENODE CASCADE CONSTRAINTS;

CREATE TABLE MQ_ROUTENODE
(
    NODE_ID NUMBER(10),
    OWNER NUMBER(10),
    OWNER_TYPE VARCHAR2(100)
);







-----------------------------------------------------------------------------
-- MQ_BROKER
-----------------------------------------------------------------------------
DROP TABLE MQ_BROKER CASCADE CONSTRAINTS;

CREATE TABLE MQ_BROKER
(
    CA_DATE DATE,
    BROKER_ID NUMBER(10) NOT NULL,
    BROKER_NAME VARCHAR2(32),
    IS_PERSISTENT NUMBER(1) default 0,
    IS_USEMIRRQ NUMBER(1) default 1,
    MEM_MAXLIMIT VARCHAR2(50) default '200 mb',
    STORE_LIMITE VARCHAR2(50) default '500 mb',
    STORE_NAME VARCHAR2(50),
    TEMP_LIMITE VARCHAR2(250) default '200 mb',
    SERVER_IP VARCHAR2(100),
    JMX_PORT VARCHAR2(10) default '1099',
    JMX_CREATECON NUMBER(1) default 1,
    JMX_CREMBSERVER NUMBER(1) default 0,
    USE_CLUSTER NUMBER(1) default 0,
    NC_NAME VARCHAR2(32) default 'default_nc',
    NC_URI VARCHAR2(4000),
    DATADIRECTORY VARCHAR2(128),
    PA_DATASOURCE VARCHAR2(255),
    USE_SSL NUMBER(1) default 0,
    SSL_KS NUMBER(10),
    SSL_KSPASSWORD VARCHAR2(64),
    SSL_TS NUMBER(10),
    SSL_DIRECTORY VARCHAR2(200),
    SSL_TSPASSWORD VARCHAR2(64),
    IS_USEJMX NUMBER(1) default 1,
    USE_AUTH NUMBER(1) default 0,
    NEEDSUPDATE NUMBER(1) default 1,
    USE_PERMISSION NUMBER(1) default 0,
    USE_LOG NUMBER(1) default 0,
    PERSISTENT_TYPE NUMBER(1) default 0,
    MAXFILELENGTH VARCHAR2(50) default '20m',
    SYNCONWRITE NUMBER(1) default 0,
    CONDUITSUBSCRIPTIONS NUMBER(1) default 0
);

ALTER TABLE MQ_BROKER
    ADD CONSTRAINT MQ_BROKER_PK
PRIMARY KEY (BROKER_ID);






-----------------------------------------------------------------------------
-- MQ_NODE
-----------------------------------------------------------------------------
DROP TABLE MQ_NODE CASCADE CONSTRAINTS;

CREATE TABLE MQ_NODE
(
    NODE_ID NUMBER(10) NOT NULL,
    NODE_FACTORY_ID NUMBER(10),
    NODE_NAME VARCHAR2(64),
    DEST_TYPE NUMBER(1) default 0,
    DESTINATION VARCHAR2(32),
    REMARK VARCHAR2(256),
    ISVALIDATE NUMBER(1) default 0,
    ISPERSISTENT NUMBER(1) default 0,
    PRIORITY NUMBER(2) default 1,
    EXPIRATION VARCHAR2(100) default '0'
);

ALTER TABLE MQ_NODE
    ADD CONSTRAINT MQ_NODE_PK
PRIMARY KEY (NODE_ID);






-----------------------------------------------------------------------------
-- MQ_NODE_FACTORY
-----------------------------------------------------------------------------
DROP TABLE MQ_NODE_FACTORY CASCADE CONSTRAINTS;

CREATE TABLE MQ_NODE_FACTORY
(
    NODE_FACTORY_ID NUMBER(10) NOT NULL,
    NODE_FACTORY_NAME VARCHAR2(100),
    SERVER_URL VARCHAR2(4000),
    USE_AUTH NUMBER(1) default 0,
    USER_NAME VARCHAR2(50),
    FACTORY_TYPE VARCHAR2(50) default 'CMQ',
    USER_PASSWORD VARCHAR2(50),
    CA_ID NUMBER(10),
    USE_SSL NUMBER(1) default 0,
    USE_FAILOVER NUMBER(1) default 1,
    RECONNECTDELAY NUMBER(22) default 10,
    MAXRECONNECTDELAY NUMBER(22) default 30000,
    USEEXPONENTIALBACKOFF NUMBER(1) default 1,
    BACKOFFMUTIPLER NUMBER(10) default 2,
    MAXRECONNECTTIMES NUMBER(4) default 5,
    RANDOMIZE NUMBER(1) default 1,
    CON_COLLISIONAVOIDANCEPERCENT NUMBER(4) default 15,
    CON_MAXIMUMREDELIVERIES NUMBER(4) default 6,
    CON_INITIALREDELIVERYDELAY NUMBER(22) default 1000,
    CON_USECOLLISIONAVOIDANCE NUMBER(1) default 0,
    CON_USEEXPONENTIALBACKOFF NUMBER(1) default 0,
    CON_BACKOFFMULTIPLIER NUMBER(4) default 5
);

ALTER TABLE MQ_NODE_FACTORY
    ADD CONSTRAINT MQ_NODE_FACTORY_PK
PRIMARY KEY (NODE_FACTORY_ID);






-----------------------------------------------------------------------------
-- MQ_CLIENT_CA
-----------------------------------------------------------------------------
DROP TABLE MQ_CLIENT_CA CASCADE CONSTRAINTS;

CREATE TABLE MQ_CLIENT_CA
(
    CA_ID NUMBER(10) NOT NULL,
    CA_NAME VARCHAR2(50),
    TS_FILE NUMBER(10),
    KS_FILE NUMBER(10),
    CA_DATE DATE,
    CA_DIRECTORY VARCHAR2(200) default 'd:/keystore',
    CA_TSORIN_NAME VARCHAR2(200),
    CA_KSORIN_NAME VARCHAR2(200),
    TS_PASSWORD VARCHAR2(50),
    KS_PASSWORD VARCHAR2(50),
    NEEDSUPDATE NUMBER(1) default 1
);

ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_PK
PRIMARY KEY (CA_ID);






-----------------------------------------------------------------------------
-- esb_params
-----------------------------------------------------------------------------
DROP TABLE esb_params CASCADE CONSTRAINTS;

CREATE TABLE esb_params
(
    NODE_ID VARCHAR2(368) NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    VALUE VARCHAR2(100),
    PARAM_TYPE VARCHAR2(368) NOT NULL,
    ISBIGDATA NUMBER(20,0) default 0,
    BIGDATA BLOB,
    RN NUMBER(20,0) default 0 NOT NULL
);

ALTER TABLE esb_params
    ADD CONSTRAINT esb_params_PK
PRIMARY KEY (NODE_ID,NAME,PARAM_TYPE,RN);






-----------------------------------------------------------------------------
-- MQ_BIG_LOB
-----------------------------------------------------------------------------
DROP TABLE MQ_BIG_LOB CASCADE CONSTRAINTS;

CREATE TABLE MQ_BIG_LOB
(
    LOB_ID NUMBER(10) NOT NULL,
    LOB_CONTENT BLOB,
    LOB_NAME VARCHAR2(100)
);

ALTER TABLE MQ_BIG_LOB
    ADD CONSTRAINT MQ_BIG_LOB_PK
PRIMARY KEY (LOB_ID);






-----------------------------------------------------------------------------
-- MQ_GROUP
-----------------------------------------------------------------------------
DROP TABLE MQ_GROUP CASCADE CONSTRAINTS;

CREATE TABLE MQ_GROUP
(
    BROKER_ID NUMBER(10),
    GROUP_ID NUMBER(10) NOT NULL,
    GROUP_NAME VARCHAR2(100)
);

ALTER TABLE MQ_GROUP
    ADD CONSTRAINT MQ_GROUP_PK
PRIMARY KEY (GROUP_ID);






-----------------------------------------------------------------------------
-- MQ_HUGEMESSAGE_SCHEDULE
-----------------------------------------------------------------------------
DROP TABLE MQ_HUGEMESSAGE_SCHEDULE CASCADE CONSTRAINTS;

CREATE TABLE MQ_HUGEMESSAGE_SCHEDULE
(
    TASK_ID NUMBER(10) NOT NULL,
    SCHEDULE_ID VARCHAR2(50) NOT NULL,
    STATES CLOB,
    FILE_PATH VARCHAR2(500),
    FILE_SIZE NUMBER(22),
    SEGMENT_SIZE NUMBER(22),
    DEST_NAME VARCHAR2(30),
    FINISHED VARCHAR2(2) default '0',
    REG_DATE TIMESTAMP default SYSTIMESTAMP,
    ISBROKE NUMBER(1) default 1,
    USEPARREL NUMBER(1) default 1,
    TASKTYPE NUMBER(1) default 0 NOT NULL,
    SENDPATH VARCHAR2(500),
    MACHINE_UUID VARCHAR2(100),
    BUSSINESS_ID VARCHAR2(255)
);

ALTER TABLE MQ_HUGEMESSAGE_SCHEDULE
    ADD CONSTRAINT MQ_HUGEMESSAGE_SCHEDULE_PK
PRIMARY KEY (TASK_ID);






-----------------------------------------------------------------------------
-- MQ_HUGEMESSAGE_SCHEDULECHECK
-----------------------------------------------------------------------------
DROP TABLE MQ_HUGEMESSAGE_SCHEDULECHECK CASCADE CONSTRAINTS;

CREATE TABLE MQ_HUGEMESSAGE_SCHEDULECHECK
(
    TASK_ID NUMBER(10) NOT NULL,
    SCHEDULE_ID VARCHAR2(50) NOT NULL,
    STATES CLOB,
    FILE_PATH VARCHAR2(500),
    FILE_SIZE NUMBER(22),
    SEGMENT_SIZE NUMBER(22),
    DEST_NAME VARCHAR2(30),
    FINISHED VARCHAR2(2) default '0',
    REG_DATE TIMESTAMP default SYSTIMESTAMP,
    ISBROKE NUMBER(1) default 1,
    USEPARREL NUMBER(1) default 1,
    TASKTYPE NUMBER(1) default 0 NOT NULL,
    SENDPATH VARCHAR2(500),
    MACHINE_UUID VARCHAR2(100),
    BUSSINESS_ID VARCHAR2(255)
);







-----------------------------------------------------------------------------
-- MQ_MEM_CONF
-----------------------------------------------------------------------------
DROP TABLE MQ_MEM_CONF CASCADE CONSTRAINTS;

CREATE TABLE MQ_MEM_CONF
(
    CONFIG_ID NUMBER(10) NOT NULL,
    BROKER_ID NUMBER(10),
    OBJECT_TYPE NUMBER(1) default 0,
    OBJECT_NAME VARCHAR2(100),
    MEM_LIMIT VARCHAR2(100) default '5 mb',
    DEAD_PREFIX VARCHAR2(100),
    PRODUCERFLOWCONTROL NUMBER(1) default 0
);

ALTER TABLE MQ_MEM_CONF
    ADD CONSTRAINT MQ_MEM_CONF_PK
PRIMARY KEY (CONFIG_ID);






-----------------------------------------------------------------------------
-- MQ_MIRROR_TABLE
-----------------------------------------------------------------------------
DROP TABLE MQ_MIRROR_TABLE CASCADE CONSTRAINTS;

CREATE TABLE MQ_MIRROR_TABLE
(
    MIRROR_NAME VARCHAR2(255),
    MIRROR_ID NUMBER(10) NOT NULL,
    BROKER_ID NUMBER(10),
    REMARK VARCHAR2(500),
    MIRROR_PREFIX VARCHAR2(100),
    COPYMESSAGE NUMBER(1) default 0
);

ALTER TABLE MQ_MIRROR_TABLE
    ADD CONSTRAINT MQ_MIRROR_TABLE_PK
PRIMARY KEY (MIRROR_ID);






-----------------------------------------------------------------------------
-- MQ_MON_TABLE
-----------------------------------------------------------------------------
DROP TABLE MQ_MON_TABLE CASCADE CONSTRAINTS;

CREATE TABLE MQ_MON_TABLE
(
    MONITOR_ID NUMBER(10) NOT NULL,
    MQ_MONITOR_IP VARCHAR2(100),
    MQ_MONITOR_PORT VARCHAR2(10),
    MQ_JMXMON_PORT VARCHAR2(10),
    MQ_TCP_PORT VARCHAR2(10),
    MQ_USER VARCHAR2(50),
    MQ_PASSWORD VARCHAR2(50),
    MONITOR_NAME VARCHAR2(100)
);

ALTER TABLE MQ_MON_TABLE
    ADD CONSTRAINT MQ_MON_TABLE_PK
PRIMARY KEY (MONITOR_ID);






-----------------------------------------------------------------------------
-- MQ_PERMISSIONS
-----------------------------------------------------------------------------
DROP TABLE MQ_PERMISSIONS CASCADE CONSTRAINTS;

CREATE TABLE MQ_PERMISSIONS
(
    RESOURCE_TYPE VARCHAR2(100) default 'queue' NOT NULL,
    RES_NAME VARCHAR2(100) NOT NULL,
    RES_OP VARCHAR2(50) NOT NULL,
    GROUP_TYPE VARCHAR2(50) default 'group' NOT NULL,
    GROUP_NAME VARCHAR2(100) NOT NULL,
    BROKER_ID NUMBER(10) NOT NULL,
    AUTHOR VARCHAR2(100) default 'admin',
    AUTH_DATE DATE
);

ALTER TABLE MQ_PERMISSIONS
    ADD CONSTRAINT MQ_PERMISSIONS_PK
PRIMARY KEY (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID);






-----------------------------------------------------------------------------
-- MQ_POLICY_TABLE
-----------------------------------------------------------------------------
DROP TABLE MQ_POLICY_TABLE CASCADE CONSTRAINTS;

CREATE TABLE MQ_POLICY_TABLE
(
    BROKER_ID NUMBER(10),
    POLICY_ID NUMBER(10)
);







-----------------------------------------------------------------------------
-- MQ_ROUTERS
-----------------------------------------------------------------------------
DROP TABLE MQ_ROUTERS CASCADE CONSTRAINTS;

CREATE TABLE MQ_ROUTERS
(
    ROUTER_ID NUMBER(10) NOT NULL,
    ROUTER_NAME VARCHAR2(64),
    ROUTER_REGULAR CLOB,
    ISVALID NUMBER(1) default 1,
    IMPORTCLASS CLOB,
    ORDERBY NUMBER(5),
    OWNER NUMBER(10),
    OWNER_TYPE VARCHAR2(100)
);

ALTER TABLE MQ_ROUTERS
    ADD CONSTRAINT MQ_ROUTERS_PK
PRIMARY KEY (ROUTER_ID);






-----------------------------------------------------------------------------
-- MQ_RULES_TPL
-----------------------------------------------------------------------------
DROP TABLE MQ_RULES_TPL CASCADE CONSTRAINTS;

CREATE TABLE MQ_RULES_TPL
(
    RULE_TPL_ID NUMBER(10) NOT NULL,
    RULES CLOB,
    RULES_NAME VARCHAR2(200),
    MODIFIABLE NUMBER(1) default 1,
    TPL_AUTH VARCHAR2(50) default 'admin',
    TPL_DESC CLOB,
    RUTE_IMAGE VARCHAR2(255),
    IMPORTCLASS CLOB,
    ORDERBY NUMBER(4),
    TPL_TYPE NUMBER(1) default 0
);

ALTER TABLE MQ_RULES_TPL
    ADD CONSTRAINT MQ_RULES_TPL_PK
PRIMARY KEY (RULE_TPL_ID);






-----------------------------------------------------------------------------
-- MQ_SEGMENT_RECV_CACHE
-----------------------------------------------------------------------------
DROP TABLE MQ_SEGMENT_RECV_CACHE CASCADE CONSTRAINTS;

CREATE TABLE MQ_SEGMENT_RECV_CACHE
(
    SEGMENT_ID VARCHAR2(383) NOT NULL,
    CONTENT BLOB,
    OFFSET NUMBER(22),
    FILENAME VARCHAR2(500),
    SCHEDULEID VARCHAR2(50),
    FILESIZE NUMBER(22),
    SEGMENTSIZE NUMBER(22),
    REG_DATE TIMESTAMP default SYSTIMESTAMP,
    SEND_DESTINCTION VARCHAR2(200) NOT NULL
);

ALTER TABLE MQ_SEGMENT_RECV_CACHE
    ADD CONSTRAINT MQ_SEGMENT_RECV_CACHE_PK
PRIMARY KEY (SEGMENT_ID,SEND_DESTINCTION);






-----------------------------------------------------------------------------
-- MQ_SEGMENT_RECV_CACHECHECK
-----------------------------------------------------------------------------
DROP TABLE MQ_SEGMENT_RECV_CACHECHECK CASCADE CONSTRAINTS;

CREATE TABLE MQ_SEGMENT_RECV_CACHECHECK
(
    SEGMENT_ID VARCHAR2(500) NOT NULL,
    CONTENT BLOB,
    OFFSET NUMBER(22),
    FILENAME VARCHAR2(500),
    SCHEDULEID VARCHAR2(50),
    FILESIZE NUMBER(22),
    SEGMENTSIZE NUMBER(22),
    REG_DATE TIMESTAMP default SYSTIMESTAMP,
    SEND_DESTINCTION VARCHAR2(200) NOT NULL
);







-----------------------------------------------------------------------------
-- MQ_USERS
-----------------------------------------------------------------------------
DROP TABLE MQ_USERS CASCADE CONSTRAINTS;

CREATE TABLE MQ_USERS
(
    BROKER_ID NUMBER(10),
    USER_ID NUMBER(10) NOT NULL,
    USER_NAME VARCHAR2(50),
    USER_PASSWORD VARCHAR2(50)
);

ALTER TABLE MQ_USERS
    ADD CONSTRAINT MQ_USERS_PK
PRIMARY KEY (USER_ID);






-----------------------------------------------------------------------------
-- MQ_VIRTUAL_NODES
-----------------------------------------------------------------------------
DROP TABLE MQ_VIRTUAL_NODES CASCADE CONSTRAINTS;

CREATE TABLE MQ_VIRTUAL_NODES
(
    BROKER_ID NUMBER(10),
    NODE_NAME VARCHAR2(100) NOT NULL,
    VIRTUAL_NODEID NUMBER(10) NOT NULL,
    NODE_TYPE NUMBER(1) default 0,
    COPYMESSAGE NUMBER(1) default 1,
    FORWARDONLY NUMBER(1) default 1
);

ALTER TABLE MQ_VIRTUAL_NODES
    ADD CONSTRAINT MQ_VIRTUAL_NODES_PK
PRIMARY KEY (VIRTUAL_NODEID);






-----------------------------------------------------------------------------
-- ROUTER_SERVERS
-----------------------------------------------------------------------------
DROP TABLE ROUTER_SERVERS CASCADE CONSTRAINTS;

CREATE TABLE ROUTER_SERVERS
(
    SERVER_ID NUMBER(10) NOT NULL,
    SERVER_NAME VARCHAR2(50),
    SERVER_DESC VARCHAR2(200)
);

ALTER TABLE ROUTER_SERVERS
    ADD CONSTRAINT ROUTER_SERVERS_PK
PRIMARY KEY (SERVER_ID);






-----------------------------------------------------------------------------
-- RPC_SERVER
-----------------------------------------------------------------------------
DROP TABLE RPC_SERVER CASCADE CONSTRAINTS;

CREATE TABLE RPC_SERVER
(
    ID VARCHAR2(100) NOT NULL,
    RPC_NAME VARCHAR2(50),
    RPC_PROTOCOL VARCHAR2(50),
    RPC_ADDR VARCHAR2(100),
    RPC_USER VARCHAR2(50),
    RPC_PASSWORD VARCHAR2(50),
    RPC_MC NUMBER(1)
);

ALTER TABLE RPC_SERVER
    ADD CONSTRAINT RPC_SERVER_PK
PRIMARY KEY (ID);





ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_1 FOREIGN KEY (USER_ID)
    REFERENCES MQ_USERS (USER_ID)
;

ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_2 FOREIGN KEY (GROUP_ID)
    REFERENCES MQ_GROUP (GROUP_ID)
;



ALTER TABLE MQ_CONNECTORS
    ADD CONSTRAINT MQ_CONNECTORS_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_PROPERTIES
    ADD CONSTRAINT FK_TASK_PROPERTIES FOREIGN KEY (TASK_ID)
    REFERENCES MQ_HUGEMESSAGE_SCHEDULE (TASK_ID)
;



ALTER TABLE MQ_REAL_NODES
    ADD CONSTRAINT MQ_REAL_NODES_FK_1 FOREIGN KEY (VIRTUAL_NODEID)
    REFERENCES MQ_VIRTUAL_NODES (VIRTUAL_NODEID)
;



ALTER TABLE MQ_ROUTENODE
    ADD CONSTRAINT MQ_ROUTENODE_FK_1 FOREIGN KEY (NODE_ID)
    REFERENCES MQ_NODE (NODE_ID)
;



ALTER TABLE MQ_BROKER
    ADD CONSTRAINT MQ_BROKER_FK_1 FOREIGN KEY (SSL_TS)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_BROKER
    ADD CONSTRAINT MQ_BROKER_FK_2 FOREIGN KEY (SSL_KS)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;



ALTER TABLE MQ_NODE
    ADD CONSTRAINT MQ_NODE_FK_1 FOREIGN KEY (NODE_FACTORY_ID)
    REFERENCES MQ_NODE_FACTORY (NODE_FACTORY_ID)
;



ALTER TABLE MQ_NODE_FACTORY
    ADD CONSTRAINT MQ_NODE_FACTORY_FK_1 FOREIGN KEY (CA_ID)
    REFERENCES MQ_CLIENT_CA (CA_ID)
;



ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_1 FOREIGN KEY (KS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_2 FOREIGN KEY (TS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;







































