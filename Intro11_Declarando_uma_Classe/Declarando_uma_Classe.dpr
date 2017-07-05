program Declarando_uma_Classe;

uses
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  Classe in 'Classe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
