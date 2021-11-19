CREATE TABLE `MEMBER` (
    `User_code` NUMBER  NOT NULL,
    `User_name` VARCHAR2(30)    NOT NULL,
    `User_pwd`  VARCHAR2(100)    NOT NULL,
    `User_email`    VARCHAR2(100)   NOT NULL,
    `User_phone`    VARCHAR2(20)    NOT NULL,
    `User_birth`    DATE    NOT NULL,
    `User_id`   VARCHAR2(30)    NOT NULL,
    `User_type` VARCHAR2(30)    NOT NULL    COMMENT 'Admin/User/Host',
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

--------------------------------------------------
-- User_code 시퀀스 생성
CREATE SEQUENCE SEQ_UID
INCREMENT BY 1
START WITH 2
MINVALUE 1
NOCYCLE
NOCACHE;
--------------------------------------------------
-- 시퀀스 초기화 하기(예시 : SEQ_UID / 1번은 관리자 계정, 2번부터 사용자 계정)
-- 1. 현시점 시퀀스 번호 확인(예시 : 현재 시퀀스 18번까지 사용됨)
SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'SEQ_UID';
-- 2. 시퀀스(SEQ_UID의 초기값(최소값) 1을 고려)의 증감값을 변경시켜줌(현재값 19, 초기값이 1, 기존 증감값이 +1이라면 증감값을 -18로 변경)
ALTER SEQUENCE SEQ_UID INCREMENT BY -18;
-- 3. NEXTVAL로 시퀀스 증감값 반영(현재 19, 증감 -18 이므로 19 - 18 = 1로)
SELECT SEQ_UID.NEXTVAL FROM DUAL;
-- 4. CURRVAL로 시퀀스 값이 원하는 값(초기값)으로 변경되었는 지 확인
SELECT SEQ_UID.CURRVAL FROM DUAL;
-- 5. 시퀀스 증감값을 다시 초기화
ALTER SEQUENCE SEQ_UID INCREMENT BY 1;
--------------------------------------------------
-- User_type 및 Status 디폴트 값 수정
ALTER TABLE MEMBER MODIFY (User_type DEFAULT 'User');
ALTER TABLE MEMBER MODIFY (STATUS DEFAULT 'Y');
--------------------------------------------------

CREATE TABLE `Reserv` (
    `V_code`    NUMBER  NOT NULL,
    `V_status`  CHAR(1) NOT NULL    COMMENT 'Y or N',
    `check_in`  DATE    NOT NULL,
    `check_out` DATE    NOT NULL,
    `personnel` NUMBER  NOT NULL    COMMENT 'Min. 1',
    `Rooms_Code`    NUMBER  NOT NULL,
    `User_code` NUMBER  NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

CREATE TABLE `Review` (
    `R_code`    NUMBER  NOT NULL,
    `R_content` NVARCHAR2(200)  NOT NULL,
    `R_update`  DATE    NOT NULL,
    `R_modfiy`  DATE    NOT NULL,
    `User_code` NUMBER  NOT NULL,
    `Rooms_Code`    NUMBER  NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

CREATE TABLE `Payment` (
    `P_code`    NUMBER  NOT NULL,
    `P_status`  CHAR(1) NOT NULL    COMMENT 'Y or N',
    `P_method`  VARCHAR2(50)    NOT NULL,
    `P_total`   NUMBER  NOT NULL    COMMENT '원',
    `V_code`    NUMBER  NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

CREATE TABLE `MSG` (
    `Message_code`  NUMBER  NOT NULL,
    `Message_title` VARCHAR2(20)    NOT NULL,
    `sendTime`  Date    NOT NULL,
    `readTime`  Date    NOT NULL,
    `msgtext`   VARCHAR2(300)   NULL,
    `send_id`   VARCHAR2(30)    NOT NULL,
    `receive_id`    VARCHAR2(30)    NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N',
    `Field` VARCHAR(255)    NULL
);

CREATE TABLE `SookSoIMG` (
    `image_number`  NUMBER  NOT NULL,
    `image_name`    VARCHAR2(50)    NOT NULL,
    `image_path`    VARCHAR2(50)    NOT NULL,
    `ssum`  CHAR(1) NOT NULL    COMMENT 'Y or N',
    `Rooms_Code`    NUMBER  NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

CREATE TABLE `Rooms` (
    `Rooms_Code`    NUMBER  NOT NULL,
    `Rooms_Addr`    VARCHAR2(100)   NOT NULL,
    `Rooms_Type`    VARCHAR2(20)    NOT NULL,
    `Rooms_Personnel`   NUMBER  NOT NULL    COMMENT 'Min. 1',
    `Rooms_Host`    VARCHAR2(300)   NOT NULL,
    `Rooms_Desc`    VARCHAR2(500)   NOT NULL,
    `Rooms_Price`   NUMBER  NOT NULL    COMMENT '원',
    `Rooms_RegDate` DATE    NOT NULL,
    `Rooms_RoomCnt` NUMBER  NOT NULL    COMMENT 'Min. 1',
    `Rooms_ToiletCnt`   NUMBER  NOT NULL    COMMENT 'Min. 0',
    `Rooms_DogAvail`    CHAR(1) NOT NULL    COMMENT 'Y or N',
    `User_code` NUMBER  NOT NULL,
    `Status`    CHAR(1) NOT NULL    COMMENT 'Y or N'
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
    `User_code`
);

ALTER TABLE `Reserv` ADD CONSTRAINT `PK_RESERV` PRIMARY KEY (
    `V_code`
);

ALTER TABLE `Review` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
    `R_code`
);

ALTER TABLE `Payment` ADD CONSTRAINT `PK_PAYMENT` PRIMARY KEY (
    `P_code`
);

ALTER TABLE `MSG` ADD CONSTRAINT `PK_MSG` PRIMARY KEY (
    `Message_code`
);

ALTER TABLE `SookSoIMG` ADD CONSTRAINT `PK_SOOKSOIMG` PRIMARY KEY (
    `image_number`
);

ALTER TABLE `Rooms` ADD CONSTRAINT `PK_ROOMS` PRIMARY KEY (
    `Rooms_Code`
);

