unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls;

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

implementation

{$R *.fmx}

//Logo abaixo dessa cl�usula � o bloco de desenvolvimento das funcions e
//procedures, antes dos eventos dos objetos gr�ficos (bot�es, listas, etc...)
      {
      PROCEDURE: Sub-rotina que processa informa��es e n�o retorna valor.
      FUNCTION: Sub-rotina que processa informa��es e retorna um valor.
      }
function soma (a:integer;b:integer): integer;
begin
//Para retornar o valor desejado podemos usar a palavra reservada Result.
//Result := Valor de Retorno;
//ou o nome da fun��o.
//NomeFun��o := Valor de Retorno;
soma:=a+b;       //Valor de retorno
end;

procedure imprime(a:boolean);
var
b:integer;     //Vari�vel local
begin
    if (a=true) then
    begin
    b:=soma(3,5);     //Chama a fun��o soma com os par�metros de entrada
                      //e retorno na vari�vel "b"
    form1.Label1.Text:=inttostr(b); //Mostra no form a vari�vel "b"
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);  //Executa o click do bot�o
begin
imprime(true); //Chama a procedure com o par�metro de entrada
end;

end.
