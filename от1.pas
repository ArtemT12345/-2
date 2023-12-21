program zad1;
const nmax=100;
var a:array[1..nmax] of integer;
    n,i,j,k,p:byte;
begin
repeat
write('чисел в массиве');
readln(n);
until n in [1..nmax];
writeln('Массив:');
for i:=1 to n do
 begin
  a[i]:=random(10);
  write(a[i]:3);
 end;
writeln;
i:=1;
while i<=n do
 begin
  write('Элемент ',a[i]:4);
  j:=i+1;
  k:=1;
  while j<=n do
   begin
    if a[j]=a[i] then
     begin
      k:=k+1;
      for p:=j to n-1 do
      a[p]:=a[p+1];
      n:=n-1;
     end
    else j:=j+1;
   end;
  writeln(k:3,' рз.');
  i:=i+1;
 end;
readln
end.