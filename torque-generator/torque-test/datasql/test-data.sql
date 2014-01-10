
INSERT INTO ACTIVEMQ_LOCK (ID)
    VALUES (1);

INSERT INTO ACTIVEMQ_MSGS (ID,CONTAINER,MSGID_PROD,MSGID_SEQ,EXPIRATION)
    VALUES (8,'queue://test','ID:e2f30b4699e74eb-3852-1262913306250-2:1:2:1',1,0);

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useConnectionPool','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'watchTopicAdvisories','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizedMessageDispatch','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'sendTimeout','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'closeTimeout','15000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'dispatchAsync','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useAsyncSend','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'alwaysSyncSend','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useCompression','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useRetroactiveConsumer','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'objectMessageSerializationDefered','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'disableTimeStampsByDefault','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizeAcknowledge','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'producerWindowSize','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'copyMessageOnSend','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'statsEnabled','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'alwaysSessionAsync','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'queuePrefetch','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'maximumPendingMessageLimit','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'durableTopicPrefetch','100','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'queueBrowserPrefetch','500','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'topicPrefetch','32766','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizeDurableTopicPrefetch','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'inputStreamPrefetch','100','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useCollisionAvoidance','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'collisionAvoidancePercent','15','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useExponentialBackOff','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'maximumRedeliveries','6','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'initialRedeliveryDelay','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'backOffMultiplier','5','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.randomize','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.useExponentialBackOff','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.maxReconnectDelay','30000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.maxReconnectAttempts','5','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'USE_FAILOVER','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.reconnectDelayExponent','2','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.initialReconnectDelay','10','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useConnectionPool','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'watchTopicAdvisories','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizedMessageDispatch','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'sendTimeout','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'closeTimeout','15000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'dispatchAsync','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useAsyncSend','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'alwaysSyncSend','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useCompression','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useRetroactiveConsumer','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'objectMessageSerializationDefered','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'disableTimeStampsByDefault','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizeAcknowledge','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'producerWindowSize','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'copyMessageOnSend','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'statsEnabled','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'alwaysSessionAsync','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'queuePrefetch','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'maximumPendingMessageLimit','0','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'durableTopicPrefetch','100','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'queueBrowserPrefetch','500','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'topicPrefetch','32766','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizeDurableTopicPrefetch','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'inputStreamPrefetch','100','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useCollisionAvoidance','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'collisionAvoidancePercent','15','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useExponentialBackOff','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'maximumRedeliveries','6','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'initialRedeliveryDelay','1000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'backOffMultiplier','5','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.randomize','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.useExponentialBackOff','true','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.maxReconnectDelay','30000','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.maxReconnectAttempts','5','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'USE_FAILOVER','false','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.reconnectDelayExponent','2','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.initialReconnectDelay','10','mq');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useConnectionPool','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'watchTopicAdvisories','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizedMessageDispatch','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'sendTimeout','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'closeTimeout','15000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'dispatchAsync','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useAsyncSend','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'alwaysSyncSend','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useCompression','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useRetroactiveConsumer','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'objectMessageSerializationDefered','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'disableTimeStampsByDefault','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizeAcknowledge','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'producerWindowSize','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'copyMessageOnSend','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'statsEnabled','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'alwaysSessionAsync','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'queuePrefetch','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'maximumPendingMessageLimit','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'durableTopicPrefetch','100','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'queueBrowserPrefetch','500','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'topicPrefetch','32766','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'optimizeDurableTopicPrefetch','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'inputStreamPrefetch','100','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useCollisionAvoidance','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'collisionAvoidancePercent','15','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'useExponentialBackOff','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'maximumRedeliveries','6','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'initialRedeliveryDelay','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'backOffMultiplier','5','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.randomize','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.useExponentialBackOff','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.maxReconnectDelay','30000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.maxReconnectAttempts','5','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'USE_FAILOVER','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.reconnectDelayExponent','2','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (762,'reconnectPolicy.initialReconnectDelay','10','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useConnectionPool','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'watchTopicAdvisories','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizedMessageDispatch','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'sendTimeout','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'closeTimeout','15000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'dispatchAsync','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useAsyncSend','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'alwaysSyncSend','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useCompression','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useRetroactiveConsumer','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'objectMessageSerializationDefered','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'disableTimeStampsByDefault','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizeAcknowledge','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'producerWindowSize','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'copyMessageOnSend','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'statsEnabled','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'alwaysSessionAsync','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'queuePrefetch','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'maximumPendingMessageLimit','0','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'durableTopicPrefetch','100','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'queueBrowserPrefetch','500','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'topicPrefetch','32766','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'optimizeDurableTopicPrefetch','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'inputStreamPrefetch','100','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useCollisionAvoidance','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'collisionAvoidancePercent','15','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'useExponentialBackOff','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'maximumRedeliveries','6','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'initialRedeliveryDelay','1000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'backOffMultiplier','5','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.randomize','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.useExponentialBackOff','true','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.maxReconnectDelay','30000','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.maxReconnectAttempts','5','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'USE_FAILOVER','false','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.reconnectDelayExponent','2','amq.connection.params');

INSERT INTO ESB_PARAMS (NODE_ID,NAME,VALUE,PARAM_TYPE)
    VALUES (743,'reconnectPolicy.initialReconnectDelay','10','amq.connection.params');

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (282,291);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (283,321);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (347,344);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (348,321);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (348,345);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (349,346);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (374,375);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (382,383);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (385,386);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (392,393);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (404,405);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (411,412);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (441,412);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (444,445);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (449,450);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (472,473);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (478,477);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (478,479);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (482,483);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (542,543);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (562,563);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (643,644);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (683,685);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (683,687);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (683,690);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (689,687);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (689,688);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (701,644);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (702,692);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (730,731);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (802,803);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (898,899);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (1048,1049);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (1068,1069);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (1148,1149);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (1208,1209);

INSERT INTO GROUP_USERS (USER_ID,GROUP_ID)
    VALUES (1448,1449);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:20fc0c2f-7fbc-4bd7-aa09-5b473a955c05','root','2009-12-24 13.53.57.890000000','2009-12-24 13.53.57.890000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:b58833aa-79e6-4961-83c2-fbeeb82e69a9','root','2009-12-24 13.54.12.843000000','2009-12-24 13.54.12.843000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:d9678c1b-91d6-4a06-8a5a-27bc821e6023','root','2009-12-24 13.54.29.171000000','2009-12-24 13.54.29.171000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:759e86ae-dae0-452b-a1a0-7b81dba05132','root','2009-12-24 13.54.43.781000000','2009-12-24 13.54.43.781000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:8a21a778-c598-4525-9ef8-5ee26ca6aa74','root','2009-12-24 14.17.29.750000000','2009-12-24 14.17.29.750000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:748a125b-9788-481c-a34f-0988772f20ad','root','2009-12-24 14.17.32.343000000','2009-12-24 14.17.32.343000000',0,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:ebba330f-f0e4-446b-bbc6-f1f777d0b7eb','root','2009-12-24 14.18.11.375000000','2009-12-24 14.18.12.296000000',3,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:18169c1f-109a-435b-aa04-87cd5c9d2003','root','2009-12-24 14.18.12.343000000','2009-12-24 14.18.12.359000000',1,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:a2a1d306-f984-4b2d-a5ef-1aa80bdd9859','root','2009-12-24 14.18.12.484000000','2009-12-24 14.18.13.234000000',3,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:47f03ace-ff87-4ac3-8d0b-e8af4dfec6c5','root','2009-12-24 14.18.13.281000000','2009-12-24 14.18.13.375000000',2,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:97b432c0-43d1-4feb-84bb-0c633e60914b','root','2009-12-24 14.36.55.968000000','2009-12-24 14.36.57.468000000',3,1);

