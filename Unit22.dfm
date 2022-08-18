object Form22: TForm22
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'T'#228'ze ba'#253'ram'#231'ylyk g'#252'ni go'#351'mak'
  ClientHeight = 322
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 8
    Top = 79
    Width = 38
    Height = 19
    Caption = 'G'#252'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 85
    Top = 79
    Width = 27
    Height = 19
    Caption = 'A'#253':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 144
    Width = 31
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 35
    Width = 441
    Height = 27
    EditLabel.Width = 162
    EditLabel.Height = 19
    EditLabel.Caption = 'Ba'#253'ram'#231'ylygy'#328' ady:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 174
    Width = 289
    Height = 94
    Caption = 'Ba'#253'ram'#231'ylygy'#328' g'#246'rn'#252#351'i'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 16
      Top = 23
      Width = 269
      Height = 27
      Caption = 'Her '#253'yl ga'#253'talan'#253'an ba'#253'ram'#231'ylyk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 55
      Width = 265
      Height = 29
      Caption = 'Di'#328'e '#351'u '#253'yla degi'#351'li ba'#253'ram'#231'ylyk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 101
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 31
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 1
  end
  object ComboBox1: TComboBox
    Left = 85
    Top = 101
    Width = 145
    Height = 27
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = #221'anwar'
    Items.Strings = (
      #221'anwar'
      'Fewral'
      'Mart'
      'Aprel'
      'Ma'#253
      'I'#253'un'
      'I'#253'ul'
      'Awgust'
      'Sent'#253'abr'
      'Okt'#253'abr'
      'No'#253'abr'
      'Dekabr')
  end
  object BitBtn10: TBitBtn
    Left = 240
    Top = 280
    Width = 97
    Height = 28
    Caption = 'Go'#351
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 343
    Top = 280
    Width = 107
    Height = 28
    Caption = 'Go'#253' bolsun et'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
    OnClick = BitBtn11Click
  end
end
