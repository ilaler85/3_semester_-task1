program Polinom;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows,
  UPolinom in 'UPolinom.pas';
const digits: set of Char= ['0'..'9'];
var n1,n2,i,k:Integer;
  Pol1,pol2: Tarr;

function vvod:Integer;
//проверка ввода числа
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
      writeln('Ошибка! Данные введены некоректно. Попробуйте еще раз');
  until ok;
  Result:=StrToInt(chislo)
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  write('полином какой степени Вы хотите ввести ');
  n1:=vvod;
  SetLength(Pol1, n1);
  writeln('Введите коэффициенты полинома');
  for i:=0 to n1-2 do
  begin
    Pol1[i]:=vvod;
  end;
  repeat
    pol1[n1-1]:=vvod;
    if Pol1[n1-1]=0 then
    begin
      Writeln('коэффициент не должен быть равен 0! Введите коэффициент еще раз');
    end;
  until Pol1[n1-1]<>0;
  write('полином какой степени Вы хотите ввести ');
  n2:=vvod;
  SetLength(Pol2, n2);
  writeln('Введите коэффициенты полинома');
  for i:=0 to n2-2 do
  begin
    pol2[i]:=vvod;
  end;
  repeat
    pol2[n2-1]:=vvod;
    if Pol2[n2-1]=0 then
    begin
      Writeln('коэффициент не должен быть равен 0! Введите коэффициент еще раз');
    end;
  until Pol2[n2-1]<>0;
  writeln('Полиномы выглядят так ');
  writee(pol1,n1);
  writee(pol2,n2);   
  Writeln;
  writeln('Сумма полиномов ' );
  summ(pol1,pol2,N1,N2);
  writeln('Разность полиномов ');
  wichit(pol1,pol2,N1,N2);
  write('Введите число на которое умножить полином ');
  k:=vvod;
  Writeln;
  Writeln('Произведение полиномa на число ');
  umnoz(pol1,k,n1);
  Writeln('Произведение полиномов ');
  umnoz2(pol1,pol2,n1,n2);
  Readln;
end.
