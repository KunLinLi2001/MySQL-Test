-- 如果函数已存在，则drop
drop function if exists student_avg_grade;
-- 声明构建函数
create function student_avg_grade(ssno char(9))
returns float
return
(select avg(grade) from student,sc
where student.sno = sc.sno and student.sno = ssno);

-- 函数调用
select student_avg_grade('201215122');
