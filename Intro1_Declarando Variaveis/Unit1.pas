//*****************************************************************************
//  DECLARANDO VARI�VEIS COM O DELPHI
//*****************************************************************************

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A:integer;  //Esta � uma vari�vel global, pode ser usada em toda Unit,
              // declarada ap�s a cl�usula "var" da se��o de interface
{
AS VARI�VEIS DO DELPHI PODEM SER:
boolean - 0 ou 1
byte - 0 a 255
string - 1 a 2GB
char - 8bits
cardinal - semelhante a byte mas com maior extens�o
currency - usada para nota��o de moeda (financeiro)
WideChar - 16bits
real - 5.0e-324 a 1.7e308
extended - semelhante ao real mas com maior extens�o
integer - para n�meros inteiros
int64 - semelhante ao interger mas com maior extens�o
OBS: No Delphi n�o h� vari�vel com nome float
}

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var         //A cl�usula var deve ser inserida
B:integer;  //Esta � uma vari�vel local
C:string;
begin
A:=5;       //Inicializa��o da vari�vel ":=" operador de atribui��o
B:=7;
C:=inttostr(A+B); //Passa de inteiro para string
Label1.Caption:=C;
end;

end.
