type
 abit = record
  name: string;
  e1, e2, e3: integer;
  medal: boolean;
 end;

function read_abits(f: text; s: string): array of abit;
var
 i, l, p: integer;
 name: string;
 abits: array of abit;
 m: boolean;
begin
 assign(f, s);
 reset(f);
 l := 0;
 while not eof(f) do
 begin
  readln(f, name);
  readln(f, p);
  readln(f, p);
  readln(f, p);
  readln(f, m);
  l := l + 1;
 end;
 reset(f);
 setlength(abits, l);
 for i := 0 to l - 1 do
 begin
  readln(f, name);
  abits[i].name := name;
  readln(f, p);
  abits[i].e1 := p;
  readln(f, p);
  abits[i].e2 := p;
  readln(f, p);
  abits[i].e3 := p;
  readln(f, m);
  abits[i].medal := m;
 end;
 read_abits := abits;
end;

procedure write_students(abits: array of abit);
var
 i: integer;
begin
 for i := 0 to length(abits) - 1 do
 begin
  if ( ((abits[i].e1 >= 90) or (abits[i].e2 >= 90) or (abits[i].e3 >= 90) ) and (abits[i].medal)) or (abits[i].e1 + abits[i].e2 + abits[i].e3 >= 200) then
  begin
   writeln(abits[i].name);
   writeln(abits[i].e1, ', ', abits[i].e2, ', ', abits[i].e3);
   writeln(abits[i].medal);
   writeln;
  end;
 end;
end;

var
 f: text;
 abits: array of abit;
 answer: boolean;
 r: real;
 i: integer;

begin
 abits := read_abits(f, 'r4.txt');
 write_students(abits);
end.
