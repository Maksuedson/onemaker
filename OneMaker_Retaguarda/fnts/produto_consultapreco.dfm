object frmproduto_consultapreco: Tfrmproduto_consultapreco
  Left = 438
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Consulta de Pre'#231'o e Estoque'
  ClientHeight = 560
  ClientWidth = 810
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 44
    ParentColor = True
    ColorHighLight = clWhite
    ColorShadow = clWhite
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 776
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 52
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 108
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 87
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 235
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 265
      Top = 4
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1027
      Top = 13
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 1015
      Top = 26
      Width = 40
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 44
    Width = 810
    Height = 383
    Selected.Strings = (
      'CODIGO'#9'5'#9'C'#211'DIGO'#9'F'#9
      'CODBARRA'#9'14'#9'COD. BARRA'#9'F'#9
      'PRODUTO'#9'70'#9'PRODUTO'#9'F'
      'UNIDADE'#9'2'#9'UNIDADE'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    OnRowChanged = GRIDRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitLeft = 24
    ExplicitTop = 39
    ExplicitWidth = 776
    ExplicitHeight = 339
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 427
    Width = 810
    Height = 76
    ParentColor = True
    Enabled = False
    ColorHighLight = clWhite
    ColorShadow = clWhite
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 24
    ExplicitTop = 403
    ExplicitWidth = 776
    object Bevel3: TBevel
      Left = 72
      Top = 4
      Width = 472
      Height = 18
      Style = bsRaised
    end
    object Label8: TLabel
      Left = 8
      Top = 7
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 75
      Top = 7
      Width = 358
      Height = 14
      DataField = 'fornecedor'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 72
      Top = 26
      Width = 472
      Height = 18
      Style = bsRaised
    end
    object Label13: TLabel
      Left = 8
      Top = 29
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 75
      Top = 29
      Width = 358
      Height = 14
      DataField = 'LOCALICAZAO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 552
      Top = 4
      Width = 2
      Height = 65
    end
    object Label9: TLabel
      Left = 556
      Top = 14
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pre'#231'o - R$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 558
      Top = 46
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 72
      Top = 48
      Width = 137
      Height = 18
      Style = bsRaised
    end
    object Label10: TLabel
      Left = 8
      Top = 51
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 75
      Top = 51
      Width = 126
      Height = 14
      DataField = 'CODBARRA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel9: TBevel
      Left = 264
      Top = 48
      Width = 280
      Height = 18
      Style = bsRaised
    end
    object Label15: TLabel
      Left = 217
      Top = 51
      Width = 42
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Se'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 267
      Top = 51
      Width = 273
      Height = 14
      DataField = 'subgrupo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxCalcEdit1: TJvDBCalcEdit
      Left = 632
      Top = 4
      Width = 135
      Height = 31
      Margins.Left = 6
      Margins.Top = 1
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      DataField = 'PRECOVENDA'
      DataSource = ds
    end
    object RxCalcEdit2: TJvDBCalcEdit
      Left = 632
      Top = 36
      Width = 135
      Height = 31
      Margins.Left = 6
      Margins.Top = 1
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnChange = RxCalcEdit2Change
      DataField = 'ESTOQUE_ATUAL'
      DataSource = ds
    end
  end
  object PPROCURA: TFlatPanel
    Left = 263
    Top = 39
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 2
      Width = 369
      Height = 255
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object BFOTO: TAdvGlowButton
    Left = 654
    Top = 367
    Width = 50
    Height = 46
    Hint = 'Foto do Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032469545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      20284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22
      786D702E6969643A333645383941463332434542313145344131464238373045
      42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
      6469643A33364538394146343243454231314534413146423837304542434346
      36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
      696E7374616E636549443D22786D702E6969643A314537413139354132434542
      3131453441314642383730454243434636374238222073745265663A646F6375
      6D656E7449443D22786D702E6469643A33364538394146323243454231314534
      41314642383730454243434636374238222F3E203C2F7264663A446573637269
      7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
      3F787061636B657420656E643D2272223F3E75DEFBC50000054A4944415478DA
      BC5659685C5518FEEE36FB964C13271DD305D3B87441FAD056A9ADD26A4B2DAD
      2F52AB22083EA8E0534524C53C14F5ADCF16110451AC08521444D0A2A5825544
      50A10FAD0AB16932D926992DB3DD7B8FFF7FEECC64D2D96E237AC299DC7BCFBF
      7CFF77FEFF3F4779ECFD9FD118BA014C5E87F5ED47802D004DABAF78697E4E73
      37DC8D1F691EA359966F9605A80AB4479E01EEDC0298D51597ABD47861C33D50
      1F3E09FBBBF38EA203C24F731F4D9F10368468EF555178AAA8C9FA2500E95C25
      9B4F49DBA89456E9E82D564840D9B4552A348160976521842F9B59A44F9674D6
      3C84244C4324DA4F6B0A472E9A9DB34D948B2DEEF4B6A190601B106C18A1704C
      DAEEC0819459A1BDBBF3CE005A4198B0AA10446F3E9B26DB26BB5ACD00FD699A
      EE3040DB0455377B396F0610A0697404B1FF44D4FEE182A250E091816477066A
      FFD4079E8893AEDEC53967E232033841F36D9AF18E4C0CDF0D6DF095306C1B2D
      9B7FEBE06450D530BC81DFEACE6DC8C4A45F4AE01A730AC402FD1B6300676926
      BB1A25CA61F800C56511B217CB8CD61F0DA52A55ABB641D8AA359C3AAD8BB30C
      20EACEA8DD605E4803A2518E4EF9292DF86CA1C220876F6C3A27E37F73E2056C
      1DFC04BC97BFA69E26428D2803B0E03A30DA11D396CF61AF068FE6505BB16CE4
      CA8E19AFAEBA268A7D2BD40997DCB0605267E4E6B8737D1807EE8A637B228281
      A047AECD152AF83D95C5C53F17F0CB548E9B1E745569EC86AE98EDB6807F33BA
      1B98554B204411BFB86B184746D739F4529D974A79F99C0CFA314CDF79EDCB6B
      F338F7D30DE4891143E36D11A80AA7C054C5A620F47A12F6E8034D91B3F33307
      4670FF5018E9A50C3EF8F8537CFDCD256416E6A44C343E80470FEEC773279F94
      20D687BD18BFF8070A154B32C1D9BF52A8AB4B58EDB5E73665DACBBB3748E757
      AFFF85679F7F09EFBEF31ED233B344A7474E7EE66FBCC6322CCB3AAC2B7A04D8
      150027DCCEA1080E6F89CBC85F7B7D1CB3D333482687A92547E0F178E5E467FE
      C66B2CC3B2ACC3BAF5A45D13001E07479CFEF4E1F9CF30393189BEBE78AD0445
      BD201BEFBCC6322CDBACDB1500E517DACD2AED7DD0D0B08DA2304D13972E5F41
      2C1A051FC79D9BA08D682422654D3ADA59976DB0AD4E7EF490D1BE6AA9B411F6
      E9180878E8842EA098CF21D6178346275C269BEB1C119D9A2C5B295748378898
      5F47AE5425BDF67EF4330F0E7688864F37155400285297F31A8634AEEB3A259E
      5ABB13B437EA31A8B81447776C579C64ED8EB21D19A8174CB95C86D7EB452271
      07FEBE7113918847BE170A85DAF97F4BD9D27625120992F1485D3F815034F5F6
      7340E6816921975F96379DBD7BF72097CB496602013F82C180FCDE72A1AA54B1
      EFA13D728D75D946371F5DAB4021AA17B38ED3E3470F617474047373F3CECD28
      14A2AC8F1223E106BDF97C013B76DC87638F1F923AACCB36D65C869C7015A234
      454E43A120C64F9FC2E6CD1B313595926C30DD966CC9657ACF63FBB67B313E76
      4ACAB20EEB6A3D0028D726267B1E4679CAEA8D4309F45315140ACBB8F0C557B8
      FCFD15CC5007E448393F98F6E3470FCBAD492F2E61623A4540C2BDDA40A62700
      A6D7A428F3D92C8606D72149CEEA55B2BCECDC783827EADB70333583E959628C
      FA814E792044D766DCFB3464036C284C06D9F07C7A0903FD31F45153F207FC52
      86B7603193C11CAD55897696D57A3B77BF05752678148B457258A20B928DE62B
      11279BCFE783DFEF6F00773132BA6DDB9A1BB4F57576C093F41ADF189C5A4B36
      978EA50E25B0A6E772D92C254B485555578ACD0E9ABB1B03BA9DC1D543C99DD5
      CBA5F2ABD4B7DF226BFD7089FE5F0F062E449A8239AD88FFCBE95AEF03FFF5F8
      47800100AE9AA5EA6FE40BD00000000049454E44AE426082}
    Transparent = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Visible = False
    OnClick = BFOTOClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Layout = blGlyphTop
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 710
    Top = 367
    Width = 51
    Height = 46
    Hint = 'Servi'#231'os - Consulta de Pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
      F40000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032469545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      20284D6163696E746F7368292220786D704D4D3A496E7374616E636549443D22
      786D702E6969643A434138434346373232433745313145344131464238373045
      42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
      6469643A43413843434637333243374531314534413146423837304542434346
      36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
      696E7374616E636549443D22786D702E6969643A434138434346373032433745
      3131453441314642383730454243434636374238222073745265663A646F6375
      6D656E7449443D22786D702E6469643A43413843434637313243374531314534
      41314642383730454243434636374238222F3E203C2F7264663A446573637269
      7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
      3F787061636B657420656E643D2272223F3E0C0BC0EC000004084944415478DA
      AC97CB8B14471CC77F55D5DDD333FB7277D6DD04DCE4B4200826A0B944598278
      559120E43F08C14320905C724D0E2A089EBC7BF264204B6E7189C1901C72D06B
      3C88AEE23E751F33D3DDD35D55F9FE6A7674989DA7D30DCDF65677D5E7FB7B55
      FD46FCB4728546BD841494D4D253FBDBF14D22FBD01A9AC7D89C10F4355EBF3A
      F43D5EF065AD252F27F8277B5BD13D6BEC47185A728B1B22A5C45F805D038747
      3ACEF772822F03BE10147DF243E558713525A3CD8294621E065721A2D2690D99
      07DC18B310943C9A9C2DD2F89182BBF9191EF8466BFD04EF7FC1940F7213D00E
      0F4B3E4D964B24B19AD1968CB1E4070A224A527972C2183A8F699FE622A0137C
      E2006E5BC2EC120C22A6664B0411C8097B0EC3177097DF5BC0A0F0C3228A2494
      F85E6BF32B86EEE2D5F4D002BAC105BBDD76CBF1C39E40789630649A33E42870
      8571611BD6170E6ABB9F08CF93CA1AF333867EC0AB396F14CB99FC194AAFAC24
      AD6586FE89EA5D853445A03A14D6BA9A651AA19367E52831CFD804C04F863E1D
      2F78F4A1A748F7588F45F03E118EFB2E02F87F530E0BE7A0A588608A054AB076
      1365F712D63C4B35D5900C52F4F6A86DF90BC69A37141C8BCFC07C184A53F8FB
      02E007D5849EA68A762124E265110A0B61B283128E8EC92CD5E38CDC5B435FC8
      61DCCED9EE61E6A5F190CE8F057414EE0FF0FD2BB824C15C1D6BDADD88780B26
      121DE018DEDFAE511265CC599D2887DFCA614A8DE37B843D201A0B2EC015EC42
      AE861456ED6F45549C0CDC2ED85A97ADF0B896B27756918C170A63FEBFDE20A5
      C619C7F0493CAF22D6BF55123A869AFE3B4ADDEA4DF8D874818A4830867587CB
      06BCE43FC6EED8380D7B596E0F4A6D0E404EB807953AD5ACA69710D20EE7CAA8
      ECD4696C2A70CFFDE06E23EA576A6CF90C627DA2E0D3225CFB7120DDB86983F3
      55DD49C82FA881E1AE1F48AAE9E9BDEDE81EB6C88E7B7B8885D691D9CF6131DF
      3BF0426BCC9DE50C7F93B82338083D576483C09D00B451B7B8992814BD43704E
      E404CFBCC331BC8AC911E743A27381BB1058B27FF0034F9648EFF6538D45F0F6
      BA012F442E26686D5EC7B9C01B8791A5F95658B74B1D941E5FE3E5D0F57CA3C2
      9B4938C7E4B89222AEFA6DC7DA6D1F9550C28986B3DD9DF3A3C09D619F7FB978
      1F1BC3163EFCAF1EEB53589CDBA8BE4734E74CF3BBF78537FB810D587D5D2AF9
      639619BDBB55A3ACDEC713F42E514781B73724982FFED448B641440C5AE7C308
      788345BF524A5EB4DADED8459975139117BC534BB68D7B1989B9D2CD1379C27B
      F5848FB021FD0E11FB1061D2BA76E73B5700C3F77282F712B02684BCEC796A11
      E1B88D7302874CE26E7EAED7B25CE0FD7E1BF26FB90A370E1C8EEA4EDCDA373C
      07FCE2A8F03E026CB3D4EEC0FD67B0F36DE0785E07FE2C3A99EFF280F3F5BF00
      03004C2357F2D5B16CC90000000049454E44AE426082}
    Transparent = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
    OnClick = AdvGlowButton1Click
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Layout = blGlyphTop
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 503
    Width = 810
    Height = 57
    Align = alBottom
    BorderOuter = fsNone
    BorderColor = 3355443
    BorderShadow = 3355443
    BorderWidth = 2
    Color = 3355443
    TabOrder = 6
    ExplicitTop = 612
    ExplicitWidth = 1355
    object AdvGlowButton2: TAdvGlowButton
      Left = 2
      Top = 2
      Width = 146
      Height = 53
      Align = alLeft
      Caption = 'FOTO DO PRODUTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003824944415478DAEC974D685C5514C77FE7DE371F6F329949277564
        92A64409961A449206636C144514113F085DA860151762695CD48F4545A92368
        4529146D956E74216E846E045D04BA889A5D95A23522A850AAB8901A53A749DA
        99F7EE71F132216D673A2F83351B2FDCC5BB9CF3FEE7FCEFF9BAA2AAACC732AC
        D35A3760192A0FB514722EDAD60212593B55FC9E8DB606AD6E4AC8211C26E023
        0CC790ABEFF104F005308BB213E1538429E00520DD3E70D86407442C0837A3DC
        81CA26BAB290F23284DC0BDC0324BCABE6AFA31F80B12D707D09CE2EC0F47730
        7F7E84041BFE7DAA05505EA2CA93147350E8842084AC0F1BF360E9C671D8B4F3
        DF0061626E2B0BCE5E2E10D1FC191EBFF0F7122C55C19A283A2B8B10E2800FDB
        F2D8A2CC3B8F89B9ADCD82FA241E1FB358836F7E86D95330F303CC55C0701C98
        6E9BEA8428BF862926FEBA113CC02E6F6F85EEE8FBEC027C7B0A7EFF333A339C
        4108E2028F02CF02C5D5873E01A7C93322BB18D65DDC909EE4DDDCB628BAA10C
        08C27D0817505E5B36E901E05C5CE0DDC02160FC4A42D7B8458EF97D8CF53EC1
        D1F460DD8029600038B05AD63BC1898611D41D16B9CE0D5093A59D8A3C2E02CE
        B15FD0AF4395D33F7A2709A89126CF4D0CE1702BEA2557E19DECAD64A872FFE2
        4F60F96DADB5BA0FD8B34A6ECB32E5C95614F58415DEECBC9D69BF9F5536C506
        7E5E91E18BB3455E04D9DEE25A5E062885155EEDBC8BE3E99ECB6A7AE3CAA560
        84878CB0A7512A5BA307242A7D7317A5AF71B7191BBE570B6D25485DF84AE1CB
        9C39C35B9D63D88CE5BC311C99FF9C52504106CB839764BFC568B2D7383E5174
        7BF34222E540C2D73D9FB06FB01F71BA49E1282AA30022CC28BA03E3FE485593
        D8D0A2A22DA97EFA4AA09189FA1C50EFA929606F1D1440957155D9177B1010E5
        4E09D91723C5F212F0769403F288AA4C36488E495179A691B267CF45F5560548
        D96B8D31AFA8A8C41A5F8CD9E627321F88F270B379C0A91C549805669A7AACF0
        98AADE1D075455B1099BCB95724FA96AA1692CA8F8552F38B890ACF62D790115
        1B7509534714916163647FEC61CD18F23D79929964EBF1476504D80BA457F4C3
        6C067CAF4BD3B68CE2C705EE2874D0D1DDB19676BA1B78F452AA7788F260AC3F
        2824FC04F9DE3CC6ACADB989E821E0963AF000C21BB195ADD0BDB91B2FE1B1D6
        C78042D633EE8840D196C68BEF238CC652744A617301BFCB07A1DD550AADDB20
        FF3F61FEABF5CF009E2023F32C1CA8D20000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = BFOTOClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 421
      Top = 170
      Width = 100
      Height = 41
      Caption = 'AdvGlowButton3'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000323494441544889
        959641681D551486BFF919A91B176913DB46EAC22C1A2DD1976917625C685CA6
        9B61BAB21A4AA120145E0624822E446BA9A05D0CB3D0452904B5AE7C6F16B54B
        7515379A71425BD2625D48A106A215C480E9E28C0BEF2B937933B1BD9B3BF7DC
        73FEFF3FE730F75EAF2C4BDA46A7DBDB039C9274D4CC9E2FD2C807985EE8FF55
        96E5554997CDEC4291467FB461F82DC02392FAC04BCE740FC807FB6559DE048E
        002F001F76BABD6F251DCB93F0CF3A9657CF2088B3E3C0176EF925F06E9E84BF
        340909E26C023803BCEA4CAFE54978A9952088B38FCC6C11D890D4C993F04E13
        7043C6E3920A331B03CE1769B43844D0E9F6DE90F4A999DD2CD268F241801B88
        6E0007259DCE93F013A8F440D208B0D9041EC4D91C700238E44CD781A53C09AF
        54FD8A349A0CE2EC57E0EFA10C5A148D02AB92C6CD0C4998D9FD7D4977CCECB9
        228D7E6FC3F0A617FA7BCDEC6760B648A31F2BAA47CD6CC30161662649566170
        6B80B12A491067B366F60DB0D7074E4A7A0CD8AC91AF4AAAAA5575AED8015681
        272AE675673FE94D2FF497CDEC7091468F564A3327E9EB81DA81F2960CCC7D1E
        ADF6A4D3EDFD03ACF8C06160B9A67EBEB1A06E789EE795C3CD9B07AA4D5FF63C
        6FC6077601B76BCECFEE44D000DE1473BB2CCB5D3E80A46D01833257EBBD430F
        B6ADEB183EB065664F5637CDEC9AA4C987ECC1B51AC60160CB075624CDD4D897
        80630F99C152CD3E03AC78D30BFDB7CDEC1CF04C91466B038720CE7E33B37D80
        FD4F0600EB451AEDAFC44E9AD91AF08E0F5C04CE028F03F7098029600368AC71
        6D4CD5D64FB9F9E28E47451067A3C055605F8BCB3A30952761FB5151394D4F4B
        FA204FC2DD0D4473667642D2215792EBC052914657EABE9D6EEF96A4C53C0933
        D87EA30918E9747B6B451A3D5D0D727FE8105803F80D600238309481537A1E78
        93FF6AFFC0174E1067E340018C011FE749F856238153F13AF0993B412F01EF15
        6974AB0578C2CCDE078E3BFFF9228D3EAFFA3436B9D3EDED96F49599BD0C20E9
        9E99FD24E9953C09373BDDDEF7C011498FB89E7CE72EFDBB75ACC65745914677
        81D920CEF600A78039492F025B8EF020F0037059D2853C095B9F2DFF02EECF87
        065D5253150000000049454E44AE426082}
      TabOrder = 1
      Visible = False
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 320
    object Cadastrarnovoprodutos1: TMenuItem
      Caption = 'Cadastrar novo produtos'
      ShortCut = 113
    end
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object AlterarProduto1: TMenuItem
      Caption = 'Editar Produto'
      ShortCut = 117
    end
    object FotodoProduto1: TMenuItem
      Caption = 'Foto do Produto'
      ShortCut = 119
      OnClick = FotodoProduto1Click
    end
    object ConsultaServio1: TMenuItem
      Caption = 'Consulta Servi'#231'o'
      ShortCut = 120
      OnClick = ConsultaServio1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 264
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    Left = 464
    Top = 296
    object queryCODIGO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryCODBARRA: TWideStringField
      DisplayLabel = 'COD. BARRA'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TWideStringField
      DisplayWidth = 70
      FieldName = 'PRODUTO'
      Size = 100
    end
    object queryUNIDADE: TWideStringField
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object querysubgrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODSUBGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object queryfornecedor: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Visible = False
      Size = 50
      Lookup = True
    end
    object queryDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object queryCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object queryCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object queryDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object queryNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 7
    end
    object queryPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object queryPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      Visible = False
    end
    object queryDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object queryESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object queryESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object queryCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object queryAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftWideMemo
    end
    object queryLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object queryPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object queryVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object queryCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object queryUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object queryCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object queryFOTO: TWideStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object queryDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object queryNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object queryCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object queryAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object queryAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object queryDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object queryDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object queryPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object queryDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object queryFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object queryCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object queryCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object queryNBM: TWideStringField
      FieldName = 'NBM'
      Visible = False
    end
    object queryNCM: TWideStringField
      FieldName = 'NCM'
      Visible = False
    end
    object queryALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object queryIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object queryREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Visible = False
    end
    object queryQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Visible = False
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
    end
    object queryFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Visible = False
      Size = 1
    end
    object queryFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Visible = False
    end
    object queryFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Visible = False
    end
    object queryFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Visible = False
    end
    object queryULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Visible = False
    end
    object queryULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
      Visible = False
    end
    object queryDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object queryCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Visible = False
    end
    object queryESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Visible = False
    end
    object queryESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Visible = False
    end
    object queryUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Visible = False
    end
    object queryQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
      Visible = False
    end
    object queryAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Visible = False
      Size = 60
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
      Visible = False
    end
    object queryPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      Visible = False
    end
    object queryPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      Visible = False
    end
    object queryPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
      Visible = False
    end
    object queryPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
      Visible = False
    end
    object queryDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
      Visible = False
    end
    object queryDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
      Visible = False
    end
    object queryPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object queryREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Visible = False
      Size = 30
    end
    object queryCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
      Visible = False
    end
    object queryMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object queryTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Visible = False
      Size = 6
    end
    object queryCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
      Size = 6
    end
    object queryINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Visible = False
      Size = 30
    end
    object queryVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Visible = False
      Size = 50
    end
    object queryVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Visible = False
      Size = 50
    end
    object queryVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Visible = False
      Size = 50
    end
    object queryVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Visible = False
      Size = 15
    end
    object queryVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Visible = False
      Size = 15
    end
    object queryVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
      Visible = False
    end
    object queryVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Visible = False
      Size = 50
    end
    object queryVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
      Visible = False
    end
    object queryVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
      Visible = False
    end
    object queryVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Visible = False
      Size = 50
    end
    object queryVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Visible = False
      Size = 15
    end
    object queryVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Visible = False
      Size = 15
    end
    object queryVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Visible = False
      Size = 30
    end
    object queryVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Visible = False
      Size = 10
    end
    object queryVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Visible = False
      Size = 50
    end
    object queryVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Visible = False
      Size = 15
    end
    object queryVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Visible = False
      Size = 15
    end
    object queryVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Visible = False
      Size = 15
    end
    object queryVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Visible = False
      Size = 15
    end
    object queryVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Visible = False
      Size = 50
    end
    object queryVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Visible = False
      Size = 50
    end
    object queryLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
    end
    object queryLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object queryMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Visible = False
    end
    object queryCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Visible = False
      Size = 13
    end
    object queryFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
      Visible = False
    end
    object queryFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Visible = False
      Size = 10
    end
    object queryFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Visible = False
      Size = 10
    end
    object queryFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Visible = False
      Size = 30
    end
    object queryULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Visible = False
    end
    object queryFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
      Visible = False
    end
    object queryFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Visible = False
      Size = 1
    end
    object queryUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Visible = False
      Size = 1
    end
    object queryREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Visible = False
      Size = 30
    end
    object queryPERDA: TFloatField
      FieldName = 'PERDA'
      Visible = False
    end
    object queryCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Visible = False
      Size = 30
    end
    object queryCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Visible = False
      Size = 30
    end
    object queryIAT: TWideStringField
      FieldName = 'IAT'
      Visible = False
      Size = 1
    end
    object queryIPPT: TWideStringField
      FieldName = 'IPPT'
      Visible = False
      Size = 1
    end
    object querySITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Visible = False
      Size = 1
    end
    object queryFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Visible = False
      Size = 1
    end
    object queryFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Visible = False
      Size = 3
    end
    object queryFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Visible = False
      Size = 1
    end
    object queryCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Visible = False
      Size = 60
    end
    object queryCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
      Visible = False
    end
    object queryCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
      Visible = False
    end
    object queryUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Visible = False
      Size = 2
    end
    object queryQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
      Visible = False
    end
    object queryPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
      Visible = False
    end
    object queryPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
      Visible = False
    end
    object queryPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
      Visible = False
    end
    object queryPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
      Visible = False
    end
    object queryPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
      Visible = False
    end
    object queryPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
      Visible = False
    end
    object queryPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
      Visible = False
    end
    object queryPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
      Visible = False
    end
    object queryPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
      Visible = False
    end
    object queryPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
      Visible = False
    end
    object queryPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
      Visible = False
    end
    object queryPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
      Visible = False
    end
    object queryPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
      Visible = False
    end
    object queryPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
      Visible = False
    end
    object queryPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
      Visible = False
    end
    object queryPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
      Visible = False
    end
    object queryIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Visible = False
      Size = 6
    end
    object queryCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Visible = False
      Size = 30
    end
    object queryUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
      Visible = False
    end
    object queryIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Visible = False
      Size = 6
    end
    object queryCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Visible = False
      Size = 6
    end
    object queryUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Visible = False
      Size = 4
    end
    object queryATIVA: TWideStringField
      FieldName = 'ATIVA'
      Visible = False
      Size = 10
    end
    object queryCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Visible = False
      Size = 7
    end
    object queryCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 10
    end
    object queryCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 10
    end
    object queryESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
      Visible = False
    end
    object queryENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      Visible = False
    end
    object querySAIDAS: TFloatField
      FieldName = 'SAIDAS'
      Visible = False
    end
    object queryESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
      Visible = False
    end
    object queryULTIMA_ENTRADA: TDateField
      FieldName = 'ULTIMA_ENTRADA'
      Visible = False
    end
    object queryULTIMA_SAIDA: TDateField
      FieldName = 'ULTIMA_SAIDA'
      Visible = False
    end
    object queryNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 10
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 568
    Top = 216
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 248
  end
end
