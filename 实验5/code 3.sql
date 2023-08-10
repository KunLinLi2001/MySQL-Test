-- 如果视图已存在，则drop
DROP VIEW IF EXISTS  V_GetCourseScore;
-- 创建视图
create view V_GetCourseScore(Cname,SumScore,AvgScore,MaxScore,MinScore,CountCourse)
as
select Course.Cname,sum(Grade),floor(avg(Grade)),max(Grade),min(Grade),count(Grade)
from Course
inner join Sc on Course.Cno=Sc.Cno
group by Sc.Cno;
-- 查询视图
select * from V_GetCourseScore
where CountCourse>30 and CountCourse<50