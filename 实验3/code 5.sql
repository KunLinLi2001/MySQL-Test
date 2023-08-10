-- 在学生选课表中，统计学号为201215121的学生的成绩总分、成绩平均分、所修课程门数。
select sum(Grade) as Sum,
       round(avg(Grade)) as avg, -- 取整
       count(Cno) as count
from Sc
where Sno='201215121'
       