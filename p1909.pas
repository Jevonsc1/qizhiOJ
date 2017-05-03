{//模拟
    P老师需要去商店买n支铅笔作为小朋友们参加NOIP的礼物。她发现商店一共有 3种包装的铅笔，不同包装内的铅笔数量有可能不同，价格也有可能不同。为了公平起 见，P老师决定只买同一种包装的铅笔。

商店不允许将铅笔的包装拆开，因此P老师可能需要购买超过n支铅笔才够给小朋 友们发礼物。

现在P老师想知道，在商店每种包装的数量都足够的情况下，要买够至少n支铅笔*最少*需要花费多少钱。

输入输出格式

输入格式：
输入的第一行包含一个正整数n，表示需要的铅笔数量。

接下来三行，每行用两个正整数描述一种包装的铅笔：其中第一个整数表示这种 包装内铅笔的数量，第二个整数表示这种包装的价格。

保证所有的7个数都是不超过10000的正整数。

输出格式：
输出一行一个整数，表示P老师最少需要花费的钱。

输入样例#1：
57
2 2
50 30
30 27

输出样例#1：
54
}

var n,i,a,b,s,min:longint;
begin
   readln(n);
   min:=maxlongint; //min最大化
   for i:=1 to 3 do
   begin
      readln(a,b);//做好读一个扔一个的准备
      if n mod a<>0 then s:=n div a+1 else s:=n div a;//能整除不加，不能整除+1
      if s*b<min then min:=s*b;//找出最小方案
   end;
   writeln(min);
end.