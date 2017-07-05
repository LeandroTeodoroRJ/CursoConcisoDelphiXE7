unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Classe;
//Inserir no uses a Unit referente a classe

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Nome: string;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
EUA: Pais;  //Instancia EUA como uma classe Pais
begin
  Nome:= 'Primeiro Mundo';
  EUA:= Pais.Create;    //Inicializa as variáveis da Classe
  EUA.Descricao:= Nome;  //Insere um Valor na Classe
  Label1.Text:=EUA.Descricao; //Retira um Valor da Classe
  EUA.Free;             //Libera a memória

end;

end.
