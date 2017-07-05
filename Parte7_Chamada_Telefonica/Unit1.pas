unit Unit1;
//Permiss�es no Manifesto: Call Phone, Read Phone State

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.PhoneDialer,
  FMX.Platform, FMX.StdCtrls, FMX.Edit;
//Incluir no uses: FMX.PhoneDialer, FMX.Platform
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtTelephoneNumber: TEdit;
    Button2: TButton;
//    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  var
  PhoneDialerService: IFMXPhoneDialerService; //Vari�vel necess�ria no private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{
procedure TForm1.Button1Click(Sender: TObject);
begin
//Essa parte est� dando erro nos itens que recebem os valores da classe
  if TPlatformServices.Current.SupportsPlatformService( IFMXPhoneDialerService,
  IInterface( PhoneDialerService)) then
  begin
  CarrierNameItem.ItemData.Detail := PhoneDialerService.GetCarrier.GetCarrierName;
  CountryCodeItem.ItemData.Detail := PhoneDialerService.GetCarrier.GetIsoCountryCode;
  NetworkCodeItem.ItemData.Detail := PhoneDialerService.GetCarrier.GetMobileCountryCode;
  MobileNetworkItem.ItemData.Detail := PhoneDialerService.GetCarrier.GetMobileNetwork;
  end
  else
    showmessage('Servi�o de Chamadas n�o suportado.');
end;
}

procedure TForm1.Button2Click(Sender: TObject);
begin
if TPlatformServices.Current.SupportsPlatformService( IFMXPhoneDialerService, IInterface( PhoneDialerService)) then
	begin
		if edtTelephoneNumber.Text <> '' then
		PhoneDialerService.Call( edtTelephoneNumber.Text)
		else
		begin
		ShowMessage('Insira um n�mero.');
		edtTelephoneNumber.SetFocus;
		end;
	end
	else
	ShowMessage('Servi�o n�o suportado');
end;

end.
