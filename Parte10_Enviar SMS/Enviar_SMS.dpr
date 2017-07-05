program Enviar_SMS;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  SMS in 'SMS.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
