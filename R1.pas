type
 rational = record
  ch, zn: integer;
 end;

procedure read_p(var p: array of rational);
var
 i, n: integer;
begin
 write('Enter the number of summands: ');
 readln(n);
 setlength(p, n);
 for i := 0 to n - 1 do
 begin
  writeln('Entering the coefficient before x^', i);
  write('Numerator: ');
  readln(p[i].ch);
  write('Denominator: ');
  readln(p[i].zn);
 end;
end;

procedure write_p(p: array of rational);
var
 i: integer;
begin
 writeln('Polynomial:');
 write('(', p[0].ch, '/', p[0].zn, ')');
 for i := 1 to length(p) - 1 do
 begin
  write(' + (', p[i].ch, '/', p[i].zn, ')x^', i);
 end;
 writeln;
end;

function find_value(p: array of rational; a: rational): real;
var
 i: integer;
 x, b: real;
begin
 x := a.ch/a.zn;
 b := 0;
 for i := length(p) - 1 downto 0 do
 begin
  b := (p[i].ch)/(p[i].zn) + b*x;
 end;
 find_value := b;
end;

var
 p: array of rational;
 x: rational;
 b: real;

begin
 read_p(p);
 write_p(p);
 writeln('What is X?');
 write('Numerator: ');
 readln(x.ch);
 write('Denominator: ');
 readln(x.zn);
 b := find_value(p, x);
 writeln(b);
end.
