program Layouts_Scroll;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  Scroll in 'Scroll.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
