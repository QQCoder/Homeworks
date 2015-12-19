function integration(a1, a2: array of integer): array of integer;
var
 a3, h: array of integer;
 k, i, j, l: integer;
begin
 setlength(h, length(a1) + length(a2));
 i := 0;
 j := 0;
 k := 0;
 l := 0;
 while (i < length(a1)) and (j < length(a2)) do
 begin
  if a1[i] < a2[j] then
  begin
   h[k] := a1[i];
   i := i + 1;
   k := k + 1;
   l := l + 1;
  end
  else if a1[i] > a2[j] then
  begin
   h[k] := a2[j];
   j := j + 1;
   k := k + 1;
   l := l + 1;
  end
  else
  begin
   h[k] := a1[i];
   i := i + 1;
   j := j + 1;
   k := k + 1;
   l := l + 1;
  end;
 end;
 for i := i to length(a1) - 1 do
 begin
  h[k] := a1[i];
  k := k + 1;
  l := l + 1;
 end;
 for j := j to length(a2) - 1 do
 begin
  h[k] := a2[j];
  k := k + 1;
  l := l + 1;
 end;
 setlength(a3, l);
 for i := 0 to l - 1 do
 begin
  a3[i] := h[i];
 end;
 integration := a3;
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
 a1, a2, a3: array of integer;

begin
 read_oredered_array(a1);
 writeln(a1);
 read_oredered_array(a2);
 writeln(a2);
 a3 := integration(a1, a2);
 write(a3);
end.
