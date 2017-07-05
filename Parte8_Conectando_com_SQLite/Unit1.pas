unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.Client, FMX.Layouts, FMX.Memo, System.IOUtils, FireDAC.DApt,
  FireDAC.FMXUI.Wait,FireDAC.Comp.UI;
//Incluir no Uses System.IOUtils, FireDAC.DApt , FireDAC.FMXUI.Wait, FireDAC.Comp.UI
type
  TForm1 = class(TForm)
    Button1: TButton;
    executeButton: TButton;
    outputMemo: TMemo;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure Button1Click(Sender: TObject);
    procedure executeButtonClick(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
outputMemo.Text := '';
  // Set the path of your database file.
  // Replace 'C:\Users\Public\Documents\...\Employees.s3db ' with the absolute path
  // to your SQLite database file.
  FDConnection1.DriverName := 'SQLITE';
  FDConnection1.Params.Values['Database'] :=
//    'C:\Users\Public\Documents\Embarcadero\Studio\17.0\Samples\Data\Employees.s3db';
   'C:\DADOS\Informatica\Info_projetos\Curso_Delphi_XE7\Parte8_Conectando_com_SQLite\Employees.s3db';
//  FDConnection1.Params.Values['Database'] := TPath.GetDocumentsPath+PathDelim+'Employees.s3db';
  try
    // Establish the connection.
    FDConnection1.Open;
    executeButton.Enabled := True;
    outputMemo.Lines.Add('Connection established!');
  except
    on E: EDatabaseError do
      outputMemo.Lines.Add('Exception raised with message' + E.Message);
  end;
end;

procedure TForm1.executeButtonClick(Sender: TObject);
var
  query: TFDQuery;
begin

  query := TFDQuery.Create(nil);

  try
    // Define the SQL Query
    query.Connection := FDConnection1;
    query.SQL.Text := 'SELECT * FROM Employee';
    query.Open();
    outputMemo.Text := '';
    // Add the field names from the table.
    outputMemo.Lines.Add(String.Format('|%8s|%25s|%25s|', [' ID ', ' NAME ',
      ' DEPARTMENT ']));
    // Add one line to the memo for each record in the table.
    while not query.Eof do
    begin
      outputMemo.Lines.Add(String.Format('|%8d|%-25s|%-25s|',
        [query.FieldByName('ID').AsInteger, query.FieldByName('Name').AsString,
        query.FieldByName('Department').AsString]));
      query.Next;
    end;

  finally
    query.Close;
    query.DisposeOf;
  end;

end;

procedure TForm1.FDConnection1AfterConnect(Sender: TObject);
{
Para que você avance um pouco mais, codifique o evento AfterConnect
programando-o para criar determinada tabela, caso ela ainda não exista na
base de dados. Você pode enviar um comando SQL diretamente através do
componente de conexão usando o método ExecSQL.
}
begin
//FDConnection1.ExecSQL ('CREATE TABLE IF NOT EXISTS Item (ShopItem TEXT NOT NULL)');
end;

procedure TForm1.FDConnection1BeforeConnect(Sender: TObject);
begin
{
Evento realizado antes de estabelecer conecção:
}
end;

end.
