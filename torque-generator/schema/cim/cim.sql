ALTER TABLE cim_cpustatics 
    DROP CONSTRAINT cim_cpustatics_FK_1;
        
ALTER TABLE cim_etl_resource_item 
    DROP CONSTRAINT cim_etl_resource_item_FK_1;
        
ALTER TABLE cim_filesystemparams 
    DROP CONSTRAINT cim_filesystemparams_FK_1;
        
ALTER TABLE cim_filesysteusage 
    DROP CONSTRAINT cim_filesysteusage_FK_1;
        
ALTER TABLE cim_hostapps 
    DROP CONSTRAINT cim_hostapps_FK_1;
        
ALTER TABLE cim_hostapps 
    DROP CONSTRAINT cim_hostapps_FK_2;
        
ALTER TABLE cim_hostcpus 
    DROP CONSTRAINT cim_hostcpus_FK_1;
        
ALTER TABLE cim_hostparams 
    DROP CONSTRAINT cim_hostparams_FK_1;
        
ALTER TABLE cim_mq_consumer_conn 
    DROP CONSTRAINT cim_mq_consumer_conn_FK_1;
        
ALTER TABLE cim_mq_durable_subscriber 
    DROP CONSTRAINT cim_mq_durable_subscriber_FK_1;
        
ALTER TABLE cim_mq_msgflow 
    DROP CONSTRAINT cim_mq_msgflow_FK_1;
        
ALTER TABLE cim_mq_percnet_usage 
    DROP CONSTRAINT cim_mq_percnet_usage_FK_1;
        
ALTER TABLE cim_mq_queuemsg 
    DROP CONSTRAINT cim_mq_queuemsg_FK_1;
        
ALTER TABLE cim_netconfig 
    DROP CONSTRAINT cim_netconfig_FK_1;
        
ALTER TABLE cim_netconnect 
    DROP CONSTRAINT cim_netconnect_FK_1;
        
ALTER TABLE cim_netroute 
    DROP CONSTRAINT cim_netroute_FK_1;
        
ALTER TABLE cim_netstatusstat 
    DROP CONSTRAINT cim_netstatusstat_FK_1;
        
ALTER TABLE cim_plugin_host 
    DROP CONSTRAINT cim_plugin_host_FK_1;
        
ALTER TABLE cim_plugin_host 
    DROP CONSTRAINT cim_plugin_host_FK_2;
        
ALTER TABLE cim_plugin_methods 
    DROP CONSTRAINT cim_plugin_methods_FK_1;
        
ALTER TABLE cim_swap 
    DROP CONSTRAINT cim_swap_FK_1;
        
ALTER TABLE cim_sys_base_info 
    DROP CONSTRAINT cim_sys_base_info_FK_1;
        
ALTER TABLE cim_tcpconnectinfo 
    DROP CONSTRAINT cim_tcpconnectinfo_FK_1;
        
ALTER TABLE cim_plugins 
    DROP CONSTRAINT cim_plugins_FK_1;
        

-----------------------------------------------------------------------------
-- cim_cpustatics
-----------------------------------------------------------------------------
DROP TABLE cim_cpustatics CASCADE CONSTRAINTS;

CREATE TABLE cim_cpustatics
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(500),
    CATEGORY_ID VARCHAR2(500),
    IDLE FLOAT,
    IRQ FLOAT,
    NICE FLOAT,
    SOFTIRQS FLOAT,
    STOLEN FLOAT,
    CPUSYS FLOAT,
    CPUUSER FLOAT,
    CPUWAIT FLOAT,
    TOTOALUSEPER FLOAT,
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_cpustatics
    ADD CONSTRAINT cim_cpustatics_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_etl_resource_item
-----------------------------------------------------------------------------
DROP TABLE cim_etl_resource_item CASCADE CONSTRAINTS;

CREATE TABLE cim_etl_resource_item
(
    REPOSITORY_ID VARCHAR2(36) NOT NULL,
    ID NUMBER(20,0) NOT NULL,
    PARENT_ID NUMBER(20,0) NOT NULL,
    DIR_NAME VARCHAR2(500),
    NAME VARCHAR2(200) NOT NULL,
    OBJECT_TYPE VARCHAR2(20),
    DESCRIPTION VARCHAR2(500),
    STATUS VARCHAR2(10),
    MODIFIED_USER VARCHAR2(100),
    MODIFIED_DATE TIMESTAMP,
    DATASOURCE_NAME VARCHAR2(200),
    LOG_TABLE VARCHAR2(100),
    FIELD_NAMES VARCHAR2(300),
    STEP_PERFORMANCE_LOG_TABLE VARCHAR2(100),
    STEP_PERFORMANCE_FIELD_NAMES VARCHAR2(300),
    FLOW_IMGE BLOB
);

