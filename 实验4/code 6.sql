-- 6.统计每门课程成绩均在80分以上的各学生平均分。
select Sno as sno,
	   floor(avg(Grade)) as 平均分
from Sc
group by Sno
having min(Grade)>=80