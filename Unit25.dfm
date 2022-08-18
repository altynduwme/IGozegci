object Form25: TForm25
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Giri'#351'-'#231'yky'#351' redaktory'
  ClientHeight = 439
  ClientWidth = 1354
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
    Top = 11
    Width = 265
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
      Left = 135
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
      Left = 135
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
      Top = 90
      Width = 121
      Height = 97
      ItemHeight = 19
      TabOrder = 2
      Visible = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 198
    Top = 255
    Width = 75
    Height = 25
    Caption = 'G'#246'rkez'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 279
    Top = 51
    Width = 1050
    Height = 145
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Sene'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'F.A.A.a'
        Width = 408
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Wagt'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Amal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Asly'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = #221'agda'#253'y'
        Width = 133
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 41
    Top = 327
    Width = 145
    Height = 27
    Style = csDropDownList
    DropDownCount = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = #221'anwar'
    Visible = False
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
  object GroupBox2: TGroupBox
    Left = 8
    Top = 124
    Width = 265
    Height = 125
    Caption = 'D'#252'z'#252'mi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object RadioButton1: TRadioButton
      Left = 7
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Hemmesini'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 7
      Top = 48
      Width = 186
      Height = 22
      Caption = 'Di'#328'e ir '#231'ykanlary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 7
      Top = 73
      Width = 186
      Height = 22
      Caption = 'Di'#328'e gij'#228' galanlary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 7
      Top = 98
      Width = 194
      Height = 22
      Caption = 'Di'#328'e i'#351'e gelmedikleri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object BitBtn2: TBitBtn
    Left = 279
    Top = 14
    Width = 114
    Height = 34
    Caption = #220#253'tget'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8F300BFDFC8006FBB
      870053AD6F0051AB6C0066B57D00BADEC400EBF6EE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EAF5ED007BC39200329F55001C9343001F9745001B9643001B95
      430021974700199142002B9A50006FBC8900E9F4ED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCE1CC002EA0
      55001C974500239B4C00239C4C00249C4C00249C4D00249C4D00249B4C00249B
      4C00239B4B001D984500279C4E00B4DFC300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6E9D400249B4C00259D4E00299F5100289F
      5100299F5100219C4D00259F4E00299F5200299F5100299F5100289F5100299F
      5100269F5000209A4A00B1DDBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D3EFDE0022A0500028A354002AA456002AA4560029A455001D9E4C0058B7
      7B0056B579001D9D4D0027A353002AA455002AA456002AA456002AA4560028A3
      54001C9D4D00C5E8D300FFFFFF00FFFFFF00FFFFFF00F9FDFB0051B6790024A4
      56002BA75B002BA75B0029A65A0021A254006CC08D00F7FAF9008DCCA6003DB1
      6A0031AC5F0020A1520026A658002BA75B002BA75B002BA75B0029A559003AAB
      6700EEF9F300FFFFFF00FFFFFF00BFE6D10021A557002EAB61002EAA61002EA9
      60002CA85E0096D2B100FFFFFF00FFFFFF00FBFDFB00F7FBF900E3F4EA0092D2
      AE0036AC690026A75A002EAA61002EAA61002FAA610024A65700A4DBBB00FFFF
      FF00FFFFFF0070C897002BAC620031AF670030AF670030AE650034AF6800B8E4
      CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1F3EA0056BE
      820027AB600031AF670031AF67002FAD640050BA7E00F9FDFB00F0FBF30034B2
      6C0032B16A0032B26A0032B26B002EB2680031B368002AAF64009ADAB700FFFF
      FF00A1DBBC0085D2A900BDE5CF00F2F9F500FFFFFF00E9F5EE0042B5740031B0
      680032B26A0032B26B0028AD6400E0F3E800C3E9D50032B36D0035B56F0033B5
      6F003BB6720064C691002FB36B0034B46E002AB2660087D4AE0067C795001EAE
      61002DB2680041BC790094D7B500FFFFFF008DD5AF0028B2680034B56F0034B5
      6E002FB46B00B9E5CC00CFECDD0027B66B0034B9720033B9700032B87300BDE5
      D00044BE7F002EB86E0033BA71002EB76E003CBB750035B9710031BA70002FB8
      6D0026B367008FD6B300D6F3E70033B9720033B9710034BA720031B96F00AAE1
      C500C6EAD8002EBA710037BC760038BD77002AB87000B7E6CE00C9EBDC002FBA
      71002CB96F0034BD740034BD74003EBD7A0036BC760033BC730036BC760030BA
      7200C0EAD60049C1830035BC740037BD760032BC7200B5E6CC00C9EFDC0037BE
      7C003BC17A003CC17B0032BD730078D3A600FFFFFF00CEEEDE0062CD98003AC0
      7D002BBD720057C78F00BBE6D2003EC17C0034BE760035BE770060CC950042C4
      81003CC07A003CC17B0036BE7700C6EDD900F6FDF90052C98F003BC47F003CC4
      81003BC37F0038C37F00B8E8CF00FFFFFF00FCFEFD00DCF4EA00C4ECD900C2EB
      D700FFFEFF00D4F2E30059CC930039C27D0036C27E003BC47F003CC481003CC4
      800038C37E00E9F8F100FFFFFF00A0E5C40037C680003FC785003FC786003CC6
      83003FC98500B2E9CF00FAFDFD00FFFFFF00FFFFFF00FFFFFF00FDFEFE00FFFF
      FF00EBF8F10051CE91003BC683003FC786003EC786003AC683007EDAAD00FFFF
      FF00FFFFFF00DBF6EA0036C8870040CB8A003FCB8B003FCB8B003CCA890037C9
      860061D4A000B1E8CF00E0F5EC00EEF9F500FFFEFF00FDFDFC0086DFB5003BCB
      88003ECB8A003FCB8B003FCA8B0035C68200CAF2E100FFFFFF00FFFFFF00FFFF
      FF0095E2BF0038CD8A0040CF8F0040CF8F0040CE8F0040CF8F003ACD8B0037CC
      8A0040CF8F006FD9A900F0FAF5006EDAAB0036CC890040CE8F0040CF8F003FCF
      8F0039CC8C0074DDAD00FDFEFD00FFFFFF00FFFFFF00FFFFFF00F5FDF90065DB
      A8003FD2920045D3940044D3940044D3940044D3940044D3940040D2920054D6
      9C005DD9A3003BD18E0044D3940044D3940044D3940042D293004DD59B00EBFB
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFFCF60059DCA50041D7
      940046D7980046D7980046D7980046D7980046D7990043D7980040D6960047D8
      980046D7980046D8980044D6950048D69800E1F9EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCF80093E6C40043DA99003FDA
      980044DB9B0046DB9C0046DB9C0046DB9C0047DA9C0046DA9B0041DB9B0041DA
      9A007CE4BA00EBFBF500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDF7ED0088EAC30055E0A90046DC
      A10044DCA10044DCA10046DCA10059DFAA0077E6BC00D6F6EA00FEFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8FEFC00E7FBF300D4F6E800D5F7
      E900E6FBF300F5FDFA00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'taryh'
    Left = 472
    Top = 312
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Left = 576
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 288
    Top = 336
  end
end
