unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Platform, FMX.Notification;
//Adicionar no uses FMX.Platform, FMX.Notification

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    NotificationCenter1: TNotificationCenter;
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
MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name:='Notification in Delphi'; //O Nome é único para cada notificação
    MyNotification.AlertBody:='Notification'; // O que vai aparecer
    MyNotification.Number:=1;  //Número que aparece na direita da notificação
    MyNotification.EnableSound:=true;
    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.DisposeOf;
  end;
end;

end.
