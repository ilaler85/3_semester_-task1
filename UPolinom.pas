unit UPolinom;

interface
  uses
    SysUtils, Windows;
  type Tarr =array of Integer;
  procedure writee(var pol:TArr; n:integer);
  procedure summ (var pol1,pol2:Tarr; n1,n2:integer);
  procedure wichit (var pol1,pol2:Tarr; n1,n2:Integer);
  procedure umnoz (var pol:Tarr; k,n:integer);
  procedure umnoz2 (var pol1,pol2:Tarr; n1,n2:Integer);

implementation
  procedure writee(var pol:Tarr; n:integer);
  //печать полинома
  var i:Integer;
  begin
    write(pol[0]);
    for i:=1 to n-1 do
    begin
      if pol[i]<0 then
        write(pol[i],'*x^',i)
      else
        if pol[i]>0 then
          write('+',pol[i],'*x^',i);
    end;
    writeln;
  end;

  procedure summ(var pol1,pol2:Tarr; n1,n2:integer);
  //сумма полиномов
  var i:Integer;
  pol:Tarr;
  begin

    if n1>n2 then
    begin
      SetLength(pol,n1);
      for i:=0 to n2-1 do
      begin
        pol[i]:=pol1[i]+pol2[i];
      end;
      for i:=n2 to n1-1 do
        pol[i]:=pol1[i];
      writee(pol,n1);
    end
    else
    begin
      SetLength(pol,n2);
      for i:=0 to n1-1 do
      begin
        pol[i]:=pol1[i]+pol2[i];
      end;
      for i:=n1 to n2-1 do
        pol[i]:=pol2[i];
      writee(pol,n2);
    end;
  end;

  procedure wichit(var pol1,pol2:Tarr; n1,n2:Integer) ;
  //разность полиномов
  var pol:Tarr; i:Integer;
  begin
    if n1>n2 then
    begin
      SetLength(pol,n1);
      for i:=0 to n2-1 do
        pol[i]:=pol1[i]-pol2[i];
      for i:=n2 to n1-1 do
        pol[i]:=pol1[i];
      writee(pol,n1);
    end
    else
    begin
      SetLength(pol,n2);
      for i:=0 to n1-1 do
        pol[i]:=pol2[i]-pol1[i];
      for i:=n1 to n2-1 do
        pol[i]:=pol2[i];
      writee(pol,n2);
    end;
  end;

  procedure umnoz(var pol:Tarr; k,n:integer) ;
  //умножение полинома на число
  var i:Integer; poll:Tarr;
  begin
    SetLength(poll, n);
    for i:=0 to n-1 do
      poll[i]:=pol[i]*k;
    writee(poll,n);
  end;

  procedure umnoz2(var pol1,pol2:Tarr; n1,n2:Integer);
  //произведение двух полиномов
  var pol:Tarr; n,i,j:Integer;
  begin
    n:=n1+n2-1;
    SetLength(pol,n);
    for i:=0 to n1-1 do
      for j:=0 to n2-1 do
        pol[i+j]:=pol[i+j]+pol1[i]*pol2[j];
    writee(pol,n);
  end;
end.

