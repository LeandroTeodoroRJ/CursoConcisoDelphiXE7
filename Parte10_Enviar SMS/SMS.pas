unit SMS;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Androidapi.Jni.Telephony, Androidapi.Jni.JavaTypes, Androidapi.Helpers,
  FMX.StdCtrls, FMX.Layouts, FMX.Memo, FMX.Edit;
 {Androidapi.Jni.Telephony, Androidapi.Jni.JavaTypes, Androidapi.Helpers,}
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  GerenciadorSMS : JSmsManager;
begin
  GerenciadorSMS := TJSmsManager.JavaClass.getDefault;
  if not Edit1.Text.IsEmpty then
    begin
      if not Memo1.Lines.Text.IsEmpty then
        GerenciadorSMS.sendTextMessage(StringToJString(Edit1.Text), nil, StringToJString(Memo1.Lines.Text), nil, nil )

      else
        ShowMessage('Escreva a mensagem.');
    end
  else
    ShowMessage('Informe o número de destino para a mensagem.');
end;

end.
