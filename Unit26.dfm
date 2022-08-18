object Form26: TForm26
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'D'#252'zedi'#351' girizmek'
  ClientHeight = 149
  ClientWidth = 214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 107
    Height = 19
    Caption = 'Degi'#351'li wagt:'
  end
  object dt1: TDateTimePicker
    Left = 8
    Top = 34
    Width = 153
    Height = 27
    Date = 42955.494437928240000000
    Time = 42955.494437928240000000
    Kind = dtkTime
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 28
    Top = 69
    Width = 153
    Height = 29
    Caption = #220#253'tget'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 28
    Top = 104
    Width = 153
    Height = 29
    Caption = 'Go'#253' bolsun et'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
