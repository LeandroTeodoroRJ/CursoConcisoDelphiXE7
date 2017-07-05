unit Scroll;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
// Edite essas propriedades para alterar os parâmetros de scroll
ScrollBox1. AniCalculations.TouchTracking := [ttVertical, ttHorizontal]; // [ttVertical]; //
ScrollBox1. AniCalculations.Animation := True; // False; //
ScrollBox1. AniCalculations.BoundsAnimation := False; // True; //
ScrollBox1. AniCalculations.DecelerationRate := 0.5; // DecelerationRateFast; // DecelerationRateNormal; //
ScrollBox1. AniCalculations.AutoShowing := True; // False; //
end;

end.
