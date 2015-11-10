const
 n = 3;

type
 matrix = array[1..n, 1..n] of integer;

procedure read_matrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do
  begin
   readln(A[i,j]);
  end;
 end;
end;

procedure write_matrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do
  begin
   write(' ', A[i,j], ' ');
  end;
  writeln;
 end;
end;

procedure write_min_in_lines(var A: matrix);
var i, j, min: integer;
begin
 for i := 1 to n do
 begin
  min := A[i,1];
  for j := 2 to n do
  begin
   if A[i,j] < min then min := A[i,j];
  end;
  writeln('min in line ', i, ': ', min);
 end
end;

var
 A: matrix;

begin
 read_matrix(A);
 write_matrix(A);
 writeln;
 write_min_in_lines(A);
end.
