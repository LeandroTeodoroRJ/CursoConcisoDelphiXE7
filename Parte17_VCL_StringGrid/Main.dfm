object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Estudo do TStringGrid'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 56
    Top = 32
    Width = 320
    Height = 120
    TabOrder = 0
    OnSelectCell = StringGrid1SelectCell
  end
end
