var
 arr: array of boolean;
 i, j, p, a, n: integer;

begin
 readln(n);
 setlength(arr, n + 1);
 for i:=2 to n do arr[i]:=true;

 i:=2;
 while i*i <= n do
 begin
  if arr[i] then
  begin
   j:=i*i;
   while j <= n do
   begin
    arr[j]:=false;
    j:=j+i;
   end;
  end;
  i:=i+1;
 end;

 for i:=2 to n do if arr[i] = true then write(i, ' ');
end.
