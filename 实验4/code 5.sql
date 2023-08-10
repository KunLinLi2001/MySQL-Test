-- 5.在学生选课表、学生表中，查询学生成绩重修（成绩<60）门数大于10门的学生基本信息
-- （查询结果包括学号、姓名、性别字段）。
select Sno,Sname,Ssex
from Student
where Sno in 
(   -- 子查询结果为重修门数大于10的学号 
	select Sno from Sc
    where Grade<60
    group by Sno
    having count(*)>10 -- 小于60分的门数
)
-- 外嵌套的查询为该学生学号是否在子查询的集合中

