program Single_linked_list;
uses crt;

var
  queue: array[1..100] of string;
  firstQueue, lastQueue: integer;

procedure addQueue(pembeli: string);
begin
  lastQueue := lastQueue + 1;
  queue[lastQueue] := pembeli;
end;

procedure exitQueue;
begin
  firstQueue := firstQueue + 1;
  queue[firstQueue] := 'getOut';
end;

procedure showQueue;
var index: integer;
begin
  writeln('| Ticket  |__');
  writeln('|          __');
  for index := 1 to lastQueue do
  begin
    if queue[index] <> 'getOut' then
       writeln('| ',queue[index]:7,' |');
  end;
end;

begin
  clrscr;
  firstQueue := 0;
  lastQueue := 0;
  addQueue('Naga');
  addQueue('Alya');
  addQueue('Alby');
  addQueue('Shaina');
  exitQueue;
  showQueue;
readln;
end.
