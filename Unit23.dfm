object Form23: TForm23
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'I'#351'g'#228'ri rugsada ibermek / '#351'ertli belgi girizmek'
  ClientHeight = 237
  ClientWidth = 629
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
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 111
    Height = 23
    Caption = #350'ertli belgi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 47
    Top = 207
    Width = 31
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label5: TLabel
    Left = 119
    Top = 243
    Width = 31
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 96
    Width = 111
    Height = 31
    DropDownCount = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'I'#350
    Items.Strings = (
      'I'#350
      'IS'
      'ER'
      'GR'
      'OR'
      #199'D'
      'AR'
      #221'R'
      'K'
      'KS'
      'ID'
      'DB'
      #221'E'
      'SG'
      #214'KS')
  end
  object GroupBox2: TGroupBox
    Left = 164
    Top = 67
    Width = 292
    Height = 129
    Caption = 'Ha'#253'sy d'#246'w'#252'r '#252#231'in?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 136
      Top = 40
      Width = 121
      Height = 23
      Caption = '- senesinden'
    end
    object Label3: TLabel
      Left = 136
      Top = 91
      Width = 148
      Height = 23
      Caption = '- senesine '#231'enli'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 4
      Top = 36
      Width = 132
      Height = 31
      Date = 42800.369711030090000000
      Time = 42800.369711030090000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 4
      Top = 88
      Width = 132
      Height = 31
      Date = 42800.369711030090000000
      Time = 42800.369711030090000000
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 415
    Top = 202
    Width = 75
    Height = 25
    Caption = 'Giriz'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 503
    Top = 202
    Width = 113
    Height = 25
    Caption = 'Go'#253' bolsun et'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 608
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
    TabOrder = 4
    StyleElements = []
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'MB'
    Left = 125
    Top = 157
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Left = 64
    Top = 149
  end
end
