-- 3、三表查询学生的学号、姓名、课程编号、课程名称和课程成绩信息。
select Student.Sno,Sname,Course.Cno,Cname,Grade
from Student 
left outer join Sc on(Student.Sno=Sc.Sno) -- 外连接
left outer join Course on(Sc.Cno=Course.Cno) -- 外连接
order by Student.Sno -- 注意参考结果里是升序排列