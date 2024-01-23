-- scott

-- SELECT(데이터 조회)
-- e : 별칭(임의 지정 가능) / 없어도 됨
-- * : 전체 필드(컬럼)를 의미함
SELECT * FROM EMP;
-- 특정 컬럼에 해당하는 내용 보기
SELECT empno, ename, job FROM EMP;

-- emp 테이블
-- empno(사원번호), ename(사원명), job(직책), mgr(매니저번호), hiredate(고용일), sal(급여), comm(보너스)
-- deptno(부서번호)

-- emp 테이블에서 사원번호, 매니저번호, 부서번호만 조회
SELECT EMPNO, MGR, DEPTNO fRom EMP;
-- emp 테이블에서 부서번호만(중복 데이터 제거) 조회
SELECT DISTINCT  deptno
FROM emp e ;

-- 데이터 출력 시 필드명 별칭 부여
-- 쌍따옴표는 별칭에 공백이 있는 경우 무조건 사용
-- as 생략 가능 
SELECT EMPNO AS 사원번호,
MGR 매니저번호, 
DEPTNO "부서 번호"
fRom 
    EMP;

-- 연봉 계산
-- 월급 * 12 + 수당
-- sal * 12 + comm
SELECT empno, SAL, sal * 12 + COMM AS "연봉"
FROM EMP e;

-- 정렬
-- order by 정렬기준컬럼명 desc or asc
-- desc(내림차순), asc(오름차순- default)
SELECT 
     * 
FROM 
     EMP
ORDER BY sal DESC;     

-- emp 테이블에서 empno, sal 조회 (단, empno 내림차순)

SELECT empno, ename, sal
FROM
   EMP 
ORDER BY empno DESC;

SELECT empno, ename, sal
FROM
   EMP 
ORDER BY sal;

-- 전체조회, 부서번호 오름차순, sal 내림차순

SELECT  *
FROM emp e
ORDER BY deptno, sal DESC;

-- 조건 
-- 부서번호 30번인 사원 조회
-- sal > 1000 이상인 사원 조회
-- = (같다), 산술연산자(<,>,>=
SELECT *
FROM emp e
WHERE deptno = 30;

SELECT *
FROM emp e
WHERE sal >=1000

SELECT *
FROM emp e
WHERE sal >= 1000
ORDER BY sal DESC;

-- empno 가 7782 인 사원 조회

SELECT  *
FROM  emp e
WHERE empno=7782;

-- deptno 가 30 이고, job 이 salesman 사우너 조회
-- 데이터는 대소문자 구별 함
SELECT  *
FROM  emp e
WHERE deptno = 30 AND job = 'SALESMAN';

-- 사원번호가 7499 이고 부서번호가 30인 사원 조회

SELECT  *
FROM  emp e
WHERE empno = 7499 AND  deptno = 30;

-- 이거나(혹은) : OR
-- 부서번호가 30 이거나 JOB SALESMAN 사원 조회

SELECT  *
FROM  emp e
WHERE JOB= 'SALESMAN' OR deptno = 30;

-- 연봉이 36000 인 사원 조회
-- 연봉 SAL*12+COMM

SELECT  *
FROM EMP e
WHERE  SAL*12+COMM = 36000;

-- 문자 비교도 가능 - 산술연산 기호 가능
-- 알파벳 순서로 F 다음에 있는
SELECT  *
FROM EMP e
WHERE  ENAME >= 'F';

-- SAL 이 3000 이 아니 사원 조회
-- ~ 이 아닌 : !=, <>, ^=

SELECT  *
FROM EMP e
WHERE  SAL != 3000;

SELECT  *
FROM EMP e
WHERE  SAL ^= 3000;

SELECT  *
FROM EMP e
WHERE SAL <> 3000;

-- job 이 MANAGER OR SALESMAN OR CLERK

SELECT  *
FROM EMP e
WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN' OR JOB ='CLERK';

-- IN
SELECT  *
FROM EMP e
WHERE JOB IN ('MANAGER', 'SALESMAN', 'CLERK');


SELECT  *
FROM EMP e
WHERE JOB NOT IN ('MANAGER', 'SALESMAN', 'CLERK');

-- HIREDATE 가 1981 10 31 이후에 고용된 사원 조회
-- 날짜 데이터 산술 연산 가능, 날짜 데이터 '' 로 처리
SELECT *
FROM EMP e
WHERE HIREDATE > '1981-10-31';

-- BETWEEN A AND B
-- SAL 2000 이상 3000이하인 사원 조회
SELECT *
FROM EMP e
WHERE SAL >=2000 AND SAL <=3000;

SELECT *
FROM EMP e
WHERE SAL BETWEEN 2000 AND 3000;

-- NOT BETWEEN A AND B
-- SAL 2000 이상 3000이하가 아닌 사원 조회

SELECT *
FROM EMP e
WHERE SAL NOT BETWEEN  2000 AND 3000;