-- ============================================================
-- PRACTICAL 6 : Advanced DDL/DML on Bank_Branch + JOB & EMPLOYEE
-- ============================================================

-- Q12. Change the size of Branch_state column
ALTER TABLE Bank_Branch MODIFY (Branch_State VARCHAR2(25));

-- Q13. Change branch_name = 'Union' where id = B003
UPDATE Bank_Branch SET Branch_name = 'Union' WHERE Branch_id = 'B003';
COMMIT;

-- Q14. Change state = 'Delhi' of BOI branch
UPDATE Bank_Branch SET Branch_State = 'Delhi' WHERE Branch_name = 'BOI';
COMMIT;

-- Q15. Change branch_open_date = 04-NOV-2015 of Union branch
UPDATE Bank_Branch SET Branch_Open_Date = '04-NOV-15' WHERE Branch_name = 'Union';
COMMIT;

-- Q16. Add column Pincode in branch
ALTER TABLE Bank_Branch ADD (Pincode NUMBER(6));

-- Q17. Insert pincode = 360006 of Dena Bank
UPDATE Bank_Branch SET Pincode = 360006 WHERE Branch_name = 'DenaBank';
COMMIT;

-- Q18. Delete branch with branch_open_date = 07-MAY-2011
DELETE FROM Bank_Branch WHERE Branch_Open_Date = '07-MAY-11';
COMMIT;

-- Q19. Rename Bank_Branch to Branch_master
RENAME Bank_Branch TO Branch_master;

-- Q20. Display structure of Branch_master
DESC Branch_master;

-- Q21. Create Branch_info from Branch_master
CREATE TABLE Branch_info AS SELECT * FROM Branch_master;

-- -------------------------
-- Create JOB Table
-- -------------------------
CREATE TABLE JOB (
    job_id   VARCHAR2(10) PRIMARY KEY,
    job_name VARCHAR2(25),
    min_sal  NUMBER(10,2),
    max_sal  NUMBER(10,2)
);

INSERT INTO JOB VALUES ('IT_PROG',  'Programmer',        4000, 10000);
INSERT INTO JOB VALUES ('MK_MGR',   'Marketing manager', 9000, 15000);
INSERT INTO JOB VALUES ('FI_MGR',   'Finance manager',   8200, 12000);
INSERT INTO JOB VALUES ('FI_ACC',   'Account',           4200, 9000);
INSERT INTO JOB VALUES ('LEC',      'Lecturer',          6000, 17000);
INSERT INTO JOB VALUES ('COMP_OP',  'Computer Operator', 1500, 3000);
COMMIT;

-- -------------------------
-- Create EMPLOYEE Table
-- -------------------------
CREATE TABLE EMPLOYEE (
    emp_no   NUMBER(5),
    emp_name VARCHAR2(20),
    emp_sal  NUMBER(10,2),
    emp_comm NUMBER(10,2),
    dept_no  NUMBER(5)
);

INSERT INTO EMPLOYEE VALUES (101, 'Smith',   800,  NULL, 20);
INSERT INTO EMPLOYEE VALUES (102, 'Snehal',  1600, 300,  25);
INSERT INTO EMPLOYEE VALUES (103, 'Adama',   1100, 0,    20);
INSERT INTO EMPLOYEE VALUES (104, 'Aman',    3000, NULL, 15);
INSERT INTO EMPLOYEE VALUES (105, 'Anita',   5000, 5000, 10);
INSERT INTO EMPLOYEE VALUES (106, 'Sneha',   2450, 2450, 10);
INSERT INTO EMPLOYEE VALUES (107, 'Anamika', 2975, NULL, 30);
COMMIT;

-- -------------------------
-- Create DEPOSIT (Practical 6 version)
-- -------------------------
CREATE TABLE DEPOSIT6 (
    A_no   NUMBER(5),
    cname  VARCHAR2(15),
    Bname  VARCHAR2(15),
    Amount NUMBER(10,2),
    ddate  DATE
);

INSERT INTO DEPOSIT6 VALUES (101, 'Anil',  'andheri',    7000, '01-JAN-06');
INSERT INTO DEPOSIT6 VALUES (102, 'sunil', 'virar',      5000, '15-JUL-06');
INSERT INTO DEPOSIT6 VALUES (103, 'jay',   'villeparle', 6500, '12-MAR-06');
INSERT INTO DEPOSIT6 VALUES (104, 'vijay', 'andheri',    8000, '17-SEP-06');
INSERT INTO DEPOSIT6 VALUES (105, 'keyur', 'dadar',      7500, '19-NOV-06');
INSERT INTO DEPOSIT6 VALUES (106, 'mayur', 'borivali',   5500, '21-DEC-06');
COMMIT;
 

