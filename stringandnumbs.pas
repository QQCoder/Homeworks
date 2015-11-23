function is_digit(chr: char): boolean;
begin
 result := ('0' <= chr) and (chr <= '9');
end;

function to_digit(chr: char): integer;
begin
 if is_digit(chr) then
 begin
  result := integer(chr) - integer('0');
 end
 else
 begin
  result := -1;
 end;
end;

function arr_to_num(a: array of char): integer;
var
 i, multiplier, res: integer;
begin
 res := 0;
 multiplier := 1;
 for i := length(a) - 1 downto 0  do
 begin
  if is_digit(a[i]) then
  begin
   res := res + to_digit(a[i])*multiplier;
   multiplier := multiplier * 10;
  end;
 end;
 result := res;
end;

procedure read_array(var a: array of char);
var
 i: integer;
begin
 for i := 0 to length(a) - 1 do
 begin
  write('element ', i + 1, ': ');
  readln(a[i]);
 end;
end;

var
 a: array of char;
 n: integer;

begin
 write('Set length of array: ');
 readln(n);
 setlength(a, n);
 read_array(a);
 writeln(arr_to_num(a));
end.
