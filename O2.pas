procedure search_max_sort(var a: array of integer);
var
  i, j, b, max, l, ind: integer;
  y: boolean;
begin
 l := length(a) - 1;
 for i := l downto 1 do
 begin
  max := a[i];
  for j := i - 2 downto 0 do
  begin
   if (max < a[j]) then
   begin
    max := a[j];
    ind := j;
    y := true;
   end;
  end;
  if y then
  begin
   b := a[ind];
   a[ind] := a[i];
   a[i] := b;
  end;
  y := false;
 end;
end;

procedure read_array(var a: array of integer);
var
 i, l: integer;
begin
 write('Length: ');
 readln(l);
 setlength(a, l);
 for i := 0 to l - 1 do
 begin
  readln(a[i]);
 end;
end;

var
 a: array of integer;

begin
 read_array(a);
 writeln(a);
 search_max_sort(a);
 writeln(a);
end.