INSERT INTO J3_AUTH_TOKEN (AUTH_TOKEN,AUTHORIZED_NAME,CREATED,LAST_USED,NUMBER_OF_USES,TOKEN_STATE)
    VALUES ('authtoken:168229a7-927e-40de-813d-ec4355409ff2','root','2009-12-24 15.4.37.234000000','2009-12-24 15.4.38.703000000',3,1);

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (27,'uddi:juddi.apache.org:servicebindings-custodytransfer-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (9,'uddi:juddi.apache.org:servicebindings-inquiry-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (15,'uddi:juddi.apache.org:servicebindings-publish-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (44,'uddi:juddi.apache.org:servicebindings-publisher-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (21,'uddi:juddi.apache.org:servicebindings-security-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (33,'uddi:juddi.apache.org:servicebindings-subscription-ws');

INSERT INTO J3_BINDING_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (39,'uddi:juddi.apache.org:servicebindings-subscriptionlistener-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (7,'UDDI Inquiry API V3','uddi:juddi.apache.org:servicebindings-inquiry-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (13,'UDDI Publication API V3','uddi:juddi.apache.org:servicebindings-publish-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (19,'UDDI Security API V3','uddi:juddi.apache.org:servicebindings-security-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (25,'UDDI Custody and Ownership Transfer API V3','uddi:juddi.apache.org:servicebindings-custodytransfer-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (31,'UDDI Subscription API V3','uddi:juddi.apache.org:servicebindings-subscription-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (37,'UDDI Subscription Listener API V3','uddi:juddi.apache.org:servicebindings-subscriptionlistener-ws');

INSERT INTO J3_BINDING_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (43,'jUDDI Publisher Service API V3','uddi:juddi.apache.org:servicebindings-publisher-ws');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-inquiry-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/inquiry?wsdl','uddi:juddi.apache.org:services-inquiry');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-publish-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/publish?wsdl','uddi:juddi.apache.org:services-publish');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-security-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/security?wsdl','uddi:juddi.apache.org:services-security');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-custodytransfer-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/custody-transfer?wsdl','uddi:juddi.apache.org:services-custodytransfer');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-subscription-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/subscription?wsdl','uddi:juddi.apache.org:services-subscription');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-subscriptionlistener-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/subscription-listener?wsdl','uddi:juddi.apache.org:services-subscriptionlistener');

INSERT INTO J3_BINDING_TEMPLATE (ENTITY_KEY,ACCESS_POINT_TYPE,ACCESS_POINT_URL,SERVICE_KEY)
    VALUES ('uddi:juddi.apache.org:servicebindings-publisher-ws','wsdlDeployment','http://macdaddy:8080/juddiv3/services/publisher?wsdl','uddi:juddi.apache.org:services-publisher');

INSERT INTO J3_BUSINESS_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (49,'uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (5,'This is a UDDI v3 registry node as implemented by Apache jUDDI.','en','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_ENTITY (ENTITY_KEY)
    VALUES ('uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (6,'en','An Apache jUDDI Node','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-inquiry','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-publish','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-security','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-custodytransfer','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-subscription','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-subscriptionlistener','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_BUSINESS_SERVICE (ENTITY_KEY,BUSINESS_KEY)
    VALUES ('uddi:juddi.apache.org:services-publisher','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (3);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (9);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (15);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (21);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (27);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (33);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (39);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (44);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (49);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (53);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (57);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (61);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (65);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (69);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (74);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (82);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (90);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (97);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (103);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (108);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (114);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (119);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (126);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (134);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (141);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (148);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (153);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (157);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (161);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (165);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (169);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (173);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (177);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (181);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (185);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (189);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (193);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (197);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (201);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (205);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (210);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (215);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (219);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (224);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (228);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (232);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (236);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (240);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (244);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (248);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (252);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (256);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (260);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (264);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (268);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (272);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (276);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (281);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (289);

INSERT INTO J3_CATEGORY_BAG (ID)
    VALUES (297);

INSERT INTO J3_DISCOVERY_URL (ID,URL,USE_TYPE,ENTITY_KEY)
    VALUES (48,'http://macdaddy:8080/juddiv3','home','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (261,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',260);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (265,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',264);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (269,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',268);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (273,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',272);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (277,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',276);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (282,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',281);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (283,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',281);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (284,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',281);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (285,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',281);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (290,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',289);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (291,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',289);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (292,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',289);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (293,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',289);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (298,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',297);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (299,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',297);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (300,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',297);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (301,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',297);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (4,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',3);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (10,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',9);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (16,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',15);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (22,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',21);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (28,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',27);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (34,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',33);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (40,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',39);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (45,'uddi-org:types:wsdl','wsdlDeployment','uddi:uddi.org:categorization:types',44);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (50,'node','uddi:uddi.org:categorization:nodes',49);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (54,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',53);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (58,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',57);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (62,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',61);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (66,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',65);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (70,'uddi-org:types:keyGenerator','keyGenerator','uddi:uddi.org:categorization:types',69);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (75,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',74);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (76,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',74);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (77,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',74);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (78,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',74);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (83,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',82);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (84,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',82);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (85,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',82);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (86,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',82);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (91,'uddi-org:types:wsdl','wsdlSpec','uddi:uddi.org:categorization:types',90);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (92,'uddi-org:types:soap','soapSpec','uddi:uddi.org:categorization:types',90);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (93,'uddi-org:types:xml','xmlSpec','uddi:uddi.org:categorization:types',90);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (94,'uddi-org:types:specification','specification','uddi:uddi.org:categorization:types',90);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (98,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',97);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (99,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',97);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (100,'uddi-org:types:cacheable','cacheable','uddi:uddi.org:categorization:types',97);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (104,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',103);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (105,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',103);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (109,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',108);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (110,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',108);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (111,'uddi-org:types:uncacheable','uncacheable','uddi:uddi.org:categorization:types',108);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (115,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',114);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (116,'uddi-org:types:unchecked','unchecked','uddi:uddi.org:categorization:types',114);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (120,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',119);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (121,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',119);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (122,'uddi-org:types:uncacheable','uncacheable','uddi:uddi.org:categorization:types',119);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (123,'entityKeyValues','businessKey','uddi:uddi.org:categorization:entitykeyvalues',119);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (127,'uddi-org:types:identifier','identifier','uddi:uddi.org:categorization:types',126);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (128,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',126);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (129,'uddi-org:types:uncacheable','uncacheable','uddi:uddi.org:categorization:types',126);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (130,'entityKeyValues','businessKey','uddi:uddi.org:categorization:entitykeyvalues',126);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (131,'entityKeyValues','tModelKey','uddi:uddi.org:categorization:entitykeyvalues',126);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (135,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',134);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (136,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',134);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (137,'uddi-org:types:uncacheable','uncacheable','uddi:uddi.org:categorization:types',134);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (138,'entityKeyValues','bindingKey','uddi:uddi.org:categorization:entitykeyvalues',134);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (142,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',141);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (143,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',141);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (144,'uddi-org:types:uncacheable','uncacheable','uddi:uddi.org:categorization:types',141);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (145,'entityKeyValues','tModelKey','uddi:uddi.org:categorization:entitykeyvalues',141);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (149,'uddi-org:types:categorization','categorization','uddi:uddi.org:categorization:types',148);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (150,'uddi-org:types:checked','checked','uddi:uddi.org:categorization:types',148);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (154,'uddi-org:types:protocol','protocol','uddi:uddi.org:categorization:types',153);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (158,'uddi-org:types:protocol','protocol','uddi:uddi.org:categorization:types',157);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (162,'uddi-org:types:transport','transport','uddi:uddi.org:categorization:types',161);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (166,'uddi-org:types:transport','transport','uddi:uddi.org:categorization:types',165);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (170,'uddi-org:types:transport','transport','uddi:uddi.org:categorization:types',169);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (174,'uddi-org:types:transport','transport','uddi:uddi.org:categorization:types',173);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (178,'uddi-org:types:transport','transport','uddi:uddi.org:categorization:types',177);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (182,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',181);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (186,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',185);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (190,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',189);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (194,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',193);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (198,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',197);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (202,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',201);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (206,'uddi-org:types:sortOrder','sortOrder','uddi:uddi.org:categorization:types',205);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (207,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',205);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (211,'uddi-org:types:sortOrder','sortOrder','uddi:uddi.org:categorization:types',210);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (212,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',210);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (216,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',215);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (220,'uddi-org:types:sortOrder','sortOrder','uddi:uddi.org:categorization:types',219);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (221,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',219);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (225,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',224);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (229,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',228);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (233,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',232);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (237,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',236);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (241,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',240);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (245,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',244);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (249,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',248);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (253,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',252);

INSERT INTO J3_KEYED_REFERENCE (ID,KEY_NAME,KEY_VALUE,TMODEL_KEY_REF,CATEGORY_BAG_ID)
    VALUES (257,'uddi-org:types:findQualifier','findQualifier','uddi:uddi.org:categorization:types',256);

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (1,'       http://uddi.org/pubs/uddi_v3.htm#keyGen','text','uddi:juddi.apache.org:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (51,'         http://uddi.org/pubs/uddi_v3.htm#keyGen','text','uddi:uddi.org:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (55,'         http://uddi.org/pubs/uddi_v3.htm#categorizationKeyGen           ','text','uddi:uddi.org:categorization:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (59,'         http://uddi.org/pubs/uddi_v3.htm#sortorderKeyGen           ','text','uddi:uddi.org:sortorder:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (63,'         http://uddi.org/pubs/uddi_v3.htm#transportKeyGen           ','text','uddi:uddi.org:transport:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (67,'         http://uddi.org/pubs/uddi_v3.htm#protocolKeyGen           ','text','uddi:uddi.org:protocol:keygenerator');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (71,'         http://uddi.org/wsdl/uddi_api_v3_binding.wsdl#UDDI_Inquiry_SoapBinding    ','wsdlInterface','uddi:uddi.org:v3_inquiry');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (72,'         http://uddi.org/pubs/uddi_v3.htm#InqV3     ','text','uddi:uddi.org:v3_inquiry');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (79,'         http://uddi.org/wsdl/uddi_api_v3_binding.wsdl#UDDI_Publication_SoapBinding    ','wsdlInterface','uddi:uddi.org:v3_publication');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (80,'         http://uddi.org/pubs/uddi_v3.htm#PubV3     ','text','uddi:uddi.org:v3_publication');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (87,'         http://uddi.org/wsdl/uddi_api_v3_binding.wsdl#UDDI_Security_SoapBinding    ','wsdlInterface','uddi:uddi.org:v3_security');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (88,'         http://uddi.org/pubs/uddi_v3.htm#SecV3     ','text','uddi:uddi.org:v3_security');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (95,'         http://uddi.org/pubs/uddi_v3.htm#UDDITypes     ','text','uddi:uddi.org:categorization:types');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (101,'         http://uddi.org/pubs/uddi_v3.htm#GenKW     ','text','uddi:uddi.org:categorization:general_keywords');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (106,'         http://uddi.org/pubs/uddi_v3.htm#Nodes     ','text','uddi:uddi.org:categorization:nodes');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (112,'         http://uddi.org/pubs/uddi_v3.htm#Relationships     ','text','uddi:uddi.org:relationships');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (117,'         http://uddi.org/pubs/uddi_v3.htm#owningBusiness     ','text','uddi:uddi.org:categorization:owningbusiness');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (124,'         http://uddi.org/pubs/uddi_v3.htm#IsReplacedBy     ','text','uddi:uddi.org:identifier:isreplacedby');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (132,'         http://uddi.org/pubs/uddi_v3.htm#validatedBy     ','text','uddi:uddi.org:categorization:validatedby');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (139,'         http://uddi.org/pubs/uddi_v3.htm#DerivedFrom     ','text','uddi:uddi.org:categorization:derivedfrom');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (146,'         http://uddi.org/pubs/uddi_v3.htm#entityKeyValues           ','text','uddi:uddi.org:categorization:entitykeyvalues');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (151,'         http://uddi.org/pubs/uddi_v3.htm#serverSSL3     ','text','uddi:uddi.org:protocol:serverauthenticatedssl3');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (155,'         http://uddi.org/pubs/uddi_v3.htm#mutualSSL3     ','text','uddi:uddi.org:protocol:mutualauthenticatedssl3');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (159,'         http://uddi.org/pubs/uddi_v3.htm#overHTTP     ','text','uddi:uddi.org:transport:http');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (163,'         http://uddi.org/pubs/uddi_v3.htm#overSMTP     ','text','uddi:uddi.org:transport:smtp');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (167,'         http://uddi.org/pubs/uddi_v3.htm#overFTP     ','text','uddi:uddi.org:transport:ftp');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (171,'         http://uddi.org/pubs/uddi_v3.htm#overFax     ','text','uddi:uddi.org:transport:fax');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (175,'         http://uddi.org/pubs/uddi_v3.htm#overPhone     ','text','uddi:uddi.org:transport:telephone');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (179,'         http://uddi.org/pubs/uddi_v3.htm#wildcard     ','text','uddi:uddi.org:findqualifier:approximatematch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (183,'         http://uddi.org/pubs/uddi_v3.htm#exactmatch     ','text','uddi:uddi.org:findqualifier:exactmatch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (187,'         http://uddi.org/pubs/uddi_v3.htm#caseinsens     ','text','uddi:uddi.org:findqualifier:caseinsensitivematch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (191,'         http://uddi.org/pubs/uddi_v3.htm#casesens     ','text','uddi:uddi.org:findqualifier:casesensitivematch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (195,'         http://uddi.org/pubs/uddi_v3.htm#diacritInsens     ','text','uddi:uddi.org:findqualifier:diacriticsinsensitivematch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (199,'         http://uddi.org/pubs/uddi_v3.htm#diacritSens     ','text','uddi:uddi.org:findqualifier:diacriticssensitivematch');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (203,'         http://uddi.org/pubs/uddi_v3.htm#sortOrd     ','text','uddi:uddi.org:sortorder:binarysort');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (208,'         http://uddi.org/pubs/uddi_v3.htm#UCASort     ','text','uddi:uddi.org:sortorder:uts-10');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (213,'         http://uddi.org/pubs/uddi_v3.htm#caseInsensSort     ','text','uddi:uddi.org:findqualifier:caseinsensitivesort');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (217,'         http://uddi.org/pubs/uddi_v3.htm#caseSensSort     ','text','uddi:uddi.org:findqualifier:casesensitivesort');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (222,'         http://uddi.org/pubs/uddi_v3.htm#nameAsc     ','text','uddi:uddi.org:findqualifier:sortbynameasc');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (226,'         http://uddi.org/pubs/uddi_v3.htm#nameDesc     ','text','uddi:uddi.org:findqualifier:sortbynamedesc');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (230,'         http://uddi.org/pubs/uddi_v3.htm#dateAsc     ','text','uddi:uddi.org:findqualifier:sortbydateasc');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (234,'         http://uddi.org/pubs/uddi_v3.htm#dateDesc     ','text','uddi:uddi.org:findqualifier:sortbydatedesc');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (238,'         http://uddi.org/pubs/uddi_v3.htm#andAll     ','text','uddi:uddi.org:findqualifier:andallkeys');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (242,'         http://uddi.org/pubs/uddi_v3.htm#orAll     ','text','uddi:uddi.org:findqualifier:orallkeys');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (246,'         http://uddi.org/pubs/uddi_v3.htm#orLike     ','text','uddi:uddi.org:findqualifier:orlikekeys');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (250,'         http://uddi.org/pubs/uddi_v3.htm#combineCatBags     ','text','uddi:uddi.org:findqualifier:combinecategorybags');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (254,'         http://uddi.org/pubs/uddi_v3.htm#servSubset     ','text','uddi:uddi.org:findqualifier:servicesubset');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (258,'         http://uddi.org/pubs/uddi_v3.htm#bindSubset     ','text','uddi:uddi.org:findqualifier:bindingsubset');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (262,'         http://uddi.org/pubs/uddi_v3.htm#suppressProjSvcs     ','text','uddi:uddi.org:findqualifier:suppressProjectedServices');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (266,'         http://uddi.org/pubs/uddi_v3.htm#sign     ','text','uddi:uddi.org:findqualifier:signaturepresent');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (270,'         http://uddi.org/pubs/uddi_v3.htm#hostDir     ','text','uddi:uddi.org:specification:hostingredirector');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (274,'         http://uddi.org/pubs/uddi_v3.htm#policyDesc     ','text','uddi:uddi.org:specification:v3_policy');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (278,'          http://uddi.org/wsdl/uddi_custody_v3_binding.wsdl       ','wsdlInterface','uddi:uddi.org:v3_ownership_transfer');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (279,'          http://uddi.org/pubs/uddi_v3.htm#OwnershipTransfer       ','text','uddi:uddi.org:v3_ownership_transfer');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (286,'          http://uddi.org/wsdl/uddi_sub_v3_binding.wsdl       ','wsdlInterface','uddi:uddi.org:v3_subscription');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (287,'          http://uddi.org/pubs/uddi_v3.htm#Sub       ','text','uddi:uddi.org:v3_subscription');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (294,'           http://uddi.org/wsdl/uddi_subr_v3_binding.wsdl       ','wsdlInterface','uddi:uddi.org:v3_subscriptionlistener');

INSERT INTO J3_OVERVIEW_DOC (ID,OVERVIEW_URL,OVERVIEW_URL_USE_TYPE,ENTITY_KEY)
    VALUES (295,'          http://uddi.org/pubs/uddi_v3.htm#Subscribe       ','text','uddi:uddi.org:v3_subscriptionlistener');

INSERT INTO J3_PUBLISHER (AUTHORIZED_NAME,IS_ADMIN,PUBLISHER_NAME)
    VALUES ('root','true','root publisher');

INSERT INTO J3_PUBLISHER (AUTHORIZED_NAME,IS_ADMIN,PUBLISHER_NAME)
    VALUES ('uddi','false','UDDI publisher');

INSERT INTO J3_PUBLISHER (AUTHORIZED_NAME,EMAIL_ADDRESS,IS_ADMIN,IS_ENABLED,MAX_BINDINGS_PER_SERVICE,MAX_BUSINESSES,MAX_SERVICES_PER_BUSINESS,MAX_TMODELS,PUBLISHER_NAME)
    VALUES ('joepublisher','jpublisher@business.com','true','True',199,100,100,100,'Joe Publisher');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (11,'Web Service supporting UDDI Inquiry API','en','uddi:juddi.apache.org:services-inquiry');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (17,'Web Service supporting UDDI Publish API','en','uddi:juddi.apache.org:services-publish');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (23,'Web Service supporting UDDI Security API','en','uddi:juddi.apache.org:services-security');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (29,'Web Service supporting UDDI Custody and Ownership Transfer API','en','uddi:juddi.apache.org:services-custodytransfer');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (35,'Web Service supporting UDDI Subscription API','en','uddi:juddi.apache.org:services-subscription');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (41,'Web Service supporting UDDI Subscription Listener API','en','uddi:juddi.apache.org:services-subscriptionlistener');

INSERT INTO J3_SERVICE_DESCR (ID,DESCR,LANG_CODE,ENTITY_KEY)
    VALUES (46,'Web Service supporting jUDDI specific API','en','uddi:juddi.apache.org:services-publisher');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (12,'en','UDDI Inquiry Service','uddi:juddi.apache.org:services-inquiry');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (18,'en','UDDI Publish Service','uddi:juddi.apache.org:services-publish');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (24,'en','UDDI Security Service','uddi:juddi.apache.org:services-security');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (30,'en','UDDI Custody and Ownership Transfer Service','uddi:juddi.apache.org:services-custodytransfer');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (36,'en','UDDI Subscription Service','uddi:juddi.apache.org:services-subscription');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (42,'en','UDDI Subscription Listener Service','uddi:juddi.apache.org:services-subscriptionlistener');

INSERT INTO J3_SERVICE_NAME (ID,LANG_CODE,NAME,ENTITY_KEY)
    VALUES (47,'en','jUDDI Publisher Service','uddi:juddi.apache.org:services-publisher');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:juddi.apache.org:keygenerator',0,'uddi-org:keyGenerator');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:keygenerator',0,'uddi-org:keyGenerator');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:keygenerator',0,'uddi-org:categorization:keyGenerator   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:sortorder:keygenerator',0,'uddi-org:sortorder:keyGenerator   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:keygenerator',0,'uddi-org:transport:keyGenerator   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:protocol:keygenerator',0,'uddi-org: protocol:keyGenerator');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_inquiry',0,'uddi-org:inquiry_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_publication',0,'uddi-org:publication_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_security',0,'uddi-org:security_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:types',0,'uddi-org:types');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:general_keywords',0,'uddi-org:general_keywords');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:nodes',0,'uddi-org:nodes');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:relationships',0,'uddi-org:relationships');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:owningbusiness',0,'uddi-org:owningBusiness_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:identifier:isreplacedby',0,'uddi-org:isReplacedBy');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:validatedby',0,'uddi-org:validatedBy');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:derivedfrom',0,'uddi-org:derivedFrom');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:categorization:entitykeyvalues',0,'uddi-org:entityKeyValues');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:protocol:serverauthenticatedssl3',0,'uddi-org:serverAuthenticatedSSL3   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:protocol:mutualauthenticatedssl3',0,'uddi-org:mutualAuthenticatedSSL3   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:http',0,'uddi-org:http');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:smtp',0,'uddi-org:smtp');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:ftp',0,'uddi-org:ftp');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:fax',0,'uddi-org:fax');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:transport:telephone',0,'uddi-org:telephone');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:approximatematch',0,'uddi-org:approximateMatch:SQL99   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:exactmatch',0,'uddi-org:exactMatch');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:caseinsensitivematch',0,'uddi-org:caseInsensitiveMatch   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:casesensitivematch',0,'uddi-org:caseSensitiveMatch');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:diacriticsinsensitivematch',0,'uddi-org:diacriticsInsensitiveMatch   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:diacriticssensitivematch',0,'uddi-org:diacriticsSensitiveMatch   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:sortorder:binarysort',0,'uddi-org:binarySort');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:sortorder:uts-10',0,'uddi-org:UTS-10');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:caseinsensitivesort',0,'uddi-org:caseInsensitiveSort');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:casesensitivesort',0,'uddi-org:caseSensitiveSort');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:sortbynameasc',0,'uddi-org:sortByNameAsc');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:sortbynamedesc',0,'uddi-org:sortByNameDesc');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:sortbydateasc',0,'uddi-org:sortByDateAsc');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:sortbydatedesc',0,'uddi-org:sortByDateDesc');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:andallkeys',0,'uddi-org:andAllKeys');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:orallkeys',0,'uddi-org:orAllKeys');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:orlikekeys',0,'uddi-org:orLikeKeys');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:combinecategorybags',0,'uddi-org:combineCategoryBags');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:servicesubset',0,'uddi-org:serviceSubset');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:bindingsubset',0,'uddi-org:bindingSubset');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:suppressProjectedServices',0,'uddi-org:suppressProjectedServices   ');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:findqualifier:signaturepresent',0,'uddi-org:signaturePresent');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:specification:hostingredirector',0,'uddi-org:hostingRedirector');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:specification:v3_policy',0,'uddi-org:v3_policy');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_ownership_transfer',0,'uddi-org:ownership_transfer_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_subscription',0,'uddi-org:subscription_v3');

