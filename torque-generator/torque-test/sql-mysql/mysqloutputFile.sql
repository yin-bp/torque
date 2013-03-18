
# -----------------------------------------------------------------------
# ACTIVEMQ_ACKS
# -----------------------------------------------------------------------
drop table if exists ACTIVEMQ_ACKS;

CREATE TABLE ACTIVEMQ_ACKS
(
    CONTAINER VARCHAR(250) NOT NULL,
    SUB_DEST VARCHAR(250),
    CLIENT_ID VARCHAR(250) NOT NULL,
    SUB_NAME VARCHAR(250) NOT NULL,
    SELECTOR VARCHAR(250),
    LAST_ACKED_ID DECIMAL(22),
    PRIMARY KEY(CONTAINER,CLIENT_ID,SUB_NAME));


# -----------------------------------------------------------------------
# ACTIVEMQ_LOCK
# -----------------------------------------------------------------------
drop table if exists ACTIVEMQ_LOCK;

CREATE TABLE ACTIVEMQ_LOCK
(
    ID DECIMAL(22) NOT NULL,
    TIME DECIMAL(22),
    BROKER_NAME VARCHAR(250),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# ACTIVEMQ_MSGS
# -----------------------------------------------------------------------
drop table if exists ACTIVEMQ_MSGS;

CREATE TABLE ACTIVEMQ_MSGS
(
    ID DECIMAL(22) NOT NULL,
    CONTAINER VARCHAR(250),
    MSGID_PROD VARCHAR(250),
    MSGID_SEQ DECIMAL(22),
    EXPIRATION DECIMAL(22),
    MSG LONGBLOB,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# CC_TRIG_MSG
# -----------------------------------------------------------------------
drop table if exists CC_TRIG_MSG;

CREATE TABLE CC_TRIG_MSG
(
    RECORD_ID VARCHAR(50),
    OPERATE_FLAG CHAR(1),
    REMARK VARCHAR(255),
    TABNAME VARCHAR(64));


# -----------------------------------------------------------------------
# DEMO
# -----------------------------------------------------------------------
drop table if exists DEMO;

CREATE TABLE DEMO
(
    USER_NAME VARCHAR(50),
    USER_PWD VARCHAR(50));


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
# GROUP_USERS
# -----------------------------------------------------------------------
drop table if exists GROUP_USERS;

CREATE TABLE GROUP_USERS
(
    USER_ID DECIMAL(10) NOT NULL,
    GROUP_ID DECIMAL(10) NOT NULL,
    PRIMARY KEY(USER_ID,GROUP_ID));


# -----------------------------------------------------------------------
# J3_ADDRESS_LINE
# -----------------------------------------------------------------------
drop table if exists J3_ADDRESS_LINE;

CREATE TABLE J3_ADDRESS_LINE
(
    ID DECIMAL(19) NOT NULL,
    KEY_NAME VARCHAR(510),
    KEY_VALUE VARCHAR(510),
    LINE VARCHAR(160) NOT NULL,
    ADDRESS_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_ADDRESS
# -----------------------------------------------------------------------
drop table if exists J3_ADDRESS;

CREATE TABLE J3_ADDRESS
(
    ID DECIMAL(19) NOT NULL,
    SORT_CODE VARCHAR(20),
    TMODEL_KEY VARCHAR(510),
    USE_TYPE VARCHAR(510),
    ADDRESS_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_AUTH_TOKEN
# -----------------------------------------------------------------------
drop table if exists J3_AUTH_TOKEN;

CREATE TABLE J3_AUTH_TOKEN
(
    AUTH_TOKEN VARCHAR(102) NOT NULL,
    AUTHORIZED_NAME VARCHAR(40) NOT NULL,
    CREATED TIMESTAMP NOT NULL,
    LAST_USED TIMESTAMP NOT NULL,
    NUMBER_OF_USES DECIMAL(10) NOT NULL,
    PUBLISHER_NAME VARCHAR(510),
    TOKEN_STATE DECIMAL(10) NOT NULL,
    PRIMARY KEY(AUTH_TOKEN));


# -----------------------------------------------------------------------
# J3_BINDING_CATEGORY_BAG
# -----------------------------------------------------------------------
drop table if exists J3_BINDING_CATEGORY_BAG;

CREATE TABLE J3_BINDING_CATEGORY_BAG
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BINDING_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_BINDING_DESCR;

CREATE TABLE J3_BINDING_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_INSTANCE_DETAILS_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_INSTANCE_DETAILS_DESCR;

CREATE TABLE J3_INSTANCE_DETAILS_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    TMODEL_INSTANCE_INFO_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BUSINESS_CATEGORY_BAG
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_CATEGORY_BAG;

CREATE TABLE J3_BUSINESS_CATEGORY_BAG
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BUSINESS_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_DESCR;

CREATE TABLE J3_BUSINESS_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_CONTACT_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_CONTACT_DESCR;

CREATE TABLE J3_CONTACT_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    CONTACT_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BUSINESS_IDENTIFIER
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_IDENTIFIER;

CREATE TABLE J3_BUSINESS_IDENTIFIER
(
    ID DECIMAL(19) NOT NULL,
    KEY_NAME VARCHAR(510),
    KEY_VALUE VARCHAR(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR(510),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_BUSINESS_NAME
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_NAME;

CREATE TABLE J3_BUSINESS_NAME
(
    ID DECIMAL(19) NOT NULL,
    LANG_CODE VARCHAR(10),
    NAME VARCHAR(510) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_INSTANCE_DETAILS_DOC_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_INSTANCE_DETAILS_DOC_DESCR;

CREATE TABLE J3_INSTANCE_DETAILS_DOC_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    TMODEL_INSTANCE_INFO_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_KEYED_REFERENCE
# -----------------------------------------------------------------------
drop table if exists J3_KEYED_REFERENCE;

CREATE TABLE J3_KEYED_REFERENCE
(
    ID DECIMAL(19) NOT NULL,
    KEY_NAME VARCHAR(510),
    KEY_VALUE VARCHAR(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR(510),
    KEYED_REFERENCE_GROUP_ID DECIMAL(19),
    CATEGORY_BAG_ID DECIMAL(19),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_CLIENT_SUBSCRIPTIONINFO
# -----------------------------------------------------------------------
drop table if exists J3_CLIENT_SUBSCRIPTIONINFO;

CREATE TABLE J3_CLIENT_SUBSCRIPTIONINFO
(
    SUBSCRIPTION_KEY VARCHAR(510) NOT NULL,
    LAST_NOTIFIED TIMESTAMP,
    TOCLERK_CLERK_NAME VARCHAR(510),
    FROMCLERK_CLERK_NAME VARCHAR(510),
    PRIMARY KEY(SUBSCRIPTION_KEY));


# -----------------------------------------------------------------------
# J3_CLERK
# -----------------------------------------------------------------------
drop table if exists J3_CLERK;

CREATE TABLE J3_CLERK
(
    CLERK_NAME VARCHAR(510) NOT NULL,
    CRED VARCHAR(510),
    PUBLISHER_ID VARCHAR(510) NOT NULL,
    NODE_NAME VARCHAR(510),
    PRIMARY KEY(CLERK_NAME));


# -----------------------------------------------------------------------
# J3_DISCOVERY_URL
# -----------------------------------------------------------------------
drop table if exists J3_DISCOVERY_URL;

CREATE TABLE J3_DISCOVERY_URL
(
    ID DECIMAL(19) NOT NULL,
    URL VARCHAR(510) NOT NULL,
    USE_TYPE VARCHAR(510) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_EMAIL
# -----------------------------------------------------------------------
drop table if exists J3_EMAIL;

CREATE TABLE J3_EMAIL
(
    ID DECIMAL(19) NOT NULL,
    EMAIL_ADDRESS VARCHAR(510) NOT NULL,
    USE_TYPE VARCHAR(510),
    CONTACT_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_OVERVIEW_DOC_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_OVERVIEW_DOC_DESCR;

CREATE TABLE J3_OVERVIEW_DOC_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    OVERVIEW_DOC_ID DECIMAL(19),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_PERSON_NAME
# -----------------------------------------------------------------------
drop table if exists J3_PERSON_NAME;

CREATE TABLE J3_PERSON_NAME
(
    ID DECIMAL(19) NOT NULL,
    LANG_CODE VARCHAR(10),
    NAME VARCHAR(510) NOT NULL,
    CONTACT_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TMODEL_INSTANCE_INFO_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL_INSTANCE_INFO_DESCR;

CREATE TABLE J3_TMODEL_INSTANCE_INFO_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    TMODEL_INSTANCE_INFO_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


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
# J3_KEYED_REFERENCE_GROUP
# -----------------------------------------------------------------------
drop table if exists J3_KEYED_REFERENCE_GROUP;

CREATE TABLE J3_KEYED_REFERENCE_GROUP
(
    ID DECIMAL(19) NOT NULL,
    TMODEL_KEY VARCHAR(510),
    CATEGORY_BAG_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TMODEL_CATEGORY_BAG
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL_CATEGORY_BAG;

CREATE TABLE J3_TMODEL_CATEGORY_BAG
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_NODE
# -----------------------------------------------------------------------
drop table if exists J3_NODE;

CREATE TABLE J3_NODE
(
    NAME VARCHAR(510) NOT NULL,
    CUSTODY_TRANSFER_URL VARCHAR(510) NOT NULL,
    FACTORY_INITIAL VARCHAR(510),
    FACTORY_NAMING_PROVIDER VARCHAR(510),
    FACTORY_URL_PKGS VARCHAR(510),
    INQUIRY_URL VARCHAR(510) NOT NULL,
    JUDDI_API_URL VARCHAR(510),
    PROXY_TRANSPORT VARCHAR(510) NOT NULL,
    PUBLISH_URL VARCHAR(510) NOT NULL,
    SECURITY_URL VARCHAR(510) NOT NULL,
    SUBSCRIPTION_URL VARCHAR(510) NOT NULL,
    PRIMARY KEY(NAME));


# -----------------------------------------------------------------------
# J3_BINDING_TEMPLATE
# -----------------------------------------------------------------------
drop table if exists J3_BINDING_TEMPLATE;

CREATE TABLE J3_BINDING_TEMPLATE
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    ACCESS_POINT_TYPE VARCHAR(40),
    ACCESS_POINT_URL VARCHAR(4000),
    HOSTING_REDIRECTOR VARCHAR(510),
    SERVICE_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ENTITY_KEY));


# -----------------------------------------------------------------------
# J3_OVERVIEW_DOC
# -----------------------------------------------------------------------
drop table if exists J3_OVERVIEW_DOC;

CREATE TABLE J3_OVERVIEW_DOC
(
    ID DECIMAL(19) NOT NULL,
    OVERVIEW_URL VARCHAR(510) NOT NULL,
    OVERVIEW_URL_USE_TYPE VARCHAR(510),
    TOMODEL_INSTANCE_INFO_ID DECIMAL(19),
    ENTITY_KEY VARCHAR(510),
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_PHONE
# -----------------------------------------------------------------------
drop table if exists J3_PHONE;

CREATE TABLE J3_PHONE
(
    ID DECIMAL(19) NOT NULL,
    PHONE_NUMBER VARCHAR(100) NOT NULL,
    USE_TYPE VARCHAR(510),
    CONTACT_ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_CONTACT
# -----------------------------------------------------------------------
drop table if exists J3_CONTACT;

CREATE TABLE J3_CONTACT
(
    ID DECIMAL(19) NOT NULL,
    USE_TYPE VARCHAR(510),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_PUBLISHER
# -----------------------------------------------------------------------
drop table if exists J3_PUBLISHER;

CREATE TABLE J3_PUBLISHER
(
    AUTHORIZED_NAME VARCHAR(510) NOT NULL,
    EMAIL_ADDRESS VARCHAR(510),
    IS_ADMIN VARCHAR(10),
    IS_ENABLED VARCHAR(10),
    MAX_BINDINGS_PER_SERVICE DECIMAL(10),
    MAX_BUSINESSES DECIMAL(10),
    MAX_SERVICES_PER_BUSINESS DECIMAL(10),
    MAX_TMODELS DECIMAL(10),
    PUBLISHER_NAME VARCHAR(510) NOT NULL,
    PRIMARY KEY(AUTHORIZED_NAME));


# -----------------------------------------------------------------------
# J3_PUBLISHER_ASSERTION
# -----------------------------------------------------------------------
drop table if exists J3_PUBLISHER_ASSERTION;

CREATE TABLE J3_PUBLISHER_ASSERTION
(
    FROM_KEY VARCHAR(510) NOT NULL,
    TO_KEY VARCHAR(510) NOT NULL,
    FROM_CHECK VARCHAR(10) NOT NULL,
    KEY_NAME VARCHAR(510) NOT NULL,
    KEY_VALUE VARCHAR(510) NOT NULL,
    TMODEL_KEY VARCHAR(510) NOT NULL,
    TO_CHECK VARCHAR(10) NOT NULL,
    PRIMARY KEY(FROM_KEY,TO_KEY));


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
# J3_SERVICE_PROJECTION
# -----------------------------------------------------------------------
drop table if exists J3_SERVICE_PROJECTION;

CREATE TABLE J3_SERVICE_PROJECTION
(
    BUSINESS_KEY VARCHAR(510) NOT NULL,
    SERVICE_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(BUSINESS_KEY,SERVICE_KEY));


# -----------------------------------------------------------------------
# J3_BUSINESS_SERVICE
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_SERVICE;

CREATE TABLE J3_BUSINESS_SERVICE
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    BUSINESS_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ENTITY_KEY));


# -----------------------------------------------------------------------
# J3_SUBSCRIPTION_MATCH
# -----------------------------------------------------------------------
drop table if exists J3_SUBSCRIPTION_MATCH;

CREATE TABLE J3_SUBSCRIPTION_MATCH
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    SUBSCRIPTION_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_SUBSCRIPTION_CHUNK_TOKEN
# -----------------------------------------------------------------------
drop table if exists J3_SUBSCRIPTION_CHUNK_TOKEN;

CREATE TABLE J3_SUBSCRIPTION_CHUNK_TOKEN
(
    CHUNK_TOKEN VARCHAR(510) NOT NULL,
    DATA DECIMAL(10) NOT NULL,
    END_POINT TIMESTAMP,
    EXPIRES_AFTER TIMESTAMP NOT NULL,
    START_POINT TIMESTAMP,
    SUBSCRIPTION_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(CHUNK_TOKEN));


# -----------------------------------------------------------------------
# J3_SUBSCRIPTION
# -----------------------------------------------------------------------
drop table if exists J3_SUBSCRIPTION;

CREATE TABLE J3_SUBSCRIPTION
(
    SUBSCRIPTION_KEY VARCHAR(510) NOT NULL,
    AUTHORIZED_NAME VARCHAR(510) NOT NULL,
    BINDING_KEY VARCHAR(510),
    BRIEF DECIMAL(1),
    CREATE_DATE TIMESTAMP NOT NULL,
    EXPIRES_AFTER TIMESTAMP,
    LAST_NOTIFIED TIMESTAMP,
    MAX_ENTITIES DECIMAL(10),
    NOTIFICATION_INTERVAL VARCHAR(510),
    SUBSCRIPTION_FILTER LONGTEXT NOT NULL,
    PRIMARY KEY(SUBSCRIPTION_KEY));


# -----------------------------------------------------------------------
# J3_TMODEL_DESCR
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL_DESCR;

CREATE TABLE J3_TMODEL_DESCR
(
    ID DECIMAL(19) NOT NULL,
    DESCR VARCHAR(2048) NOT NULL,
    LANG_CODE VARCHAR(10),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_CATEGORY_BAG
# -----------------------------------------------------------------------
drop table if exists J3_CATEGORY_BAG;

CREATE TABLE J3_CATEGORY_BAG
(
    ID DECIMAL(19) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TMODEL_IDENTIFIER
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL_IDENTIFIER;

CREATE TABLE J3_TMODEL_IDENTIFIER
(
    ID DECIMAL(19) NOT NULL,
    KEY_NAME VARCHAR(510),
    KEY_VALUE VARCHAR(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR(510),
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TMODEL
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL;

CREATE TABLE J3_TMODEL
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    DELETED DECIMAL(1),
    LANG_CODE VARCHAR(10),
    NAME VARCHAR(510) NOT NULL,
    PRIMARY KEY(ENTITY_KEY));


# -----------------------------------------------------------------------
# J3_BUSINESS_ENTITY
# -----------------------------------------------------------------------
drop table if exists J3_BUSINESS_ENTITY;

CREATE TABLE J3_BUSINESS_ENTITY
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ENTITY_KEY));


# -----------------------------------------------------------------------
# J3_TMODEL_INSTANCE_INFO
# -----------------------------------------------------------------------
drop table if exists J3_TMODEL_INSTANCE_INFO;

CREATE TABLE J3_TMODEL_INSTANCE_INFO
(
    ID DECIMAL(19) NOT NULL,
    INSTANCE_PARMS VARCHAR(1024),
    TMODEL_KEY VARCHAR(510) NOT NULL,
    ENTITY_KEY VARCHAR(510) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TRANSFER_TOKEN_KEYS
# -----------------------------------------------------------------------
drop table if exists J3_TRANSFER_TOKEN_KEYS;

CREATE TABLE J3_TRANSFER_TOKEN_KEYS
(
    ID DECIMAL(19) NOT NULL,
    ENTITY_KEY VARCHAR(510),
    TRANSFER_TOKEN VARCHAR(102) NOT NULL,
    PRIMARY KEY(ID));


# -----------------------------------------------------------------------
# J3_TRANSFER_TOKEN
# -----------------------------------------------------------------------
drop table if exists J3_TRANSFER_TOKEN;

CREATE TABLE J3_TRANSFER_TOKEN
(
    TRANSFER_TOKEN VARCHAR(102) NOT NULL,
    EXPIRATION_DATE TIMESTAMP NOT NULL,
    PRIMARY KEY(TRANSFER_TOKEN));


# -----------------------------------------------------------------------
# J3_UDDI_ENTITY
# -----------------------------------------------------------------------
drop table if exists J3_UDDI_ENTITY;

CREATE TABLE J3_UDDI_ENTITY
(
    ENTITY_KEY VARCHAR(510) NOT NULL,
    AUTHORIZED_NAME VARCHAR(510) NOT NULL,
    CREATED TIMESTAMP,
    MODIFIED TIMESTAMP NOT NULL,
    MODIFIED_INCLUDING_CHILDREN TIMESTAMP,
    NODE_ID VARCHAR(510),
    PRIMARY KEY(ENTITY_KEY));


# -----------------------------------------------------------------------
# LOG217
# -----------------------------------------------------------------------
drop table if exists LOG217;

CREATE TABLE LOG217
(
    ID_BATCH DECIMAL(22),
    TRANSNAME VARCHAR(255),
    STATUS VARCHAR(15),
    LINES_READ DECIMAL(22),
    LINES_WRITTEN DECIMAL(22),
    LINES_UPDATED DECIMAL(22),
    LINES_INPUT DECIMAL(22),
    LINES_OUTPUT DECIMAL(22),
    ERRORS DECIMAL(22),
    STARTDATE DATETIME,
    ENDDATE DATETIME,
    LOGDATE DATETIME,
    DEPDATE DATETIME,
    REPLAYDATE DATETIME);


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
    PRIMARY KEY(CONNECTOR_ID));


# -----------------------------------------------------------------------
# MQ_CON_PARAMS
# -----------------------------------------------------------------------
drop table if exists MQ_CON_PARAMS;

CREATE TABLE MQ_CON_PARAMS
(
    NODE_ID DECIMAL(10) NOT NULL,
    NAME VARCHAR(100) NOT NULL,
    VALUE VARCHAR(100),
    PRIMARY KEY(NODE_ID,NAME));


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
    BROKER_ID DECIMAL(10),
    NODE_ID DECIMAL(10));


# -----------------------------------------------------------------------
# MQ_ROUTERS
# -----------------------------------------------------------------------
drop table if exists MQ_ROUTERS;

CREATE TABLE MQ_ROUTERS
(
    ROUTER_ID DECIMAL(10) NOT NULL,
    BROKER_ID DECIMAL(10),
    ROUTER_NAME VARCHAR(64),
    ROUTER_REGULAR LONGTEXT,
    ISVALID DECIMAL(1) default 1,
    IMPORTCLASS LONGTEXT,
    ORDERBY DECIMAL(5),
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
    IMPORTCLASS LONGTEXT,
    ORDERBY DECIMAL(4),
    RUTE_IMAGE VARCHAR(255),
    TPL_TYPE DECIMAL(1) default null,
    PRIMARY KEY(RULE_TPL_ID));


# -----------------------------------------------------------------------
# MQ_SEGMENT_RECV_CACHE
# -----------------------------------------------------------------------
drop table if exists MQ_SEGMENT_RECV_CACHE;

CREATE TABLE MQ_SEGMENT_RECV_CACHE
(
    SEGMENT_ID VARCHAR(500) NOT NULL,
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
    SEGMENT_ID VARCHAR(500) NOT NULL,
    CONTENT LONGBLOB,
    OFFSET DECIMAL(22),
    FILENAME VARCHAR(500),
    SCHEDULEID VARCHAR(50),
    FILESIZE DECIMAL(22),
    SEGMENTSIZE DECIMAL(22),
    REG_DATE TIMESTAMP default CURRENT_TIMESTAMP,
    SEND_DESTINCTION VARCHAR(200) NOT NULL);


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
    NC_URI VARCHAR(1000),
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
# R_CLUSTER
# -----------------------------------------------------------------------
drop table if exists R_CLUSTER;

CREATE TABLE R_CLUSTER
(
    ID_CLUSTER DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    BASE_PORT VARCHAR(255),
    SOCKETS_BUFFER_SIZE VARCHAR(255),
    SOCKETS_FLUSH_INTERVAL VARCHAR(255),
    SOCKETS_COMPRESSED CHAR(1),
    DYNAMIC_CLUSTER CHAR(1),
    PRIMARY KEY(ID_CLUSTER));


# -----------------------------------------------------------------------
# R_CLUSTER_SLAVE
# -----------------------------------------------------------------------
drop table if exists R_CLUSTER_SLAVE;

CREATE TABLE R_CLUSTER_SLAVE
(
    ID_CLUSTER_SLAVE DECIMAL(22) NOT NULL,
    ID_CLUSTER DECIMAL(22),
    ID_SLAVE DECIMAL(22),
    PRIMARY KEY(ID_CLUSTER_SLAVE));


# -----------------------------------------------------------------------
# R_CONDITION
# -----------------------------------------------------------------------
drop table if exists R_CONDITION;

CREATE TABLE R_CONDITION
(
    ID_CONDITION DECIMAL(22) NOT NULL,
    ID_CONDITION_PARENT DECIMAL(22),
    NEGATED CHAR(1),
    OPERATOR VARCHAR(255),
    LEFT_NAME VARCHAR(255),
    CONDITION_FUNCTION VARCHAR(255),
    RIGHT_NAME VARCHAR(255),
    ID_VALUE_RIGHT DECIMAL(22),
    PRIMARY KEY(ID_CONDITION));


# -----------------------------------------------------------------------
# R_DATABASE
# -----------------------------------------------------------------------
drop table if exists R_DATABASE;

CREATE TABLE R_DATABASE
(
    ID_DATABASE DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    ID_DATABASE_TYPE DECIMAL(22),
    ID_DATABASE_CONTYPE DECIMAL(22),
    HOST_NAME VARCHAR(255),
    DATABASE_NAME VARCHAR(255),
    PORT DECIMAL(22),
    USERNAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    SERVERNAME VARCHAR(255),
    DATA_TBS VARCHAR(255),
    INDEX_TBS VARCHAR(255),
    PRIMARY KEY(ID_DATABASE));


# -----------------------------------------------------------------------
# R_DATABASE_ATTRIBUTE
# -----------------------------------------------------------------------
drop table if exists R_DATABASE_ATTRIBUTE;

CREATE TABLE R_DATABASE_ATTRIBUTE
(
    ID_DATABASE_ATTRIBUTE DECIMAL(22) NOT NULL,
    ID_DATABASE DECIMAL(22),
    CODE VARCHAR(255),
    VALUE_STR LONGTEXT,
    PRIMARY KEY(ID_DATABASE_ATTRIBUTE));


# -----------------------------------------------------------------------
# R_DATABASE_CONTYPE
# -----------------------------------------------------------------------
drop table if exists R_DATABASE_CONTYPE;

CREATE TABLE R_DATABASE_CONTYPE
(
    ID_DATABASE_CONTYPE DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_DATABASE_CONTYPE));


# -----------------------------------------------------------------------
# R_DATABASE_TYPE
# -----------------------------------------------------------------------
drop table if exists R_DATABASE_TYPE;

CREATE TABLE R_DATABASE_TYPE
(
    ID_DATABASE_TYPE DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_DATABASE_TYPE));


# -----------------------------------------------------------------------
# R_DEPENDENCY
# -----------------------------------------------------------------------
drop table if exists R_DEPENDENCY;

CREATE TABLE R_DEPENDENCY
(
    ID_DEPENDENCY DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_DATABASE DECIMAL(22),
    TABLE_NAME VARCHAR(255),
    FIELD_NAME VARCHAR(255),
    PRIMARY KEY(ID_DEPENDENCY));


# -----------------------------------------------------------------------
# R_DIRECTORY
# -----------------------------------------------------------------------
drop table if exists R_DIRECTORY;

CREATE TABLE R_DIRECTORY
(
    ID_DIRECTORY DECIMAL(22) NOT NULL,
    ID_DIRECTORY_PARENT DECIMAL(22),
    DIRECTORY_NAME VARCHAR(255),
    PRIMARY KEY(ID_DIRECTORY));


# -----------------------------------------------------------------------
# R_JOB
# -----------------------------------------------------------------------
drop table if exists R_JOB;

CREATE TABLE R_JOB
(
    ID_JOB DECIMAL(22) NOT NULL,
    ID_DIRECTORY DECIMAL(22),
    NAME VARCHAR(255),
    DESCRIPTION LONGTEXT,
    EXTENDED_DESCRIPTION LONGTEXT,
    JOB_VERSION VARCHAR(255),
    JOB_STATUS DECIMAL(22),
    ID_DATABASE_LOG DECIMAL(22),
    TABLE_NAME_LOG VARCHAR(255),
    CREATED_USER VARCHAR(255),
    CREATED_DATE DATETIME,
    MODIFIED_USER VARCHAR(255),
    MODIFIED_DATE DATETIME,
    USE_BATCH_ID CHAR(1),
    PASS_BATCH_ID CHAR(1),
    USE_LOGFIELD CHAR(1),
    SHARED_FILE VARCHAR(255),
    PRIMARY KEY(ID_JOB));


# -----------------------------------------------------------------------
# R_JOBENTRY
# -----------------------------------------------------------------------
drop table if exists R_JOBENTRY;

CREATE TABLE R_JOBENTRY
(
    ID_JOBENTRY DECIMAL(22) NOT NULL,
    ID_JOB DECIMAL(22),
    ID_JOBENTRY_TYPE DECIMAL(22),
    NAME VARCHAR(255),
    DESCRIPTION LONGTEXT,
    PRIMARY KEY(ID_JOBENTRY));


# -----------------------------------------------------------------------
# R_JOBENTRY_ATTRIBUTE
# -----------------------------------------------------------------------
drop table if exists R_JOBENTRY_ATTRIBUTE;

CREATE TABLE R_JOBENTRY_ATTRIBUTE
(
    ID_JOBENTRY_ATTRIBUTE DECIMAL(22) NOT NULL,
    ID_JOB DECIMAL(22),
    ID_JOBENTRY DECIMAL(22),
    NR DECIMAL(22),
    CODE VARCHAR(255),
    VALUE_NUM DECIMAL(13,2),
    VALUE_STR LONGTEXT,
    PRIMARY KEY(ID_JOBENTRY_ATTRIBUTE));


# -----------------------------------------------------------------------
# R_JOBENTRY_COPY
# -----------------------------------------------------------------------
drop table if exists R_JOBENTRY_COPY;

CREATE TABLE R_JOBENTRY_COPY
(
    ID_JOBENTRY_COPY DECIMAL(22) NOT NULL,
    ID_JOBENTRY DECIMAL(22),
    ID_JOB DECIMAL(22),
    ID_JOBENTRY_TYPE DECIMAL(22),
    NR DECIMAL(22),
    GUI_LOCATION_X DECIMAL(22),
    GUI_LOCATION_Y DECIMAL(22),
    GUI_DRAW CHAR(1),
    PARALLEL CHAR(1),
    PRIMARY KEY(ID_JOBENTRY_COPY));


# -----------------------------------------------------------------------
# R_JOBENTRY_TYPE
# -----------------------------------------------------------------------
drop table if exists R_JOBENTRY_TYPE;

CREATE TABLE R_JOBENTRY_TYPE
(
    ID_JOBENTRY_TYPE DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_JOBENTRY_TYPE));


# -----------------------------------------------------------------------
# R_JOB_ATTRIBUTE
# -----------------------------------------------------------------------
drop table if exists R_JOB_ATTRIBUTE;

CREATE TABLE R_JOB_ATTRIBUTE
(
    ID_JOB_ATTRIBUTE DECIMAL(22) NOT NULL,
    ID_JOB DECIMAL(22),
    NR DECIMAL(22),
    CODE VARCHAR(255),
    VALUE_NUM DECIMAL(22),
    VALUE_STR LONGTEXT,
    PRIMARY KEY(ID_JOB_ATTRIBUTE));


# -----------------------------------------------------------------------
# R_JOB_HOP
# -----------------------------------------------------------------------
drop table if exists R_JOB_HOP;

CREATE TABLE R_JOB_HOP
(
    ID_JOB_HOP DECIMAL(22) NOT NULL,
    ID_JOB DECIMAL(22),
    ID_JOBENTRY_COPY_FROM DECIMAL(22),
    ID_JOBENTRY_COPY_TO DECIMAL(22),
    ENABLED CHAR(1),
    EVALUATION CHAR(1),
    UNCONDITIONAL CHAR(1),
    PRIMARY KEY(ID_JOB_HOP));


# -----------------------------------------------------------------------
# R_JOB_NOTE
# -----------------------------------------------------------------------
drop table if exists R_JOB_NOTE;

CREATE TABLE R_JOB_NOTE
(
    ID_JOB DECIMAL(22),
    ID_NOTE DECIMAL(22));


# -----------------------------------------------------------------------
# R_LOG
# -----------------------------------------------------------------------
drop table if exists R_LOG;

CREATE TABLE R_LOG
(
    ID_LOG DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    ID_LOGLEVEL DECIMAL(22),
    LOGTYPE VARCHAR(255),
    FILENAME VARCHAR(255),
    FILEEXTENTION VARCHAR(255),
    ADD_DATE CHAR(1),
    ADD_TIME CHAR(1),
    ID_DATABASE_LOG DECIMAL(22),
    TABLE_NAME_LOG VARCHAR(255),
    PRIMARY KEY(ID_LOG));


# -----------------------------------------------------------------------
# R_LOGLEVEL
# -----------------------------------------------------------------------
drop table if exists R_LOGLEVEL;

CREATE TABLE R_LOGLEVEL
(
    ID_LOGLEVEL DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_LOGLEVEL));


# -----------------------------------------------------------------------
# R_NOTE
# -----------------------------------------------------------------------
drop table if exists R_NOTE;

CREATE TABLE R_NOTE
(
    ID_NOTE DECIMAL(22) NOT NULL,
    VALUE_STR LONGTEXT,
    GUI_LOCATION_X DECIMAL(22),
    GUI_LOCATION_Y DECIMAL(22),
    GUI_LOCATION_WIDTH DECIMAL(22),
    GUI_LOCATION_HEIGHT DECIMAL(22),
    PRIMARY KEY(ID_NOTE));


# -----------------------------------------------------------------------
# R_PARTITION
# -----------------------------------------------------------------------
drop table if exists R_PARTITION;

CREATE TABLE R_PARTITION
(
    ID_PARTITION DECIMAL(22) NOT NULL,
    ID_PARTITION_SCHEMA DECIMAL(22),
    PARTITION_ID VARCHAR(255),
    PRIMARY KEY(ID_PARTITION));


# -----------------------------------------------------------------------
# R_PARTITION_SCHEMA
# -----------------------------------------------------------------------
drop table if exists R_PARTITION_SCHEMA;

CREATE TABLE R_PARTITION_SCHEMA
(
    ID_PARTITION_SCHEMA DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    DYNAMIC_DEFINITION CHAR(1),
    PARTITIONS_PER_SLAVE VARCHAR(255),
    PRIMARY KEY(ID_PARTITION_SCHEMA));


# -----------------------------------------------------------------------
# R_PERMISSION
# -----------------------------------------------------------------------
drop table if exists R_PERMISSION;

CREATE TABLE R_PERMISSION
(
    ID_PERMISSION DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_PERMISSION));


# -----------------------------------------------------------------------
# R_PROFILE
# -----------------------------------------------------------------------
drop table if exists R_PROFILE;

CREATE TABLE R_PROFILE
(
    ID_PROFILE DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY(ID_PROFILE));


# -----------------------------------------------------------------------
# R_PROFILE_PERMISSION
# -----------------------------------------------------------------------
drop table if exists R_PROFILE_PERMISSION;

CREATE TABLE R_PROFILE_PERMISSION
(
    ID_PROFILE DECIMAL(22),
    ID_PERMISSION DECIMAL(22));


# -----------------------------------------------------------------------
# R_REPOSITORY_LOG
# -----------------------------------------------------------------------
drop table if exists R_REPOSITORY_LOG;

CREATE TABLE R_REPOSITORY_LOG
(
    ID_REPOSITORY_LOG DECIMAL(22) NOT NULL,
    REP_VERSION VARCHAR(255),
    LOG_DATE DATETIME,
    LOG_USER VARCHAR(255),
    OPERATION_DESC LONGTEXT,
    PRIMARY KEY(ID_REPOSITORY_LOG));


# -----------------------------------------------------------------------
# R_SLAVE
# -----------------------------------------------------------------------
drop table if exists R_SLAVE;

CREATE TABLE R_SLAVE
(
    ID_SLAVE DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    HOST_NAME VARCHAR(255),
    PORT VARCHAR(255),
    USERNAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    PROXY_HOST_NAME VARCHAR(255),
    PROXY_PORT VARCHAR(255),
    NON_PROXY_HOSTS VARCHAR(255),
    MASTER CHAR(1),
    PRIMARY KEY(ID_SLAVE));


# -----------------------------------------------------------------------
# R_STEP
# -----------------------------------------------------------------------
drop table if exists R_STEP;

CREATE TABLE R_STEP
(
    ID_STEP DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    NAME VARCHAR(255),
    DESCRIPTION LONGTEXT,
    ID_STEP_TYPE DECIMAL(22),
    DISTRIBUTE CHAR(1),
    COPIES DECIMAL(22),
    GUI_LOCATION_X DECIMAL(22),
    GUI_LOCATION_Y DECIMAL(22),
    GUI_DRAW CHAR(1),
    PRIMARY KEY(ID_STEP));


# -----------------------------------------------------------------------
# R_STEP_ATTRIBUTE
# -----------------------------------------------------------------------
drop table if exists R_STEP_ATTRIBUTE;

CREATE TABLE R_STEP_ATTRIBUTE
(
    ID_STEP_ATTRIBUTE DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_STEP DECIMAL(22),
    NR DECIMAL(22),
    CODE VARCHAR(255),
    VALUE_NUM DECIMAL(22),
    VALUE_STR LONGTEXT,
    PRIMARY KEY(ID_STEP_ATTRIBUTE));


# -----------------------------------------------------------------------
# R_STEP_DATABASE
# -----------------------------------------------------------------------
drop table if exists R_STEP_DATABASE;

CREATE TABLE R_STEP_DATABASE
(
    ID_TRANSFORMATION DECIMAL(22),
    ID_STEP DECIMAL(22),
    ID_DATABASE DECIMAL(22));


# -----------------------------------------------------------------------
# R_STEP_TYPE
# -----------------------------------------------------------------------
drop table if exists R_STEP_TYPE;

CREATE TABLE R_STEP_TYPE
(
    ID_STEP_TYPE DECIMAL(22) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    HELPTEXT VARCHAR(255),
    PRIMARY KEY(ID_STEP_TYPE));


# -----------------------------------------------------------------------
# R_TRANSFORMATION
# -----------------------------------------------------------------------
drop table if exists R_TRANSFORMATION;

CREATE TABLE R_TRANSFORMATION
(
    ID_TRANSFORMATION DECIMAL(22) NOT NULL,
    ID_DIRECTORY DECIMAL(22),
    NAME VARCHAR(255),
    DESCRIPTION LONGTEXT,
    EXTENDED_DESCRIPTION LONGTEXT,
    TRANS_VERSION VARCHAR(255),
    TRANS_STATUS DECIMAL(22),
    ID_STEP_READ DECIMAL(22),
    ID_STEP_WRITE DECIMAL(22),
    ID_STEP_INPUT DECIMAL(22),
    ID_STEP_OUTPUT DECIMAL(22),
    ID_STEP_UPDATE DECIMAL(22),
    ID_DATABASE_LOG DECIMAL(22),
    TABLE_NAME_LOG VARCHAR(255),
    USE_BATCHID CHAR(1),
    USE_LOGFIELD CHAR(1),
    ID_DATABASE_MAXDATE DECIMAL(22),
    TABLE_NAME_MAXDATE VARCHAR(255),
    FIELD_NAME_MAXDATE VARCHAR(255),
    OFFSET_MAXDATE DECIMAL(12,2),
    DIFF_MAXDATE DECIMAL(12,2),
    CREATED_USER VARCHAR(255),
    CREATED_DATE DATETIME,
    MODIFIED_USER VARCHAR(255),
    MODIFIED_DATE DATETIME,
    SIZE_ROWSET DECIMAL(22),
    PRIMARY KEY(ID_TRANSFORMATION));


# -----------------------------------------------------------------------
# R_TRANS_ATTRIBUTE
# -----------------------------------------------------------------------
drop table if exists R_TRANS_ATTRIBUTE;

CREATE TABLE R_TRANS_ATTRIBUTE
(
    ID_TRANS_ATTRIBUTE DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    NR DECIMAL(22),
    CODE VARCHAR(255),
    VALUE_NUM DECIMAL(22),
    VALUE_STR LONGTEXT,
    PRIMARY KEY(ID_TRANS_ATTRIBUTE));


# -----------------------------------------------------------------------
# R_TRANS_CLUSTER
# -----------------------------------------------------------------------
drop table if exists R_TRANS_CLUSTER;

CREATE TABLE R_TRANS_CLUSTER
(
    ID_TRANS_CLUSTER DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_CLUSTER DECIMAL(22),
    PRIMARY KEY(ID_TRANS_CLUSTER));


# -----------------------------------------------------------------------
# R_TRANS_HOP
# -----------------------------------------------------------------------
drop table if exists R_TRANS_HOP;

CREATE TABLE R_TRANS_HOP
(
    ID_TRANS_HOP DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_STEP_FROM DECIMAL(22),
    ID_STEP_TO DECIMAL(22),
    ENABLED CHAR(1),
    CONDITION VARCHAR(64),
    PRIMARY KEY(ID_TRANS_HOP));


# -----------------------------------------------------------------------
# R_TRANS_NOTE
# -----------------------------------------------------------------------
drop table if exists R_TRANS_NOTE;

CREATE TABLE R_TRANS_NOTE
(
    ID_TRANSFORMATION DECIMAL(22),
    ID_NOTE DECIMAL(22));


# -----------------------------------------------------------------------
# R_TRANS_PARTITION_SCHEMA
# -----------------------------------------------------------------------
drop table if exists R_TRANS_PARTITION_SCHEMA;

CREATE TABLE R_TRANS_PARTITION_SCHEMA
(
    ID_TRANS_PARTITION_SCHEMA DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_PARTITION_SCHEMA DECIMAL(22),
    PRIMARY KEY(ID_TRANS_PARTITION_SCHEMA));


# -----------------------------------------------------------------------
# R_TRANS_SLAVE
# -----------------------------------------------------------------------
drop table if exists R_TRANS_SLAVE;

CREATE TABLE R_TRANS_SLAVE
(
    ID_TRANS_SLAVE DECIMAL(22) NOT NULL,
    ID_TRANSFORMATION DECIMAL(22),
    ID_SLAVE DECIMAL(22),
    PRIMARY KEY(ID_TRANS_SLAVE));


# -----------------------------------------------------------------------
# R_TRANS_STEP_CONDITION
# -----------------------------------------------------------------------
drop table if exists R_TRANS_STEP_CONDITION;

CREATE TABLE R_TRANS_STEP_CONDITION
(
    ID_TRANSFORMATION DECIMAL(22),
    ID_STEP DECIMAL(22),
    ID_CONDITION DECIMAL(22));


# -----------------------------------------------------------------------
# R_USER
# -----------------------------------------------------------------------
drop table if exists R_USER;

CREATE TABLE R_USER
(
    ID_USER DECIMAL(22) NOT NULL,
    ID_PROFILE DECIMAL(22),
    LOGIN VARCHAR(255),
    PASSWORD VARCHAR(255),
    NAME VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    ENABLED CHAR(1),
    PRIMARY KEY(ID_USER));


# -----------------------------------------------------------------------
# R_VALUE
# -----------------------------------------------------------------------
drop table if exists R_VALUE;

CREATE TABLE R_VALUE
(
    ID_VALUE DECIMAL(22) NOT NULL,
    NAME VARCHAR(255),
    VALUE_TYPE VARCHAR(255),
    VALUE_STR VARCHAR(255),
    IS_NULL CHAR(1),
    PRIMARY KEY(ID_VALUE));


# -----------------------------------------------------------------------
# R_VERSION
# -----------------------------------------------------------------------
drop table if exists R_VERSION;

CREATE TABLE R_VERSION
(
    ID_VERSION DECIMAL(22) NOT NULL,
    MAJOR_VERSION DECIMAL(22),
    MINOR_VERSION DECIMAL(22),
    UPGRADE_DATE DATETIME,
    IS_UPGRADE CHAR(1),
    PRIMARY KEY(ID_VERSION));


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

ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_1
    FOREIGN KEY (USER_ID)
    REFERENCES MQ_USERS (USER_ID)
;

ALTER TABLE J3_ADDRESS_LINE
    ADD CONSTRAINT J3_ADDRESS_LINE_FK_1
    FOREIGN KEY (ADDRESS_ID)
    REFERENCES J3_ADDRESS (ID)
;

ALTER TABLE J3_ADDRESS
    ADD CONSTRAINT J3_ADDRESS_FK_1
    FOREIGN KEY (ADDRESS_ID)
    REFERENCES J3_CONTACT (ID)
;

ALTER TABLE J3_BINDING_CATEGORY_BAG
    ADD CONSTRAINT J3_BINDING_CATEGORY_BAG_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;

ALTER TABLE J3_BINDING_CATEGORY_BAG
    ADD CONSTRAINT J3_BINDING_CATEGORY_BAG_FK_2
    FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_BINDING_DESCR
    ADD CONSTRAINT J3_BINDING_DESCR_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;

ALTER TABLE J3_INSTANCE_DETAILS_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DESCR_FK_1
    FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;

ALTER TABLE J3_BUSINESS_CATEGORY_BAG
    ADD CONSTRAINT J3_BUSINESS_CATEGORY_BAG_FK_1
    FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_BUSINESS_CATEGORY_BAG
    ADD CONSTRAINT J3_BUSINESS_CATEGORY_BAG_FK_2
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_DESCR
    ADD CONSTRAINT J3_BUSINESS_DESCR_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_CONTACT_DESCR
    ADD CONSTRAINT J3_CONTACT_DESCR_FK_1
    FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;

ALTER TABLE J3_BUSINESS_IDENTIFIER
    ADD CONSTRAINT J3_BUSINESS_IDENTIFIER_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_NAME
    ADD CONSTRAINT J3_BUSINESS_NAME_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_INSTANCE_DETAILS_DOC_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DOC_DESCR_FK_1
    FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;

ALTER TABLE J3_KEYED_REFERENCE
    ADD CONSTRAINT J3_KEYED_REFERENCE_FK_1
    FOREIGN KEY (KEYED_REFERENCE_GROUP_ID)
    REFERENCES J3_KEYED_REFERENCE_GROUP (ID)
;

ALTER TABLE J3_KEYED_REFERENCE
    ADD CONSTRAINT J3_KEYED_REFERENCE_FK_2
    FOREIGN KEY (CATEGORY_BAG_ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_CLIENT_SUBSCRIPTIONINFO
    ADD CONSTRAINT J3_CLIENT_SUBSCRIPTIONINFO_FK_1
    FOREIGN KEY (FROMCLERK_CLERK_NAME)
    REFERENCES J3_CLERK (CLERK_NAME)
;

ALTER TABLE J3_CLIENT_SUBSCRIPTIONINFO
    ADD CONSTRAINT J3_CLIENT_SUBSCRIPTIONINFO_FK_2
    FOREIGN KEY (TOCLERK_CLERK_NAME)
    REFERENCES J3_CLERK (CLERK_NAME)
;

ALTER TABLE J3_CLERK
    ADD CONSTRAINT J3_CLERK_FK_1
    FOREIGN KEY (NODE_NAME)
    REFERENCES J3_NODE (NAME)
;

ALTER TABLE J3_DISCOVERY_URL
    ADD CONSTRAINT J3_DISCOVERY_URL_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_EMAIL
    ADD CONSTRAINT J3_EMAIL_FK_1
    FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;

ALTER TABLE J3_OVERVIEW_DOC_DESCR
    ADD CONSTRAINT J3_OVERVIEW_DOC_DESCR_FK_1
    FOREIGN KEY (OVERVIEW_DOC_ID)
    REFERENCES J3_OVERVIEW_DOC (ID)
;

ALTER TABLE J3_PERSON_NAME
    ADD CONSTRAINT J3_PERSON_NAME_FK_1
    FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;

ALTER TABLE J3_TMODEL_INSTANCE_INFO_DESCR
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_DESCR_FK_1
    FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;

ALTER TABLE J3_SERVICE_CATEGORY_BAG
    ADD CONSTRAINT J3_SERVICE_CATEGORY_BAG_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_CATEGORY_BAG
    ADD CONSTRAINT J3_SERVICE_CATEGORY_BAG_FK_2
    FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_KEYED_REFERENCE_GROUP
    ADD CONSTRAINT J3_KEYED_REFERENCE_GROUP_FK_1
    FOREIGN KEY (CATEGORY_BAG_ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_TMODEL_CATEGORY_BAG
    ADD CONSTRAINT J3_TMODEL_CATEGORY_BAG_FK_1
    FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_TMODEL_CATEGORY_BAG
    ADD CONSTRAINT J3_TMODEL_CATEGORY_BAG_FK_2
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;

ALTER TABLE J3_BINDING_TEMPLATE
    ADD CONSTRAINT J3_BINDING_TEMPLATE_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BINDING_TEMPLATE
    ADD CONSTRAINT J3_BINDING_TEMPLATE_FK_2
    FOREIGN KEY (SERVICE_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_OVERVIEW_DOC
    ADD CONSTRAINT J3_OVERVIEW_DOC_FK_1
    FOREIGN KEY (TOMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;

ALTER TABLE J3_OVERVIEW_DOC
    ADD CONSTRAINT J3_OVERVIEW_DOC_FK_2
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;

ALTER TABLE J3_PHONE
    ADD CONSTRAINT J3_PHONE_FK_1
    FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;

ALTER TABLE J3_CONTACT
    ADD CONSTRAINT J3_CONTACT_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_PUBLISHER_ASSERTION
    ADD CONSTRAINT J3_PUBLISHER_ASSERTION_FK_1
    FOREIGN KEY (TO_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_PUBLISHER_ASSERTION
    ADD CONSTRAINT J3_PUBLISHER_ASSERTION_FK_2
    FOREIGN KEY (FROM_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_DESCR
    ADD CONSTRAINT J3_SERVICE_DESCR_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_NAME
    ADD CONSTRAINT J3_SERVICE_NAME_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_PROJECTION
    ADD CONSTRAINT J3_SERVICE_PROJECTION_FK_1
    FOREIGN KEY (BUSINESS_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_PROJECTION
    ADD CONSTRAINT J3_SERVICE_PROJECTION_FK_2
    FOREIGN KEY (SERVICE_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_SERVICE
    ADD CONSTRAINT J3_BUSINESS_SERVICE_FK_1
    FOREIGN KEY (BUSINESS_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_SERVICE
    ADD CONSTRAINT J3_BUSINESS_SERVICE_FK_2
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_SUBSCRIPTION_MATCH
    ADD CONSTRAINT J3_SUBSCRIPTION_MATCH_FK_1
    FOREIGN KEY (SUBSCRIPTION_KEY)
    REFERENCES J3_SUBSCRIPTION (SUBSCRIPTION_KEY)
;

ALTER TABLE J3_TMODEL_DESCR
    ADD CONSTRAINT J3_TMODEL_DESCR_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;

ALTER TABLE J3_TMODEL_IDENTIFIER
    ADD CONSTRAINT J3_TMODEL_IDENTIFIER_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;

ALTER TABLE J3_TMODEL
    ADD CONSTRAINT J3_TMODEL_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_ENTITY
    ADD CONSTRAINT J3_BUSINESS_ENTITY_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_TMODEL_INSTANCE_INFO
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_FK_1
    FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;

ALTER TABLE J3_TRANSFER_TOKEN_KEYS
    ADD CONSTRAINT J3_TRANSFER_TOKEN_KEYS_FK_1
    FOREIGN KEY (TRANSFER_TOKEN)
    REFERENCES J3_TRANSFER_TOKEN (TRANSFER_TOKEN)
;

ALTER TABLE MQ_NODE
    ADD CONSTRAINT MQ_NODE_FK_1
    FOREIGN KEY (NODE_FACTORY_ID)
    REFERENCES MQ_NODE_FACTORY (NODE_FACTORY_ID)
;

ALTER TABLE MQ_USERS
    ADD CONSTRAINT MQ_USERS_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
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

ALTER TABLE MQ_CONNECTORS
    ADD CONSTRAINT MQ_CONNECTORS_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_GROUP
    ADD CONSTRAINT MQ_GROUP_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_PROPERTIES
    ADD CONSTRAINT MQ_PROPERTIES_FK_1
    FOREIGN KEY (TASK_ID)
    REFERENCES MQ_HUGEMESSAGE_SCHEDULE (TASK_ID)
;

ALTER TABLE MQ_MEM_CONF
    ADD CONSTRAINT MQ_MEM_CONF_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_MIRROR_TABLE
    ADD CONSTRAINT MQ_MIRROR_TABLE_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_NODE_FACTORY
    ADD CONSTRAINT MQ_NODE_FACTORY_FK_1
    FOREIGN KEY (CA_ID)
    REFERENCES MQ_CLIENT_CA (CA_ID)
;

ALTER TABLE MQ_PERMISSIONS
    ADD CONSTRAINT MQ_PERMISSIONS_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_POLICY_TABLE
    ADD CONSTRAINT MQ_POLICY_TABLE_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_REAL_NODES
    ADD CONSTRAINT MQ_REAL_NODES_FK_1
    FOREIGN KEY (VIRTUAL_NODEID)
    REFERENCES MQ_VIRTUAL_NODES (VIRTUAL_NODEID)
;

ALTER TABLE MQ_ROUTENODE
    ADD CONSTRAINT MQ_ROUTENODE_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_ROUTERS
    ADD CONSTRAINT MQ_ROUTERS_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

ALTER TABLE MQ_VIRTUAL_NODES
    ADD CONSTRAINT MQ_VIRTUAL_NODES_FK_1
    FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

