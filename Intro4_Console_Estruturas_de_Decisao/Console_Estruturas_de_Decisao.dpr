program Console_Estruturas_de_Decisao;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
a: integer;
b: integer;
c: integer;
d: integer;
e: integer;
begin
//ESTRUTURAS DE DECIS�O
a:=1;
b:=2;
c:=3;
d:=4;

  if (a=b) then     //Estrutura com IF
    begin
    WriteLn('Decis�o com  if, Var "a" � igual a "b"');
    end
  else
    begin
    WriteLn('Decis�o com  if, Var "a" � diferente a "b"');
    end;

  while (c<>0) do   //Loop com While
  begin
  WriteLn('Loop com While, a vari�vel c vale: ', c);
  c:=c-1;
  end;

//Loop com for, "e" � inicializado no loop
//utilizando "to" conta para cima, utilizando
//"downto" conta para baixo. Sai do loop quando
//"e" for maior que 5, logo, igual a 6
  for e := 0 to 5 do
  begin
    WriteLn('Loop com for, a vari�vel "e" vale: ', e);
  end;

  case d of         //Estrutura de decis�o com case.
                    //case d of, l�-se, caso a vari�vel d seja
     1:             //Aqui s�o os valores condicionais
     WriteLn('A vari�vel "d" � igual a 1');
     2:
     WriteLn('A vari�vel "d" � igual a 2');
     3:
     WriteLn('A vari�vel "d" � igual a 3');
     4:
     WriteLn('A vari�vel "d" � igual a 4');
  end;

ReadLn(a); //Aguarda para sair
end.
