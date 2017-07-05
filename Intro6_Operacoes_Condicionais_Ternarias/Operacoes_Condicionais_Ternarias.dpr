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
OPERAÇÕES CONDICIONAIS TERNÁRIAS

if condição then
  var := x
else
  var := y;

**OU**

var := ifthen(condição, x,y);

}
a:= 4;
b := ifthen(a<10, 7,9); //Var. b recebe 7 se a<10
WriteLn(inttostr(b));

ReadLn;
end.
