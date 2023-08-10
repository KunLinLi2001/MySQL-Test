-- 如果存储过程已存在，则drop
drop procedure if exists studentgrade;

-- 声明构建存储过程 
DELIMITER //
create procedure studentgrade(in sgrade smallint)
Begin
select student.Sno,Sname,AVG(GRADE),COUNT(*)
from student,sc
where student.sno = sc.sno
group by student.Sno
having avg(grade) > sgrade;
end// 
 -- 调用存储过程
call studentgrade(85);
