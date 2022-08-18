object Form211: TForm211
  Left = 0
  Top = 0
  Align = alLeft
  BorderStyle = bsSingle
  Caption = 'Ba'#253'ram'#231'ylyk g'#252'nleri sazlamalary'
  ClientHeight = 505
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 790
    Height = 452
    Margins.Top = 50
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Ady'
        Width = 327
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Wagty'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Bellik'
        Width = 314
        Visible = True
      end>
  end
  object BitBtn5: TBitBtn
    Left = 3
    Top = 9
    Width = 44
    Height = 34
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 49
    Top = 9
    Width = 44
    Height = 34
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn6Click
  end
  object BitBtn9: TBitBtn
    Left = 95
    Top = 9
    Width = 71
    Height = 34
    Caption = 'D'#252'zet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn9Click
  end
  object BitBtn7: TBitBtn
    Left = 169
    Top = 9
    Width = 166
    Height = 34
    Caption = 'Hemmesini arassala'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn7Click
  end
  object BitBtn1: TBitBtn
    Left = 338
    Top = 9
    Width = 299
    Height = 34
    Caption = 'K'#246'ne '#253'yllardaky ba'#253'ram'#231'ylyklary arassala'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 200
    Top = 384
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    Left = 288
    Top = 320
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'MB'
    Left = 360
    Top = 376
  end
end
