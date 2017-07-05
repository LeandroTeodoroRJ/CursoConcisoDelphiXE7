unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI, System.IOUtils;
//Incluir no Uses System.IOUtils

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.FDConnection1AfterConnect(Sender: TObject);
{
Para que voc� avance um pouco mais, codifique o evento AfterConnect
programando-o para criar determinada tabela, caso ela ainda n�o exista na
base de dados. Voc� pode enviar um comando SQL diretamente atrav�s do
componente de conex�o usando o m�todo ExecSQL.
}
begin
FDConnection1. ExecSQL ('CREATE TABLE IF NOT EXISTS Item (ShopItem TEXT NOT NULL)');
end;

procedure TDataModule2.FDConnection1BeforeConnect(Sender: TObject);
begin
{
Evento realizado antes de estabelecer conec��o:
O objeto de conex�o tem seu par�metro DataBase modificado para o nome da pasta
interna do dispositivo onde o aplicativo foi instalado, mais o nome do arquivo
do banco de dados com a extens�o �s3db�.
Incluir no Uses System.IOUtils
}
{$IF DEFINED( IOS) or DEFINED( ANDROID)}
FDConnection1.Params.Values['Database'] := TPath.GetDocumentsPath+PathDelim+'capitulo13. s3db';
{$ENDIF}
end;

end.
