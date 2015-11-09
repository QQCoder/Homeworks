const
 n = 3;

type
 // добавить пробел после 1..n,
 matrix = array[1..n,1..n] of integer;

// функции лучше называть read_matrix, переменные тоже с маленькой - паскаль игнорирует капитализацию
procedure readMatrix(var A: matrix);
var i, j: integer;
begin
// обернуть в нормальные бегин енд здесть и везде
 for i := 1 to n do
  for j := 1 to n do readln(A[i,j]);
end;

procedure writeMatrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do write(' ', A[i,j], ' ');
  writeln;
 end;
end;

procedure writeTranspMatrix(var A: matrix);
var i, j: integer;
begin
 for i := 1 to n do
 begin
  for j := 1 to n do write('|', A[j,i]);
  writeln;
 end;
end;

var
 A: matrix;

begin
 readMatrix(A);
 writeMatrix(A);
 writeln;
 writeTranspMatrix(A);
end.
