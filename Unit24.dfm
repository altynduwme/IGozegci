object Form24: TForm24
  Left = 0
  Top = 0
  Align = alLeft
  BorderStyle = bsSingle
  Caption = #350'ertli belgileri'
  ClientHeight = 407
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 392
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel
    Left = 416
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object sid: TLabel
    Left = 396
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object sat: TLabel
    Left = 404
    Top = 280
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 383
    Top = 348
    Width = 34
    Height = 25
    Caption = '+'
    TabOrder = 0
    Visible = False
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 4
    Top = 5
    Width = 511
    Height = 49
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
  end
  object ValueListEditor1: TValueListEditor
    AlignWithMargins = True
    Left = 4
    Top = 60
    Width = 373
    Height = 344
    Margins.Left = 4
    Margins.Top = 60
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
    ParentFont = False
    TabOrder = 2
    TitleCaptions.Strings = (
      #350'ertli belgi'
      'D'#246'w'#252'r')
    ColWidths = (
      79
      288)
    RowHeights = (
      18
      18)
  end
  object BitBtn5: TBitBtn
    Left = 383
    Top = 60
    Width = 44
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 383
    Top = 87
    Width = 44
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn6Click
  end
  object BitBtn9: TBitBtn
    Left = 383
    Top = 113
    Width = 71
    Height = 25
    Caption = 'D'#252'zet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn9Click
  end
  object BitBtn7: TBitBtn
    Left = 383
    Top = 140
    Width = 85
    Height = 25
    Caption = 'Arassala'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn7Click
  end
end
