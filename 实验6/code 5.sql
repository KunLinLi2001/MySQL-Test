-- 如果函数已存在，则drop
drop function if exists num_of_students;
-- 声明构建函数
create function num_of_students()
returns smallint
return
(select count(*) from student);

 -- 调用函数
select num_of_students()