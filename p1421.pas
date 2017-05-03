var
  a,b:longint;      
begin
  readln(a,b);              //读入a是整数部分，b是小数部分
  a:=a*10+b;              //将钱乘10
  writeln(a div 19);     //因为签字笔1.9元一支，乘10之后为19元。又因为a元只能买整数只签字笔，所以要用div。
end.