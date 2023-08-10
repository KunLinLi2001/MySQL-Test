-- 3.在学生选课表和学生表中，查询性别为女并且平均分大于80的学生基本信息。
select Student.*
from Student,Sc
where Student.Sno=Sc.Sno
group by Sc.Sno
having Ssex='女' and avg(Grade)>80