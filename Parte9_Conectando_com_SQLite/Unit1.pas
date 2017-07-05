unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView, FMX.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, System.IOUtils;
{
Incluir no uses
FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, System.IOUtils;
}
type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ListView1: TListView;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FDConnection1AfterConnect(Sender: TObject);
{
Para que você avance um pouco mais, codifique o evento AfterConnect
programando-o para criar determinada tabela, caso ela ainda não exista na
base de dados. Você pode enviar um comando SQL diretamente através do
componente de conexão usando o método ExecSQL.
}
begin
FDConnection1. ExecSQL ('CREATE TABLE IF NOT EXISTS Item (ShopItem TEXT NOT NULL)')
end;

procedure TForm1.FDConnection1BeforeConnect(Sender: TObject);
begin
{
Evento realizado antes de estabelecer conecção:
O objeto de conexão tem seu parâmetro DataBase modificado para o nome da pasta
interna do dispositivo onde o aplicativo foi instalado, mais o nome do arquivo
do banco de dados com a extensão “s3db”.
Incluir no Uses System.IOUtils
}
{$IF DEFINED( IOS) or DEFINED( ANDROID)}
FDConnection1.Params.Values['Database'] := TPath.GetDocumentsPath+PathDelim+'capitulo13.s3db';
{$ENDIF}
end;

end.
