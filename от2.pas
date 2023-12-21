program Project1;
var
  a,b: string; 
  i,j: integer;
  flag: boolean;
  k: integer;
begin
  writeln('Введите основную строку: ');
  Readln(a);
  writeln('Введите подстроку: ');
  Readln(b);
  k:= 0;
  for i:= 1 to length(a) do
    begin
      flag:= false;
      for j:= 1 to length(b) do
        if a[i-1+j] <> b[j] then
          begin
            flag:= true;
            break;
          end;
      if not flag then
        inc(k);
    end;
  if k <> 0 then
    writeln('Количество вхождений подстроки в строку: ',k)
  else
    writeln('В основной строке не была найдена подстрока');
  Readln;
end.