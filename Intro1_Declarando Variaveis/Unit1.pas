//*****************************************************************************
//  DECLARANDO VARIÁVEIS COM O DELPHI
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
  A:integer;  //Esta é uma variável global, pode ser usada em toda Unit,
              // declarada após a cláusula "var" da seção de interface
{
AS VARIÁVEIS DO DELPHI PODEM SER:
boolean - 0 ou 1
byte - 0 a 255
string - 1 a 2GB
char - 8bits
cardinal - semelhante a byte mas com maior extensão
currency - usada para notação de moeda (financeiro)
WideChar - 16bits
real - 5.0e-324 a 1.7e308
extended - semelhante ao real mas com maior extensão
integer - para números inteiros
int64 - semelhante ao interger mas com maior extensão
OBS: No Delphi não há variável com nome float
}

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var         //A cláusula var deve ser inserida
B:integer;  //Esta é uma variável local
C:string;
begin
A:=5;       //Inicialização da variável ":=" operador de atribuição
B:=7;
C:=inttostr(A+B); //Passa de inteiro para string
Label1.Caption:=C;
end;

end.
