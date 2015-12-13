procedure write_diff(a1, a2: array of integer);
var
 i, j: integer;
begin
 j := 0;
 i := 0;
 while i < length(a1) do
 begin
  if j < length(a2) then
  begin
   if a1[i] <> a2[j] then
   begin
    if a1[i] < a2[j] then
    begin
     write(a1[i], ' ');
     j := j - 1;
    end
    else
    begin
     i := i - 1;
    end;
   end;
   i := i + 1;
   j := j + 1;
  end
  else
  begin
   write(a1[i], ' ');
   i := i + 1;
  end;
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
