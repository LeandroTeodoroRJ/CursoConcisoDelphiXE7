program Operacoes_Condicionais_Ternarias;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Math;

// Inserir a blibioteca Math ou StrUtils

var
a: integer;
b: integer;
begin
{
OPERA��ES CONDICIONAIS TERN�RIAS

if condi��o then
  var := x
else
  var := y;

**OU**

var := ifthen(condi��o, x,y);

}
a:= 4;
b := ifthen(a<10, 7,9); //Var. b recebe 7 se a<10
WriteLn(inttostr(b));

ReadLn;
end.
