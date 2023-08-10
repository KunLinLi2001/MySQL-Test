-- 内连接
select student.Sno,Sname,Ssex,Grade
from Student,Sc
where Student.Sno=Sc.Sno;
-- 左连接
select student.Sno,Sname,Ssex,Grade
from Student left outer join Sc on(Student.Sno=Sc.Sno);
-- 右连接
select student.Sno,Sname,Ssex,Grade
from Student right outer join Sc on(Student.Sno=Sc.Sno);
-- 全连接
-- UNION ALL 和排除联接
-- 这样可以保留同一个表中重复的行，并且保证两个子查询不会产生重复记录。
-- 由于不需要排序和删除重复项，因此对于大型结果集，这可能会大大提高效率。
select Student.Sno,Sname,Ssex,Grade from Student left JOIN Sc on Student.Sno=Sc.Sno
union all
select Student.Sno,Sname,Ssex,Grade from Student right JOIN Sc on Student.Sno=Sc.Sno
WHERE Sc.Sno is NULL
