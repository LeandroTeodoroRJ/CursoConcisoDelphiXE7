unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
begin
ListBox1.Visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ListBox1.Visible:=true;
end;

procedure TForm1.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
    case ListBox1.ItemIndex of
    0:
    showmessage('Evento do Item 1');
    1:
    showmessage('Evento do Item 2');
    2:
    showmessage('Evento do Item 3');
    3:
    showmessage('Evento do Item 4');
    4:
    showmessage('Evento do Item 5');
    5:
    showmessage('Evento do Item 6');
  end;
end;

end.
