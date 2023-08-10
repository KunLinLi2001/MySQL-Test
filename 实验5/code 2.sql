-- 2、	统计各课程平均分、总分、最高分、最低分、参考人数，
-- 查询结果包括课程名称（CourseName）、课程总分（SumScore）、课程平均分（AvgScore）、
-- 课程最高分（MaxScore）、课程最低分（MinScore）、参考人数（CourseCount）字段
-- （使用INNER JOIN实现）。
select Course.Cname as Cname,
	   sum(Grade) as SumScore,
       floor(avg(Grade)) as AvgScore,
       max(Grade) as MaxScore,
       min(Grade) as MinScore,
       count(Grade) as CountCourse
from Course
inner join Sc on Course.Cno=Sc.Cno
group by Sc.Cno
