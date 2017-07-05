//*****************************************************************************
//  LI��O - DECLARAR UMA FUNCTION NO DELPHI
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
  A function local, que somente funciona para a Unit declarada, � inserida
  ap�s a cl�usula "private". Uma function permite o retorno de um valor pela
  fun��o, o tipo da vari�vel retornada � declarada ao final da funcion.
  }
  function somar(A:integer; B:integer):integer;
  {
  Para criar a funcion no c�digo, abaixo da cl�usula implementation
  � s� deixar o cursor sobre ela e precionar Shift+Ctrl+C.
  }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
label1.Caption:=inttostr(somar(4,6)); //chamada da function
end;

function TForm1.somar(A, B: integer): integer;
var
sum:integer; //vari�vel tempor�ria
begin
sum:=A+B;    //bloco da funcion
somar:=sum;  //retorno do valor, o nome da functon recebe a vari�vel de sa�da
end;

end.
