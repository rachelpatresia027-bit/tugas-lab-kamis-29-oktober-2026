program UrutNilaiUAS;
uses crt;

var
    nilaiUAS: array[1..10] of real;
    n, i, j: integer;
    temp: real;

begin
    clrscr;
    
    { Input jumlah mahasiswa }
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    
    { Validasi agar jumlah mahasiswa berada di rentang 1 - 10 }
    if (n < 1) or (n > 10) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 sampai 10!');
        readln;
        exit;
    end;
    
    { Input nilai UAS mahasiswa }
    writeln;
    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilaiUAS[i]);
    end;
    
    { Proses Pengurutan (Metode Bubble Sort) dari terendah ke tertinggi }
    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
            if nilaiUAS[j] > nilaiUAS[j + 1] then
            begin
                { Proses menukar posisi nilai }
                temp := nilaiUAS[j];
                nilaiUAS[j] := nilaiUAS[j + 1];
                nilaiUAS[j + 1] := temp;
            end;
        end;
    end;
    
    { Menampilkan hasil yang sudah diurutkan }
    writeln;
    writeln('');
    writeln('Hasil Pengurutan Nilai UAS (Terendah ke Tertinggi):');
    writeln('');
    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i, ': ', nilaiUAS[i]:5:1);
    end;
    writeln('');
    
    readln;
end.