-- Member 테이블

  CREATE TABLE "ODONATA"."MEMBER" 
   (    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "USER_NAME" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "USER_PWD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
    "USER_EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
    "USER_PHONE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
    "USER_BIRTH" DATE NOT NULL ENABLE, 
    "USER_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "USER_TYPE" VARCHAR2(30 BYTE) DEFAULT 'User' NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE, 
     CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USER_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- MSG 테이블

  CREATE TABLE "ODONATA"."MSG" 
   (    "MESSAGE_CODE" NUMBER NOT NULL ENABLE, 
    "MESSAGE_TITLE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
    "SENDTIME" DATE NOT NULL ENABLE, 
    "READTIME" DATE NOT NULL ENABLE, 
    "MSGTEXT" VARCHAR2(300 BYTE), 
    "SEND_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "RECEIVE_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
    "FIELD" VARCHAR2(255 BYTE), 
     CONSTRAINT "PK_MSG" PRIMARY KEY ("MESSAGE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Payment 테이블

  CREATE TABLE "ODONATA"."PAYMENT" 
   (    "P_CODE" NUMBER NOT NULL ENABLE, 
    "P_STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
    "P_METHOD" VARCHAR2(50 BYTE), 
    "P_TOTAL" NUMBER NOT NULL ENABLE, 
    "V_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_PAYMENT" PRIMARY KEY ("P_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Reserv 테이블

  CREATE TABLE "ODONATA"."RESERV" 
   (    "V_CODE" NUMBER NOT NULL ENABLE, 
    "V_STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
    "CHECK_IN" DATE NOT NULL ENABLE, 
    "CHECK_OUT" DATE NOT NULL ENABLE, 
    "PERSONNEL" NUMBER NOT NULL ENABLE, 
    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_RESERV" PRIMARY KEY ("V_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Review 테이블

  CREATE TABLE "ODONATA"."REVIEW" 
   (    "R_CODE" NUMBER NOT NULL ENABLE, 
    "R_CONTENT" NVARCHAR2(200), 
    "R_UPDATE" DATE NOT NULL ENABLE, 
    "R_MODFIY" DATE NOT NULL ENABLE, 
    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_REVIEW" PRIMARY KEY ("R_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Rooms 테이블

  CREATE TABLE "ODONATA"."ROOMS" 
   (    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "ROOMS_ADDR" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
    "ROOMS_TYPE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
    "ROOMS_PERSONNEL" NUMBER NOT NULL ENABLE, 
    "ROOMS_HOST" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
    "ROOMS_DESC" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
    "ROOMS_PRICE" NUMBER NOT NULL ENABLE, 
    "ROOMS_REGDATE" DATE NOT NULL ENABLE, 
    "ROOMS_ROOMCNT" NUMBER NOT NULL ENABLE, 
    "ROOMS_TOILETCNT" NUMBER NOT NULL ENABLE, 
    "ROOMS_DOGAVAIL" CHAR(1 BYTE) NOT NULL ENABLE, 
    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_ROOMS" PRIMARY KEY ("ROOMS_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- SookSoIMG 테이블

  CREATE TABLE "ODONATA"."SOOKSOIMG" 
   (    "IMAGE_NUMBER" NUMBER NOT NULL ENABLE, 
    "IMAGE_NAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
    "IMAGE_PATH" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
    "SSUM" CHAR(1 BYTE) NOT NULL ENABLE, 
    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_SOOKSOIMG" PRIMARY KEY ("IMAGE_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

