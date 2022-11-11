program program_update;
uses wincrt;
type
point   =^recpoint;
recpoint =record
     isi  :string;
       next,pre  :point;
end;
var
head,tail,now :point;

procedure create;
begin
head:=nil;tail:=nil;
end;

{function empty:boolean;
begin
if head=nil then
       empty:=true
else
       empty:=false;
end;}

procedure find_first;
begin
  now:=head;
  write(now^.isi);
end;

procedure find_next;
begin
if now^.next;<>nil then
now:= now^.next;
write(now^.isi);
end;

procedure update(u:string);
begin
       now^.isi:=u;
      write(now^.isi);
end;

procedure insert(elemen:string);
var now : point;
begin
 new(now);
 now^.isi:=elemen;
 if head=nil then
       now^.next:=nil
else
    now^.next:=head;
head:=now;
end;

begin
clrscr;
insert('tv');
insert('vcd');
insert('compo');
writeln;
write('data pertama :');
find_first;writeln;
write('data berikutnya :');
find_next;writeln;
write('upload data now :');
update('xxx');writeln;
write('data pertama :');
find_first;writeln;
write('data berikutnya :');
find_next;writeln;
end.
