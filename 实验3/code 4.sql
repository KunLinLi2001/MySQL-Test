-- 在学生选课表和学生表中，查询性别为女的所有学生成绩记录。
select Sc.*,Student.*
from Sc,Student
where Sc.Sno=Student.Sno and Student.Ssex='女'; -- 内连接

select Sc.*,Student.*
from Sc
left outer join Student on(Student.Sno=Sc.Sno) -- 外连接
where Student.Ssex='女';