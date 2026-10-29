program Array3x3;
uses crt;

var
  angka: array[1..3, 1..3] of integer;
  i, j: integer;

begin
  clrscr;

  writeln('Matriks 3x3');
  writeln;

  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      write('Masukkan angka indeks [', i, ',', j, ']: ');
      readln(angka[i,j]);
    end;
  end;

  writeln;
  writeln('Matriks 3x3:');

  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      write(angka[i,j]:5);
    end;
    writeln;
  end;

  readln;
end.