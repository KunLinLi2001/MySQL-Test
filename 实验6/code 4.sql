-- 如果存储过程已存在，则drop
drop procedure if exists SCNum;

-- 声明构建存储过程 
DELIMITER //
create procedure SCNum(in sbegin int,in send int, inout SCNT int)
Begin
select count(*) into SCNT from sc
where grade >= sbegin and grade < send;
end// 
 -- 调用存储过程
set @SCNT = 0;
call SCNum(80,90,@SCNT);
select @SCNT;
