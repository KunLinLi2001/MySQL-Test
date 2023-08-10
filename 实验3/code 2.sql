-- 2、在学生表和学生选课表中，查询学生的学号、姓名、成绩、课程编号信息。
select Student.Sno,Sname,Grade,Cno
from Student left outer join Sc on(Student.Sno=Sc.Sno) -- 左外连接
order by Student.Sno -- 注意参考结果里是升序排列