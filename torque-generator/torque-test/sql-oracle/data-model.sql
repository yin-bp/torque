
-----------------------------------------------------------------------------
-- ACTIVEMQ_ACKS
-----------------------------------------------------------------------------
DROP TABLE ACTIVEMQ_ACKS CASCADE CONSTRAINTS;

CREATE TABLE ACTIVEMQ_ACKS
(
    CONTAINER VARCHAR2(250) NOT NULL,
    SUB_DEST VARCHAR2(250),
    CLIENT_ID VARCHAR2(250) NOT NULL,
    SUB_NAME VARCHAR2(250) NOT NULL,
    SELECTOR VARCHAR2(250),
    LAST_ACKED_ID NUMBER(22)
);

ALTER TABLE ACTIVEMQ_ACKS
    ADD CONSTRAINT ACTIVEMQ_ACKS_PK
PRIMARY KEY (CONTAINER,CLIENT_ID,SUB_NAME);






-----------------------------------------------------------------------------
-- ACTIVEMQ_LOCK
-----------------------------------------------------------------------------
DROP TABLE ACTIVEMQ_LOCK CASCADE CONSTRAINTS;

CREATE TABLE ACTIVEMQ_LOCK
(
    ID NUMBER(22) NOT NULL,
    TIME NUMBER(22),
    BROKER_NAME VARCHAR2(250)
);

ALTER TABLE ACTIVEMQ_LOCK
    ADD CONSTRAINT ACTIVEMQ_LOCK_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- ACTIVEMQ_MSGS
-----------------------------------------------------------------------------
DROP TABLE ACTIVEMQ_MSGS CASCADE CONSTRAINTS;

CREATE TABLE ACTIVEMQ_MSGS
(
    ID NUMBER(22) NOT NULL,
    CONTAINER VARCHAR2(250),
    MSGID_PROD VARCHAR2(250),
    MSGID_SEQ NUMBER(22),
    EXPIRATION NUMBER(22),
    MSG BLOB
);

ALTER TABLE ACTIVEMQ_MSGS
    ADD CONSTRAINT ACTIVEMQ_MSGS_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- CC_TRIG_MSG
-----------------------------------------------------------------------------
DROP TABLE CC_TRIG_MSG CASCADE CONSTRAINTS;

CREATE TABLE CC_TRIG_MSG
(
    RECORD_ID VARCHAR2(50),
    OPERATE_FLAG CHAR(1),
    REMARK VARCHAR2(255),
    TABNAME VARCHAR2(64)
);







-----------------------------------------------------------------------------
-- DEMO
-----------------------------------------------------------------------------
DROP TABLE DEMO CASCADE CONSTRAINTS;

CREATE TABLE DEMO
(
    USER_NAME VARCHAR2(50),
    USER_PWD VARCHAR2(50)
);







-----------------------------------------------------------------------------
-- ESB_PARAMS
-----------------------------------------------------------------------------
DROP TABLE ESB_PARAMS CASCADE CONSTRAINTS;

CREATE TABLE ESB_PARAMS
(
    NODE_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    VALUE VARCHAR2(100),
    PARAM_TYPE VARCHAR2(200) NOT NULL
);

ALTER TABLE ESB_PARAMS
    ADD CONSTRAINT ESB_PARAMS_PK
PRIMARY KEY (NODE_ID,NAME,PARAM_TYPE);






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
-- J3_ADDRESS
-----------------------------------------------------------------------------
DROP TABLE J3_ADDRESS CASCADE CONSTRAINTS;