ALTER TABLE cim_etl_resource_item
    ADD CONSTRAINT cim_etl_resource_item_PK
PRIMARY KEY (REPOSITORY_ID,PARENT_ID,NAME);






-----------------------------------------------------------------------------
-- cim_filesystemparams
-----------------------------------------------------------------------------
DROP TABLE cim_filesystemparams CASCADE CONSTRAINTS;

CREATE TABLE cim_filesystemparams
(
    HOST_ID NUMBER(20,0) NOT NULL,
    DEVNAME VARCHAR2(200) NOT NULL,
    DIRNAME VARCHAR2(200) NOT NULL,
    FILEFLAGS VARCHAR2(200),
    FILEOPTIONS VARCHAR2(200),
    SYSTYPENAME VARCHAR2(200),
    FILETYPE VARCHAR2(200),
    FILETYPENAME VARCHAR2(200),
    TOTALSPACE FLOAT
);

ALTER TABLE cim_filesystemparams
    ADD CONSTRAINT cim_filesystemparams_PK
PRIMARY KEY (HOST_ID,DEVNAME,DIRNAME);






-----------------------------------------------------------------------------
-- cim_filesysteusage
-----------------------------------------------------------------------------
DROP TABLE cim_filesysteusage CASCADE CONSTRAINTS;

CREATE TABLE cim_filesysteusage
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(500),
    CATEGORY_ID VARCHAR2(500),
    DEVNAME VARCHAR2(200) NOT NULL,
    DIRNAME VARCHAR2(200) NOT NULL,
    AVAILSPACE FLOAT,
    DISKQUEUE FLOAT,
    DISKREADBYTES FLOAT,
    DISKREADS FLOAT,
    DISKSERVICETIME FLOAT,
    DISKWRITEBYTES FLOAT,
    DISKWRITES FLOAT,
    FILES FLOAT,
    FREES FLOAT,
    FREEFILES FLOAT,
    TOTALS FLOAT,
    USEDS FLOAT,
    USEDPERS FLOAT,
    BLKDEVS FLOAT,
    CHRDEVS FLOAT,
    SOCKET FLOAT,
    SUBDIRS FLOAT,
    SYMLINKS FLOAT,
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_filesysteusage
    ADD CONSTRAINT cim_filesysteusage_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_hostapps
-----------------------------------------------------------------------------
DROP TABLE cim_hostapps CASCADE CONSTRAINTS;

CREATE TABLE cim_hostapps
(
    HOST_ID NUMBER(20,0) NOT NULL,
    APPHOST_ID NUMBER(20,0) NOT NULL,
    ISDELETED NUMBER(20,0) default 0
);

ALTER TABLE cim_hostapps
    ADD CONSTRAINT cim_hostapps_PK
PRIMARY KEY (HOST_ID,APPHOST_ID);






-----------------------------------------------------------------------------
-- cim_hostcpus
-----------------------------------------------------------------------------
DROP TABLE cim_hostcpus CASCADE CONSTRAINTS;

CREATE TABLE cim_hostcpus
(
    HOST_ID NUMBER(20,0),
    ID NUMBER(20,0) NOT NULL,
    CPU_MODEL VARCHAR2(200),
    CPU_TOTALCORES VARCHAR2(200),
    CPU_COREPERSOCKET VARCHAR2(200),
    CPU_MHZ VARCHAR2(200),
    CPU_CACHESIZE VARCHAR2(200),
    CPU_TOTALSOCKETS VARCHAR2(200)
);

ALTER TABLE cim_hostcpus
    ADD CONSTRAINT cim_hostcpus_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_hostparams
-----------------------------------------------------------------------------
DROP TABLE cim_hostparams CASCADE CONSTRAINTS;

CREATE TABLE cim_hostparams
(
    HOST_ID NUMBER(20,0) NOT NULL,
    RAM NUMBER(20,0),
    TOTALMEM NUMBER(20,0),
    SWAPMEM NUMBER(20,0),
    OSNAME VARCHAR2(200),
    OSVERSION VARCHAR2(200),
    OSARCH VARCHAR2(200)
);

ALTER TABLE cim_hostparams
    ADD CONSTRAINT cim_hostparams_PK
PRIMARY KEY (HOST_ID);






