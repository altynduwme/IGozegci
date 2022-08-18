object Form33: TForm33
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Parol '#252#253'tgetmek'
  ClientHeight = 251
  ClientWidth = 480
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = kjhk
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 25
    Width = 150
    Height = 23
    Caption = #214#328'ki paroly'#328'yz:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
  end
  object Label2: TLabel
    Left = 24
    Top = 97
    Width = 150
    Height = 23
    Caption = 'T'#228'ze paroly'#328'yz:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
  end
  object Label3: TLabel
    Left = 83
    Top = 143
    Width = 91
    Height = 23
    Caption = 'Ga'#253'tala'#328':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    StyleElements = []
  end
  object Edit1: TEdit
    Left = 182
    Top = 25
    Width = 267
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 225
    Top = 192
    Width = 105
    Height = 36
    Caption = #220#253'tget'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit2: TEdit
    Left = 182
    Top = 95
    Width = 267
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 182
    Top = 143
    Width = 267
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 336
    Top = 192
    Width = 113
    Height = 36
    Caption = 'Go'#253' bolsun et'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
end
