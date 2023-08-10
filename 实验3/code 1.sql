-- 1、在学生选课表中，试用SUM、AVG、COUNT函数统计所有学生的总分、平均分、课程门数。
select sum(Grade) as sum, -- 查询值重命名用as
       round(avg(Grade)) as avg, -- 保留整数用round(属性) 
       count(*) as count 
from Sc;