-----------------------------------------------------------------------------
-- cim_mq_consumer_conn
-----------------------------------------------------------------------------
DROP TABLE cim_mq_consumer_conn CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_consumer_conn
(
    ID NUMBER(10),
    CONN_ID NUMBER(10) NOT NULL,
    CONN_ADDR VARCHAR2(40),
    CONN_IP VARCHAR2(50),
    CONN_PORT VARCHAR2(10),
    DESTINATION_NAME VARCHAR2(100),
    DESTINATION_TYPE VARCHAR2(20),
    ENQUEUES NUMBER(20,0),
    DEQUEUES NUMBER(20,0),
    DISPATCHED NUMBER(20,0),
    COLLECT_TIME NUMBER(20,0),
    CONNECTOR_NAME VARCHAR2(50),
    FIRST_COLLECT_TIME NUMBER(20,0),
    CREATE_TIME NUMBER(20,0)
);

ALTER TABLE cim_mq_consumer_conn
    ADD CONSTRAINT cim_mq_consumer_conn_PK
PRIMARY KEY (CONN_ID);






-----------------------------------------------------------------------------
-- cim_mq_durable_subscriber
-----------------------------------------------------------------------------
DROP TABLE cim_mq_durable_subscriber CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_durable_subscriber
(
    ID NUMBER(10),
    SUBSCRIBER_ID NUMBER(10) NOT NULL,
    CLIENT_ID VARCHAR2(50),
    SUBSCRIBER_NAME VARCHAR2(50),
    TOPIC_NAME VARCHAR2(100),
    ENQUEUE_COUNTER NUMBER(20,0),
    DEQUEUE_COUNTER NUMBER(20,0),
    COLLECT_TIME NUMBER(20,0),
    MESSAGE_SELECTOR VARCHAR2(200),
    PENDING_SIZE NUMBER(20,0)
);

ALTER TABLE cim_mq_durable_subscriber
    ADD CONSTRAINT cim_mq_durable_subscriber_PK
PRIMARY KEY (SUBSCRIBER_ID);






-----------------------------------------------------------------------------
-- cim_mq_msgflow
-----------------------------------------------------------------------------
DROP TABLE cim_mq_msgflow CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_msgflow
(
    ID NUMBER(10),
    MSGFLOW_ID NUMBER(10) NOT NULL,
    DESTINATION_NAME VARCHAR2(100),
    DESTINATION_TYPE VARCHAR2(20),
    CONSUMER_COUNT NUMBER(20,0),
    MSG_SEND_COUNT NUMBER(20,0),
    MSG_RECEIVE_COUNT NUMBER(20,0),
    COLLECT_TIME NUMBER(20,0),
    FIRST_COLLECT_TIME NUMBER(20,0)
);

ALTER TABLE cim_mq_msgflow
    ADD CONSTRAINT cim_mq_msgflow_PK
PRIMARY KEY (MSGFLOW_ID);






-----------------------------------------------------------------------------
-- cim_mq_percnet_usage
-----------------------------------------------------------------------------
DROP TABLE cim_mq_percnet_usage CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_percnet_usage
(
    ID NUMBER(10),
    PERCNET_ID NUMBER(10) NOT NULL,
    STORE_PERCNET_USAGE VARCHAR2(10) default '0',
    STORE_LIMIT NUMBER(20,0),
    MEMORY_PERCENT_USAGE VARCHAR2(10) default '0',
    MEMORY_LIMIT NUMBER(20,0),
    TEMP_PERCENT_USAGE VARCHAR2(10) default '0',
    TEMP_LIMIT NUMBER(20,0),
    COLLECT_TIME NUMBER(20,0)
);

ALTER TABLE cim_mq_percnet_usage
    ADD CONSTRAINT cim_mq_percnet_usage_PK
PRIMARY KEY (PERCNET_ID);






-----------------------------------------------------------------------------
-- cim_mq_queuemsg
-----------------------------------------------------------------------------
DROP TABLE cim_mq_queuemsg CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_queuemsg
(
    ID NUMBER(10),
    QUEUEMSG_ID NUMBER(10) NOT NULL,
    QUEUE_NAME VARCHAR2(50),
    MSG_COUNT NUMBER(20,0),
    COLLECT_TIME NUMBER(20,0)
);

ALTER TABLE cim_mq_queuemsg
    ADD CONSTRAINT cim_mq_queuemsg_PK
PRIMARY KEY (QUEUEMSG_ID);






-----------------------------------------------------------------------------
-- cim_netconfig
-----------------------------------------------------------------------------
DROP TABLE cim_netconfig CASCADE CONSTRAINTS;

