-- 2.在学生选课表和学生表中，统计学生平均分在60~70和90~100的学生成绩记录，
-- 包括学生学号、学生姓名、总分、平均分、最高分、最低分、所修课程门数字段。
select Sc.Sno as 学号,
       Sname as 姓名,
       sum(Grade) as 总分,
       avg(Grade) as 平均分,
       max(Grade) as 最高分,
       min(Grade) as 最低分,
       count(Grade) as 所修课程门数
from Student,Sc
where Student.Sno=Sc.Sno
group by Sc.Sno
having avg(Grade) between 60 and 70 AND avg(Grade) between 90 and 100