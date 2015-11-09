function F(a, x: real): real;
begin
	if a < 0 then
	begin
		F := ln(1 + a*a + x*x) - 1;
	end
	else
	begin
		F := ln(1 + 2*a + x*x) + 1;
	end;
end;

function Fi(y: array of array of real; i: integer; n: integer): real;
var
res: real;
jj: integer;
begin
	res := 1;
	for jj := 0 to n - 1 do
	begin
		res := res * y[i, jj];
	end;
	Fi := res;
end;

function Psi(y: array of array of real; i: integer; n: integer): real;
var res: real;
jj: integer;
begin
	res := 0;
	for jj := 0 to n - 1 do
	begin
		res := res + abs(y[i, jj]);
	end;
	Psi := res;
end;

var 
n, i, j: integer;
a, x, h, b: real;
y: array of array of real;

begin
	writeln('h, b and n via space:');
	readln(h, b, n);
	setlength(y, 3);
	for i := 0 to 2 do
	begin
		setlength(y[i], n);
	end;

	for i := 0 to 2 do
	begin
		writeln('a', i + 1, ':');
		readln(a);
		for j := 0 to n - 1 do
		begin
			x := b + (j+1)*h;
			y[i, j] := F(a, x);
		end;
	end;
	for i := 0 to 2 do
	begin
		writeln('for a', i + 1, ':');
		writeln('fi = ', Fi(y, i, n));
		writeln('psi = ', Psi(y, i, n));
	end;
end.
