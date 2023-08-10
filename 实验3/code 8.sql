-- 8、在学生选课表和课程表中，统计各门课程平均分、所修人数、课程最高分、课程最低分
-- 包括课程编号、课程名称、课程平均分、课程最高分、课程最低分、所修人数字段
-- 并按平均分高低排序。
select course.Cno,Cname,
       floor(avg(grade)) as Avg, -- 取整，不进位
       count(sc.Cno) as Count,
       max(grade) as max,
       min(grade) as min
from course left join sc on(sc.Cno=course.Cno) -- 外连接
group by course.Cno
order by avg(grade) desc; -- 按照平均分降序排列
