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

//Logo abaixo dessa cláusula é o bloco de desenvolvimento das funcions e
//procedures, antes dos eventos dos objetos gráficos (botões, listas, etc...)
      {
      PROCEDURE: Sub-rotina que processa informações e não retorna valor.
      FUNCTION: Sub-rotina que processa informações e retorna um valor.
      }
function soma (a:integer;b:integer): integer;
begin
//Para retornar o valor desejado podemos usar a palavra reservada Result.
//Result := Valor de Retorno;
//ou o nome da função.
//NomeFunção := Valor de Retorno;
soma:=a+b;       //Valor de retorno
end;

procedure imprime(a:boolean);
var
b:integer;     //Variável local
begin
    if (a=true) then
    begin
    b:=soma(3,5);     //Chama a função soma com os parâmetros de entrada
                      //e retorno na variável "b"
    form1.Label1.Text:=inttostr(b); //Mostra no form a variável "b"
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);  //Executa o click do botão
begin
imprime(true); //Chama a procedure com o parâmetro de entrada
end;

end.
