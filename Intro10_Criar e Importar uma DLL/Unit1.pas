//*****************************************************************************
//  CRIAR E IMPORTAR UMA DLL
//  ESTE É O PROGRAMA QUE IMPORTARÁ A SUB-ROTINA DO ARQUIVO DLL
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

  //1)Declarar aqui as functions/procedures da dll conforme segue o modelo abaixo
  //2)O Arquivo dll deve estar na mesma pasta do projeto
  //3)Ao final da declaração da function/procedure inserir a cláusula external
  //seguida do nome_do_arquivo.dll
  function somar(A,B:integer):integer; external 'DriveDLL.dll';

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
label1.Caption:=inttostr(somar(3,6));  //Chamada da função
end;

end.
