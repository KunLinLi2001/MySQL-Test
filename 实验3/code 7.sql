-- 7、在学生选课表和学生表中
-- 统计各学生所有课程平均分、总分、最高分、最低分、所修课程门数，
-- 包括学生学号、学生姓名、平均分、总分、最高分、最低分、所修课程门数字段
-- 并按平均分高低排序。
select student.Sno,
       Sname,
       round(avg(grade)) as Avg,
       sum(grade) as sum,
       max(grade) as Max,
       min(grade) as Min,
       count(*) as Count
from student,sc 
where student.Sno = sc.Sno -- 内连接
group by student.Sno
order by Avg(grade) desc; -- 按平均分降序排列
