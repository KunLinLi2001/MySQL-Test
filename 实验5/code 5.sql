select StudNo,Sname,Sdept,AvgScore,CountCourse
from v_studavgscore
join Student on StudNo=Sno
where AvgScore between 80 and 85 OR AvgScore between 60 and 70