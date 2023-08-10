-- 如果存储过程已存在，则drop
drop procedure if exists SCInfo;

-- 声明构建存储过程 
DELIMITER //
create procedure SCInfo()
Begin
select student.sno,sname,sc.cno,cname,grade
from student,sc,course
where student.sno = sc.sno and sc.cno = course.cno
order by sc.cno;
end// 
 -- 调用存储过程
call SCInfo();
