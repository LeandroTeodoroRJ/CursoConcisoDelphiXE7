unit Variaveis;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  Global_Variavel2 : Integer;
  Global_Variavel1 : Integer;   {
                        *Esta é uma variável global para esta Unit
                        Caso queira chamar essa variável para ser usada em
                        outra Unit (Unit2), declarar na Unit2 em uses:
                        Variáveis
                        *Bem, no delphi, uma variável não pode ser global ao
                        projeto, mas o que você poderia fazer, seria colocar em
                        uma unit todas as variáveis e constantes necessárias e
                        então adicioná-la a todos os formulários/units que
                        você deseje.
                        }
implementation

{$R *.fmx}
procedure Soma ();
var
Resultado: integer;   //Esta é uma variável local
begin
Global_Variavel1:=1;
Global_Variavel2:=4;
Resultado:=Global_Variavel1+Global_Variavel2;
end;


end.

{
TIPOS DE VARIÁVEIS EM DELPHI
BOOLEAN:  Tipo lógico que pode assumir somente os valores TRUE ou FALSE e
          ocupa 1 byte de memória.
BYTE:     Tipo numérico inteiro, pode assumir valores numa faixa de  0 a 255,
          ocupa 1 byte.
CHAR:     Tipo alfa-numérico, pode armazenar um caractere ASCII,  ocupa 1 byte.
COMP:     Tipo numérico real, pode assumir valores na faixa de -9,2x10-18  a
          9,2x10+18, ocupa 8 bytes, pode ter entre 19 e 20 algarismos
          significativos.
EXTENDED: Tipo numérico real, pode assumir valores na faixa de -3,4x10-4932  a
          +1,1x10+4932, ocupa 10 bytes de memória e tem entre 19 e 20 algarismos
          significativos.
INTEGER:  Tipo numérico inteiro, pode assumir valores numa faixa de  -32768 a
          +32767, ocupa 2 byte de memória.
LONGINT:  Tipo numérico inteiro, pode assumir valores numa faixa de  -2147483648
          a +2147483647, ocupa 4 bytes de memória.
REAL:     Tipo numérico real, pode assumir valores na faixa de -2,9x10-39  a
          +1,7x10+38, ocupa 6 bytes de memória e tem entre 11 e 12 algarismos
          significativos.
SHORTINT: Tipo numérico inteiro, pode assumir valores numa faixa de  -128 a
          +127, ocupa 1byte de memória.
SINGLE:   Tipo numérico real, pode assumir valores numa faixa de  -1,5x10-45  a
          +3,4x10+38, ocupa 4 bytes de memória, e tem de 7 a 8 algarismos
          significativos.
WORD:     Tipo numérico inteiro, pode assumir valores numa faixa de  0 a 65535,
          ocupa 2bytes de memória.
STRING:   Tipo alfanumérico, possuindo como conteúdo uma cadeia de caracteres.
          O número de bytes ocupados na memória varia de 2 a 256, dependendo da
          quantidade máxima de caracteres definidos para a string. O primeiro
          byte contém a quantidade real de caracteres da cadeia.
}