CREATE TABLE J3_ADDRESS
(
    ID NUMBER(19) NOT NULL,
    SORT_CODE VARCHAR2(20),
    TMODEL_KEY VARCHAR2(510),
    USE_TYPE VARCHAR2(510),
    ADDRESS_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_ADDRESS
    ADD CONSTRAINT J3_ADDRESS_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_ADDRESS_LINE
-----------------------------------------------------------------------------
DROP TABLE J3_ADDRESS_LINE CASCADE CONSTRAINTS;

CREATE TABLE J3_ADDRESS_LINE
(
    ID NUMBER(19) NOT NULL,
    KEY_NAME VARCHAR2(510),
    KEY_VALUE VARCHAR2(510),
    LINE VARCHAR2(160) NOT NULL,
    ADDRESS_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_ADDRESS_LINE
    ADD CONSTRAINT J3_ADDRESS_LINE_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_AUTH_TOKEN
-----------------------------------------------------------------------------
DROP TABLE J3_AUTH_TOKEN CASCADE CONSTRAINTS;

CREATE TABLE J3_AUTH_TOKEN
(
    AUTH_TOKEN VARCHAR2(102) NOT NULL,
    AUTHORIZED_NAME VARCHAR2(40) NOT NULL,
    CREATED TIMESTAMP NOT NULL,
    LAST_USED TIMESTAMP NOT NULL,
    NUMBER_OF_USES NUMBER(10) NOT NULL,
    PUBLISHER_NAME VARCHAR2(510),
    TOKEN_STATE NUMBER(10) NOT NULL
);

ALTER TABLE J3_AUTH_TOKEN
    ADD CONSTRAINT J3_AUTH_TOKEN_PK
PRIMARY KEY (AUTH_TOKEN);






-----------------------------------------------------------------------------
-- J3_BINDING_CATEGORY_BAG
-----------------------------------------------------------------------------
DROP TABLE J3_BINDING_CATEGORY_BAG CASCADE CONSTRAINTS;

CREATE TABLE J3_BINDING_CATEGORY_BAG
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BINDING_CATEGORY_BAG
    ADD CONSTRAINT J3_BINDING_CATEGORY_BAG_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BINDING_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_BINDING_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_BINDING_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BINDING_DESCR
    ADD CONSTRAINT J3_BINDING_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BINDING_TEMPLATE
-----------------------------------------------------------------------------
DROP TABLE J3_BINDING_TEMPLATE CASCADE CONSTRAINTS;

CREATE TABLE J3_BINDING_TEMPLATE
(
    ENTITY_KEY VARCHAR2(510) NOT NULL,
    ACCESS_POINT_TYPE VARCHAR2(40),
    ACCESS_POINT_URL VARCHAR2(4000),
    HOSTING_REDIRECTOR VARCHAR2(510),
    SERVICE_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BINDING_TEMPLATE
    ADD CONSTRAINT J3_BINDING_TEMPLATE_PK
PRIMARY KEY (ENTITY_KEY);






-----------------------------------------------------------------------------
-- J3_BUSINESS_CATEGORY_BAG
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_CATEGORY_BAG CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_CATEGORY_BAG
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_CATEGORY_BAG
    ADD CONSTRAINT J3_BUSINESS_CATEGORY_BAG_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BUSINESS_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_DESCR
    ADD CONSTRAINT J3_BUSINESS_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BUSINESS_ENTITY
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_ENTITY CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_ENTITY
(
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_ENTITY
    ADD CONSTRAINT J3_BUSINESS_ENTITY_PK
PRIMARY KEY (ENTITY_KEY);






-----------------------------------------------------------------------------
-- J3_BUSINESS_IDENTIFIER
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_IDENTIFIER CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_IDENTIFIER
(
    ID NUMBER(19) NOT NULL,
    KEY_NAME VARCHAR2(510),
    KEY_VALUE VARCHAR2(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR2(510),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_IDENTIFIER
    ADD CONSTRAINT J3_BUSINESS_IDENTIFIER_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BUSINESS_NAME
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_NAME CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_NAME
(
    ID NUMBER(19) NOT NULL,
    LANG_CODE VARCHAR2(10),
    NAME VARCHAR2(510) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_NAME
    ADD CONSTRAINT J3_BUSINESS_NAME_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_BUSINESS_SERVICE
-----------------------------------------------------------------------------
DROP TABLE J3_BUSINESS_SERVICE CASCADE CONSTRAINTS;

CREATE TABLE J3_BUSINESS_SERVICE
(
    ENTITY_KEY VARCHAR2(510) NOT NULL,
    BUSINESS_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_BUSINESS_SERVICE
    ADD CONSTRAINT J3_BUSINESS_SERVICE_PK
PRIMARY KEY (ENTITY_KEY);






-----------------------------------------------------------------------------
-- J3_CATEGORY_BAG
-----------------------------------------------------------------------------
DROP TABLE J3_CATEGORY_BAG CASCADE CONSTRAINTS;

CREATE TABLE J3_CATEGORY_BAG
(
    ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_CATEGORY_BAG
    ADD CONSTRAINT J3_CATEGORY_BAG_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_CLERK
-----------------------------------------------------------------------------
DROP TABLE J3_CLERK CASCADE CONSTRAINTS;

CREATE TABLE J3_CLERK
(
    CLERK_NAME VARCHAR2(510) NOT NULL,
    CRED VARCHAR2(510),
    PUBLISHER_ID VARCHAR2(510) NOT NULL,
    NODE_NAME VARCHAR2(510)
);

ALTER TABLE J3_CLERK
    ADD CONSTRAINT J3_CLERK_PK
PRIMARY KEY (CLERK_NAME);






-----------------------------------------------------------------------------
-- J3_CLIENT_SUBSCRIPTIONINFO
-----------------------------------------------------------------------------
DROP TABLE J3_CLIENT_SUBSCRIPTIONINFO CASCADE CONSTRAINTS;

CREATE TABLE J3_CLIENT_SUBSCRIPTIONINFO
(
    SUBSCRIPTION_KEY VARCHAR2(510) NOT NULL,
    LAST_NOTIFIED TIMESTAMP,
    TOCLERK_CLERK_NAME VARCHAR2(510),
    FROMCLERK_CLERK_NAME VARCHAR2(510)
);

ALTER TABLE J3_CLIENT_SUBSCRIPTIONINFO
    ADD CONSTRAINT J3_CLIENT_SUBSCRIPTIONINFO_PK
PRIMARY KEY (SUBSCRIPTION_KEY);






-----------------------------------------------------------------------------
-- J3_CONTACT
-----------------------------------------------------------------------------
DROP TABLE J3_CONTACT CASCADE CONSTRAINTS;

CREATE TABLE J3_CONTACT
(
    ID NUMBER(19) NOT NULL,
    USE_TYPE VARCHAR2(510),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_CONTACT
    ADD CONSTRAINT J3_CONTACT_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_CONTACT_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_CONTACT_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_CONTACT_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    CONTACT_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_CONTACT_DESCR
    ADD CONSTRAINT J3_CONTACT_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_DISCOVERY_URL
-----------------------------------------------------------------------------
DROP TABLE J3_DISCOVERY_URL CASCADE CONSTRAINTS;

CREATE TABLE J3_DISCOVERY_URL
(
    ID NUMBER(19) NOT NULL,
    URL VARCHAR2(510) NOT NULL,
    USE_TYPE VARCHAR2(510) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_DISCOVERY_URL
    ADD CONSTRAINT J3_DISCOVERY_URL_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_EMAIL
-----------------------------------------------------------------------------
DROP TABLE J3_EMAIL CASCADE CONSTRAINTS;

CREATE TABLE J3_EMAIL
(
    ID NUMBER(19) NOT NULL,
    EMAIL_ADDRESS VARCHAR2(510) NOT NULL,
    USE_TYPE VARCHAR2(510),
    CONTACT_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_EMAIL
    ADD CONSTRAINT J3_EMAIL_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_INSTANCE_DETAILS_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_INSTANCE_DETAILS_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_INSTANCE_DETAILS_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    TMODEL_INSTANCE_INFO_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_INSTANCE_DETAILS_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_INSTANCE_DETAILS_DOC_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_INSTANCE_DETAILS_DOC_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_INSTANCE_DETAILS_DOC_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    TMODEL_INSTANCE_INFO_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_INSTANCE_DETAILS_DOC_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DOC_DES_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_KEYED_REFERENCE
-----------------------------------------------------------------------------
DROP TABLE J3_KEYED_REFERENCE CASCADE CONSTRAINTS;

CREATE TABLE J3_KEYED_REFERENCE
(
    ID NUMBER(19) NOT NULL,
    KEY_NAME VARCHAR2(510),
    KEY_VALUE VARCHAR2(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR2(510),
    KEYED_REFERENCE_GROUP_ID NUMBER(19),
    CATEGORY_BAG_ID NUMBER(19)
);

ALTER TABLE J3_KEYED_REFERENCE
    ADD CONSTRAINT J3_KEYED_REFERENCE_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_KEYED_REFERENCE_GROUP
-----------------------------------------------------------------------------
DROP TABLE J3_KEYED_REFERENCE_GROUP CASCADE CONSTRAINTS;

CREATE TABLE J3_KEYED_REFERENCE_GROUP
(
    ID NUMBER(19) NOT NULL,
    TMODEL_KEY VARCHAR2(510),
    CATEGORY_BAG_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_KEYED_REFERENCE_GROUP
    ADD CONSTRAINT J3_KEYED_REFERENCE_GROUP_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_NODE
-----------------------------------------------------------------------------
DROP TABLE J3_NODE CASCADE CONSTRAINTS;

CREATE TABLE J3_NODE
(
    NAME VARCHAR2(510) NOT NULL,
    CUSTODY_TRANSFER_URL VARCHAR2(510) NOT NULL,
    FACTORY_INITIAL VARCHAR2(510),
    FACTORY_NAMING_PROVIDER VARCHAR2(510),
    FACTORY_URL_PKGS VARCHAR2(510),
    INQUIRY_URL VARCHAR2(510) NOT NULL,
    JUDDI_API_URL VARCHAR2(510),
    PROXY_TRANSPORT VARCHAR2(510) NOT NULL,
    PUBLISH_URL VARCHAR2(510) NOT NULL,
    SECURITY_URL VARCHAR2(510) NOT NULL,
    SUBSCRIPTION_URL VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_NODE
    ADD CONSTRAINT J3_NODE_PK
PRIMARY KEY (NAME);






-----------------------------------------------------------------------------
-- J3_OVERVIEW_DOC
-----------------------------------------------------------------------------
DROP TABLE J3_OVERVIEW_DOC CASCADE CONSTRAINTS;

CREATE TABLE J3_OVERVIEW_DOC
(
    ID NUMBER(19) NOT NULL,
    OVERVIEW_URL VARCHAR2(510) NOT NULL,
    OVERVIEW_URL_USE_TYPE VARCHAR2(510),
    TOMODEL_INSTANCE_INFO_ID NUMBER(19),
    ENTITY_KEY VARCHAR2(510)
);

ALTER TABLE J3_OVERVIEW_DOC
    ADD CONSTRAINT J3_OVERVIEW_DOC_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_OVERVIEW_DOC_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_OVERVIEW_DOC_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_OVERVIEW_DOC_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    OVERVIEW_DOC_ID NUMBER(19)
);

ALTER TABLE J3_OVERVIEW_DOC_DESCR
    ADD CONSTRAINT J3_OVERVIEW_DOC_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_PERSON_NAME
-----------------------------------------------------------------------------
DROP TABLE J3_PERSON_NAME CASCADE CONSTRAINTS;

CREATE TABLE J3_PERSON_NAME
(
    ID NUMBER(19) NOT NULL,
    LANG_CODE VARCHAR2(10),
    NAME VARCHAR2(510) NOT NULL,
    CONTACT_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_PERSON_NAME
    ADD CONSTRAINT J3_PERSON_NAME_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_PHONE
-----------------------------------------------------------------------------
DROP TABLE J3_PHONE CASCADE CONSTRAINTS;

CREATE TABLE J3_PHONE
(
    ID NUMBER(19) NOT NULL,
    PHONE_NUMBER VARCHAR2(100) NOT NULL,
    USE_TYPE VARCHAR2(510),
    CONTACT_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_PHONE
    ADD CONSTRAINT J3_PHONE_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_PUBLISHER
-----------------------------------------------------------------------------
DROP TABLE J3_PUBLISHER CASCADE CONSTRAINTS;

CREATE TABLE J3_PUBLISHER
(
    AUTHORIZED_NAME VARCHAR2(510) NOT NULL,
    EMAIL_ADDRESS VARCHAR2(510),
    IS_ADMIN VARCHAR2(10),
    IS_ENABLED VARCHAR2(10),
    MAX_BINDINGS_PER_SERVICE NUMBER(10),
    MAX_BUSINESSES NUMBER(10),
    MAX_SERVICES_PER_BUSINESS NUMBER(10),
    MAX_TMODELS NUMBER(10),
    PUBLISHER_NAME VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_PUBLISHER
    ADD CONSTRAINT J3_PUBLISHER_PK
PRIMARY KEY (AUTHORIZED_NAME);






-----------------------------------------------------------------------------
-- J3_PUBLISHER_ASSERTION
-----------------------------------------------------------------------------
DROP TABLE J3_PUBLISHER_ASSERTION CASCADE CONSTRAINTS;

CREATE TABLE J3_PUBLISHER_ASSERTION
(
    FROM_KEY VARCHAR2(510) NOT NULL,
    TO_KEY VARCHAR2(510) NOT NULL,
    FROM_CHECK VARCHAR2(10) NOT NULL,
    KEY_NAME VARCHAR2(510) NOT NULL,
    KEY_VALUE VARCHAR2(510) NOT NULL,
    TMODEL_KEY VARCHAR2(510) NOT NULL,
    TO_CHECK VARCHAR2(10) NOT NULL
);

ALTER TABLE J3_PUBLISHER_ASSERTION
    ADD CONSTRAINT J3_PUBLISHER_ASSERTION_PK
PRIMARY KEY (FROM_KEY,TO_KEY);






-----------------------------------------------------------------------------
-- J3_SERVICE_CATEGORY_BAG
-----------------------------------------------------------------------------
DROP TABLE J3_SERVICE_CATEGORY_BAG CASCADE CONSTRAINTS;

CREATE TABLE J3_SERVICE_CATEGORY_BAG
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SERVICE_CATEGORY_BAG
    ADD CONSTRAINT J3_SERVICE_CATEGORY_BAG_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_SERVICE_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_SERVICE_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_SERVICE_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SERVICE_DESCR
    ADD CONSTRAINT J3_SERVICE_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_SERVICE_NAME
-----------------------------------------------------------------------------
DROP TABLE J3_SERVICE_NAME CASCADE CONSTRAINTS;

CREATE TABLE J3_SERVICE_NAME
(
    ID NUMBER(19) NOT NULL,
    LANG_CODE VARCHAR2(10),
    NAME VARCHAR2(510) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SERVICE_NAME
    ADD CONSTRAINT J3_SERVICE_NAME_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_SERVICE_PROJECTION
-----------------------------------------------------------------------------
DROP TABLE J3_SERVICE_PROJECTION CASCADE CONSTRAINTS;

CREATE TABLE J3_SERVICE_PROJECTION
(
    BUSINESS_KEY VARCHAR2(510) NOT NULL,
    SERVICE_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SERVICE_PROJECTION
    ADD CONSTRAINT J3_SERVICE_PROJECTION_PK
PRIMARY KEY (BUSINESS_KEY,SERVICE_KEY);






-----------------------------------------------------------------------------
-- J3_SUBSCRIPTION
-----------------------------------------------------------------------------
DROP TABLE J3_SUBSCRIPTION CASCADE CONSTRAINTS;

CREATE TABLE J3_SUBSCRIPTION
(
    SUBSCRIPTION_KEY VARCHAR2(510) NOT NULL,
    AUTHORIZED_NAME VARCHAR2(510) NOT NULL,
    BINDING_KEY VARCHAR2(510),
    BRIEF NUMBER(1),
    CREATE_DATE TIMESTAMP NOT NULL,
    EXPIRES_AFTER TIMESTAMP,
    LAST_NOTIFIED TIMESTAMP,
    MAX_ENTITIES NUMBER(10),
    NOTIFICATION_INTERVAL VARCHAR2(510),
    SUBSCRIPTION_FILTER CLOB NOT NULL
);

ALTER TABLE J3_SUBSCRIPTION
    ADD CONSTRAINT J3_SUBSCRIPTION_PK
PRIMARY KEY (SUBSCRIPTION_KEY);






-----------------------------------------------------------------------------
-- J3_SUBSCRIPTION_CHUNK_TOKEN
-----------------------------------------------------------------------------
DROP TABLE J3_SUBSCRIPTION_CHUNK_TOKEN CASCADE CONSTRAINTS;

CREATE TABLE J3_SUBSCRIPTION_CHUNK_TOKEN
(
    CHUNK_TOKEN VARCHAR2(510) NOT NULL,
    DATA NUMBER(10) NOT NULL,
    END_POINT TIMESTAMP,
    EXPIRES_AFTER TIMESTAMP NOT NULL,
    START_POINT TIMESTAMP,
    SUBSCRIPTION_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SUBSCRIPTION_CHUNK_TOKEN
    ADD CONSTRAINT J3_SUBSCRIPTION_CHUNK_TOKEN_PK
PRIMARY KEY (CHUNK_TOKEN);






-----------------------------------------------------------------------------
-- J3_SUBSCRIPTION_MATCH
-----------------------------------------------------------------------------
DROP TABLE J3_SUBSCRIPTION_MATCH CASCADE CONSTRAINTS;

CREATE TABLE J3_SUBSCRIPTION_MATCH
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL,
    SUBSCRIPTION_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_SUBSCRIPTION_MATCH
    ADD CONSTRAINT J3_SUBSCRIPTION_MATCH_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TMODEL
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL
(
    ENTITY_KEY VARCHAR2(510) NOT NULL,
    DELETED NUMBER(1),
    LANG_CODE VARCHAR2(10),
    NAME VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_TMODEL
    ADD CONSTRAINT J3_TMODEL_PK
PRIMARY KEY (ENTITY_KEY);






-----------------------------------------------------------------------------
-- J3_TMODEL_CATEGORY_BAG
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL_CATEGORY_BAG CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL_CATEGORY_BAG
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_TMODEL_CATEGORY_BAG
    ADD CONSTRAINT J3_TMODEL_CATEGORY_BAG_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TMODEL_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_TMODEL_DESCR
    ADD CONSTRAINT J3_TMODEL_DESCR_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TMODEL_IDENTIFIER
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL_IDENTIFIER CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL_IDENTIFIER
(
    ID NUMBER(19) NOT NULL,
    KEY_NAME VARCHAR2(510),
    KEY_VALUE VARCHAR2(510) NOT NULL,
    TMODEL_KEY_REF VARCHAR2(510),
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_TMODEL_IDENTIFIER
    ADD CONSTRAINT J3_TMODEL_IDENTIFIER_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TMODEL_INSTANCE_INFO
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL_INSTANCE_INFO CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL_INSTANCE_INFO
(
    ID NUMBER(19) NOT NULL,
    INSTANCE_PARMS VARCHAR2(1024),
    TMODEL_KEY VARCHAR2(510) NOT NULL,
    ENTITY_KEY VARCHAR2(510) NOT NULL
);

ALTER TABLE J3_TMODEL_INSTANCE_INFO
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TMODEL_INSTANCE_INFO_DESCR
-----------------------------------------------------------------------------
DROP TABLE J3_TMODEL_INSTANCE_INFO_DESCR CASCADE CONSTRAINTS;

CREATE TABLE J3_TMODEL_INSTANCE_INFO_DESCR
(
    ID NUMBER(19) NOT NULL,
    DESCR VARCHAR2(2048) NOT NULL,
    LANG_CODE VARCHAR2(10),
    TMODEL_INSTANCE_INFO_ID NUMBER(19) NOT NULL
);

ALTER TABLE J3_TMODEL_INSTANCE_INFO_DESCR
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_DES_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_TRANSFER_TOKEN
-----------------------------------------------------------------------------
DROP TABLE J3_TRANSFER_TOKEN CASCADE CONSTRAINTS;

CREATE TABLE J3_TRANSFER_TOKEN
(
    TRANSFER_TOKEN VARCHAR2(102) NOT NULL,
    EXPIRATION_DATE TIMESTAMP NOT NULL
);

ALTER TABLE J3_TRANSFER_TOKEN
    ADD CONSTRAINT J3_TRANSFER_TOKEN_PK
PRIMARY KEY (TRANSFER_TOKEN);






-----------------------------------------------------------------------------
-- J3_TRANSFER_TOKEN_KEYS
-----------------------------------------------------------------------------
DROP TABLE J3_TRANSFER_TOKEN_KEYS CASCADE CONSTRAINTS;

CREATE TABLE J3_TRANSFER_TOKEN_KEYS
(
    ID NUMBER(19) NOT NULL,
    ENTITY_KEY VARCHAR2(510),
    TRANSFER_TOKEN VARCHAR2(102) NOT NULL
);

ALTER TABLE J3_TRANSFER_TOKEN_KEYS
    ADD CONSTRAINT J3_TRANSFER_TOKEN_KEYS_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- J3_UDDI_ENTITY
-----------------------------------------------------------------------------
DROP TABLE J3_UDDI_ENTITY CASCADE CONSTRAINTS;

CREATE TABLE J3_UDDI_ENTITY
(
    ENTITY_KEY VARCHAR2(510) NOT NULL,
    AUTHORIZED_NAME VARCHAR2(510) NOT NULL,
    CREATED TIMESTAMP,
    MODIFIED TIMESTAMP NOT NULL,
    MODIFIED_INCLUDING_CHILDREN TIMESTAMP,
    NODE_ID VARCHAR2(510)
);

ALTER TABLE J3_UDDI_ENTITY
    ADD CONSTRAINT J3_UDDI_ENTITY_PK
PRIMARY KEY (ENTITY_KEY);






-----------------------------------------------------------------------------
-- LOG217
-----------------------------------------------------------------------------
DROP TABLE LOG217 CASCADE CONSTRAINTS;

CREATE TABLE LOG217
(
    ID_BATCH NUMBER(22),
    TRANSNAME VARCHAR2(255),
    STATUS VARCHAR2(15),
    LINES_READ NUMBER(22),
    LINES_WRITTEN NUMBER(22),
    LINES_UPDATED NUMBER(22),
    LINES_INPUT NUMBER(22),
    LINES_OUTPUT NUMBER(22),
    ERRORS NUMBER(22),
    STARTDATE DATE,
    ENDDATE DATE,
    LOGDATE DATE,
    DEPDATE DATE,
    REPLAYDATE DATE
);







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
    NC_URI VARCHAR2(1000),
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
    CLUSTER_URI VARCHAR2(255)
);

ALTER TABLE MQ_CONNECTORS
    ADD CONSTRAINT MQ_CONNECTORS_PK
PRIMARY KEY (CONNECTOR_ID);






-----------------------------------------------------------------------------
-- MQ_CON_PARAMS
-----------------------------------------------------------------------------
DROP TABLE MQ_CON_PARAMS CASCADE CONSTRAINTS;

CREATE TABLE MQ_CON_PARAMS
(
    NODE_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    VALUE VARCHAR2(100)
);

ALTER TABLE MQ_CON_PARAMS
    ADD CONSTRAINT MQ_CON_PARAMS_PK
PRIMARY KEY (NODE_ID,NAME);






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
    REG_DATE TIMESTAMP default 'SYSTIMESTAMP',
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
    REG_DATE TIMESTAMP default 'SYSTIMESTAMP',
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
    BROKER_ID NUMBER(10),
    NODE_ID NUMBER(10)
);







-----------------------------------------------------------------------------
-- MQ_ROUTERS
-----------------------------------------------------------------------------
DROP TABLE MQ_ROUTERS CASCADE CONSTRAINTS;

CREATE TABLE MQ_ROUTERS
(
    ROUTER_ID NUMBER(10) NOT NULL,
    BROKER_ID NUMBER(10),
    ROUTER_NAME VARCHAR2(64),
    ROUTER_REGULAR CLOB,
    ISVALID NUMBER(1) default 1,
    IMPORTCLASS CLOB,
    ORDERBY NUMBER(5)
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
    IMPORTCLASS CLOB,
    ORDERBY NUMBER(4),
    RUTE_IMAGE VARCHAR2(255),
    TPL_TYPE NUMBER(1) default null
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
    SEGMENT_ID VARCHAR2(500) NOT NULL,
    CONTENT BLOB,
    OFFSET NUMBER(22),
    FILENAME VARCHAR2(500),
    SCHEDULEID VARCHAR2(50),
    FILESIZE NUMBER(22),
    SEGMENTSIZE NUMBER(22),
    REG_DATE TIMESTAMP default 'SYSTIMESTAMP',
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
    REG_DATE TIMESTAMP default 'SYSTIMESTAMP',
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
-- R_CLUSTER
-----------------------------------------------------------------------------
DROP TABLE R_CLUSTER CASCADE CONSTRAINTS;

CREATE TABLE R_CLUSTER
(
    ID_CLUSTER NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    BASE_PORT VARCHAR2(255),
    SOCKETS_BUFFER_SIZE VARCHAR2(255),
    SOCKETS_FLUSH_INTERVAL VARCHAR2(255),
    SOCKETS_COMPRESSED CHAR(1),
    DYNAMIC_CLUSTER CHAR(1)
);

ALTER TABLE R_CLUSTER
    ADD CONSTRAINT R_CLUSTER_PK
PRIMARY KEY (ID_CLUSTER);






-----------------------------------------------------------------------------
-- R_CLUSTER_SLAVE
-----------------------------------------------------------------------------
DROP TABLE R_CLUSTER_SLAVE CASCADE CONSTRAINTS;

CREATE TABLE R_CLUSTER_SLAVE
(
    ID_CLUSTER_SLAVE NUMBER(22) NOT NULL,
    ID_CLUSTER NUMBER(22),
    ID_SLAVE NUMBER(22)
);

ALTER TABLE R_CLUSTER_SLAVE
    ADD CONSTRAINT R_CLUSTER_SLAVE_PK
PRIMARY KEY (ID_CLUSTER_SLAVE);






-----------------------------------------------------------------------------
-- R_CONDITION
-----------------------------------------------------------------------------
DROP TABLE R_CONDITION CASCADE CONSTRAINTS;

CREATE TABLE R_CONDITION
(
    ID_CONDITION NUMBER(22) NOT NULL,
    ID_CONDITION_PARENT NUMBER(22),
    NEGATED CHAR(1),
    OPERATOR VARCHAR2(255),
    LEFT_NAME VARCHAR2(255),
    CONDITION_FUNCTION VARCHAR2(255),
    RIGHT_NAME VARCHAR2(255),
    ID_VALUE_RIGHT NUMBER(22)
);

ALTER TABLE R_CONDITION
    ADD CONSTRAINT R_CONDITION_PK
PRIMARY KEY (ID_CONDITION);






-----------------------------------------------------------------------------
-- R_DATABASE
-----------------------------------------------------------------------------
DROP TABLE R_DATABASE CASCADE CONSTRAINTS;

CREATE TABLE R_DATABASE
(
    ID_DATABASE NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    ID_DATABASE_TYPE NUMBER(22),
    ID_DATABASE_CONTYPE NUMBER(22),
    HOST_NAME VARCHAR2(255),
    DATABASE_NAME VARCHAR2(255),
    PORT NUMBER(22),
    USERNAME VARCHAR2(255),
    PASSWORD VARCHAR2(255),
    SERVERNAME VARCHAR2(255),
    DATA_TBS VARCHAR2(255),
    INDEX_TBS VARCHAR2(255)
);

ALTER TABLE R_DATABASE
    ADD CONSTRAINT R_DATABASE_PK
PRIMARY KEY (ID_DATABASE);






-----------------------------------------------------------------------------
-- R_DATABASE_ATTRIBUTE
-----------------------------------------------------------------------------
DROP TABLE R_DATABASE_ATTRIBUTE CASCADE CONSTRAINTS;

CREATE TABLE R_DATABASE_ATTRIBUTE
(
    ID_DATABASE_ATTRIBUTE NUMBER(22) NOT NULL,
    ID_DATABASE NUMBER(22),
    CODE VARCHAR2(255),
    VALUE_STR CLOB
);

ALTER TABLE R_DATABASE_ATTRIBUTE
    ADD CONSTRAINT R_DATABASE_ATTRIBUTE_PK
PRIMARY KEY (ID_DATABASE_ATTRIBUTE);






-----------------------------------------------------------------------------
-- R_DATABASE_CONTYPE
-----------------------------------------------------------------------------
DROP TABLE R_DATABASE_CONTYPE CASCADE CONSTRAINTS;

CREATE TABLE R_DATABASE_CONTYPE
(
    ID_DATABASE_CONTYPE NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_DATABASE_CONTYPE
    ADD CONSTRAINT R_DATABASE_CONTYPE_PK
PRIMARY KEY (ID_DATABASE_CONTYPE);






-----------------------------------------------------------------------------
-- R_DATABASE_TYPE
-----------------------------------------------------------------------------
DROP TABLE R_DATABASE_TYPE CASCADE CONSTRAINTS;

CREATE TABLE R_DATABASE_TYPE
(
    ID_DATABASE_TYPE NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_DATABASE_TYPE
    ADD CONSTRAINT R_DATABASE_TYPE_PK
PRIMARY KEY (ID_DATABASE_TYPE);






-----------------------------------------------------------------------------
-- R_DEPENDENCY
-----------------------------------------------------------------------------
DROP TABLE R_DEPENDENCY CASCADE CONSTRAINTS;

CREATE TABLE R_DEPENDENCY
(
    ID_DEPENDENCY NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_DATABASE NUMBER(22),
    TABLE_NAME VARCHAR2(255),
    FIELD_NAME VARCHAR2(255)
);

ALTER TABLE R_DEPENDENCY
    ADD CONSTRAINT R_DEPENDENCY_PK
PRIMARY KEY (ID_DEPENDENCY);






-----------------------------------------------------------------------------
-- R_DIRECTORY
-----------------------------------------------------------------------------
DROP TABLE R_DIRECTORY CASCADE CONSTRAINTS;

CREATE TABLE R_DIRECTORY
(
    ID_DIRECTORY NUMBER(22) NOT NULL,
    ID_DIRECTORY_PARENT NUMBER(22),
    DIRECTORY_NAME VARCHAR2(255)
);

ALTER TABLE R_DIRECTORY
    ADD CONSTRAINT R_DIRECTORY_PK
PRIMARY KEY (ID_DIRECTORY);






-----------------------------------------------------------------------------
-- R_JOB
-----------------------------------------------------------------------------
DROP TABLE R_JOB CASCADE CONSTRAINTS;

CREATE TABLE R_JOB
(
    ID_JOB NUMBER(22) NOT NULL,
    ID_DIRECTORY NUMBER(22),
    NAME VARCHAR2(255),
    DESCRIPTION CLOB,
    EXTENDED_DESCRIPTION CLOB,
    JOB_VERSION VARCHAR2(255),
    JOB_STATUS NUMBER(22),
    ID_DATABASE_LOG NUMBER(22),
    TABLE_NAME_LOG VARCHAR2(255),
    CREATED_USER VARCHAR2(255),
    CREATED_DATE DATE,
    MODIFIED_USER VARCHAR2(255),
    MODIFIED_DATE DATE,
    USE_BATCH_ID CHAR(1),
    PASS_BATCH_ID CHAR(1),
    USE_LOGFIELD CHAR(1),
    SHARED_FILE VARCHAR2(255)
);

ALTER TABLE R_JOB
    ADD CONSTRAINT R_JOB_PK
PRIMARY KEY (ID_JOB);






-----------------------------------------------------------------------------
-- R_JOBENTRY
-----------------------------------------------------------------------------
DROP TABLE R_JOBENTRY CASCADE CONSTRAINTS;

CREATE TABLE R_JOBENTRY
(
    ID_JOBENTRY NUMBER(22) NOT NULL,
    ID_JOB NUMBER(22),
    ID_JOBENTRY_TYPE NUMBER(22),
    NAME VARCHAR2(255),
    DESCRIPTION CLOB
);

ALTER TABLE R_JOBENTRY
    ADD CONSTRAINT R_JOBENTRY_PK
PRIMARY KEY (ID_JOBENTRY);






-----------------------------------------------------------------------------
-- R_JOBENTRY_ATTRIBUTE
-----------------------------------------------------------------------------
DROP TABLE R_JOBENTRY_ATTRIBUTE CASCADE CONSTRAINTS;

CREATE TABLE R_JOBENTRY_ATTRIBUTE
(
    ID_JOBENTRY_ATTRIBUTE NUMBER(22) NOT NULL,
    ID_JOB NUMBER(22),
    ID_JOBENTRY NUMBER(22),
    NR NUMBER(22),
    CODE VARCHAR2(255),
    VALUE_NUM NUMBER(13,2),
    VALUE_STR CLOB
);

ALTER TABLE R_JOBENTRY_ATTRIBUTE
    ADD CONSTRAINT R_JOBENTRY_ATTRIBUTE_PK
PRIMARY KEY (ID_JOBENTRY_ATTRIBUTE);






-----------------------------------------------------------------------------
-- R_JOBENTRY_COPY
-----------------------------------------------------------------------------
DROP TABLE R_JOBENTRY_COPY CASCADE CONSTRAINTS;

CREATE TABLE R_JOBENTRY_COPY
(
    ID_JOBENTRY_COPY NUMBER(22) NOT NULL,
    ID_JOBENTRY NUMBER(22),
    ID_JOB NUMBER(22),
    ID_JOBENTRY_TYPE NUMBER(22),
    NR NUMBER(22),
    GUI_LOCATION_X NUMBER(22),
    GUI_LOCATION_Y NUMBER(22),
    GUI_DRAW CHAR(1),
    PARALLEL CHAR(1)
);

ALTER TABLE R_JOBENTRY_COPY
    ADD CONSTRAINT R_JOBENTRY_COPY_PK
PRIMARY KEY (ID_JOBENTRY_COPY);






-----------------------------------------------------------------------------
-- R_JOBENTRY_TYPE
-----------------------------------------------------------------------------
DROP TABLE R_JOBENTRY_TYPE CASCADE CONSTRAINTS;

CREATE TABLE R_JOBENTRY_TYPE
(
    ID_JOBENTRY_TYPE NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_JOBENTRY_TYPE
    ADD CONSTRAINT R_JOBENTRY_TYPE_PK
PRIMARY KEY (ID_JOBENTRY_TYPE);






-----------------------------------------------------------------------------
-- R_JOB_ATTRIBUTE
-----------------------------------------------------------------------------
DROP TABLE R_JOB_ATTRIBUTE CASCADE CONSTRAINTS;

CREATE TABLE R_JOB_ATTRIBUTE
(
    ID_JOB_ATTRIBUTE NUMBER(22) NOT NULL,
    ID_JOB NUMBER(22),
    NR NUMBER(22),
    CODE VARCHAR2(255),
    VALUE_NUM NUMBER(22),
    VALUE_STR CLOB
);

ALTER TABLE R_JOB_ATTRIBUTE
    ADD CONSTRAINT R_JOB_ATTRIBUTE_PK
PRIMARY KEY (ID_JOB_ATTRIBUTE);






-----------------------------------------------------------------------------
-- R_JOB_HOP
-----------------------------------------------------------------------------
DROP TABLE R_JOB_HOP CASCADE CONSTRAINTS;

CREATE TABLE R_JOB_HOP
(
    ID_JOB_HOP NUMBER(22) NOT NULL,
    ID_JOB NUMBER(22),
    ID_JOBENTRY_COPY_FROM NUMBER(22),
    ID_JOBENTRY_COPY_TO NUMBER(22),
    ENABLED CHAR(1),
    EVALUATION CHAR(1),
    UNCONDITIONAL CHAR(1)
);

ALTER TABLE R_JOB_HOP
    ADD CONSTRAINT R_JOB_HOP_PK
PRIMARY KEY (ID_JOB_HOP);






-----------------------------------------------------------------------------
-- R_JOB_NOTE
-----------------------------------------------------------------------------
DROP TABLE R_JOB_NOTE CASCADE CONSTRAINTS;

CREATE TABLE R_JOB_NOTE
(
    ID_JOB NUMBER(22),
    ID_NOTE NUMBER(22)
);







-----------------------------------------------------------------------------
-- R_LOG
-----------------------------------------------------------------------------
DROP TABLE R_LOG CASCADE CONSTRAINTS;

CREATE TABLE R_LOG
(
    ID_LOG NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    ID_LOGLEVEL NUMBER(22),
    LOGTYPE VARCHAR2(255),
    FILENAME VARCHAR2(255),
    FILEEXTENTION VARCHAR2(255),
    ADD_DATE CHAR(1),
    ADD_TIME CHAR(1),
    ID_DATABASE_LOG NUMBER(22),
    TABLE_NAME_LOG VARCHAR2(255)
);

ALTER TABLE R_LOG
    ADD CONSTRAINT R_LOG_PK
PRIMARY KEY (ID_LOG);






-----------------------------------------------------------------------------
-- R_LOGLEVEL
-----------------------------------------------------------------------------
DROP TABLE R_LOGLEVEL CASCADE CONSTRAINTS;

CREATE TABLE R_LOGLEVEL
(
    ID_LOGLEVEL NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_LOGLEVEL
    ADD CONSTRAINT R_LOGLEVEL_PK
PRIMARY KEY (ID_LOGLEVEL);






-----------------------------------------------------------------------------
-- R_NOTE
-----------------------------------------------------------------------------
DROP TABLE R_NOTE CASCADE CONSTRAINTS;

CREATE TABLE R_NOTE
(
    ID_NOTE NUMBER(22) NOT NULL,
    VALUE_STR CLOB,
    GUI_LOCATION_X NUMBER(22),
    GUI_LOCATION_Y NUMBER(22),
    GUI_LOCATION_WIDTH NUMBER(22),
    GUI_LOCATION_HEIGHT NUMBER(22)
);

ALTER TABLE R_NOTE
    ADD CONSTRAINT R_NOTE_PK
PRIMARY KEY (ID_NOTE);






-----------------------------------------------------------------------------
-- R_PARTITION
-----------------------------------------------------------------------------
DROP TABLE R_PARTITION CASCADE CONSTRAINTS;

CREATE TABLE R_PARTITION
(
    ID_PARTITION NUMBER(22) NOT NULL,
    ID_PARTITION_SCHEMA NUMBER(22),
    PARTITION_ID VARCHAR2(255)
);

ALTER TABLE R_PARTITION
    ADD CONSTRAINT R_PARTITION_PK
PRIMARY KEY (ID_PARTITION);






-----------------------------------------------------------------------------
-- R_PARTITION_SCHEMA
-----------------------------------------------------------------------------
DROP TABLE R_PARTITION_SCHEMA CASCADE CONSTRAINTS;

CREATE TABLE R_PARTITION_SCHEMA
(
    ID_PARTITION_SCHEMA NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    DYNAMIC_DEFINITION CHAR(1),
    PARTITIONS_PER_SLAVE VARCHAR2(255)
);

ALTER TABLE R_PARTITION_SCHEMA
    ADD CONSTRAINT R_PARTITION_SCHEMA_PK
PRIMARY KEY (ID_PARTITION_SCHEMA);






-----------------------------------------------------------------------------
-- R_PERMISSION
-----------------------------------------------------------------------------
DROP TABLE R_PERMISSION CASCADE CONSTRAINTS;

CREATE TABLE R_PERMISSION
(
    ID_PERMISSION NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_PERMISSION
    ADD CONSTRAINT R_PERMISSION_PK
PRIMARY KEY (ID_PERMISSION);






-----------------------------------------------------------------------------
-- R_PROFILE
-----------------------------------------------------------------------------
DROP TABLE R_PROFILE CASCADE CONSTRAINTS;

CREATE TABLE R_PROFILE
(
    ID_PROFILE NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    DESCRIPTION VARCHAR2(255)
);

ALTER TABLE R_PROFILE
    ADD CONSTRAINT R_PROFILE_PK
PRIMARY KEY (ID_PROFILE);






-----------------------------------------------------------------------------
-- R_PROFILE_PERMISSION
-----------------------------------------------------------------------------
DROP TABLE R_PROFILE_PERMISSION CASCADE CONSTRAINTS;

CREATE TABLE R_PROFILE_PERMISSION
(
    ID_PROFILE NUMBER(22),
    ID_PERMISSION NUMBER(22)
);







-----------------------------------------------------------------------------
-- R_REPOSITORY_LOG
-----------------------------------------------------------------------------
DROP TABLE R_REPOSITORY_LOG CASCADE CONSTRAINTS;

CREATE TABLE R_REPOSITORY_LOG
(
    ID_REPOSITORY_LOG NUMBER(22) NOT NULL,
    REP_VERSION VARCHAR2(255),
    LOG_DATE DATE,
    LOG_USER VARCHAR2(255),
    OPERATION_DESC CLOB
);

ALTER TABLE R_REPOSITORY_LOG
    ADD CONSTRAINT R_REPOSITORY_LOG_PK
PRIMARY KEY (ID_REPOSITORY_LOG);






-----------------------------------------------------------------------------
-- R_SLAVE
-----------------------------------------------------------------------------
DROP TABLE R_SLAVE CASCADE CONSTRAINTS;

CREATE TABLE R_SLAVE
(
    ID_SLAVE NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    HOST_NAME VARCHAR2(255),
    PORT VARCHAR2(255),
    USERNAME VARCHAR2(255),
    PASSWORD VARCHAR2(255),
    PROXY_HOST_NAME VARCHAR2(255),
    PROXY_PORT VARCHAR2(255),
    NON_PROXY_HOSTS VARCHAR2(255),
    MASTER CHAR(1)
);

ALTER TABLE R_SLAVE
    ADD CONSTRAINT R_SLAVE_PK
PRIMARY KEY (ID_SLAVE);






-----------------------------------------------------------------------------
-- R_STEP
-----------------------------------------------------------------------------
DROP TABLE R_STEP CASCADE CONSTRAINTS;

CREATE TABLE R_STEP
(
    ID_STEP NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    NAME VARCHAR2(255),
    DESCRIPTION CLOB,
    ID_STEP_TYPE NUMBER(22),
    DISTRIBUTE CHAR(1),
    COPIES NUMBER(22),
    GUI_LOCATION_X NUMBER(22),
    GUI_LOCATION_Y NUMBER(22),
    GUI_DRAW CHAR(1)
);

ALTER TABLE R_STEP
    ADD CONSTRAINT R_STEP_PK
PRIMARY KEY (ID_STEP);






-----------------------------------------------------------------------------
-- R_STEP_ATTRIBUTE
-----------------------------------------------------------------------------
DROP TABLE R_STEP_ATTRIBUTE CASCADE CONSTRAINTS;

CREATE TABLE R_STEP_ATTRIBUTE
(
    ID_STEP_ATTRIBUTE NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_STEP NUMBER(22),
    NR NUMBER(22),
    CODE VARCHAR2(255),
    VALUE_NUM NUMBER(22),
    VALUE_STR CLOB
);

ALTER TABLE R_STEP_ATTRIBUTE
    ADD CONSTRAINT R_STEP_ATTRIBUTE_PK
PRIMARY KEY (ID_STEP_ATTRIBUTE);






-----------------------------------------------------------------------------
-- R_STEP_DATABASE
-----------------------------------------------------------------------------
DROP TABLE R_STEP_DATABASE CASCADE CONSTRAINTS;

CREATE TABLE R_STEP_DATABASE
(
    ID_TRANSFORMATION NUMBER(22),
    ID_STEP NUMBER(22),
    ID_DATABASE NUMBER(22)
);







-----------------------------------------------------------------------------
-- R_STEP_TYPE
-----------------------------------------------------------------------------
DROP TABLE R_STEP_TYPE CASCADE CONSTRAINTS;

CREATE TABLE R_STEP_TYPE
(
    ID_STEP_TYPE NUMBER(22) NOT NULL,
    CODE VARCHAR2(255),
    DESCRIPTION VARCHAR2(255),
    HELPTEXT VARCHAR2(255)
);

ALTER TABLE R_STEP_TYPE
    ADD CONSTRAINT R_STEP_TYPE_PK
PRIMARY KEY (ID_STEP_TYPE);






-----------------------------------------------------------------------------
-- R_TRANSFORMATION
-----------------------------------------------------------------------------
DROP TABLE R_TRANSFORMATION CASCADE CONSTRAINTS;

CREATE TABLE R_TRANSFORMATION
(
    ID_TRANSFORMATION NUMBER(22) NOT NULL,
    ID_DIRECTORY NUMBER(22),
    NAME VARCHAR2(255),
    DESCRIPTION CLOB,
    EXTENDED_DESCRIPTION CLOB,
    TRANS_VERSION VARCHAR2(255),
    TRANS_STATUS NUMBER(22),
    ID_STEP_READ NUMBER(22),
    ID_STEP_WRITE NUMBER(22),
    ID_STEP_INPUT NUMBER(22),
    ID_STEP_OUTPUT NUMBER(22),
    ID_STEP_UPDATE NUMBER(22),
    ID_DATABASE_LOG NUMBER(22),
    TABLE_NAME_LOG VARCHAR2(255),
    USE_BATCHID CHAR(1),
    USE_LOGFIELD CHAR(1),
    ID_DATABASE_MAXDATE NUMBER(22),
    TABLE_NAME_MAXDATE VARCHAR2(255),
    FIELD_NAME_MAXDATE VARCHAR2(255),
    OFFSET_MAXDATE NUMBER(12,2),
    DIFF_MAXDATE NUMBER(12,2),
    CREATED_USER VARCHAR2(255),
    CREATED_DATE DATE,
    MODIFIED_USER VARCHAR2(255),
    MODIFIED_DATE DATE,
    SIZE_ROWSET NUMBER(22)
);

ALTER TABLE R_TRANSFORMATION
    ADD CONSTRAINT R_TRANSFORMATION_PK
PRIMARY KEY (ID_TRANSFORMATION);






-----------------------------------------------------------------------------
-- R_TRANS_ATTRIBUTE
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_ATTRIBUTE CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_ATTRIBUTE
(
    ID_TRANS_ATTRIBUTE NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    NR NUMBER(22),
    CODE VARCHAR2(255),
    VALUE_NUM NUMBER(22),
    VALUE_STR CLOB
);

ALTER TABLE R_TRANS_ATTRIBUTE
    ADD CONSTRAINT R_TRANS_ATTRIBUTE_PK
PRIMARY KEY (ID_TRANS_ATTRIBUTE);






-----------------------------------------------------------------------------
-- R_TRANS_CLUSTER
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_CLUSTER CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_CLUSTER
(
    ID_TRANS_CLUSTER NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_CLUSTER NUMBER(22)
);

ALTER TABLE R_TRANS_CLUSTER
    ADD CONSTRAINT R_TRANS_CLUSTER_PK
PRIMARY KEY (ID_TRANS_CLUSTER);






-----------------------------------------------------------------------------
-- R_TRANS_HOP
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_HOP CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_HOP
(
    ID_TRANS_HOP NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_STEP_FROM NUMBER(22),
    ID_STEP_TO NUMBER(22),
    ENABLED CHAR(1),
    CONDITION_ VARCHAR2(64)
);

ALTER TABLE R_TRANS_HOP
    ADD CONSTRAINT R_TRANS_HOP_PK
PRIMARY KEY (ID_TRANS_HOP);






-----------------------------------------------------------------------------
-- R_TRANS_NOTE
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_NOTE CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_NOTE
(
    ID_TRANSFORMATION NUMBER(22),
    ID_NOTE NUMBER(22)
);







-----------------------------------------------------------------------------
-- R_TRANS_PARTITION_SCHEMA
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_PARTITION_SCHEMA CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_PARTITION_SCHEMA
(
    ID_TRANS_PARTITION_SCHEMA NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_PARTITION_SCHEMA NUMBER(22)
);

ALTER TABLE R_TRANS_PARTITION_SCHEMA
    ADD CONSTRAINT R_TRANS_PARTITION_SCHEMA_PK
PRIMARY KEY (ID_TRANS_PARTITION_SCHEMA);






-----------------------------------------------------------------------------
-- R_TRANS_SLAVE
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_SLAVE CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_SLAVE
(
    ID_TRANS_SLAVE NUMBER(22) NOT NULL,
    ID_TRANSFORMATION NUMBER(22),
    ID_SLAVE NUMBER(22)
);

ALTER TABLE R_TRANS_SLAVE
    ADD CONSTRAINT R_TRANS_SLAVE_PK
PRIMARY KEY (ID_TRANS_SLAVE);






-----------------------------------------------------------------------------
-- R_TRANS_STEP_CONDITION
-----------------------------------------------------------------------------
DROP TABLE R_TRANS_STEP_CONDITION CASCADE CONSTRAINTS;

CREATE TABLE R_TRANS_STEP_CONDITION
(
    ID_TRANSFORMATION NUMBER(22),
    ID_STEP NUMBER(22),
    ID_CONDITION NUMBER(22)
);







-----------------------------------------------------------------------------
-- R_USER
-----------------------------------------------------------------------------
DROP TABLE R_USER CASCADE CONSTRAINTS;

CREATE TABLE R_USER
(
    ID_USER NUMBER(22) NOT NULL,
    ID_PROFILE NUMBER(22),
    LOGIN VARCHAR2(255),
    PASSWORD VARCHAR2(255),
    NAME VARCHAR2(255),
    DESCRIPTION VARCHAR2(255),
    ENABLED CHAR(1)
);

ALTER TABLE R_USER
    ADD CONSTRAINT R_USER_PK
PRIMARY KEY (ID_USER);






-----------------------------------------------------------------------------
-- R_VALUE
-----------------------------------------------------------------------------
DROP TABLE R_VALUE CASCADE CONSTRAINTS;

CREATE TABLE R_VALUE
(
    ID_VALUE NUMBER(22) NOT NULL,
    NAME VARCHAR2(255),
    VALUE_TYPE VARCHAR2(255),
    VALUE_STR VARCHAR2(255),
    IS_NULL CHAR(1)
);

ALTER TABLE R_VALUE
    ADD CONSTRAINT R_VALUE_PK
PRIMARY KEY (ID_VALUE);






-----------------------------------------------------------------------------
-- R_VERSION
-----------------------------------------------------------------------------
DROP TABLE R_VERSION CASCADE CONSTRAINTS;

CREATE TABLE R_VERSION
(
    ID_VERSION NUMBER(22) NOT NULL,
    MAJOR_VERSION NUMBER(22),
    MINOR_VERSION NUMBER(22),
    UPGRADE_DATE DATE,
    IS_UPGRADE CHAR(1)
);

ALTER TABLE R_VERSION
    ADD CONSTRAINT R_VERSION_PK
PRIMARY KEY (ID_VERSION);






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

















ALTER TABLE GROUP_USERS
    ADD CONSTRAINT GROUP_USERS_FK_1 FOREIGN KEY (USER_ID)
    REFERENCES MQ_USERS (USER_ID)
;



ALTER TABLE J3_ADDRESS
    ADD CONSTRAINT J3_ADDRESS_FK_1 FOREIGN KEY (ADDRESS_ID)
    REFERENCES J3_CONTACT (ID)
;



ALTER TABLE J3_ADDRESS_LINE
    ADD CONSTRAINT J3_ADDRESS_LINE_FK_1 FOREIGN KEY (ADDRESS_ID)
    REFERENCES J3_ADDRESS (ID)
;





ALTER TABLE J3_BINDING_CATEGORY_BAG
    ADD CONSTRAINT J3_BINDING_CATEGORY_BAG_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;

ALTER TABLE J3_BINDING_CATEGORY_BAG
    ADD CONSTRAINT J3_BINDING_CATEGORY_BAG_FK_2 FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;



ALTER TABLE J3_BINDING_DESCR
    ADD CONSTRAINT J3_BINDING_DESCR_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;



ALTER TABLE J3_BINDING_TEMPLATE
    ADD CONSTRAINT J3_BINDING_TEMPLATE_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BINDING_TEMPLATE
    ADD CONSTRAINT J3_BINDING_TEMPLATE_FK_2 FOREIGN KEY (SERVICE_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_CATEGORY_BAG
    ADD CONSTRAINT J3_BUSINESS_CATEGORY_BAG_FK_1 FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_BUSINESS_CATEGORY_BAG
    ADD CONSTRAINT J3_BUSINESS_CATEGORY_BAG_FK_2 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_DESCR
    ADD CONSTRAINT J3_BUSINESS_DESCR_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_ENTITY
    ADD CONSTRAINT J3_BUSINESS_ENTITY_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_IDENTIFIER
    ADD CONSTRAINT J3_BUSINESS_IDENTIFIER_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_NAME
    ADD CONSTRAINT J3_BUSINESS_NAME_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_BUSINESS_SERVICE
    ADD CONSTRAINT J3_BUSINESS_SERVICE_FK_1 FOREIGN KEY (BUSINESS_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_BUSINESS_SERVICE
    ADD CONSTRAINT J3_BUSINESS_SERVICE_FK_2 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;





ALTER TABLE J3_CLERK
    ADD CONSTRAINT J3_CLERK_FK_1 FOREIGN KEY (NODE_NAME)
    REFERENCES J3_NODE (NAME)
;



ALTER TABLE J3_CLIENT_SUBSCRIPTIONINFO
    ADD CONSTRAINT J3_CLIENT_SUBSCRIPTIONINF_FK_1 FOREIGN KEY (FROMCLERK_CLERK_NAME)
    REFERENCES J3_CLERK (CLERK_NAME)
;

ALTER TABLE J3_CLIENT_SUBSCRIPTIONINFO
    ADD CONSTRAINT J3_CLIENT_SUBSCRIPTIONINF_FK_2 FOREIGN KEY (TOCLERK_CLERK_NAME)
    REFERENCES J3_CLERK (CLERK_NAME)
;



ALTER TABLE J3_CONTACT
    ADD CONSTRAINT J3_CONTACT_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_CONTACT_DESCR
    ADD CONSTRAINT J3_CONTACT_DESCR_FK_1 FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;



ALTER TABLE J3_DISCOVERY_URL
    ADD CONSTRAINT J3_DISCOVERY_URL_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_EMAIL
    ADD CONSTRAINT J3_EMAIL_FK_1 FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;



ALTER TABLE J3_INSTANCE_DETAILS_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DESCR_FK_1 FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;



ALTER TABLE J3_INSTANCE_DETAILS_DOC_DESCR
    ADD CONSTRAINT J3_INSTANCE_DETAILS_DOC_D_FK_1 FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;



ALTER TABLE J3_KEYED_REFERENCE
    ADD CONSTRAINT J3_KEYED_REFERENCE_FK_1 FOREIGN KEY (KEYED_REFERENCE_GROUP_ID)
    REFERENCES J3_KEYED_REFERENCE_GROUP (ID)
;

ALTER TABLE J3_KEYED_REFERENCE
    ADD CONSTRAINT J3_KEYED_REFERENCE_FK_2 FOREIGN KEY (CATEGORY_BAG_ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;



ALTER TABLE J3_KEYED_REFERENCE_GROUP
    ADD CONSTRAINT J3_KEYED_REFERENCE_GROUP_FK_1 FOREIGN KEY (CATEGORY_BAG_ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;





ALTER TABLE J3_OVERVIEW_DOC
    ADD CONSTRAINT J3_OVERVIEW_DOC_FK_1 FOREIGN KEY (TOMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;

ALTER TABLE J3_OVERVIEW_DOC
    ADD CONSTRAINT J3_OVERVIEW_DOC_FK_2 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;



ALTER TABLE J3_OVERVIEW_DOC_DESCR
    ADD CONSTRAINT J3_OVERVIEW_DOC_DESCR_FK_1 FOREIGN KEY (OVERVIEW_DOC_ID)
    REFERENCES J3_OVERVIEW_DOC (ID)
;



ALTER TABLE J3_PERSON_NAME
    ADD CONSTRAINT J3_PERSON_NAME_FK_1 FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;



ALTER TABLE J3_PHONE
    ADD CONSTRAINT J3_PHONE_FK_1 FOREIGN KEY (CONTACT_ID)
    REFERENCES J3_CONTACT (ID)
;





ALTER TABLE J3_PUBLISHER_ASSERTION
    ADD CONSTRAINT J3_PUBLISHER_ASSERTION_FK_1 FOREIGN KEY (TO_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_PUBLISHER_ASSERTION
    ADD CONSTRAINT J3_PUBLISHER_ASSERTION_FK_2 FOREIGN KEY (FROM_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_SERVICE_CATEGORY_BAG
    ADD CONSTRAINT J3_SERVICE_CATEGORY_BAG_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_CATEGORY_BAG
    ADD CONSTRAINT J3_SERVICE_CATEGORY_BAG_FK_2 FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;



ALTER TABLE J3_SERVICE_DESCR
    ADD CONSTRAINT J3_SERVICE_DESCR_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;



ALTER TABLE J3_SERVICE_NAME
    ADD CONSTRAINT J3_SERVICE_NAME_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;



ALTER TABLE J3_SERVICE_PROJECTION
    ADD CONSTRAINT J3_SERVICE_PROJECTION_FK_1 FOREIGN KEY (BUSINESS_KEY)
    REFERENCES J3_BUSINESS_ENTITY (ENTITY_KEY)
;

ALTER TABLE J3_SERVICE_PROJECTION
    ADD CONSTRAINT J3_SERVICE_PROJECTION_FK_2 FOREIGN KEY (SERVICE_KEY)
    REFERENCES J3_BUSINESS_SERVICE (ENTITY_KEY)
;







ALTER TABLE J3_SUBSCRIPTION_MATCH
    ADD CONSTRAINT J3_SUBSCRIPTION_MATCH_FK_1 FOREIGN KEY (SUBSCRIPTION_KEY)
    REFERENCES J3_SUBSCRIPTION (SUBSCRIPTION_KEY)
;



ALTER TABLE J3_TMODEL
    ADD CONSTRAINT J3_TMODEL_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_UDDI_ENTITY (ENTITY_KEY)
;



ALTER TABLE J3_TMODEL_CATEGORY_BAG
    ADD CONSTRAINT J3_TMODEL_CATEGORY_BAG_FK_1 FOREIGN KEY (ID)
    REFERENCES J3_CATEGORY_BAG (ID)
;

ALTER TABLE J3_TMODEL_CATEGORY_BAG
    ADD CONSTRAINT J3_TMODEL_CATEGORY_BAG_FK_2 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;



ALTER TABLE J3_TMODEL_DESCR
    ADD CONSTRAINT J3_TMODEL_DESCR_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;



ALTER TABLE J3_TMODEL_IDENTIFIER
    ADD CONSTRAINT J3_TMODEL_IDENTIFIER_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_TMODEL (ENTITY_KEY)
;



ALTER TABLE J3_TMODEL_INSTANCE_INFO
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_FK_1 FOREIGN KEY (ENTITY_KEY)
    REFERENCES J3_BINDING_TEMPLATE (ENTITY_KEY)
;



ALTER TABLE J3_TMODEL_INSTANCE_INFO_DESCR
    ADD CONSTRAINT J3_TMODEL_INSTANCE_INFO_D_FK_1 FOREIGN KEY (TMODEL_INSTANCE_INFO_ID)
    REFERENCES J3_TMODEL_INSTANCE_INFO (ID)
;





ALTER TABLE J3_TRANSFER_TOKEN_KEYS
    ADD CONSTRAINT J3_TRANSFER_TOKEN_KEYS_FK_1 FOREIGN KEY (TRANSFER_TOKEN)
    REFERENCES J3_TRANSFER_TOKEN (TRANSFER_TOKEN)
;











ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_1 FOREIGN KEY (KS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;

ALTER TABLE MQ_CLIENT_CA
    ADD CONSTRAINT MQ_CLIENT_CA_FK_2 FOREIGN KEY (TS_FILE)
    REFERENCES MQ_BIG_LOB (LOB_ID)
;



ALTER TABLE MQ_CONNECTORS
    ADD CONSTRAINT MQ_CONNECTORS_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;





ALTER TABLE MQ_GROUP
    ADD CONSTRAINT MQ_GROUP_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;







ALTER TABLE MQ_MEM_CONF
    ADD CONSTRAINT MQ_MEM_CONF_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_MIRROR_TABLE
    ADD CONSTRAINT MQ_MIRROR_TABLE_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;





ALTER TABLE MQ_NODE
    ADD CONSTRAINT MQ_NODE_FK_1 FOREIGN KEY (NODE_FACTORY_ID)
    REFERENCES MQ_NODE_FACTORY (NODE_FACTORY_ID)
;



ALTER TABLE MQ_NODE_FACTORY
    ADD CONSTRAINT MQ_NODE_FACTORY_FK_1 FOREIGN KEY (CA_ID)
    REFERENCES MQ_CLIENT_CA (CA_ID)
;



ALTER TABLE MQ_PERMISSIONS
    ADD CONSTRAINT MQ_PERMISSIONS_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_POLICY_TABLE
    ADD CONSTRAINT MQ_POLICY_TABLE_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_PROPERTIES
    ADD CONSTRAINT MQ_PROPERTIES_FK_1 FOREIGN KEY (TASK_ID)
    REFERENCES MQ_HUGEMESSAGE_SCHEDULE (TASK_ID)
;



ALTER TABLE MQ_REAL_NODES
    ADD CONSTRAINT MQ_REAL_NODES_FK_1 FOREIGN KEY (VIRTUAL_NODEID)
    REFERENCES MQ_VIRTUAL_NODES (VIRTUAL_NODEID)
;



ALTER TABLE MQ_ROUTENODE
    ADD CONSTRAINT MQ_ROUTENODE_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_ROUTERS
    ADD CONSTRAINT MQ_ROUTERS_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;









ALTER TABLE MQ_USERS
    ADD CONSTRAINT MQ_USERS_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;



ALTER TABLE MQ_VIRTUAL_NODES
    ADD CONSTRAINT MQ_VIRTUAL_NODES_FK_1 FOREIGN KEY (BROKER_ID)
    REFERENCES MQ_BROKER (BROKER_ID)
;

























































































