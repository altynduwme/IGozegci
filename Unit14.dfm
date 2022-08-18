object Form14: TForm14
  Left = 5
  Top = 5
  BorderStyle = bsSingle
  Caption = 'Sazlamalar'
  ClientHeight = 402
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 223
    Top = 108
    Width = 22
    Height = 33
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 81
    Width = 209
    Height = 89
    Caption = 'Adaty i'#351' wagty'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 121
      Top = 27
      Width = 12
      Height = 19
      Caption = ' -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 122
      Top = 55
      Width = 77
      Height = 19
      Caption = ' - aralygy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker2: TDateTimePicker
      Left = 9
      Top = 24
      Width = 106
      Height = 27
      Date = 42629.354166666660000000
      Time = 42629.354166666660000000
      Kind = dtkTime
      TabOrder = 0
    end
    object DateTimePicker3: TDateTimePicker
      Left = 9
      Top = 52
      Width = 106
      Height = 27
      Date = 42629.625000000000000000
      Time = 42629.625000000000000000
      Kind = dtkTime
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 309
    Top = 355
    Width = 130
    Height = 32
    Caption = #221'atda sakla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 447
    Top = 355
    Width = 130
    Height = 32
    Caption = 'Go'#253' bolsun et'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkCancel
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 10
    Width = 575
    Height = 63
    Caption = 'Edarany'#328' ady'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Edit1: TEdit
      Left = 7
      Top = 24
      Width = 562
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Edarany'#328' ady'
    end
  end
  object GroupBox3: TGroupBox
    Left = 251
    Top = 81
    Width = 165
    Height = 89
    Caption = 'I'#351'e gi'#231' gelmek '#253'e'#328'illigi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Left = 84
      Top = 35
      Width = 47
      Height = 19
      Caption = 'minut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 10
      Top = 35
      Width = 70
      Height = 26
      MaxValue = 120
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 418
    Top = 81
    Width = 165
    Height = 89
    Caption = 'I'#351'den ir gitmek '#253'e'#328'illigi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label5: TLabel
      Left = 84
      Top = 35
      Width = 47
      Height = 19
      Caption = 'minut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpinEdit2: TSpinEdit
      Left = 10
      Top = 35
      Width = 70
      Height = 26
      MaxValue = 120
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 176
    Width = 575
    Height = 173
    Caption = 'Hasabat d'#252'z'#252'mi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label6: TLabel
      Left = 18
      Top = 53
      Width = 287
      Height = 16
      Caption = 'Gol '#231'ek'#253#228'n h'#252'n'#228'rmeni'#328' / ba'#351'lygy'#328' wezipesi:'
    end
    object Label7: TLabel
      Left = 18
      Top = 109
      Width = 278
      Height = 16
      Caption = 'Gol '#231'ek'#253#228'n h'#252'n'#228'rmeni'#328' / ba'#351'lygy'#328' F.A.A.a:'
    end
    object Edit2: TEdit
      Left = 18
      Top = 72
      Width = 398
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Meselem: I'#351'g'#228'rler b'#246'l'#252'mini'#328' ba'#351'lygy:'
    end
    object CheckBox1: TCheckBox
      Left = 18
      Top = 24
      Width = 390
      Height = 17
      Caption = 'Hasabat sahypasyny'#328' so'#328'unda gol me'#253'dan'#231'asyny d'#246'ret'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object Edit3: TEdit
      Left = 18
      Top = 128
      Width = 398
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Meselem: /K.Akmyradow/'
    end
  end
end
