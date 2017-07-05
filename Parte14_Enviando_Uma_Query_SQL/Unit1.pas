unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.FMXUI.Wait,
  System.Rtti, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Layouts, FMX.Grid, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Edit;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
var
busca: string;
begin
busca:= 'M';
FDQuery1.SQL.Text:= 'select * from cadastro where Sexo = :code';
FDQuery1.ParamByName('code').AsString:= busca;
FDQuery1.Open; //Retorna só os sexos masculinos na busca
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FDConnection1.ExecSQL('insert into cadastro values (:ID, :Sexo, :Nome)', [Edit1.Text, Edit2.Text, Edit3.Text]); //Inseri os valores no Banco de Dados
FDQuery1.SQL.Text:= 'select * from cadastro';
FDQuery1.Open; //Atualiza do TGrid
end;

procedure TForm1.Button3Click(Sender: TObject);
var
busca: string;
busca2: string;
begin
busca:= 'M';
busca2:= 'João';
FDQuery1.SQL.Text:= 'select * from cadastro where Sexo = :code AND Nome = :code2';
FDQuery1.ParamByName('code').AsString:= busca;
FDQuery1.ParamByName('code2').AsString:= busca2;
FDQuery1.Open; //Retorna só os sexos masculinos na busca

end;

end.