CREATE TABLE cim_netconfig
(
    HOST_ID NUMBER(20,0) NOT NULL,
    Address VARCHAR2(200) NOT NULL,
    Hwaddr VARCHAR2(200),
    Netmask VARCHAR2(200),
    Broadcast VARCHAR2(200),
    Description VARCHAR2(1000),
    NETType VARCHAR2(200),
    Destination VARCHAR2(200),
    Flags VARCHAR2(200),
    Metric NUMBER(20,0),
    Mtu NUMBER(20,0),
    NETNAME VARCHAR2(200)
);

ALTER TABLE cim_netconfig
    ADD CONSTRAINT cim_netconfig_PK
PRIMARY KEY (HOST_ID,Address);






-----------------------------------------------------------------------------
-- cim_netconnect
-----------------------------------------------------------------------------
DROP TABLE cim_netconnect CASCADE CONSTRAINTS;

CREATE TABLE cim_netconnect
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0),
    protocol VARCHAR2(200),
    localAddress VARCHAR2(200),
    localPort NUMBER(20,0),
    receiveQueue NUMBER(20,0),
    remoteAddress VARCHAR2(200),
    remotePort NUMBER(20,0),
    sendQueue NUMBER(20,0),
    State NUMBER(20,0),
    StateString VARCHAR2(200),
    Type NUMBER(20,0),
    TypeString VARCHAR2(200),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_netconnect
    ADD CONSTRAINT cim_netconnect_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_netroute
-----------------------------------------------------------------------------
DROP TABLE cim_netroute CASCADE CONSTRAINTS;

CREATE TABLE cim_netroute
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0),
    Destination VARCHAR2(200),
    Flags NUMBER(20,0),
    Gateway VARCHAR2(200),
    Ifname VARCHAR2(200),
    Irtt NUMBER(20,0),
    Mask VARCHAR2(200),
    Metric NUMBER(20,0),
    Refcnt NUMBER(20,0),
    Mtu NUMBER(20,0),
    Used NUMBER(20,0),
    Window NUMBER(20,0),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_netroute
    ADD CONSTRAINT cim_netroute_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_netstatusstat
-----------------------------------------------------------------------------
DROP TABLE cim_netstatusstat CASCADE CONSTRAINTS;

CREATE TABLE cim_netstatusstat
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0),
    allInboundTotal NUMBER(20,0),
    allOutboundTotal NUMBER(20,0),
    tcpBound NUMBER(20,0),
    tcpClose NUMBER(20,0),
    tcpCloseWait NUMBER(20,0),
    tcpClosing NUMBER(20,0),
    tcpEstablished NUMBER(20,0),
    tcpFinWait1 NUMBER(20,0),
    tcpFinWait2 NUMBER(20,0),
    tcpIdle NUMBER(20,0),
    tcpInboundTotal NUMBER(20,0),
    tcpLastAck NUMBER(20,0),
    tcpListen NUMBER(20,0),
    tcpOutboundTotal NUMBER(20,0),
    states VARCHAR2(200),
    tcpSynRecv NUMBER(20,0),
    tcpSynSent NUMBER(20,0),
    tcpTimeWait NUMBER(20,0),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_netstatusstat
    ADD CONSTRAINT cim_netstatusstat_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_plugin_host
-----------------------------------------------------------------------------
DROP TABLE cim_plugin_host CASCADE CONSTRAINTS;

CREATE TABLE cim_plugin_host
(
    HOST_ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(200) NOT NULL,
    CATEGORY VARCHAR2(200) NOT NULL,
    ISDELETED NUMBER(20,0)
);

ALTER TABLE cim_plugin_host
    ADD CONSTRAINT cim_plugin_host_PK
PRIMARY KEY (HOST_ID,PLUGIN_ID,CATEGORY);






-----------------------------------------------------------------------------
-- cim_plugin_methods
-----------------------------------------------------------------------------
DROP TABLE cim_plugin_methods CASCADE CONSTRAINTS;

CREATE TABLE cim_plugin_methods
(
    PLUGIN_ID VARCHAR2(200) NOT NULL,
    METHOD_UUID VARCHAR2(368) NOT NULL,
    METHOD_LABEL VARCHAR2(100),
    METHOD_TYPE VARCHAR2(50),
    METHOD_STYLE VARCHAR2(50),
    METHOD_FIELDS VARCHAR2(1000),
    METHOD_DESC CLOB
);

ALTER TABLE cim_plugin_methods
    ADD CONSTRAINT cim_plugin_methods_PK
PRIMARY KEY (PLUGIN_ID,METHOD_UUID);






-----------------------------------------------------------------------------
-- cim_swap
-----------------------------------------------------------------------------
DROP TABLE cim_swap CASCADE CONSTRAINTS;

