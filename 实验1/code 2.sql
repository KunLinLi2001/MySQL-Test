-- 插入四名同学的学生信息
INSERT INTO Student(Sno,Sname,Ssex,Sdept,Sage)
VALUES ('201215121','李勇','男','CS',20);
INSERT INTO Student(Sno,Sname,Ssex,Sdept,Sage)
VALUES ('201215122','刘晨','女','CS',19);
INSERT INTO Student(Sno,Sname,Ssex,Sdept,Sage)
VALUES ('201215123','王敏','女','MA',18);
INSERT INTO Student(Sno,Sname,Ssex,Sdept,Sage)
VALUES ('201215125','张立','男','IS',19);
-- 插入课程信息
INSERT INTO Course(Cno,Cname,Ccredit)
VALUES ('6','数据处理',2);
INSERT INTO Course
VALUES ('4','操作系统','6',3);
INSERT INTO Course
VALUES ('7','PASCAL语言','6',4);
INSERT INTO Course
VALUES ('5','数据结构','7',4);
INSERT INTO Course
VALUES ('1','数据库','5',4);
INSERT INTO Course(Cno,Cname,Ccredit)
VALUES ('2','数学',2);
INSERT INTO Course
VALUES ('3','信息系统','1',4);
-- 插入成绩信息
INSERT INTO SC
VALUES ('201215121','1',92);
INSERT INTO SC
VALUES ('201215121','2',85);
INSERT INTO SC
VALUES ('201215121','3',88);
INSERT INTO SC
VALUES ('201215122','2',90);
INSERT INTO SC
VALUES ('201215122','3',80);
