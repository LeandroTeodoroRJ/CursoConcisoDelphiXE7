program Intro1_Variaveis;

uses
  FMX.Forms,
  Variaveis in 'Variaveis.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