CREATE TABLE cim_swap
(
    HOST_ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(500),
    CATEGORY_ID VARCHAR2(500),
    PAGEIN FLOAT,
    PAGEOUT FLOAT,
    TOTAL FLOAT,
    USED FLOAT,
    USEDPER FLOAT,
    FREE FLOAT,
    FREEPER FLOAT,
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);







-----------------------------------------------------------------------------
-- cim_sys_base_info
-----------------------------------------------------------------------------
DROP TABLE cim_sys_base_info CASCADE CONSTRAINTS;

CREATE TABLE cim_sys_base_info
(
    ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(500),
    CATEGORY_ID VARCHAR2(500),
    HOST_ID NUMBER(20,0) NOT NULL,
    HOST_NAME VARCHAR2(100),
    UP_TIME VARCHAR2(50),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL,
    STATUS_ VARCHAR2(100),
    CPU_PER FLOAT,
    MEM_PER FLOAT,
    STARTTIME TIMESTAMP NOT NULL
);

ALTER TABLE cim_sys_base_info
    ADD CONSTRAINT cim_sys_base_info_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_tcpconnectinfo
-----------------------------------------------------------------------------
DROP TABLE cim_tcpconnectinfo CASCADE CONSTRAINTS;

CREATE TABLE cim_tcpconnectinfo
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0),
    ActiveOpens NUMBER(20,0),
    AttemptFails NUMBER(20,0),
    CurrEstab NUMBER(20,0),
    EstabResets NUMBER(20,0),
    InErrs NUMBER(20,0),
    InSeg NUMBER(20,0),
    OutRsts NUMBER(20,0),
    OutSegs NUMBER(20,0),
    PassiveOpens NUMBER(20,0),
    RetransSegs NUMBER(20,0),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);







-----------------------------------------------------------------------------
-- cim_plugins
-----------------------------------------------------------------------------
DROP TABLE cim_plugins CASCADE CONSTRAINTS;

CREATE TABLE cim_plugins
(
    PLUGIN_ID VARCHAR2(200) NOT NULL,
    PLUGIN_CATEGORY VARCHAR2(368),
    PLUGIN_LABEL VARCHAR2(200),
    PERSISTENT_SERVICE VARCHAR2(200),
    PLUGIN_DIRECTORY VARCHAR2(2000),
    PLUGIN_ROOT_DIRECTORY VARCHAR2(2000),
    CONVERTOR VARCHAR2(200),
    PLUGIN_DESC CLOB,
    PLUGIN_VERSION VARCHAR2(10),
    PLUGIN VARCHAR2(200),
    logodir VARCHAR2(200)
);

ALTER TABLE cim_plugins
    ADD CONSTRAINT cim_plugins_PK
PRIMARY KEY (PLUGIN_ID);






-----------------------------------------------------------------------------
-- business_params
-----------------------------------------------------------------------------
DROP TABLE business_params CASCADE CONSTRAINTS;

CREATE TABLE business_params
(
    NODE_ID VARCHAR2(368) NOT NULL,
    NAME VARCHAR2(100) NOT NULL,
    VALUE VARCHAR2(100),
    PARAM_TYPE VARCHAR2(368) NOT NULL,
    ISBIGDATA NUMBER(20,0) default 0,
    BIGDATA BLOB,
    RN NUMBER(20,0) default 0 NOT NULL
);

ALTER TABLE business_params
    ADD CONSTRAINT business_params_PK
PRIMARY KEY (NODE_ID,NAME,PARAM_TYPE,RN);






-----------------------------------------------------------------------------
-- cim_alerm_conf
-----------------------------------------------------------------------------
DROP TABLE cim_alerm_conf CASCADE CONSTRAINTS;

CREATE TABLE cim_alerm_conf
(
    ALARM_KEY VARCHAR2(300),
    ALARM_VALUE_STR VARCHAR2(300),
    ALARM_VALUE_CLOB CLOB
);







-----------------------------------------------------------------------------
-- cim_collect_strategy
-----------------------------------------------------------------------------
DROP TABLE cim_collect_strategy CASCADE CONSTRAINTS;

CREATE TABLE cim_collect_strategy
(
    ID NUMBER(20,0) NOT NULL,
    BUSINESS_ID NUMBER(20,0),
    BUSINESS_TYPE VARCHAR2(200),
    FREQUENCYF_D NUMBER(10,0),
    FREQUENCYF_H NUMBER(10,0),
    FREQUENCYF_M NUMBER(10,0),
    FREQUENCYF_S NUMBER(10,0),
    FREQUENCYF_MS NUMBER(10,0),
    ACTIVE_FLAG NUMBER(10,0),
    GATHER_TYPE NUMBER(10,0),
    CRONTAB VARCHAR2(100),
    STARTTIME TIMESTAMP NOT NULL,
    ENDTIME TIMESTAMP,
    JOBACTION VARCHAR2(100),
    EXECUTE_MODE VARCHAR2(20) default 'server',
    SYNED NUMBER(20,0) default 0,
    DELETED NUMBER(20,0) default 0,
    STATE_ NUMBER(10,0)
);

