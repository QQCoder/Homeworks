procedure read_arr(var a: array of integer);
var
  i, n: integer;
begin
  setlength(a, 10000000);
  i := 0;
  while i < 10000000 do
  begin
    a[i] := 1;
    a[i+1] := 2;
    i := i + 2;
  end;
end;

function is_per(a: array of integer): array of integer;
var
 x, j, i, l: integer;
 arr: array of integer;
begin
 x := 0;
 j := 0;
 i := 1;
 l := length(a);
 while i < l do
 begin
  if a[j] = a[i] then
  begin
   j := j + 1;
   x := i - j;
  end
  else
  begin
   j := 0;
   x := 0;
  end;
  i := i + 1;
 end;
 if x = 0 then
 begin
  setlength(arr, 0);
 end
 else
 begin
  setlength(arr, x + 1);
  for i := 0 to x do arr[i] := a[i];
 end;
 result := arr;
end;

var
  a: array of integer;

begin
  read_arr(a);
  write(is_per(a));
end.
