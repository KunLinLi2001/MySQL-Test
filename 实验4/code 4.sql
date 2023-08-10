-- 4.统计平均分各分数段人数
-- 先创建一个新表，名为ScoreInfo
create table ScoreInfo
(
 分数段 char(30),
 人数 smallint
);
-- 向表中插入查询结果
insert into scoreinfo(分数段,人数)
select '60分以下',count(case  when grade<60 then 1 end)
from (select sno,avg(grade) from sc group by sno)as ScoreInfo(sno,grade);
insert into scoreinfo(分数段,人数)
select '60-80',count(case when grade >=60 and grade<80 then 1 end)
from (select sno,avg(grade) from sc group by sno)as ScoreInfo(sno,grade);
insert into scoreinfo(分数段,人数)
select '80-100', count(case when grade>= 80 and grade<=100 then 1 end)
from (select sno,avg(grade) from sc group by sno)as ScoreInfo(sno,grade);
-- 查询新表内容
select * from scoreinfo
