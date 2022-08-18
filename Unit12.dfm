object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 
    'I'#351'e gij'#228' galan, i'#351'den ir giden we i'#351'e gelmedik '#351'ahslary'#328' hasabat' +
    'y'
  ClientHeight = 182
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 15
    Width = 247
    Height = 105
    Caption = 'Wagt aralygy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 138
      Top = 35
      Width = 85
      Height = 19
      Caption = ' - seneden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 138
      Top = 68
      Width = 98
      Height = 19
      Caption = ' - sen'#228' '#231'enli'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 9
      Top = 32
      Width = 128
      Height = 27
      Date = 42629.525746018520000000
      Time = 42629.525746018520000000
      TabOrder = 0
    end
    object DateTimePicker4: TDateTimePicker
      Left = 9
      Top = 65
      Width = 128
      Height = 27
      Date = 42629.525746018520000000
      Time = 42629.525746018520000000
      TabOrder = 1
    end
    object lb1: TListBox
      Left = 16
      Top = 98
      Width = 121
      Height = 97
      ItemHeight = 19
      TabOrder = 2
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 261
    Top = 15
    Width = 182
    Height = 105
    Caption = 'Parametrler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 126
      Height = 21
      Caption = 'Gij'#228' galanlar'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 51
      Width = 129
      Height = 21
      Caption = 'Ir gidenler'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 78
      Width = 132
      Height = 21
      Caption = 'Gelmedikler'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 287
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Dowam'
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 368
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Bes et'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
