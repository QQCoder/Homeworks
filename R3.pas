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

function on_circle(dots: array of dot; r: real): boolean;
var
 i: integer;
 y: real;
 res: boolean;
begin
 res := true;
 for i := 0 to length(dots) - 1 do
 begin
  if not (dots[i].y*dots[i].y + dots[i].x*dots[i].x = r*r) then
  begin
   res := false;
   break;
  end;
 end;
 on_circle := res;
end;

var
 f: text;
 dots: array of dot;
 answer: boolean;
 r: real;
 i: integer;

begin
 dots := read_dots(f, 'r3.txt');
 writeln('Dots known');
 write('Radius of circle: ');
 readln(r);
 for i := 0 to length(dots) - 1 do
 begin
  writeln(i + 1, ' dot');
  writeln('x: ', dots[i].x);
  writeln('y: ', dots[i].y);
 end;
 answer := on_circle(dots, r);
 writeln(answer);
end.
