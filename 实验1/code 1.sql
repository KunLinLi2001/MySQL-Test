-- 创建学生表
CREATE TABLE Student
(
    Sno CHAR(9) PRIMARY KEY,
    Sname CHAR(20) UNIQUE,
    Ssex CHAR(2),
    Sage SMALLINT,
    Sdept CHAR(20)
);
-- 创建课程表
CREATE TABLE Course
(
    Cno CHAR(4) PRIMARY KEY,
    Cname CHAR(40) NOT NULL,
    Cpno CHAR(4),/*先修课*/
    Ccredit SMALLINT,
    FOREIGN KEY(Cpno)REFERENCES Course(Cno)
);
-- 创建学生选课表
CREATE TABLE SC
(
	Sno CHAR(9),
    Cno CHAR(4),
    Grade SMALLINT,
    PRIMARY KEY (Sno,Cno),
    FOREIGN KEY(Sno)REFERENCES Student(Sno),
    FOREIGN KEY(Cno)REFERENCES Course(Cno)
)

-- INSERT INTO Student
-- VALUES ('201215121','李勇','男',20,'cs')