object Form3: TForm3
  Left = 397
  Top = 250
  Width = 1044
  Height = 540
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 216
    Top = 80
    Width = 43
    Height = 19
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 216
    Top = 376
    Width = 131
    Height = 19
    Caption = 'MASUKKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 288
    Top = 72
    Width = 425
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 288
    Top = 120
    Width = 121
    Height = 33
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 456
    Top = 120
    Width = 105
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 616
    Top = 120
    Width = 97
    Height = 33
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object edt2: TEdit
    Left = 368
    Top = 376
    Width = 233
    Height = 21
    TabOrder = 4
  end
  object btn4: TButton
    Left = 616
    Top = 376
    Width = 113
    Height = 33
    Caption = 'CARI'
    TabOrder = 5
  end
  object dbgrd1: TDBGrid
    Left = 280
    Top = 168
    Width = 433
    Height = 177
    DataSource = DataModule5.dskategori
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