INSERT INTO J3_TMODEL (ENTITY_KEY,DELETED,NAME)
    VALUES ('uddi:uddi.org:v3_subscriptionlistener',0,'uddi-org:subscriptionListener_v3');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (3,'uddi:juddi.apache.org:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (53,'uddi:uddi.org:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (57,'uddi:uddi.org:categorization:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (61,'uddi:uddi.org:sortorder:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (65,'uddi:uddi.org:transport:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (69,'uddi:uddi.org:protocol:keygenerator');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (74,'uddi:uddi.org:v3_inquiry');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (82,'uddi:uddi.org:v3_publication');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (90,'uddi:uddi.org:v3_security');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (97,'uddi:uddi.org:categorization:types');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (103,'uddi:uddi.org:categorization:general_keywords');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (108,'uddi:uddi.org:categorization:nodes');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (114,'uddi:uddi.org:relationships');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (119,'uddi:uddi.org:categorization:owningbusiness');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (126,'uddi:uddi.org:identifier:isreplacedby');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (134,'uddi:uddi.org:categorization:validatedby');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (141,'uddi:uddi.org:categorization:derivedfrom');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (148,'uddi:uddi.org:categorization:entitykeyvalues');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (153,'uddi:uddi.org:protocol:serverauthenticatedssl3');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (157,'uddi:uddi.org:protocol:mutualauthenticatedssl3');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (161,'uddi:uddi.org:transport:http');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (165,'uddi:uddi.org:transport:smtp');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (169,'uddi:uddi.org:transport:ftp');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (173,'uddi:uddi.org:transport:fax');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (177,'uddi:uddi.org:transport:telephone');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (181,'uddi:uddi.org:findqualifier:approximatematch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (185,'uddi:uddi.org:findqualifier:exactmatch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (189,'uddi:uddi.org:findqualifier:caseinsensitivematch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (193,'uddi:uddi.org:findqualifier:casesensitivematch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (197,'uddi:uddi.org:findqualifier:diacriticsinsensitivematch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (201,'uddi:uddi.org:findqualifier:diacriticssensitivematch');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (205,'uddi:uddi.org:sortorder:binarysort');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (210,'uddi:uddi.org:sortorder:uts-10');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (215,'uddi:uddi.org:findqualifier:caseinsensitivesort');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (219,'uddi:uddi.org:findqualifier:casesensitivesort');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (224,'uddi:uddi.org:findqualifier:sortbynameasc');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (228,'uddi:uddi.org:findqualifier:sortbynamedesc');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (232,'uddi:uddi.org:findqualifier:sortbydateasc');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (236,'uddi:uddi.org:findqualifier:sortbydatedesc');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (240,'uddi:uddi.org:findqualifier:andallkeys');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (244,'uddi:uddi.org:findqualifier:orallkeys');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (248,'uddi:uddi.org:findqualifier:orlikekeys');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (252,'uddi:uddi.org:findqualifier:combinecategorybags');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (256,'uddi:uddi.org:findqualifier:servicesubset');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (260,'uddi:uddi.org:findqualifier:bindingsubset');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (264,'uddi:uddi.org:findqualifier:suppressProjectedServices');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (268,'uddi:uddi.org:findqualifier:signaturepresent');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (272,'uddi:uddi.org:specification:hostingredirector');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (276,'uddi:uddi.org:specification:v3_policy');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (281,'uddi:uddi.org:v3_ownership_transfer');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (289,'uddi:uddi.org:v3_subscription');

INSERT INTO J3_TMODEL_CATEGORY_BAG (ID,ENTITY_KEY)
    VALUES (297,'uddi:uddi.org:v3_subscriptionlistener');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (2,'Root domain key generator','uddi:juddi.apache.org:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (52,'UDDI domain key generator','uddi:uddi.org:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (56,'Key Generator for UDDI Categorization tModels   ','uddi:uddi.org:categorization:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (60,'Key Generator for UDDI Sort Order tModels   ','uddi:uddi.org:sortorder:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (64,'Key Generator for UDDI Transport tModels ','uddi:uddi.org:transport:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (68,' Key Generator for UDDI Protocol tModels ','uddi:uddi.org:protocol:keygenerator');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (73,'UDDI Inquiry API V3.0','uddi:uddi.org:v3_inquiry');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (81,'UDDI Publication API V3.0','uddi:uddi.org:v3_publication');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (89,'UDDI Security API V3.0','uddi:uddi.org:v3_security');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (96,'UDDI Type Category System','uddi:uddi.org:categorization:types');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (102,'Category system consisting of namespace       identifiers and the keywords associated with       the namespaces.   ','uddi:uddi.org:categorization:general_keywords');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (107,'Category system for identifying the nodes       of a registry.   ','uddi:uddi.org:categorization:nodes');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (113,'Basic types of business relationships   ','uddi:uddi.org:relationships');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (118,'Category system used to point to the       businessEntity       associated with the publisher of the tModel.   ','uddi:uddi.org:categorization:owningbusiness');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (125,'Identifier system used to point to the UDDI       entity,       using UDDI keys, that is the logical replacement       for the one in which isReplacedBy is used.   ','uddi:uddi.org:identifier:isreplacedby');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (133,'Category system used to point a value set or       category       group system tModel to associated value set Web service       implementations.   ','uddi:uddi.org:categorization:validatedby');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (140,'Category system for referring tModels to other       tModels for the purpose of reuse.   ','uddi:uddi.org:categorization:derivedfrom');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (147,'Category system used to declare that a value set       uses entity keys as valid values.      ','uddi:uddi.org:categorization:entitykeyvalues');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (152,'Secure Sockets Layer Version 3.0 with Server       Authentication','uddi:uddi.org:protocol:serverauthenticatedssl3');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (156,'Secure Sockets Layer Version 3.0 with Mutual       Authentication','uddi:uddi.org:protocol:mutualauthenticatedssl3');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (160,' A Web service that uses HTTP transport','uddi:uddi.org:transport:http');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (164,'E-mail based Web service','uddi:uddi.org:transport:smtp');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (168,'File Transfer Protocol (FTP) based Web service   ','uddi:uddi.org:transport:ftp');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (172,'Fax-based Web service','uddi:uddi.org:transport:fax');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (176,'Telephone based service','uddi:uddi.org:transport:telephone');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (180,'UDDI approximate matching find qualifier   ','uddi:uddi.org:findqualifier:approximatematch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (184,'UDDI exact name matching findQualifier   ','uddi:uddi.org:findqualifier:exactmatch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (188,'UDDI case insensitive matching find qualifier   ','uddi:uddi.org:findqualifier:caseinsensitivematch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (192,'UDDI Case Sensitive Matching find qualifier   ','uddi:uddi.org:findqualifier:casesensitivematch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (196,'UDDI Diacritics Insensitive Matching find qualifier   ','uddi:uddi.org:findqualifier:diacriticsinsensitivematch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (200,'UDDI Diacritics Sensitive Matching find qualifier   ','uddi:uddi.org:findqualifier:diacriticssensitivematch');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (204,'UDDI binary sort sortOrder qualifier   ','uddi:uddi.org:sortorder:binarysort');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (209,'UDDI Unicode Technical Standard #10 sort       collation sequence find qualifier   ','uddi:uddi.org:sortorder:uts-10');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (214,'UDDI sort qualifier used to sort results without       regard to case','uddi:uddi.org:findqualifier:caseinsensitivesort');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (218,'UDDI sort qualifier used to sort results using       case sensitivity','uddi:uddi.org:findqualifier:casesensitivesort');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (223,'UDDI sort qualifier used to sort results by name       in ascending order','uddi:uddi.org:findqualifier:sortbynameasc');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (227,'UDDI sort qualifier used to sort results by       name in descending order','uddi:uddi.org:findqualifier:sortbynamedesc');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (231,'UDDI sort qualifier used to sort results by date in       ascending order','uddi:uddi.org:findqualifier:sortbydateasc');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (235,'UDDI sort qualifier used to sort results       by date in descending order','uddi:uddi.org:findqualifier:sortbydatedesc');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (239,'UDDI find qualifier used to request that a       logical AND be performed on bag contents       prior to a search','uddi:uddi.org:findqualifier:andallkeys');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (243,'UDDI find qualifier used to request that a       logical OR be performed on bag contents       prior to a search','uddi:uddi.org:findqualifier:orallkeys');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (247,'UDDI find qualifier used to find entities       that reference one of the values from each       referenced value set','uddi:uddi.org:findqualifier:orlikekeys');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (251,'UDDI find qualifier used to treat all of the       categoryBags within a businessEntity as if       they were one during inquiry','uddi:uddi.org:findqualifier:combinecategorybags');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (255,'UDDI find qualifier used to use categoryBags       of businessService elements to satisfy the       find_business inquiry.','uddi:uddi.org:findqualifier:servicesubset');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (259,'UDDI find qualifier for specifying use of       categoryBags of bindingTempate elements to satisfy       the find_business or find_service inquiries.   ','uddi:uddi.org:findqualifier:bindingsubset');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (263,'UDDI find qualifier used to exclude service       projections from an inquiry function at all       levels.','uddi:uddi.org:findqualifier:suppressProjectedServices');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (267,'UDDI findQualifier used to return only entities       that have or are contained in entities that have       XML Digital Signatures.','uddi:uddi.org:findqualifier:signaturepresent');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (271,'UDDI Hosting Redirector service specification   ','uddi:uddi.org:specification:hostingredirector');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (275,'UDDI Policy Description service specification   ','uddi:uddi.org:specification:v3_policy');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (280,'UDDI Custody and Ownership Transfer API V3.0','uddi:uddi.org:v3_ownership_transfer');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (288,'UDDI Subscription API V3.0','uddi:uddi.org:v3_subscription');

INSERT INTO J3_TMODEL_DESCR (ID,DESCR,ENTITY_KEY)
    VALUES (296,'UDDI Subscription Listener API V3.0','uddi:uddi.org:v3_subscriptionlistener');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,INSTANCE_PARMS,TMODEL_KEY,ENTITY_KEY)
    VALUES (8,'                                    <?xml version="1.0" encoding="utf-8" ?>                   <UDDIinstanceParmsContainer xmlns="urn:uddi-org:policy_v3_instanceParms">                     <defaultSortOrder>                       uddi:uddi.org:sortorder:binarysort                     </defaultSortOrder>                   </UDDIinstanceParmsContainer>                                  ','uddi:uddi.org:v3_inquiry','uddi:juddi.apache.org:servicebindings-inquiry-ws');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,INSTANCE_PARMS,TMODEL_KEY,ENTITY_KEY)
    VALUES (14,'                                    <?xml version="1.0" encoding="utf-8" ?>                   <UDDIinstanceParmsContainer xmlns="urn:uddi-org:policy_v3_instanceParms">                     <authInfoUse>required</authInfoUse>                   </UDDIinstanceParmsContainer>                                  ','uddi:uddi.org:v3_publication','uddi:juddi.apache.org:servicebindings-publish-ws');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,TMODEL_KEY,ENTITY_KEY)
    VALUES (20,'uddi:uddi.org:v3_security','uddi:juddi.apache.org:servicebindings-security-ws');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,INSTANCE_PARMS,TMODEL_KEY,ENTITY_KEY)
    VALUES (26,'                                  <?xml version="1.0" encoding="utf-8" ?>                 <UDDIinstanceParmsContainer                  xmlns="urn:uddi-org:policy_v3_instanceParms">                   <authInfoUse>required</authInfoUse>                 </UDDIinstanceParmsContainer>                                  ','uddi:uddi.org:v3_ownership_transfer','uddi:juddi.apache.org:servicebindings-custodytransfer-ws');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,INSTANCE_PARMS,TMODEL_KEY,ENTITY_KEY)
    VALUES (32,'                                  <?xml version="1.0" encoding="utf-8" ?>                 <UDDIinstanceParmsContainer                 xmlns="urn:uddi-org:policy_v3_instanceParms">                 <authInfoUse>required</authInfoUse>                 <filterUsingFindAPI>supported</filterUsingFindAPI>                 </UDDIinstanceParmsContainer>                                  ','uddi:uddi.org:v3_subscription','uddi:juddi.apache.org:servicebindings-subscription-ws');

INSERT INTO J3_TMODEL_INSTANCE_INFO (ID,TMODEL_KEY,ENTITY_KEY)
    VALUES (38,'uddi:uddi.org:v3_subscriptionlistener','uddi:juddi.apache.org:servicebindings-subscriptionlistener-ws');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:servicesubset','uddi','2009-12-22 16.18.38.250000000','2009-12-22 16.18.38.250000000','2009-12-22 16.18.38.250000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:bindingsubset','uddi','2009-12-22 16.18.38.265000000','2009-12-22 16.18.38.265000000','2009-12-22 16.18.38.265000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:suppressProjectedServices','uddi','2009-12-22 16.18.38.265000000','2009-12-22 16.18.38.265000000','2009-12-22 16.18.38.265000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:signaturepresent','uddi','2009-12-22 16.18.38.281000000','2009-12-22 16.18.38.281000000','2009-12-22 16.18.38.281000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:specification:hostingredirector','uddi','2009-12-22 16.18.38.281000000','2009-12-22 16.18.38.281000000','2009-12-22 16.18.38.281000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:specification:v3_policy','uddi','2009-12-22 16.18.38.296000000','2009-12-22 16.18.38.296000000','2009-12-22 16.18.38.296000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_ownership_transfer','uddi','2009-12-22 16.18.38.296000000','2009-12-22 16.18.38.296000000','2009-12-22 16.18.38.296000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_subscription','uddi','2009-12-22 16.18.38.328000000','2009-12-22 16.18.38.328000000','2009-12-22 16.18.38.328000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_subscriptionlistener','uddi','2009-12-22 16.18.38.343000000','2009-12-22 16.18.38.343000000','2009-12-22 16.18.38.343000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:keygenerator','root','2009-12-22 16.18.36.984000000','2009-12-22 16.18.36.984000000','2009-12-22 16.18.36.984000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:businesses-asf','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-inquiry','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-inquiry-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-publish','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-publish-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-security','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-security-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-custodytransfer','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-custodytransfer-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-subscription','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-subscription-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-subscriptionlistener','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-subscriptionlistener-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:services-publisher','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:juddi.apache.org:servicebindings-publisher-ws','root','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','2009-12-22 16.18.37.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:keygenerator','uddi','2009-12-22 16.18.37.828000000','2009-12-22 16.18.37.828000000','2009-12-22 16.18.37.828000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:keygenerator','uddi','2009-12-22 16.18.37.843000000','2009-12-22 16.18.37.843000000','2009-12-22 16.18.37.843000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:sortorder:keygenerator','uddi','2009-12-22 16.18.37.843000000','2009-12-22 16.18.37.843000000','2009-12-22 16.18.37.843000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:keygenerator','uddi','2009-12-22 16.18.37.859000000','2009-12-22 16.18.37.859000000','2009-12-22 16.18.37.859000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:protocol:keygenerator','uddi','2009-12-22 16.18.37.875000000','2009-12-22 16.18.37.875000000','2009-12-22 16.18.37.875000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_inquiry','uddi','2009-12-22 16.18.37.875000000','2009-12-22 16.18.37.875000000','2009-12-22 16.18.37.875000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_publication','uddi','2009-12-22 16.18.37.890000000','2009-12-22 16.18.37.890000000','2009-12-22 16.18.37.890000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:v3_security','uddi','2009-12-22 16.18.37.906000000','2009-12-22 16.18.37.906000000','2009-12-22 16.18.37.906000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:types','uddi','2009-12-22 16.18.37.921000000','2009-12-22 16.18.37.921000000','2009-12-22 16.18.37.921000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:general_keywords','uddi','2009-12-22 16.18.37.937000000','2009-12-22 16.18.37.937000000','2009-12-22 16.18.37.937000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:nodes','uddi','2009-12-22 16.18.37.953000000','2009-12-22 16.18.37.953000000','2009-12-22 16.18.37.953000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:relationships','uddi','2009-12-22 16.18.37.953000000','2009-12-22 16.18.37.953000000','2009-12-22 16.18.37.953000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:owningbusiness','uddi','2009-12-22 16.18.37.968000000','2009-12-22 16.18.37.968000000','2009-12-22 16.18.37.968000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:identifier:isreplacedby','uddi','2009-12-22 16.18.37.984000000','2009-12-22 16.18.37.984000000','2009-12-22 16.18.37.984000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:validatedby','uddi','2009-12-22 16.18.38.0','2009-12-22 16.18.38.0','2009-12-22 16.18.38.0','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:derivedfrom','uddi','2009-12-22 16.18.38.15000000','2009-12-22 16.18.38.15000000','2009-12-22 16.18.38.15000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:categorization:entitykeyvalues','uddi','2009-12-22 16.18.38.31000000','2009-12-22 16.18.38.31000000','2009-12-22 16.18.38.31000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:protocol:serverauthenticatedssl3','uddi','2009-12-22 16.18.38.46000000','2009-12-22 16.18.38.46000000','2009-12-22 16.18.38.46000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:protocol:mutualauthenticatedssl3','uddi','2009-12-22 16.18.38.46000000','2009-12-22 16.18.38.46000000','2009-12-22 16.18.38.46000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:http','uddi','2009-12-22 16.18.38.62000000','2009-12-22 16.18.38.62000000','2009-12-22 16.18.38.62000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:smtp','uddi','2009-12-22 16.18.38.62000000','2009-12-22 16.18.38.62000000','2009-12-22 16.18.38.62000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:ftp','uddi','2009-12-22 16.18.38.78000000','2009-12-22 16.18.38.78000000','2009-12-22 16.18.38.78000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:fax','uddi','2009-12-22 16.18.38.78000000','2009-12-22 16.18.38.78000000','2009-12-22 16.18.38.78000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:transport:telephone','uddi','2009-12-22 16.18.38.93000000','2009-12-22 16.18.38.93000000','2009-12-22 16.18.38.93000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:approximatematch','uddi','2009-12-22 16.18.38.109000000','2009-12-22 16.18.38.109000000','2009-12-22 16.18.38.109000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:exactmatch','uddi','2009-12-22 16.18.38.109000000','2009-12-22 16.18.38.109000000','2009-12-22 16.18.38.109000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:caseinsensitivematch','uddi','2009-12-22 16.18.38.125000000','2009-12-22 16.18.38.125000000','2009-12-22 16.18.38.125000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:casesensitivematch','uddi','2009-12-22 16.18.38.125000000','2009-12-22 16.18.38.125000000','2009-12-22 16.18.38.125000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:diacriticsinsensitivematch','uddi','2009-12-22 16.18.38.140000000','2009-12-22 16.18.38.140000000','2009-12-22 16.18.38.140000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:diacriticssensitivematch','uddi','2009-12-22 16.18.38.140000000','2009-12-22 16.18.38.140000000','2009-12-22 16.18.38.140000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:sortorder:binarysort','uddi','2009-12-22 16.18.38.156000000','2009-12-22 16.18.38.156000000','2009-12-22 16.18.38.156000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:sortorder:uts-10','uddi','2009-12-22 16.18.38.156000000','2009-12-22 16.18.38.156000000','2009-12-22 16.18.38.156000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:caseinsensitivesort','uddi','2009-12-22 16.18.38.171000000','2009-12-22 16.18.38.171000000','2009-12-22 16.18.38.171000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:casesensitivesort','uddi','2009-12-22 16.18.38.171000000','2009-12-22 16.18.38.171000000','2009-12-22 16.18.38.171000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:sortbynameasc','uddi','2009-12-22 16.18.38.187000000','2009-12-22 16.18.38.187000000','2009-12-22 16.18.38.187000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:sortbynamedesc','uddi','2009-12-22 16.18.38.203000000','2009-12-22 16.18.38.203000000','2009-12-22 16.18.38.203000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:sortbydateasc','uddi','2009-12-22 16.18.38.203000000','2009-12-22 16.18.38.203000000','2009-12-22 16.18.38.203000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:sortbydatedesc','uddi','2009-12-22 16.18.38.218000000','2009-12-22 16.18.38.218000000','2009-12-22 16.18.38.218000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:andallkeys','uddi','2009-12-22 16.18.38.218000000','2009-12-22 16.18.38.218000000','2009-12-22 16.18.38.218000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:orallkeys','uddi','2009-12-22 16.18.38.234000000','2009-12-22 16.18.38.234000000','2009-12-22 16.18.38.234000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:orlikekeys','uddi','2009-12-22 16.18.38.234000000','2009-12-22 16.18.38.234000000','2009-12-22 16.18.38.234000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO J3_UDDI_ENTITY (ENTITY_KEY,AUTHORIZED_NAME,CREATED,MODIFIED,MODIFIED_INCLUDING_CHILDREN,NODE_ID)
    VALUES ('uddi:uddi.org:findqualifier:combinecategorybags','uddi','2009-12-22 16.18.38.250000000','2009-12-22 16.18.38.250000000','2009-12-22 16.18.38.250000000','uddi:juddi.apache.org:businesses-asf');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (8,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:3:7','11/10/2009 15:5:2','11/10/2009 15:5:35','11/10/2009 15:5:2','11/10/2009 15:5:2');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (5,'发送144a','start',0,0,0,0,0,0,'11/10/2009 14:28:3','11/10/2009 14:28:47','11/10/2009 14:28:47','11/10/2009 14:28:47','11/10/2009 14:28:47');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (13,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:43:33','11/13/2009 9:24:27','11/13/2009 9:24:27','11/13/2009 9:24:27','11/13/2009 9:24:27');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (11,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:14:7','11/10/2009 15:39:28','11/10/2009 15:39:28','11/10/2009 15:39:28','11/10/2009 15:39:28');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (24,'发送144a','start',0,0,0,0,0,0,'11/16/2009 11:42:12','11/16/2009 15:52:49','11/16/2009 15:52:49','11/16/2009 15:52:49','11/16/2009 15:52:49');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (16,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:24:51','11/16/2009 9:24:51','11/16/2009 9:24:51','11/16/2009 9:24:51');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (6,'发送144a','end',0,0,0,0,0,0,'11/10/2009 14:28:3','11/10/2009 15:0:55','11/10/2009 15:1:30','11/10/2009 15:0:55','11/10/2009 15:0:55');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (10,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:10:42','11/10/2009 15:14:7','11/10/2009 15:14:40','11/10/2009 15:14:7','11/10/2009 15:14:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (11,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:14:7','11/10/2009 15:39:28','11/10/2009 15:40:6','11/10/2009 15:39:28','11/10/2009 15:39:28');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (12,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:39:28','11/10/2009 15:43:33','11/10/2009 15:44:9','11/10/2009 15:43:33','11/10/2009 15:43:33');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (14,'发送144a','end',0,0,0,0,0,0,'11/13/2009 9:24:27','11/13/2009 10:11:38','11/13/2009 10:53:7','11/13/2009 10:11:38','11/13/2009 10:11:38');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (16,'发送144a','end',0,0,0,0,0,1,'11/13/2009 17:9:4','11/16/2009 9:24:51','11/16/2009 9:32:5','11/16/2009 9:24:51','11/16/2009 9:24:51');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (17,'发送144a','stop',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:43:7','11/16/2009 9:43:29','11/16/2009 9:43:7','11/16/2009 9:43:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (24,'发送144a','end',0,0,0,0,0,0,'11/16/2009 11:42:12','11/16/2009 15:52:49','11/16/2009 16:33:52','11/16/2009 15:52:49','11/16/2009 15:52:49');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (21,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:57:35','11/16/2009 9:57:35','11/16/2009 9:57:35','11/16/2009 9:57:35');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (22,'发送144a','stop',0,0,0,0,0,0,'11/16/2009 9:57:35','11/16/2009 11:42:12','11/16/2009 11:42:34','11/16/2009 11:42:12','11/16/2009 11:42:12');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (22,'发送144a','end',0,0,0,0,0,0,'11/16/2009 9:57:35','11/16/2009 11:42:12','11/16/2009 11:42:34','11/16/2009 11:42:12','11/16/2009 11:42:12');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (25,'发送144a','start',0,0,0,0,0,0,'11/16/2009 15:52:49','11/16/2009 16:36:40','11/16/2009 16:36:40','11/16/2009 16:36:40','11/16/2009 16:36:40');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (25,'发送144a','end',0,0,0,0,0,0,'11/16/2009 15:52:49','11/16/2009 16:36:40','11/16/2009 16:38:32','11/16/2009 16:36:40','11/16/2009 16:36:40');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (9,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:5:2','11/10/2009 15:10:42','11/10/2009 15:10:42','11/10/2009 15:10:42','11/10/2009 15:10:42');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (1,'发送144a','start',0,0,0,0,0,0,'1/1/1900 7:0:0','11/10/2009 14:7:47','11/10/2009 14:7:47','11/10/2009 14:7:47','11/10/2009 14:7:47');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (1,'发送144a','end',0,0,0,0,0,1,'1/1/1900 7:0:0','11/10/2009 14:7:47','11/10/2009 14:8:8','11/10/2009 14:7:47','11/10/2009 14:7:47');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (7,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:0:55','11/10/2009 15:3:7','11/10/2009 15:3:7','11/10/2009 15:3:7','11/10/2009 15:3:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (9,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:5:2','11/10/2009 15:10:42','11/10/2009 15:11:15','11/10/2009 15:10:42','11/10/2009 15:10:42');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (8,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:3:7','11/10/2009 15:5:2','11/10/2009 15:5:2','11/10/2009 15:5:2','11/10/2009 15:5:2');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (10,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:10:42','11/10/2009 15:14:7','11/10/2009 15:14:7','11/10/2009 15:14:7','11/10/2009 15:14:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (18,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:46:37','11/16/2009 9:46:37','11/16/2009 9:46:37','11/16/2009 9:46:37');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (14,'发送144a','start',0,0,0,0,0,0,'11/13/2009 9:24:27','11/13/2009 10:11:38','11/13/2009 10:11:38','11/13/2009 10:11:38','11/13/2009 10:11:38');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (12,'发送144a','start',0,0,0,0,0,0,'11/10/2009 15:39:28','11/10/2009 15:43:33','11/10/2009 15:43:33','11/10/2009 15:43:33','11/10/2009 15:43:33');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (13,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:43:33','11/13/2009 9:24:27','11/13/2009 10:7:31','11/13/2009 9:24:27','11/13/2009 9:24:27');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (27,'发送144a','start',0,0,0,0,0,0,'11/16/2009 17:19:22','11/16/2009 18:37:32','11/16/2009 18:37:32','11/16/2009 18:37:32','11/16/2009 18:37:32');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (7,'发送144a','end',0,0,0,0,0,0,'11/10/2009 15:0:55','11/10/2009 15:3:7','11/10/2009 15:3:40','11/10/2009 15:3:7','11/10/2009 15:3:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (2,'发送144a','start',0,0,0,0,0,0,'1/1/1900 7:0:0','11/10/2009 14:26:50','11/10/2009 14:26:50','11/10/2009 14:26:50','11/10/2009 14:26:50');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (2,'发送144a','end',0,0,0,0,0,0,'1/1/1900 7:0:0','11/10/2009 14:26:50','11/10/2009 14:26:53','11/10/2009 14:26:50','11/10/2009 14:26:50');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (19,'发送144a','stop',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:49:4','11/16/2009 9:49:56','11/16/2009 9:49:4','11/16/2009 9:49:4');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (23,'发送144a','stop',0,0,0,0,0,0,'11/16/2009 11:42:12','11/16/2009 11:44:41','11/16/2009 11:44:59','11/16/2009 11:44:41','11/16/2009 11:44:41');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (4,'发送144a','start',0,0,0,0,0,0,'11/10/2009 14:27:30','11/10/2009 14:28:3','11/10/2009 14:28:3','11/10/2009 14:28:3','11/10/2009 14:28:3');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (0,'发送144a','start',0,0,0,0,0,0,'1/1/1900 7:0:0','11/9/2009 9:48:46','11/9/2009 9:48:46','11/9/2009 9:48:46','11/9/2009 9:48:46');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (0,'发送144a','end',0,0,0,0,0,1,'1/1/1900 7:0:0','11/9/2009 9:48:46','11/9/2009 9:49:50','11/9/2009 9:48:46','11/9/2009 9:48:46');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (3,'发送144a','start',0,0,0,0,0,0,'11/10/2009 14:26:50','11/10/2009 14:27:30','11/10/2009 14:27:30','11/10/2009 14:27:30','11/10/2009 14:27:30');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (3,'发送144a','end',0,0,0,0,0,0,'11/10/2009 14:26:50','11/10/2009 14:27:30','11/10/2009 14:27:33','11/10/2009 14:27:30','11/10/2009 14:27:30');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (15,'发送144a','start',0,0,0,0,0,0,'11/13/2009 10:11:38','11/13/2009 17:9:4','11/13/2009 17:9:4','11/13/2009 17:9:4','11/13/2009 17:9:4');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (4,'发送144a','end',0,0,0,0,0,0,'11/10/2009 14:27:30','11/10/2009 14:28:3','11/10/2009 14:28:25','11/10/2009 14:28:3','11/10/2009 14:28:3');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (5,'发送144a','end',0,0,0,0,0,1,'11/10/2009 14:28:3','11/10/2009 14:28:47','11/10/2009 14:30:0','11/10/2009 14:28:47','11/10/2009 14:28:47');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (6,'发送144a','start',0,0,0,0,0,0,'11/10/2009 14:28:3','11/10/2009 15:0:55','11/10/2009 15:0:55','11/10/2009 15:0:55','11/10/2009 15:0:55');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (17,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:43:7','11/16/2009 9:43:7','11/16/2009 9:43:7','11/16/2009 9:43:7');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (15,'发送144a','end',0,0,0,0,0,0,'11/13/2009 10:11:38','11/13/2009 17:9:4','11/13/2009 17:21:46','11/13/2009 17:9:4','11/13/2009 17:9:4');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (19,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:49:4','11/16/2009 9:49:4','11/16/2009 9:49:4','11/16/2009 9:49:4');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (18,'发送144a','stop',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:46:37','11/16/2009 9:47:19','11/16/2009 9:46:37','11/16/2009 9:46:37');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (21,'发送144a','end',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:57:35','11/16/2009 10:12:22','11/16/2009 9:57:35','11/16/2009 9:57:35');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (26,'发送144a','start',0,0,0,0,0,0,'11/16/2009 16:36:40','11/16/2009 17:19:22','11/16/2009 17:19:22','11/16/2009 17:19:22','11/16/2009 17:19:22');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (20,'发送144a','start',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:54:6','11/16/2009 9:54:6','11/16/2009 9:54:6','11/16/2009 9:54:6');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (20,'发送144a','stop',0,0,0,0,0,0,'11/13/2009 17:9:4','11/16/2009 9:54:6','11/16/2009 9:55:0','11/16/2009 9:54:6','11/16/2009 9:54:6');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (22,'发送144a','start',0,0,0,0,0,0,'11/16/2009 9:57:35','11/16/2009 11:42:12','11/16/2009 11:42:12','11/16/2009 11:42:12','11/16/2009 11:42:12');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (26,'发送144a','end',0,0,0,0,0,0,'11/16/2009 16:36:40','11/16/2009 17:19:22','11/16/2009 18:11:31','11/16/2009 17:19:22','11/16/2009 17:19:22');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (23,'发送144a','start',0,0,0,0,0,0,'11/16/2009 11:42:12','11/16/2009 11:44:41','11/16/2009 11:44:41','11/16/2009 11:44:41','11/16/2009 11:44:41');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (27,'发送144a','stop',0,0,0,0,0,0,'11/16/2009 17:19:22','11/16/2009 18:37:32','11/16/2009 18:37:47','11/16/2009 18:37:32','11/16/2009 18:37:32');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (28,'发送144a','start',0,0,0,0,0,0,'11/16/2009 17:19:22','11/16/2009 18:39:45','11/16/2009 18:39:45','11/16/2009 18:39:45','11/16/2009 18:39:45');

INSERT INTO LOG217 (ID_BATCH,TRANSNAME,STATUS,LINES_READ,LINES_WRITTEN,LINES_UPDATED,LINES_INPUT,LINES_OUTPUT,ERRORS,STARTDATE,ENDDATE,LOGDATE,DEPDATE,REPLAYDATE)
    VALUES (28,'发送144a','stop',0,0,0,0,0,0,'11/16/2009 17:19:22','11/16/2009 18:39:45','11/16/2009 18:47:24','11/16/2009 18:39:45','11/16/2009 18:39:45');

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1447,'test144',0,0,'200mb','500mb','foo','200mb','172.16.17.144','1099',1,1,0,'default_nc','d:\mq\data1','jdbc/oracle-ds-broker2',0,1,0,1,0,0,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1207,'wqy119',1,1,'200mb','500mb','foo','200mb','172.16.17.119','1099',1,1,0,'default_nc','d:\mq\data2','jdbc/oracle-ds-broker2',0,1,1,1,1,1,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (201,'102',1,1,'200mb','5000mb','foo','200mb','172.16.17.216','1097',1,1,0,'default_nc','d:\mq\data1','jdbc/oracle-ds-broker1',0,1,0,1,0,0,1,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,SSL_KS,SSL_KSPASSWORD,SSL_TS,SSL_DIRECTORY,SSL_TSPASSWORD,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (373,'jjj_',1,1,'200kb','500kb','foo','200kb','192.168.11.107','1099',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',1,920,'creatora',921,'d:\keystore','creatora',1,1,1,1,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (391,'MQC(61636)',0,1,'200kb','500kb','foo','200kb','192.168.11.106','1099',1,0,0,'default_nc','d:\mq\data','jdbc/oracle-ds',0,0,0,1,0,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (471,'105',1,1,'20mb','50mb','foo','20mb','192.168.11.105','1099',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',0,1,1,1,1,1,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (410,'mqA(61616)',0,1,'20mb','50mb','foo','200kb','192.168.11.106','1097',1,1,0,'default_nc','d:\mq\data1','jdbc/oracle-ds',0,1,1,1,0,0,1,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (541,'5test',1,1,'20mb','50mb','foo','200kb','192.168.11.5','1099',1,1,0,'default_nc','/opt/MQServiceRuntime/mq','jdbc/oracle-ds',0,1,1,1,1,1,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,NC_URI,DATADIRECTORY,PA_DATASOURCE,USE_SSL,SSL_KS,SSL_KSPASSWORD,SSL_TS,SSL_DIRECTORY,SSL_TSPASSWORD,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1,'test',0,1,'200 mb','500 mb','foo','200 mb','192.168.11.102','1098',1,1,0,'amq-cluster','static://(tcp://localhost:61636)','d:\mq\data','jdbc/oracle-ds-broker2',1,11,'password',12,'d:/keystoreserver','password',1,1,1,1,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (443,'test107',1,1,'200mb','500mb','foo','200mb','192.168.11.107','1091',1,1,0,'default_nc','d:\mq\data3','jdbc/oracle-ds',0,1,1,1,1,1,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (642,'wqytest',1,1,'20mb','50mb','foo','20mb','192.168.11.126','1099',1,1,0,'default_nc','d:\mq\data5','jdbc/oracle-ds',0,1,1,0,1,1,1,'20kb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,SSL_KS,SSL_KSPASSWORD,SSL_TS,SSL_DIRECTORY,SSL_TSPASSWORD,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (801,'test0814',1,1,'200mb','500mb','foo','200mb','192.168.11.126','1099',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',1,922,'chinacreatora',923,'E:\keystore','chinacreatora',1,1,1,1,1,0,'20kb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1047,'144',0,1,'100mb','10240mb','foo','100mb','192.168.11.144','1099',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',0,1,0,1,0,0,1,'20mb',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,NC_URI,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (13,'localhost',1,1,'200 mb','500 mb','foo','200 mb','192.168.11.102','1099',1,1,1,'default_nc','multicast://default','d:\mq\data','jdbc/oracle-ds',0,1,1,1,0,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (384,'MQB(61626)',1,1,'20mb','50mb','foo','20mb','192.168.11.106','1098',1,1,0,'default_nc','d:\mq\data1','bspf_datasource_jndiname',0,1,0,1,0,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (481,'mqd(46)',0,1,'20mb','50mb','foo','20mb','192.168.11.106','1099',1,0,0,'default_nc','d:\mq\data4','jdbc/oracle-ds',0,0,0,1,0,0,1,'20mb',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (561,'chennantest',0,1,'20mb','50mb','foo','20mb','192.168.11.106','1099',1,0,0,'default_nc','d:\mq\data7','jdbc/oracle-ds',0,0,1,1,0,0,1,'20mb',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,NC_URI,DATADIRECTORY,PA_DATASOURCE,USE_SSL,SSL_KS,SSL_KSPASSWORD,SSL_TS,SSL_DIRECTORY,SSL_TSPASSWORD,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (448,'testtter',1,1,'20mb','50mb','foo','20mb','192.168.11.107','1099',1,1,0,'default_nc','multicast://default','d:\mq\data','jdbc/oracle-ds',1,726,'password',727,'d:\keystore','password',1,0,1,0,1,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (381,'auto',1,1,'200kb','500kb','foo','200kb','192.168.11.102','1098',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds-broker2',0,1,1,1,1,0,0,'20m',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (403,'107',1,1,'20mb','50mb','foo','20mb','192.168.11.107','1092',1,1,0,'default_nc','d:\mq\data1','my102orcl',0,1,0,1,1,1,0,'20mb',0,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,SSL_KS,SSL_KSPASSWORD,SSL_TS,SSL_DIRECTORY,SSL_TSPASSWORD,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (729,'news',1,1,'20mb','50mb','foo','20mb','192.168.11.107','1099',1,1,0,'default_nc','d:\mq\data8','jdbc/oracle-ds',1,735,'creatora',736,'d:\keystore3','creatorb',1,1,1,0,0,1,'20mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1067,'144New',1,1,'512mb','5000mb','foo','2000mb','172.16.17.217','1099',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',0,1,0,1,1,1,1,'30mb',1,0);

INSERT INTO MQ_BROKER (BROKER_ID,BROKER_NAME,IS_PERSISTENT,IS_USEMIRRQ,MEM_MAXLIMIT,STORE_LIMITE,STORE_NAME,TEMP_LIMITE,SERVER_IP,JMX_PORT,JMX_CREATECON,JMX_CREMBSERVER,USE_CLUSTER,NC_NAME,DATADIRECTORY,PA_DATASOURCE,USE_SSL,IS_USEJMX,USE_AUTH,NEEDSUPDATE,USE_PERMISSION,USE_LOG,PERSISTENT_TYPE,MAXFILELENGTH,SYNCONWRITE,CONDUITSUBSCRIPTIONS)
    VALUES (1147,'my144',0,1,'200mb','500mb','foo','200mb','172.16.17.144','1096',1,1,0,'default_nc','d:\mq\data','jdbc/oracle-ds',0,1,0,1,0,1,1,'20mb',1,0);

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (201,343,'tcp://172.16.17.216:61615','tcp','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (471,474,'tcp://localhost:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (801,929,'ssl://192.168.11.126:61617','ssl','ssl');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1447,1450,'tcp://172.16.17.144:61619','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1,141,'tcp://192.168.11.102:61616','tcp','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (410,413,'tcp://localhost:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (541,546,'tcp://192.168.11.5:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (801,928,'tcp://192.168.11.126:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1047,1052,'tcp://192.168.11.144:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (443,447,'tcp://192.168.11.107:61626','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (384,389,'tcp://localhost:61626','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (391,396,'tcp://localhost:61636','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (481,486,'tcp://localhost:61646','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (561,566,'tcp://localhost:61619','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (801,931,'stomp://localhost:61613','stomp','stomp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (448,581,'tcp://192.168.11.107:61615','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (642,661,'tcp://localhost:61616','tcp','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (403,406,'tcp://localhost:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (448,728,'ssl://localhost:61617','ssl','ssl');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (729,732,'tcp://localhost:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (729,733,'http://localhost:61615','http','http');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (729,734,'ssl://localhost:61617','ssl','ssl');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1067,1070,'tcp://172.16.17.217:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1147,1150,'tcp://172.16.17.144:61616','openwire','tcp');

INSERT INTO MQ_CONNECTORS (BROKER_ID,CONNECTOR_ID,CONNECTOR_URI,CONNECTOR_NAME,CON_PROTOCOL)
    VALUES (1207,1210,'tcp://172.16.17.119:61656','openwire','tcp');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (361,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (623,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (641,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (601,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (621,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (581,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (701,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (501,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (561,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (622,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (661,'inputStreamPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'useConnectionPool','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'watchTopicAdvisories','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'optimizedMessageDispatch','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'sendTimeout','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'closeTimeout','15000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'dispatchAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'useAsyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'alwaysSyncSend','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'useCompression','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'useRetroactiveConsumer','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'objectMessageSerializationDefered','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'disableTimeStampsByDefault','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'optimizeAcknowledge','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'producerWindowSize','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'copyMessageOnSend','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'statsEnabled','false');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'alwaysSessionAsync','true');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'queuePrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'maximumPendingMessageLimit','0');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'durableTopicPrefetch','100');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'queueBrowserPrefetch','500');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'topicPrefetch','32766');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'optimizeDurableTopicPrefetch','1000');

INSERT INTO MQ_CON_PARAMS (NODE_ID,NAME,VALUE)
    VALUES (681,'inputStreamPrefetch','100');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1447,1449,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1147,1407,'testgroup');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1207,1209,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (201,342,'user');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (201,345,'write');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (201,346,'xadmin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (373,375,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (391,393,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (541,543,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (410,412,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (471,473,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (448,691,'test');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (801,899,'zuzhang');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (443,445,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,644,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1,390,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,692,'ugroup1');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (801,803,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1047,1049,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (384,386,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (410,442,'ioio');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (443,477,'user');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (443,479,'erveryonebody');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (481,483,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (561,563,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (801,914,'bshj');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (373,376,'sdf');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (201,344,'read');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (201,321,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (381,383,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (403,405,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (448,450,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,685,'ugroup01');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,687,'ugroup02');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,688,'ugroup03');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (642,690,'ugroup05');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1067,1069,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (729,731,'admin');

INSERT INTO MQ_GROUP (BROKER_ID,GROUP_ID,GROUP_NAME)
    VALUES (1147,1149,'admin');

INSERT INTO MQ_HUGEMESSAGE_SCHEDULE (TASK_ID,SCHEDULE_ID,FILE_PATH,FILE_SIZE,SEGMENT_SIZE,FINISHED,REG_DATE,ISBROKE,USEPARREL,TASKTYPE,MACHINE_UUID,BUSSINESS_ID)
    VALUES (1320,'98988203-063c-11df-af18-1f5cdb5e8ab3','F:\bigdata/dominspector.rar',2339722,1048576,'1','2010-1-21 11.47.30.349964000',0,1,1,'00-23-54-CF-D1-D7-etl','aaa.');

INSERT INTO MQ_HUGEMESSAGE_SCHEDULE (TASK_ID,SCHEDULE_ID,FILE_PATH,FILE_SIZE,SEGMENT_SIZE,FINISHED,REG_DATE,ISBROKE,USEPARREL,TASKTYPE,MACHINE_UUID,BUSSINESS_ID)
    VALUES (1321,'adc71b4e-063e-11df-a525-658363bffc21','F:\bigdata/WindowsXP-KB936929-SP3-x86-CHS.exe',351354408,1048576,'1','2010-1-21 11.50.35.347919000',0,1,1,'00-23-54-CF-D1-D7-etl','aaa.');

INSERT INTO MQ_MEM_CONF (CONFIG_ID,BROKER_ID,OBJECT_TYPE,OBJECT_NAME,MEM_LIMIT,PRODUCERFLOWCONTROL)
    VALUES (1128,201,0,'>','20mb',1);

INSERT INTO MQ_MEM_CONF (CONFIG_ID,BROKER_ID,OBJECT_TYPE,OBJECT_NAME,MEM_LIMIT,DEAD_PREFIX,PRODUCERFLOWCONTROL)
    VALUES (1267,1067,0,'144a','30mb','dlq',1);

INSERT INTO MQ_MEM_CONF (CONFIG_ID,BROKER_ID,OBJECT_TYPE,OBJECT_NAME,MEM_LIMIT,DEAD_PREFIX,PRODUCERFLOWCONTROL)
    VALUES (1427,1147,1,'mylove','1kb','vv.v',0);

INSERT INTO MQ_MEM_CONF (CONFIG_ID,BROKER_ID,OBJECT_TYPE,OBJECT_NAME,MEM_LIMIT,DEAD_PREFIX,PRODUCERFLOWCONTROL)
    VALUES (1393,1147,0,'dead','10kb','dead.de.',1);

INSERT INTO MQ_MIRROR_TABLE (MIRROR_NAME,MIRROR_ID,BROKER_ID,REMARK,MIRROR_PREFIX,COPYMESSAGE)
    VALUES ('point102_topic',1287,201,'test','Mirror.Topic',1);

INSERT INTO MQ_MIRROR_TABLE (MIRROR_NAME,MIRROR_ID,BROKER_ID,MIRROR_PREFIX,COPYMESSAGE)
    VALUES ('my',1431,1147,'Mirror.queue.',0);

INSERT INTO MQ_MIRROR_TABLE (MIRROR_NAME,MIRROR_ID,BROKER_ID,MIRROR_PREFIX,COPYMESSAGE)
    VALUES ('test',1432,1147,'rrr.ee.',0);

INSERT INTO MQ_MIRROR_TABLE (MIRROR_NAME,MIRROR_ID,BROKER_ID,REMARK,MIRROR_PREFIX,COPYMESSAGE)
    VALUES ('point102',1288,201,'point102','Mirror.Topic.',1);

INSERT INTO MQ_MIRROR_TABLE (MIRROR_NAME,MIRROR_ID,BROKER_ID,REMARK,MIRROR_PREFIX,COPYMESSAGE)
    VALUES ('test',2,1,'0','Mirror.Topic',1);

INSERT INTO MQ_MON_TABLE (MONITOR_ID,MQ_MONITOR_IP,MQ_MONITOR_PORT,MQ_JMXMON_PORT,MQ_TCP_PORT,MQ_USER,MQ_PASSWORD,MONITOR_NAME)
    VALUES (1227,'172.16.17.144','11999','1099','61616','system','manager','my144');

INSERT INTO MQ_NODE (NODE_ID,NODE_FACTORY_ID,NODE_NAME,DEST_TYPE,DESTINATION,ISVALIDATE,ISPERSISTENT,PRIORITY,EXPIRATION)
    VALUES (744,743,'point102',1,'point102',1,1,4,'0');

INSERT INTO MQ_NODE (NODE_ID,NODE_FACTORY_ID,NODE_NAME,DEST_TYPE,DESTINATION,ISVALIDATE,ISPERSISTENT,PRIORITY,EXPIRATION)
    VALUES (761,743,'aaa',0,'aaa',1,1,4,'0');

INSERT INTO MQ_NODE_FACTORY (NODE_FACTORY_ID,NODE_FACTORY_NAME,SERVER_URL,USE_AUTH,USE_SSL,USE_FAILOVER,RECONNECTDELAY,MAXRECONNECTDELAY,USEEXPONENTIALBACKOFF,BACKOFFMUTIPLER,MAXRECONNECTTIMES,RANDOMIZE,CON_COLLISIONAVOIDANCEPERCENT,CON_MAXIMUMREDELIVERIES,CON_INITIALREDELIVERYDELAY,CON_USECOLLISIONAVOIDANCE,CON_USEEXPONENTIALBACKOFF,CON_BACKOFFMULTIPLIER)
    VALUES (743,'point102','tcp://172.16.17.216:61615',0,0,1,10,30000,1,2,5,1,15,6,1000,0,0,5);

INSERT INTO MQ_NODE_FACTORY (NODE_FACTORY_ID,NODE_FACTORY_NAME,SERVER_URL,USE_AUTH,USE_SSL,USE_FAILOVER,RECONNECTDELAY,MAXRECONNECTDELAY,USEEXPONENTIALBACKOFF,BACKOFFMUTIPLER,MAXRECONNECTTIMES,RANDOMIZE,CON_COLLISIONAVOIDANCEPERCENT,CON_MAXIMUMREDELIVERIES,CON_INITIALREDELIVERYDELAY,CON_USECOLLISIONAVOIDANCE,CON_USEEXPONENTIALBACKOFF,CON_BACKOFFMULTIPLIER)
    VALUES (762,'fff','tcp://localhost:61615',0,0,1,10,30000,1,2,5,1,15,6,1000,0,0,5);

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','>','read','group','admin',403,'admin','7/16/2009 16:44:25');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','>','admin','group','admin',403,'admin','7/16/2009 16:44:25');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','>','write','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','>','read','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','>','admin','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','>','write','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','>','read','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','>','admin','group','admin',448,'admin','7/20/2009 14:53:37');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','queue.test.>','write','group','ugroup01',642,'admin','8/5/2009 15:29:17');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','queue.test.>','read','group','ugroup01',642,'admin','8/5/2009 15:29:48');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','queue.test.>','admin','group','ugroup01',642,'admin','8/5/2009 15:29:49');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('queue','queue.test.>','admin','group','ugroup1',642,'admin','8/5/2009 16:7:40');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','mdd','read','group','ugroup1',642,'admin','8/6/2009 14:4:54');

INSERT INTO MQ_PERMISSIONS (RESOURCE_TYPE,RES_NAME,RES_OP,GROUP_TYPE,GROUP_NAME,BROKER_ID,AUTHOR,AUTH_DATE)
    VALUES ('topic','mdd','write','group','ugroup1',642,'admin','8/6/2009 14:4:54');

INSERT INTO TABLEINFO (TABLE_NAME,TABLE_ID_NAME,TABLE_ID_INCREMENT,TABLE_ID_VALUE,TABLE_ID_GENERATOR,TABLE_ID_TYPE)
    VALUES ('mq_node','node_id',1,761,'SEQ_MQ_NODE','sequence');

