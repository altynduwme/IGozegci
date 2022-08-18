object Form20: TForm20
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Bazany arassalamak'
  ClientHeight = 396
  ClientWidth = 238
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 220
    Height = 337
    Caption = 'Bozulmaly elementler:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 12
      Top = 24
      Width = 257
      Height = 25
      Caption = 'I'#351'g'#228'rleri'#328' maglumatlary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 12
      Top = 105
      Width = 257
      Height = 25
      Caption = 'Giri'#351'-'#231'yky'#351'lar taryhy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckListBox1: TCheckListBox
      Left = 12
      Top = 129
      Width = 193
      Height = 197
      Enabled = False
      ItemHeight = 19
      TabOrder = 2
    end
    object CheckBox3: TCheckBox
      Left = 12
      Top = 51
      Width = 257
      Height = 25
      Caption = 'Ba'#253'ram'#231'ylyk g'#252'nleri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox4: TCheckBox
      Left = 12
      Top = 78
      Width = 257
      Height = 25
      Caption = 'Rugsatlar / '#351'ertli belgiler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object BitBtn1: TBitBtn
    Left = 11
    Top = 353
    Width = 99
    Height = 25
    Caption = 'Dowam et'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 115
    Top = 353
    Width = 115
    Height = 25
    Caption = 'Go'#253' bolsun et'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