ALTER TABLE cim_collect_strategy
    ADD CONSTRAINT cim_collect_strategy_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_datacache
-----------------------------------------------------------------------------
DROP TABLE cim_datacache CASCADE CONSTRAINTS;

CREATE TABLE cim_datacache
(
    CACHEID VARCHAR2(200) NOT NULL,
    PLUGINID VARCHAR2(200),
    CATEGORY VARCHAR2(200),
    DATA_CACHE BLOB,
    COLLECTTIME NUMBER(20,0)
);

ALTER TABLE cim_datacache
    ADD CONSTRAINT cim_datacache_PK
PRIMARY KEY (CACHEID);






-----------------------------------------------------------------------------
-- cim_dbpool
-----------------------------------------------------------------------------
DROP TABLE cim_dbpool CASCADE CONSTRAINTS;

CREATE TABLE cim_dbpool
(
    ID NUMBER(10) NOT NULL,
    MACHINE_ID VARCHAR2(200),
    PLUGIN_ID VARCHAR2(200),
    CATEGORY_ID VARCHAR2(200),
    COLLECT_TIME TIMESTAMP NOT NULL,
    LAST_STOP_TIME TIMESTAMP,
    STARTTIME TIMESTAMP,
    CONTINUE_TIME NUMBER(10),
    MIN_CONS NUMBER(10,0),
    MAX_NUMS NUMBER(10,0),
    IDLE_CONS NUMBER(10,0),
    USE_CONS NUMBER(10,0),
    USE_MAX_CONS NUMBER(10,0),
    APP_ID VARCHAR2(100),
    APP_NAME VARCHAR2(100),
    STATUS_ VARCHAR2(100),
    DBNAME VARCHAR2(50)
);

ALTER TABLE cim_dbpool
    ADD CONSTRAINT cim_dbpool_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_etl_datasource_meta
-----------------------------------------------------------------------------
DROP TABLE cim_etl_datasource_meta CASCADE CONSTRAINTS;

CREATE TABLE cim_etl_datasource_meta
(
    REPOSITORY_ID VARCHAR2(36) NOT NULL,
    NAME VARCHAR2(200) NOT NULL,
    DRIVER VARCHAR2(100),
    JDBC_URL VARCHAR2(100),
    USERNAME VARCHAR2(100),
    PASSWORD VARCHAR2(100),
    VALIDATION_QUERY VARCHAR2(100)
);

ALTER TABLE cim_etl_datasource_meta
    ADD CONSTRAINT cim_etl_datasource_meta_PK
PRIMARY KEY (REPOSITORY_ID,NAME);






-----------------------------------------------------------------------------
-- cim_etl_repository
-----------------------------------------------------------------------------
DROP TABLE cim_etl_repository CASCADE CONSTRAINTS;

CREATE TABLE cim_etl_repository
(
    ID VARCHAR2(36) NOT NULL,
    HOST_ID NUMBER(20,0),
    APP VARCHAR2(200),
    PLUGIN_ID VARCHAR2(500),
    CATEGORY_ID VARCHAR2(500),
    NAME VARCHAR2(500),
    DESCRIPTION VARCHAR2(500)
);

ALTER TABLE cim_etl_repository
    ADD CONSTRAINT cim_etl_repository_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_hostinfo
-----------------------------------------------------------------------------
DROP TABLE cim_hostinfo CASCADE CONSTRAINTS;

CREATE TABLE cim_hostinfo
(
    HOST_ID NUMBER(20,0) NOT NULL,
    MACHINENAME VARCHAR2(200),
    MACHINE_PHYSICNAME VARCHAR2(200),
    MACHINE_TYPE NUMBER(20,0),
    REG_TYPE NUMBER(1) default 0,
    MACHINE_URL VARCHAR2(500),
    MACHINE_PROTOCOL VARCHAR2(100),
    MACHINE_ACCOUNT VARCHAR2(100),
    MACHINE_PASSWORD VARCHAR2(200),
    MACHINE_DESC CLOB,
    MACHINE_ORG VARCHAR2(200),
    ISDELETED NUMBER(20,0) default 0
);

