procedure write_diff(a1, a2: array of integer);
var
 i, j, l1, l2: integer;
 a3: array of integer;
 ok: boolean;
begin
 for i := 0 to length(a1) - 1 do
 begin
  ok := true;
  for j := 0 to length(a2) - 1 do
  begin
   if a1[i] = a2[j] then
   begin
    ok := false;
    break;
   end;
  end;
  if ok then write(a1[i], ' ');
 end;
end;

procedure read_oredered_array(var a: array of integer);
var
 i, l: integer;
begin
 write('Length: ');
 readln(l);
 setlength(a, l);
 readln(a[0]);
 i := 1;
 while i <= l - 1 do
 begin
  readln(a[i]);
  if a[i] <= a[i - 1] then
  begin
   i := i - 1;
   writeln('Enter a value bigger than ', a[i], ' !');
  end;
  i := i + 1;
 end;
end;

var
 a1, a2: array of integer;

begin
 read_oredered_array(a1);
 writeln(a1);
 read_oredered_array(a2);
 writeln(a2);
 write_diff(a1, a2);
end.
