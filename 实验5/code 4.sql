-- 如果视图已存在，则drop
drop view if exists V_StudAvgScore;
-- 创建视图
create view V_StudAvgScore(StudNo,StudName,AvgScore,SumScore,MaxScore,MinScore,CountCourse)
as
select Student.Sno,Sname,floor(avg(Grade)),sum(Grade),max(Grade),min(Grade),count(Grade)
from Student
inner join Sc on Student.Sno=Sc.Sno
group by Sc.Sno