ALTER TABLE cim_hostinfo
    ADD CONSTRAINT cim_hostinfo_PK
PRIMARY KEY (HOST_ID);






-----------------------------------------------------------------------------
-- cim_hostpluginapps
-----------------------------------------------------------------------------
DROP TABLE cim_hostpluginapps CASCADE CONSTRAINTS;

CREATE TABLE cim_hostpluginapps
(
    ISDELETED NUMBER(20,0) default 0,
    HOST_ID NUMBER(20,0) NOT NULL,
    APPHOST_ID NUMBER(20,0) NOT NULL,
    PLUGIN_ID VARCHAR2(200) NOT NULL
);

ALTER TABLE cim_hostpluginapps
    ADD CONSTRAINT cim_hostpluginapps_PK
PRIMARY KEY (HOST_ID,APPHOST_ID,PLUGIN_ID);






-----------------------------------------------------------------------------
-- cim_mq
-----------------------------------------------------------------------------
DROP TABLE cim_mq CASCADE CONSTRAINTS;

CREATE TABLE cim_mq
(
    ID NUMBER(10) NOT NULL,
    MACHINE_ID VARCHAR2(200),
    APP_ID VARCHAR2(100),
    APP_NAME VARCHAR2(100),
    MQ_NAME VARCHAR2(100),
    COLLECT_TIME NUMBER(20,0),
    ISJMXAPP NUMBER(20,0) default 0
);

ALTER TABLE cim_mq
    ADD CONSTRAINT cim_mq_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_mq_conn_org
-----------------------------------------------------------------------------
DROP TABLE cim_mq_conn_org CASCADE CONSTRAINTS;

CREATE TABLE cim_mq_conn_org
(
    CONN_ORG_ID NUMBER(10) NOT NULL,
    CONN_IP VARCHAR2(40),
    ORG_NAME VARCHAR2(100)
);

ALTER TABLE cim_mq_conn_org
    ADD CONSTRAINT cim_mq_conn_org_PK
PRIMARY KEY (CONN_ORG_ID);






-----------------------------------------------------------------------------
-- cim_netstat
-----------------------------------------------------------------------------
DROP TABLE cim_netstat CASCADE CONSTRAINTS;

CREATE TABLE cim_netstat
(
    ID NUMBER(20,0) NOT NULL,
    HOST_ID NUMBER(20,0),
    Address VARCHAR2(200),
    RxPackets NUMBER(20,0),
    TxPackets NUMBER(20,0),
    RxBytes NUMBER(20,0),
    TxBytes NUMBER(20,0),
    RxErrors NUMBER(20,0),
    TxErrors NUMBER(20,0),
    RxDropped NUMBER(20,0),
    TxDropped NUMBER(20,0),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);

ALTER TABLE cim_netstat
    ADD CONSTRAINT cim_netstat_PK
PRIMARY KEY (ID);






-----------------------------------------------------------------------------
-- cim_plugin_category
-----------------------------------------------------------------------------
DROP TABLE cim_plugin_category CASCADE CONSTRAINTS;

CREATE TABLE cim_plugin_category
(
    PLUGIN_CATEGORY VARCHAR2(368) NOT NULL,
    APPLICATION_CONTEXT VARCHAR2(2000),
    CATEGORY_NAME VARCHAR2(200),
    CATEGORY_DIR VARCHAR2(2000),
    CATEGORY_DESC CLOB
);

ALTER TABLE cim_plugin_category
    ADD CONSTRAINT cim_plugin_category_PK
PRIMARY KEY (PLUGIN_CATEGORY);






-----------------------------------------------------------------------------
-- cim_reg_lock
-----------------------------------------------------------------------------
DROP TABLE cim_reg_lock CASCADE CONSTRAINTS;

CREATE TABLE cim_reg_lock
(
    REGISTED NUMBER(20,0),
    SERVER_ID VARCHAR2(380) NOT NULL,
    AGENT_ID VARCHAR2(380) NOT NULL
);

ALTER TABLE cim_reg_lock
    ADD CONSTRAINT cim_reg_lock_PK
PRIMARY KEY (SERVER_ID,AGENT_ID);






-----------------------------------------------------------------------------
-- cim_sys_performance_info
-----------------------------------------------------------------------------
DROP TABLE cim_sys_performance_info CASCADE CONSTRAINTS;

CREATE TABLE cim_sys_performance_info
(
    ID VARCHAR2(32),
    MONITOR_OBJECT_ID VARCHAR2(32),
    CPU_USED_PERC NUMBER(10,0),
    MEMORY_USED_PERC NUMBER(10,0),
    COLLECT_TIME TIMESTAMP default SYSTIMESTAMP NOT NULL
);







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
-- tableinfo
-----------------------------------------------------------------------------
DROP TABLE tableinfo CASCADE CONSTRAINTS;

