-- 先创建一个新表，名为ChineseInfo
create table ChineseInfo
(
	学号 char(9) primary key, /*我定义学号为主码*/
    姓名 char(20) unique, /*每组的姓名均唯一*/
    性别 char(2)
);
-- 在该表中插入子查询结果
insert into ChineseInfo(学号,姓名,性别)
select Sno,Sname,Ssex from Student;
