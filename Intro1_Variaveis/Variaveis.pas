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
                        *Esta � uma vari�vel global para esta Unit
                        Caso queira chamar essa vari�vel para ser usada em
                        outra Unit (Unit2), declarar na Unit2 em uses:
                        Vari�veis
                        *Bem, no delphi, uma vari�vel n�o pode ser global ao
                        projeto, mas o que voc� poderia fazer, seria colocar em
                        uma unit todas as vari�veis e constantes necess�rias e
                        ent�o adicion�-la a todos os formul�rios/units que
                        voc� deseje.
                        }
implementation

{$R *.fmx}
procedure Soma ();
var
Resultado: integer;   //Esta � uma vari�vel local
begin
Global_Variavel1:=1;
Global_Variavel2:=4;
Resultado:=Global_Variavel1+Global_Variavel2;
end;


end.

{
TIPOS DE VARI�VEIS EM DELPHI
BOOLEAN:  Tipo l�gico que pode assumir somente os valores TRUE ou FALSE e
          ocupa 1 byte de mem�ria.
BYTE:     Tipo num�rico inteiro, pode assumir valores numa faixa de  0 a 255,
          ocupa 1 byte.
CHAR:     Tipo alfa-num�rico, pode armazenar um caractere ASCII,  ocupa 1 byte.
COMP:     Tipo num�rico real, pode assumir valores na faixa de -9,2x10-18  a
          9,2x10+18, ocupa 8 bytes, pode ter entre 19 e 20 algarismos
          significativos.
EXTENDED: Tipo num�rico real, pode assumir valores na faixa de -3,4x10-4932  a
          +1,1x10+4932, ocupa 10 bytes de mem�ria e tem entre 19 e 20 algarismos
          significativos.
INTEGER:  Tipo num�rico inteiro, pode assumir valores numa faixa de  -32768 a
          +32767, ocupa 2 byte de mem�ria.
LONGINT:  Tipo num�rico inteiro, pode assumir valores numa faixa de  -2147483648
          a +2147483647, ocupa 4 bytes de mem�ria.
REAL:     Tipo num�rico real, pode assumir valores na faixa de -2,9x10-39  a
          +1,7x10+38, ocupa 6 bytes de mem�ria e tem entre 11 e 12 algarismos
          significativos.
SHORTINT: Tipo num�rico inteiro, pode assumir valores numa faixa de  -128 a
          +127, ocupa 1byte de mem�ria.
SINGLE:   Tipo num�rico real, pode assumir valores numa faixa de  -1,5x10-45  a
          +3,4x10+38, ocupa 4 bytes de mem�ria, e tem de 7 a 8 algarismos
          significativos.
WORD:     Tipo num�rico inteiro, pode assumir valores numa faixa de  0 a 65535,
          ocupa 2bytes de mem�ria.
STRING:   Tipo alfanum�rico, possuindo como conte�do uma cadeia de caracteres.
          O n�mero de bytes ocupados na mem�ria varia de 2 a 256, dependendo da
          quantidade m�xima de caracteres definidos para a string. O primeiro
          byte cont�m a quantidade real de caracteres da cadeia.
}