CREATE TABLE tableinfo
(
    TABLE_NAME VARCHAR2(255) NOT NULL,
    TABLE_ID_NAME VARCHAR2(255),
    TABLE_ID_INCREMENT NUMBER(10,0) default 1,
    TABLE_ID_VALUE NUMBER(10,0) default 0,
    TABLE_ID_GENERATOR VARCHAR2(255),
    TABLE_ID_TYPE VARCHAR2(255),
    TABLE_ID_PREFIX VARCHAR2(255)
);

ALTER TABLE tableinfo
    ADD CONSTRAINT tableinfo_PK
PRIMARY KEY (TABLE_NAME);






-----------------------------------------------------------------------------
-- test
-----------------------------------------------------------------------------
DROP TABLE test CASCADE CONSTRAINTS;

CREATE TABLE test
(
    id NUMBER(10,0),
    blobname BLOB,
    clobname CLOB,
    LAST_STOP_TIME TIMESTAMP,
    STARTTIME TIMESTAMP,
    TESTTIME TIMESTAMP default SYSTIMESTAMP
);






ALTER TABLE cim_cpustatics
    ADD CONSTRAINT cim_cpustatics_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_etl_resource_item
    ADD CONSTRAINT cim_etl_resource_item_FK_1 FOREIGN KEY (REPOSITORY_ID)
    REFERENCES cim_etl_repository (ID)
;



ALTER TABLE cim_filesystemparams
    ADD CONSTRAINT cim_filesystemparams_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_filesysteusage
    ADD CONSTRAINT cim_filesysteusage_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_hostapps
    ADD CONSTRAINT cim_hostapps_FK_1 FOREIGN KEY (APPHOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;

ALTER TABLE cim_hostapps
    ADD CONSTRAINT cim_hostapps_FK_2 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_hostcpus
    ADD CONSTRAINT cim_hostcpus_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_hostparams
    ADD CONSTRAINT cim_hostparams_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_mq_consumer_conn
    ADD CONSTRAINT cim_mq_consumer_conn_FK_1 FOREIGN KEY (ID)
    REFERENCES cim_mq (ID)
;



ALTER TABLE cim_mq_durable_subscriber
    ADD CONSTRAINT cim_mq_durable_subscriber_FK_1 FOREIGN KEY (ID)
    REFERENCES cim_mq (ID)
;



ALTER TABLE cim_mq_msgflow
    ADD CONSTRAINT cim_mq_msgflow_FK_1 FOREIGN KEY (ID)
    REFERENCES cim_mq (ID)
;



ALTER TABLE cim_mq_percnet_usage
    ADD CONSTRAINT cim_mq_percnet_usage_FK_1 FOREIGN KEY (ID)
    REFERENCES cim_mq (ID)
;



ALTER TABLE cim_mq_queuemsg
    ADD CONSTRAINT cim_mq_queuemsg_FK_1 FOREIGN KEY (ID)
    REFERENCES cim_mq (ID)
;



ALTER TABLE cim_netconfig
    ADD CONSTRAINT cim_netconfig_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_netconnect
    ADD CONSTRAINT cim_netconnect_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_netroute
    ADD CONSTRAINT cim_netroute_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_netstatusstat
    ADD CONSTRAINT cim_netstatusstat_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_plugin_host
    ADD CONSTRAINT cim_plugin_host_FK_1 FOREIGN KEY (PLUGIN_ID)
    REFERENCES cim_plugins (PLUGIN_ID)
;

ALTER TABLE cim_plugin_host
    ADD CONSTRAINT cim_plugin_host_FK_2 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_plugin_methods
    ADD CONSTRAINT cim_plugin_methods_FK_1 FOREIGN KEY (PLUGIN_ID)
    REFERENCES cim_plugins (PLUGIN_ID)
;



ALTER TABLE cim_swap
    ADD CONSTRAINT cim_swap_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_sys_base_info
    ADD CONSTRAINT cim_sys_base_info_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_tcpconnectinfo
    ADD CONSTRAINT cim_tcpconnectinfo_FK_1 FOREIGN KEY (HOST_ID)
    REFERENCES cim_hostinfo (HOST_ID)
;



ALTER TABLE cim_plugins
    ADD CONSTRAINT cim_plugins_FK_1 FOREIGN KEY (PLUGIN_CATEGORY)
    REFERENCES cim_plugin_category (PLUGIN_CATEGORY)
;







































