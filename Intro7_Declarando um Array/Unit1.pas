//*****************************************************************************
//  DECLARANDO UM ARRAY(VETOR OU MATRIZ)
//*****************************************************************************
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  {
  Para um array global declara-se após a cláusula "var" da seção interface.
  Segue o modelo de declaração geral:

  ARRAY 1x1
  nome_do_array: array[a..b] of tipo_da_variável;
  onde:
  a=valor inicial
  b=valor final

  }
  buffer_escreve: array[1..10] of char; //reserva 10 posições de mémória para
                                        //o array do tipo char

{
  ARRAY n x n MULTIDIMENSIONAL
  Nome_da_matriz: array[a1..n1,a2..n2,...,an..nn] of tipo_da_variável;
  }
  buffer_escreve2: array[1..10,1..10] of char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
buffer_escreve[5]:='F';     //inicialização de um array unidimensional
buffer_escreve2[3,7]:='K'
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;

end.
