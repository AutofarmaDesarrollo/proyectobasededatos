object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 325
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 619
    Height = 196
    DataSource = DS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 16
    object CDScod_alfabeta: TStringField
      FieldName = 'cod_alfabeta'
      Size = 30
    end
    object CDSpepito: TStringField
      FieldName = 'pepito'
      Size = 50
    end
    object CDSdamian: TStringField
      FieldName = 'damian'
      Size = 50
    end
  end
  object BASE: TIBDatabase
    Params.Strings = (
      'lc_ctype=ISO8859_1')
    ServerType = 'IBServer'
    Left = 312
    Top = 16
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 248
    Top = 16
  end
  object QUERY: TIBQuery
    Database = BASE
    Transaction = transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 184
    Top = 16
  end
  object transaccion: TIBTransaction
    DefaultDatabase = BASE
    Left = 128
    Top = 16
  end
end
