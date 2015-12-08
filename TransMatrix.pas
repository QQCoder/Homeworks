const
 n = 4;

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

procedure write_transp_matrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do
  begin
   write(' ', A[j,i], ' ');
  end;
  writeln;
 end;
end;

var
 A: matrix;

begin
 read_matrix(A);
 write_matrix(A);
 writeln;
 write_transp_matrix(A);
end.
