program Uts4;
uses crt;
type total = record
    nama : String;
    kaos : real;
    jumlah : real;
    diskon : real;
    total : real;
end;
var
    pembeli : array[1..100] of total;
    i, n : Integer;
begin 
    clrscr;
    write('Masukkan jumlah pembeli: '); readln(n);
    for i := 1 to n do
    begin
        writeln('');
        writeln('Pembeli Ke   : ',i:2); 
        write('Nama Pembeli : '); readln(pembeli[i].nama);
        write('Jumlah Kaos  : '); readln(pembeli[i].kaos);
    end;
    
    writeln('   ');
    writeln('Harga 1 kaos = 30000');
    writeln('-------------------------------------------------------');
    writeln(' no nama    jumlah kaos      jumlah    diskon     total');  
    writeln('-------------------------------------------------------');
    
    for i := 1 to n do
    begin
        with pembeli[i] do 
        begin
            jumlah:= kaos*30000;
            if jumlah >= 150000 then diskon:= 0.15*jumlah 
            else
            diskon:= 0;
            total := jumlah - diskon;
        end;
    end;

    for i := 1 to n do
    begin
        writeln(i:2, pembeli[i].nama:6, pembeli[i].kaos:10:0,
        pembeli[i].jumlah:15:0, pembeli[i].diskon:10:2,
        pembeli[i].total:12:2);
    end;

    writeln('-------------------------------------------------------');
    readln;
end.
