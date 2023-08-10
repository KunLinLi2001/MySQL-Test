-- 6、查询平均分最高的10个学生成绩信息，包括学生平均分、课程门数、最高分、最低分字段。
select round(avg(grade)) as Avg, -- 记得取整
       count(*) as Count,
       max(grade) as Max,
       min(grade) as MIn
from sc 
group by sc.Sno -- 同学号为同一组
order by grade desc limit 10 -- 降序排列取前10
