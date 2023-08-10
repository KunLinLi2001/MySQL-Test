-- 如果存储过程已存在，则drop
drop procedure if exists fact;

-- 声明构建存储过程
DELIMITER //
create procedure fact(n int)
begin
	declare i int default 1;
	declare f int default 1;
	while i<=n do
		set f=f*i; -- set用于赋值，且set不可省略(两个减号加一个空格可开启注释)
		set i=i+1;
	end while; /*注意：end while后面要有分号*/
	select f; -- 输出结果
end//
 -- 调用存储过程
call fact(5);