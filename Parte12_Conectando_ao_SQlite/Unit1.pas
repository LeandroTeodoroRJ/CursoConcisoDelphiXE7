unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FMX.ListView.Types,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListView,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.FMXUI.Wait,
  FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    TesteConnection: TFDConnection;
    ListView1: TListView;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FDQuery1.Active:=false;
TesteConnection.Connected:=false;
Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
TesteConnection.Connected:=true;
FDQuery1.Active:=true;
end;

end.

{
Um campo do banco de dados também pode ser carregado de forma manual, exemplo:
Edit1.Text:= FDQuery1.FieldByName['CPF'].Text;

}
