type
 dot = record
  x, y: real;
 end;

function read_dots(f: text; s: string): array of dot;
var
 i, l: integer;
 d: real;
 dots: array of dot;
begin
 assign(f, s);
 reset(f);
 l := 0;
 while not eof(f) do
 begin
  read(f, d);
  read(f, d);
  l := l + 1;
 end;
 reset(f);
 setlength(dots, l);
 for i := 0 to l - 1 do
 begin
  read(f, d);
  dots[i].x := d;
  read(f, d);
  dots[i].y := d;
 end;
 read_dots := dots;
end;

procedure read_line(var a, b: real);
begin
 writeln('Entering the A and B for y = Ax + B');
 write('A: ');
 readln(a);
 write('B: ');
 readln(b);
end;

function on_line(dots: array of dot; a, b: real): boolean;
var
 i: integer;
 y: real;
 res: boolean;
begin
 res := true;
 for i := 0 to length(dots) - 1 do
 begin
  if not (dots[i].y = dots[i].x*a + b) then
  begin
   res := false;
   break;
  end;
 end;
 on_line := res;
end;

var
 f: text;
 dots: array of dot;
 answer: boolean;
 a, b: real;
 i: integer;

begin
 dots := read_dots(f, 'r2.txt');
 writeln('Dots known');
 read_line(a, b);
 writeln('Line:');
 writeln('y = ', a, 'x + ', b);
 for i := 0 to length(dots) - 1 do
 begin
  writeln(i + 1, ' dot');
  writeln('x: ', dots[i].x);
  writeln('y: ', dots[i].y);
 end;
 answer := on_line(dots, a, b);
 writeln(answer);
end.
