object Form17: TForm17
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tarketka ta'#253#253'arlamak'
  ClientHeight = 620
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 674
    Top = 32
    Width = 143
    Height = 19
    Caption = 'Sa'#253'lanan '#351'ahslar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 8
    Top = 72
    Width = 62
    Height = 19
    Caption = 'B'#246'l'#252'mi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 846
    Top = 454
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
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 941
    Top = 454
    Width = 75
    Height = 25
    Caption = 'Bes et'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 32
    Width = 553
    Height = 27
    EditLabel.Width = 290
    EditLabel.Height = 19
    EditLabel.Caption = 'Degi'#351'li '#351'ahsy F.A.Aa bo'#253'un'#231'a g'#246'zle:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleElements = []
    OnKeyUp = LabeledEdit1KeyUp
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 140
    Width = 553
    Height = 372
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = BitBtn3Click
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        Title.Caption = #350'ahs'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 505
        Visible = True
      end>
  end
  object ListBox1: TListBox
    Left = 674
    Top = 65
    Width = 337
    Height = 372
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 19
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn3: TBitBtn
    Left = 562
    Top = 139
    Width = 106
    Height = 25
    Caption = 'Sa'#253'la'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 1017
    Top = 64
    Width = 34
    Height = 25
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D8D8ED006A6AE5002727FC002929FA007676
      E500DBDBF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E8E8F3006E6EE8000505FC000000FF000000FF000000FF000000
      FF000C0CFA007474EA00F1F1F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E3E3F2002626F4000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF003A3AF300F0F0F500FFFFFF00FFFFFF00FFFFFF00F7F7
      F9003A3AF4000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF004F4FF100FAFAFB00FFFFFF00FFFFFF00A0A0
      EB000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00B3B3E900FFFFFF00F9F9FA003030
      F7000909FF000808FF000808FF000808FF000808FF000808FF000808FF000808
      FF000808FF000808FF000808FF000808FF004444F200FCFCFD00CBCBEB007171
      FE00DADAFF00D7D7FF00D7D7FF00D7D7FF00D7D7FF00D7D7FF00D7D7FF00D7D7
      FF00D7D7FF00D7D7FF00D7D7FF00D9D9FF006868FB00D7D7ED008787E600A5A5
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009393FF008787E5008383E400A5A5
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494FF008181E300C5C5EB007B7B
      FE00EBEBFF00E7E7FF00E7E7FF00E7E7FF00E7E7FF00E7E7FF00E7E7FF00E7E7
      FF00E7E7FF00E7E7FF00E7E7FF00EAEAFF007070FC00D1D1EC00F7F7F9002C2C
      F8001515FF001414FF001414FF001414FF001414FF001414FF001414FF001414
      FF001414FF001414FF001414FF001414FF003F3FF300FBFBFC00FFFFFF009595
      EB000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00A5A5EB00FFFFFF00FFFFFF00F3F3
      F7002828F5000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF003F3FF300F8F8F900FFFFFF00FFFFFF00FFFF
      FF00D4D4EF001919F6000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF002424F600E4E4F200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DADAF1005656EC000101FE000000FF000000FF000000FF000000
      FF000202FE006363EA00E6E6F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFD00CACAEE008888E7005353ED005656ED008E8E
      E600D1D1EE00FDFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 1017
    Top = 92
    Width = 34
    Height = 25
    Cancel = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 7
    OnClick = BitBtn5Click
  end
  object ListBox2: TListBox
    Left = 771
    Top = 57
    Width = 145
    Height = 372
    ItemHeight = 13
    TabOrder = 8
    Visible = False
  end
  object BitBtn6: TBitBtn
    Left = 562
    Top = 170
    Width = 106
    Height = 25
    Caption = 'Hemmesini sa'#253'la'
    TabOrder = 9
    OnClick = BitBtn6Click
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 94
    Width = 553
    Height = 27
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 10
    Text = 'Hemmesi'
    OnCloseUp = ComboBox1CloseUp
    Items.Strings = (
      'Hemmesi'
      'Administrasi'#253'a'
      'EA kafedrasy'
      'EPY kafedrasy'
      'ES kafedrasy'
      'EU kafedrasy'
      'H we HT kafedrasy'
      'Hemmesi'
      'Hojalyk b'#246'l'#252'mi'
      'H'#252'n'#228'r derejesini '#253'okarlandyry'#351' fakulteti'
      'J'#214'Y kafedrasy'
      'MT kafedrasy'
      'TUA kafedrasy'
      'UFM we I kafedrasy')
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorLocation = clUseServer
    TableName = 'Shahs'
    Left = 576
    Top = 65529
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    Left = 552
    Top = 65489
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 536
    Top = 65526
  end
end
