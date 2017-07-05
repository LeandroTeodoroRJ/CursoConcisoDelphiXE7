object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 196
  Width = 281
  object FDConnection1: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\DADOS\Informatica\Info_projetos\Curso_Delphi_XE7\Par' +
        'te8_Conectando_com_SQLite\capitulo13.s3db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 48
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 176
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 48
    Top = 104
  end
end
