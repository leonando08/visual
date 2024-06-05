object DataModule5: TDataModule5
  OldCreateOrder = False
  Left = 282
  Top = 146
  Height = 484
  Width = 620
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'#13#10
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\User\Documents\Tugas Kuliah\VISUAL 2\tugas delphi\libmy' +
      'sql.dll'
    Left = 40
    Top = 64
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 128
    Top = 64
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 192
    Top = 64
  end
  object Zuser: TZQuery
    Params = <>
    Left = 256
    Top = 64
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 320
    Top = 64
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 376
    Top = 64
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 128
    Top = 128
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 192
    Top = 128
  end
  object dsuser: TDataSource
    Left = 256
    Top = 128
  end
  object dssupplier: TDataSource
    Left = 320
    Top = 136
  end
  object dsbarang: TDataSource
    Left = 384
    Top = 136
  end
end
