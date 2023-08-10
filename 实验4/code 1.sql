-- 1.在学生选课表中，统计学生平均分大于70的成绩记录。
-- 包括学生学号、总分、平均分、课程门数、课程最高分、最低分字段。
select Sno as 学号,
       sum(Grade) as 总分,
	   floor(avg(Grade)) as 平均分,
       count(Grade) as 课程门数,
       max(Grade) as 最高分,
       min(Grade) as 最低分
from Sc
group by Sno