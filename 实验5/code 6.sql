select Sno,Sname,Ssex,Sage,Sdept,AvgScore
from v_studavgscore
join Student on StudNo=Sno
where AvgScore >80