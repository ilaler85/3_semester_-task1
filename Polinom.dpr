program Polinom;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows,
  UPolinom in 'UPolinom.pas';
const digits: set of Char= ['0'..'9'];
var n1,n2,i,k:Integer;
  Pol1,pol2: Tarr;

function vvod:Integer;
//�������� ����� �����
var i:Integer; ok:Boolean; chislo:string;
begin
  repeat
    readln(chislo);
    i:=1;
    Ok:=True;
    while ok and (i<=Length(chislo)) do
    begin
      ok:=chislo[i] in digits;
      inc(i);
    end;
    if not ok then
      writeln('������! ������ ������� ����������. ���������� ��� ���');
  until ok;
  Result:=StrToInt(chislo)
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  write('������� ����� ������� �� ������ ������ ');
  n1:=vvod;
  SetLength(Pol1, n1);
  writeln('������� ������������ ��������');
  for i:=0 to n1-2 do
  begin
    Pol1[i]:=vvod;
  end;
  repeat
    pol1[n1-1]:=vvod;
    if Pol1[n1-1]=0 then
    begin
      Writeln('����������� �� ������ ���� ����� 0! ������� ����������� ��� ���');
    end;
  until Pol1[n1-1]<>0;
  write('������� ����� ������� �� ������ ������ ');
  n2:=vvod;
  SetLength(Pol2, n2);
  writeln('������� ������������ ��������');
  for i:=0 to n2-2 do
  begin
    pol2[i]:=vvod;
  end;
  repeat
    pol2[n2-1]:=vvod;
    if Pol2[n2-1]=0 then
    begin
      Writeln('����������� �� ������ ���� ����� 0! ������� ����������� ��� ���');
    end;
  until Pol2[n2-1]<>0;
  writeln('�������� �������� ��� ');
  writee(pol1,n1);
  writee(pol2,n2);   
  Writeln;
  writeln('����� ��������� ' );
  summ(pol1,pol2,N1,N2);
  writeln('�������� ��������� ');
  wichit(pol1,pol2,N1,N2);
  write('������� ����� �� ������� �������� ������� ');
  k:=vvod;
  Writeln;
  Writeln('������������ �������a �� ����� ');
  umnoz(pol1,k,n1);
  Writeln('������������ ��������� ');
  umnoz2(pol1,pol2,n1,n2);
  Readln;
end.
