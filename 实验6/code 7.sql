-- 如果表已存在，则drop
drop table if exists SC_U;
-- 如果触发器已存在，则drop
drop trigger if exists ins_rec;

-- 表恢复成初始值防止二次运行结果出问题
update sc set grade = 92 where sno = '201215121' and cno = '1';
update sc set grade = 85 where sno = '201215121' and cno = '2';
update sc set grade = 88 where sno = '201215122' and cno = '3';

-- 创建SC_U表
create table SC_U
(
	Sno CHAR(9),
	Cno CHAR(4),
	primary key(Sno,Cno),
    foreign key(Sno) references Student(Sno),
    foreign key(Cno) references Course(Cno),
    Oldgrade smallint,
    Newgrade smallint
);

-- 创建触发器
DELIMITER //
CREATE TRIGGER ins_rec
BEFORE UPDATE
ON sc
FOR EACH ROW
IF (new.grade > old.grade*1.1) THEN
	insert into SC_U
	values(old.sno, old.cno, old.grade, new.grade);
END IF //
update sc set grade = 98 where sno = '201215121' and cno = '1';
select * from sc_u;
update sc set grade = 95 where sno = '201215121' and cno = '2';
select * from sc_u;
update sc set grade = 99 where sno = '201215122' and cno = '3';
select * from sc_u;
