//*****************************************************************************
//  LIÇÃO - DECLARAR UMA PROCEDURE NO DELPHI
//  ATZ: 19/04/15
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
  {
  A procedure local, que somente funciona para a Unit declarada, é inserida
  após a cláusula "private". Uma procedure não permite o retorno de um valor,
  somente a passagem de variáveis para dentro da procedure
  }
  procedure somar(A:integer; B:integer);
  {
  Para criar a procedure no código é só deixar o cursor sobre ela e
  precionar Shift+Ctrl+C
  }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
somar(5,8); //chamada da procedure
end;

procedure TForm1.somar(A, B: integer);
//Exemplo de chamada:
//somar(3,2);
begin
label1.Caption:=inttostr(A+B); //bloco da procedure
end;

end.

