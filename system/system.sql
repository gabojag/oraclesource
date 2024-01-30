scott 권한 부여
alter session set "_oracle_script"=true;


-- test 생성
-- 공통 사용자 또는 롤 이름이 부적합합니다.
-- 21c XE 요구사항
CREATE USER c##test IDENTIFIED BY test;

-- CREATE SESSOIN 숸한을 가지고있지 않음; 로그온이 거절
-- 권한 부여
-- SESSION, CREATE(USER, TABLE, SEQUENCE, VIEW.....)
-- 권한 그룹 => 롤
-- CONNECT, RESOURCE
-- CONNECT(SESSION, CREATE TABLE, CREATE VIEW...)
-- RESOURCE(SEQUENCE, 프로시저, 테이블.....)

-- GRANT 권한이름,..... TO 아이디
-- GRANT 롤이름,..... TO 아이디
GRANT CONNECT, resource TO c##test;


CREATE USER c##test2 IDENTIFIED BY test
DEFAULT TABLESPACE users
TEMPORARY  TABLESPACE  TEMP
QUOTA 10M ON USERS;

GRANT CONNECT, resource TO c##test2;

--REVOKE 취소할 권한이름,..... FROM 아이디



-- 비밀번호 변경
--ALTER USER c##test2 IDENTIFIED BY test;





