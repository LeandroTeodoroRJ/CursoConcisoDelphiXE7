unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids;

type
TAuxGrid = class(TStringGrid);

  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.RowCount:=3;  //Define o n�mero de linhas
StringGrid1.ColCount:=3;  //Define o n�mero de colunas

StringGrid1.Cells[1,1]:='C�lula 1';   //Carrega uma string em uma c�lula
StringGrid1.ColWidths[1]:=80;         //Largura da primeira coluna
StringGrid1.RowHeights[1]:= 15;       //Largura da segunda linha

StringGrid1.FixedCols:=0;   //Define quantas colunas s�o fixas(T�tulos)
StringGrid1.FixedRows:=1;

{Declara��o necess�ria
type
TAuxGrid = class(TStringGrid);
}
TAuxGrid(StringGrid1).DeleteRow(2);     //Deleta a segunda linha do StringGrid1
TAuxGrid(StringGrid1).DeleteColumn(2);  //Deleta a segunda coluna do StringGrid1

end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
Showmessage(format('Voc� est� na linha: %d, e na coluna: %d', [Acol, ARow]));
//N�o funciona para c�lulas fixas
end;

end.
