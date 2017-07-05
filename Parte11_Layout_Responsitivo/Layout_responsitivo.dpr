program Layout_responsitivo;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  Layout in 'Layout.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
