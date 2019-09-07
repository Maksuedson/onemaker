object frmcontaspagar: Tfrmcontaspagar
  Left = 341
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 614
  ClientWidth = 815
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
  object wwDBGrid1: TwwDBGrid
    Left = -1
    Top = 40
    Width = 812
    Height = 353
    ControlType.Strings = (
      'FILTRO;CheckBox;1;0'
      'SITUACAO;ImageIndex;Original Size'
      'situacao2;ImageIndex;Original Size')
    Selected.Strings = (
      'FILTRO'#9'4'#9'S'
      'situacao2'#9'3'#9' ?'
      'DATA_VENCIMENTO'#9'10'#9'Vencimento'
      'fornecedor'#9'28'#9'Fornecedor'
      'HISTORICO'#9'33'#9'Hist'#243'rico'
      'NOTAFISCAL'#9'6'#9'NF'
      'DOCUMENTO'#9'13'#9'Documento'
      'ESPECIE'#9'10'#9'Esp'#233'cie'
      'VALOR'#9'11'#9'Valor - R$')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dscontaspagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 107
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnTitleButtonClick = wwDBGrid1TitleButtonClick
    OnDblClick = wwDBGrid1DblClick
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
    OnKeyPress = wwDBGrid1KeyPress
    ImageList = ImageList1
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object DBEdit1: TDBEdit
    Left = 536
    Top = 176
    Width = 121
    Height = 21
    DataField = 'CODIGO'
    DataSource = dscontaspagar
    TabOrder = 1
    Visible = False
    OnChange = DBEdit1Change
  end
  object FlatPanel7: TFlatPanel
    Left = -1
    Top = 464
    Width = 812
    Height = 43
    ParentColor = True
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 2
    object Label12: TLabel
      Left = 352
      Top = 15
      Width = 11
      Height = 13
      Caption = 'C:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 396
      Top = 15
      Width = 10
      Height = 13
      Caption = 'E:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 433
      Top = 14
      Width = 33
      Height = 13
      Caption = 'Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 469
      Top = 14
      Width = 142
      Height = 15
      DataField = 'conta'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText6: TDBText
      Left = 369
      Top = 14
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'C'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 409
      Top = 14
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'E'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 13
      Width = 67
      Height = 13
      Caption = 'F6 | Localizar:'
    end
    object pselecao: TFlatPanel
      Left = 592
      Top = 2
      Width = 209
      Height = 39
      Color = 3684661
      ColorHighLight = 3684661
      ColorShadow = 3684661
      TabOrder = 0
      object Label19: TLabel
        Left = 9
        Top = 12
        Width = 50
        Height = 13
        Caption = 'Sele'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object rselecao: TJvCalcEdit
        Left = 104
        Top = 1
        Width = 104
        Height = 37
        Margins.Left = 1
        Margins.Top = 0
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        BorderStyle = bsNone
        Color = clWhite
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        OnChange = rselecaoChange
      end
    end
    object bnf: TAdvGlowButton
      Left = 278
      Top = 10
      Width = 66
      Height = 20
      Hint = 'Nota Fiscal de Compra'
      Caption = 'NF'
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
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001D84944415478DA
        62FCFFFF3F0325002080584044C294F385404A1E886D80D898810168EA7F0646
        867FFF19989818198088E1DFBF7F0CFFFE327C6065F97F475D86CF04245712AC
        C10810400C2017C44F3E37FB3F89A073D53510C50010402C5097D88288985561
        408BFF31FC079AFE17642310FFFDFB178881F4BFBF6036486C67E63E861B8F3E
        FC04E90108208801FFFE4B80A85FBF7F31884B09E0F5F3CD6B0FC1F4F71FBFD9
        40344000810D003A850B44FFFEFD9BE1C9C3D7606F011D017409C8C6FF10FF83
        82054A83F5FCFDCB08A201020862C0BFFF607A7DC256A243FF1FD05B20001040
        3003C0A68536EC65F801B68581616BB32BC3FD671FB16A5694E207BB0E040002
        88096200C4B437DF7F33986B8A33BCFBFE07AE98978B0D05C3C0FF3F10030002
        086A00C45F9F7FFC65F80DF4E3B79F7F506CFCFDF73F18A378E11F440D400081
        0D6084BAE0E7CFDF0CDF7F03A3EBC76F8261F0FFCF2F300D104090306040988E
        2D65B33233621AF01FE2028000021BF0EF0FD80F6055DB8F3E4051F8F9DB2FEC
        2E80C6274000810D00A63A902EC5CB330230421BA717FEFF7F0FA20102089212
        FFFEDB185ABB4F0D2868090C1D417000FDFF078EAAFF60F65F704C41722E88F8
        F7998181E93A482B400031529A9D01020C00544729AC885B7611000000004945
        4E44AE426082}
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bnfClick
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
    end
    object combo_loc: TComboBox
      Left = 78
      Top = 10
      Width = 79
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 0
      TabOrder = 2
      Text = 'Documento'
      OnKeyPress = combo_locKeyPress
      Items.Strings = (
        'Documento'
        'Nota Fiscal')
    end
    object LOC: TwwIncrementalSearch
      Left = 160
      Top = 10
      Width = 94
      Height = 21
      DataSource = dscontaspagar
      Color = clWhite
      TabOrder = 3
      OnEnter = LOCEnter
      OnExit = LOCExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = -1
    ExplicitTop = 36
    ExplicitWidth = 812
    object Bevel2: TBevel
      Left = 261
      Top = 6
      Width = 89
      Height = 19
    end
    object Bevel3: TBevel
      Left = 461
      Top = 6
      Width = 89
      Height = 19
    end
    object Bevel4: TBevel
      Left = 685
      Top = 6
      Width = 89
      Height = 19
    end
    object Bevel1: TBevel
      Left = 109
      Top = 6
      Width = 89
      Height = 19
    end
    object Label3: TLabel
      Left = 4
      Top = 11
      Width = 99
      Height = 13
      Caption = 'Data do Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 112
      Top = 10
      Width = 83
      Height = 17
      Cursor = crHandPoint
      Hint = 'Clique aqui para alterar a data de pagamento'
      Alignment = taCenter
      DataField = 'DATA_PAGAMENTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = DBText1Click
    end
    object Label4: TLabel
      Left = 228
      Top = 11
      Width = 30
      Height = 13
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 264
      Top = 10
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'ACRESCIMO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 404
      Top = 11
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 464
      Top = 10
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'DESCONTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 620
      Top = 11
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 688
      Top = 10
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALORPAGO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 512
    Width = 815
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitLeft = -8
    ExplicitTop = 580
    ExplicitWidth = 1536
    object Label7: TLabel
      Left = 6
      Top = 17
      Width = 50
      Height = 13
      Caption = 'F8 | Filtro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 140
      Top = 17
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 380
      Top = 17
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 599
      Top = 17
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object combo_situacao: TComboBox
      Left = 64
      Top = 13
      Width = 73
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 0
      TabOrder = 0
      Text = 'A Pagar'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'A Pagar'
        'Pagas'
        'Todas')
    end
    object COMBOFORNECEDOR: TwwDBLookupCombo
      Left = 203
      Top = 13
      Width = 171
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = frmmodulo.qrfornecedor
      LookupField = 'NOME'
      Color = clWhite
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = COMBOFORNECEDOREnter
      OnExit = COMBOFORNECEDORExit
      OnKeyPress = COMBOFORNECEDORKeyPress
    end
    object combo_periodo: TComboBox
      Left = 424
      Top = 13
      Width = 81
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 0
      TabOrder = 2
      Text = 'Vencimento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Pagamento')
    end
    object DateEdit1: TJvDateEdit
      Left = 509
      Top = 13
      Width = 86
      Height = 21
      Date = 36892.000000000000000000
      Color = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 3
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TJvDateEdit
      Left = 611
      Top = 13
      Width = 87
      Height = 21
      Date = 73050.000000000000000000
      Color = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 4
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 711
      Top = 0
      Width = 104
      Height = 45
      Align = alRight
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005F34944415478DABC965B8C5E5515C77F7B9FEB77BECB7C33EDDCDA
        7E1DCA8CD3D2522DD45E80D8C4169422248A2115A260E22B98A80F6AD407134D
        4C50135F8CC668C28346084A8294348A8519465A81523A6DA22D36AD0CBDB7D3
        99EF7ABE73CEDECB87999A5E9C4E4B53FFC97AD80F3BBFBDD6DEEBBF97DABAF5
        2900C45AA28525142159DBE2E4A9388ACF8AB0095889480F6051EA24C25EA518
        B5CABEA013E7FC74758223C70E716AE221AA675B80309FDC8B1722A05D895C5F
        7D576B792A6EB40AD6185CCF43690D80B5B6274BD38F7A9EF7849F0B7FE8F8DE
        D3D69A9FA6498C529A6B952B32431463C1527103E78FB1697EBC35D5A677E912
        962E5F4E777F1FB9421E11A151AD716AE2038E1E3CC8E4C9D37DC572F92751B1
        634BB9ABFFD189C34915D43581D5C39FFB2AE2F8E0054B3CDF7BABD1A8F70561
        8EF5F76D61D5BAB544A50226B317954FA1B5667A7292FDBB76B3E7D5113CCFC5
        8F8A7B766E6FAD4F9ACA5E4BA9D5B6479E44DCBCA70A1D6FD627CFAD2994CB6C
        FDE2630C2CBF95663D26896394BA2C0B1182282297F7F9E73BFBF9F3EF9FC324
        295129FFBC341A8FA8CC82BE7AE6CECADB3683EF7EAF9D245FF07C9F07BFFC25
        960E0F529D9CC61A73251440294C9AD28E132A1F594ABED4C5E1F1FD086AA5D2
        FA8068F987688D6835676882A80F37F85612B7587FDF160656CC40E7AF954244
        983E5B63D5BA35ACBE7B23CD5A0D71DC1F89E707E2FA5C2DB4F5CCE7DBAD7AD8
        BB64092BD7ADA5598BB91E196348DB19B76FDC40B15C264D922132F713A40E64
        7387ABE05E9319068687C9178B54CF4FFDEFF2CE99B8A2D56CD1D9DDCDE2C165
        1CDABB0FBF237C20080AAFCCD7C783AEE7B1A0BF1F33D79DCE231141BB0E0BFB
        FA39C43869D65E7EFEDCB1790C44A45B694D54C8F3A12582A335B9429E309767
        7AF244EF5FB7FF6A5EE732337B2D372AB182B582765CE3BAFE3C60A54E596B17
        D7AB3514EA43019552186368D4AA2471835267F78907B77D7D3ECB5407B234BD
        F3F4C4046AE38619C3BECE7B565A932629A7263E40391A8DB3D70F4B57DDA341
        7678BECFBF0F1E62EAEC19827C7E067E1D0F2B2A449C39769CE3478EE2070118
        5ECA5A29593C77689D387FF2C3DCB9C9D367187F633761E4A11DE79AA19EEFA3
        B466DFD8DF889B2D5CDF7F1337DB839792DA167156A59D4DD1CEA667638AB6A9
        E292D6EB38EE7772C5E22FF68E8ED15BA970FB86354C4FD6315936677B5D8096
        BA2276ED18E5D0BBFBF002CFC6E7CF7D8D2CC1E2B278A087CEEE4132E3C285C7
        AB15364970B5D302897EE9E70A0F9934FDCC5F9E7B1E931956DFB596B46D6835
        9B33DFE66CF995525C683FA515BB768C30F6D2CBA084BECAD0EF725EF48689DB
        785117DD5D2DC2A017711682A4B3EFC1216BD471868636921948DBE90B41187E
        D298B47278FC00D5A92AC572078572193F0C09A31C7E18E2BA2E029C38FA3EA3
        2F6EE79DD746505AB1747035C3B76DEC2A2DEC8F8B0BFBDFEEE8A990368E9126
        60F130591B63528CCD48E3166E1C0BD046B246CB71BBEE090BD133693B7D7CDF
        EB63FC6B7C9C45CB6EA57B511FB9FCEC20509B19048E1F394AD28A090B119EEB
        7FBB52195EAC1DE7C9B85EFDB9B5924F53F9B158C35C33893B33D168C475510E
        646D798254BF5CE8ECF866DA4EEF38BCFF00EFBDBB6FD660144A2B1CC7C50B02
        0A9D1D234923FE81D2E92BF51327414A0BC27CF468DC6A3C2D92443A7F8B4F92
        FD019BEDBDDC22DC2B8E62C1643C8B55CF7A9EB7D9F3BCCD28B51AE805ACA08E
        63ED5B2846AC98DD62C14A46E09479F1995F3FB66AD36073CD9D0F7CA5563DFB
        7D9C22E8EC71899BF7203271B13F5C095617FB87EC04765E31475DE87305264B
        E8EC5C46A1BBCC8A8F0D52CC757E2349DA0F83EAC4A6A0544505E1EBD28E3721
        F2FE450672633226239F5F80F2E08E0D77B378D18A9E66B3AA2F1D5DF5800A72
        23283574E1D0370C9EF1E914B142BD5623495BEF69A5EF07A62F85AB5B0873AF
        A2F51022370E9E43BBC5CABD97C395524B08C251945E76B3C0006F8B954F8BD0
        BA2473A15F974ABFBD996080BF23F22991993F7FF6D3463BCE5D371B0C3086C8
        16111AFF6567E6372EFF1F8D20B25E601BA829117EF69F01007684EC3F1FCFFC
        640000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      ExplicitLeft = 704
      ExplicitTop = 4
      ExplicitHeight = 42
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 557
    Width = 815
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 631
    ExplicitWidth = 1536
    object bincluir: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003CF4944415478DAC497CF6B545714C73FDFF3DEBC31931AADF45730
        A2B504C1AE5CB8D12C046971AD526A4117F9071477C9A28B2E926E6ACD3F60A1
        85DA2EECBA3FB651280A22D285544A43152B8AD5A999C9CC9B774E1733F9A171
        E2D396F40B17DEBBEFBEF3BDE7DC73BFF75C1DF8E2004BF0025506D0D05B84B7
        7A9D1928D222FC7D607F66B62F22B6039B7A031E499A6BBB5F022E26B21F0975
        A00D80AC4AD4FF24F22658B24495D207412018004E4A8C67B2D16E3F20AD1CBA
        25E0EDCCEC0080C3AF119C83980968AA8F7DEB4F9A1E93D2AB66312D188D45D2
        BE13ED36C1A8594C4BE955911E8B3E7F19EE745B015E10E1484C99255F4BC92E
        5E1252B2AB6B83A98865FB8B7C2995CAB2F311586DF397928E13CEBF43F42660
        1356DB3CE270A2BB44DE5BE3A1A1EE4B0C60AA4E49711CF712667B86D1DA03DD
        51563B6E95C15B1EAD49D4040C231CC251C4111113653C35198D7C8146BE80C9
        4A38EF889850C491453EC36BE083A9299D593B7D9671BFF980F1DD4719DF7D94
        FBCD07A5436F4A67F0C114AF619020554E23DB5A96B89ECF7370641F0747F651
        CFE7CBAFB96CAB54394D249829AA6671AA2C294022A3DE7E4CBDFD98A44CA857
        7A6D714A16555BF062CCA461D609260D2F44316689D9A108D60D1150C10E59A6
        646FB07ECC4150B1646F0AB17D95EA208A70EE36EFD1F162D5CFBFD5FFA055B4
        969E9F85D412DE1C789D44C66AC7627B0A31C45322D0F2361B2B83CC8C7DCC6B
        03AFAE32DA2ADABCBB651480D9C3DF524DB2676CB9BFF8FCDA39FECEE7C9ACF2
        34F190F13F2105D5812D2B3BAB96D1ECB43839FB49DF50CF1EFE0680B1EF3E64
        E7D0B6BEA1AE5AB62AD4811EA5A039881D4F2780490CD7DEE83BE36A520560E7
        D036B6BD32FC5C4D7F328798B3DC8BCBCF15FAFF1042E4EE972DC7BFD7FAF122
        418EFF601B94CC7AC49DF522F6883B1B94CC5AB85AEE3ACB0B84BB2B0229154B
        7931F111EE3A1BAE96A18288FC0CE1B7CB924774CF6493515E6E05E1B723F233
        A820D971EC1D50DB89644E4A3F28734A6D48337EAFDFE2E7BBD798EF34482D2D
        733CE0918F638D5F500743063242BA10689A12C7DC605AE3CABDEB5CB9779DC1
        B456C25923D074481716F952EAF5DED7061E3169B5CD23AAD6D6ACBB8A28D894
        6D5C7A5EDB51235A8DAFBCF170F2C9622FCF972B042F703861D9C02DA18995D5
        E2CBECD86E3EC4B4371E4ED26EF46E12EA05DE8C6E4BC012D44D9849F7E2A388
        E2C6CB9FBBC58DAE0D26A565FB8B7CD64F5D82CEF988CE1E774D0037C5DA39BF
        E2FB4D774D4474F6049DF3FD54315D4BDA8026F029CE6739FE5EC0FECC92DEA5
        2D7A9736F52E6DC525C1C514FB09C89F5771FF33005371B84BAF5AC2F4000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = -8
      ExplicitTop = 22
      ExplicitHeight = 63
    end
    object balterar: TAdvGlowButton
      Left = 88
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005154944415478DAB4974B6CD45514877FE73EE63F9D763A43A79D76
        0A08D68AF55921A6D6408C24801263E223B0403446F1B5F015174617C6951BDD
        B8F0012E7C261A13E3C6688CA0B1313E82025628880FC44A4BE7D54E679CCEFF
        758E8BA928A42A53CADDDDCDF9EE39E7BBE7E6D2D8FB2988055409B03F19406B
        0082461655A76033E76174F58B206BE0EB26F84F3C8DE8D8E11EDDBB7853E871
        9736540C2667DE9319D96F5331189C8515860056F4DC628B3FBE29BE448D5210
        06743CFA24A2785CFCF0D905076B6268BF767B69F36DAF39D6739D2F8610A63A
        0022905686349E619F47D442018900CF5710A85B7B339557A33A080A376FF36A
        03AB8FE94216100118101640AB2716062C8C9022487546B7144BFACD4A4DFB97
        756527A2CAD3C54D7727DC8135637538D70F2974D9C2804D13FCE2F81D69F7E0
        1BCB7A92FEA15F9DC93F3C13B9B42B5F8CEA4017366D8BBB036BC67431078840
        08EE8280C589DDA7A64BAF943F7CAC968AED1BEBED6B37233F3BA8B8DAB9A42B
        5F7074A80B9BEF6B7107D68CEBA9021086BBF4A35B628006C805745101AAE1B3
        DC4D2E6D975493C7BDC70AC1FECFC3B6CC20A24B7BECA11F6A924CB05992A854
        F29568B47CF1602A522EE4CD9123779E69C6DBC8553B242E2EAFF4B27AA6CBE0
        BB4277F9ED0713EDB5EF83F3FBDAF5A15F1CA97A267269572E166DC24CE5CAB5
        5BC4DA036702BE875C7A5912ECF215418E7264684425A9351D91E27873F9ED07
        B823365C3AAFAFCD1C3EE274D47C5DEE4E56364AB5FA3188305F70BDBC09F679
        6590A32C5975D02E8281839041C97499978EA2FCC903D451FD36BEF89CA6F244
        516F84E0339A0D301FF0BDE4D20E49488D5706139453561DB04918711002D098
        0EFBBD294A742A7C737C79F5DDA7C2386537C4E2D1AF42A6134154C399D6E825
        69158F570579CA6BAB0EE824EC096889FB831229316A8F4E13DAC06EE986A032
        FDB5287D5220D5B048ADE2F22A3FAB7264D488492202070C4051892F0FCA20D1
        6AAFCDC02362135E07DBB413DAD427D73CC0A788A40C8D98457F9797A6F972BF
        0E1D36DDF048D8F07A001FFDEBCC694CA4F02F91EA3D650006D3DCEF4F83C4A8
        619B864B3E1B5E0760E8BF82AA331729284189D1C3360D17CC96D7FF1FF4FF32
        AE8B9498152937A748D3A4C5A8BDB6537C105BD900C167A7D33B356F91FA4F15
        49AE8360D769BF2B27ED1800E87EF2F082B4718D570679CA2A4307FF21929A15
        498956C326332BD206087636F4A00917200C08B7023A721B9CE00549619ACFE7
        2A65C9D427D229222931EABBD317694E3045D68148835AF66EE58BF3AF936D19
        47DC32E548ABFD66119CD94C4D5D24D262F53E9B96BF4492C6A100605ADA1F02
        B382913D8F9A880B88E53F2A6F5578623C018E38F005B032C5FD41F984485E63
        22CDDD63EF3758ADBAA3D115BD44AD602E66C4F7B208D817C79B244709F7890B
        255AEDB3197804B6DC904873827F1FCDA2B5B565D5E225B1963008C16151D8CF
        3673A6725C2DA302353B197249D3F7260D97C086D7372AD29CE073977543691A
        0C82000400E420D6725355127EAB8D5CD832137C1C0F8EEE895139E97294AF05
        E65FDE93EEF1733B27A04CE41A938A81D90391D14DF15B3A63B1AD9D8E5D9D21
        D818077E95090B06050075D7BA2589F142F99C4F877E81320644020E0B804C01
        3206F10BA304E7FA85840280393A9EBBEA91ED5F2E5DDE11C7DAC1E508CBEE24
        417E0AC2E0D363955F77C7C9FF1C84E30BFDE330373EF9C105575CD4BDFBF987
        AF7E876BFED13094214598082544AE3A89E66680CEC2FFEACF0100BE4AB4F88B
        9A2FD60000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 80
      ExplicitTop = 22
      ExplicitHeight = 63
    end
    object bexcluir: TAdvGlowButton
      Left = 176
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001A0000001F0806000000F987DD
        7D000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003C24944415478DAAC96BF8B5D5510C73FDF39E7FDD8B79B4D341B82
        BB8A46B00A418862B0B0B20BD82982AD858A602358F80FA4B14E6195CACA26A5
        85A5450A35103B2545DC35448524BB79F7DDBBF79E33167BDF7D777F288A6FE0
        C0853B33DF9939DF99397AE5FD8F11622E52A0AEF7A8EB27C4B06A71B0F695E4
        EF028F016721024EB9EBCBA6DEFBA84905C3E13A31AEE29EE88BE3448E49C66C
        400C13421C7E61F2B752DEBF64367C04ACF4148B94F2F32184EF4218DE03AE49
        11C89C24C780DC9D1086041B9B7BBEDA78FAD034F8E9246333ED644F9F998DDE
        0B61E51ACAB8FBDF00896FD4D89BAAED0EF2191080041A097B51D8A7421F800F
        8E9BABC2F359A49740B7C0B2C0DA9F09D78A0FF2258FE9DB6865BC4EF49BBB97
        EF7FEEA3B4A5C60EBB82974F8EB17F550EF0DAA1CAC48CAAB073EACEF94FAC8C
        3B11F39BBBAFEE506EEDBE634DDCE29FBDFE7B11E4D8FCECA3E6FAFAAD67898F
        AEEC509F9B1276C73389A58A3CCEAAF3531E5DD9C6EAA70BAC88804F8F2A56A9
        26BB77E417623F27F673EA5A424076A74AF509503EB569A43E5B605647308134
        EDF35E88CDC9198621925A26359ED818ADB2315AA5697B25B9330C91CDC91984
        F07EEDA52926AC8E98B2A3ECC8BDE83AC99D2071F1F4269330A46E9D96A9E6C2
        DA0617D63628DB0C6A4F4CC2908BA7370912B9476FB91773FFB1875F1CBDA2E4
        19385CBA7976FDD281B7BA470A075DF0D1D591A43841F118094F6AC893F4E6C1
        CFFDC7C5C850014BA61D5ECC4388649BA7542C1F47056D4A31E78C3B58501124
        96DAB0EE454E8E0431E70A77478A53313E4CCFFF85233CD7D39C1B24117F4B8F
        499E38A5D56293090D69294001E3412E8ABD342528109F199FC3710256254F4B
        BB9EE489A706EBD5FA600D21E28A0DE6D36096591EEF3230B43053BBF2625A6C
        C44A4BA49D808C577376F5974FC9F2A5F36972684FB964B0524E39F76FBE1821
        1507675952F9C1C1016391D20C7C891979897C36F71F7D714D25502E8B0E8E4A
        47E5E215947C0164AAFAC4B3237477C0A4EEBBCF303B8E549117158A5A4C824A
        84AA6F92FCF0409220B77BA7FFBEF056F7F000CA15A46A011427DD3EC4EB1212
        262379E6F6C36DAA5C33B000C0D806FCB2F747F70D30B0C0B4A9B8FD709BC633
        4176D0AE0AA5E2D8BB35F1A4B8D72EB4CC64BC510EC20AD9130EECD633A259B7
        4D834491F6DB080DEFB66E66B79E75019922759A9545B98D7450A1F8E7831F0F
        CA941A36B75EBF3B5A3BFD466E665DB4473769680D8F16AAAF6B61C8FEECC1DD
        DFEF7F4F080723482FDCB8DA37784EB2AF252EB73D95FF23D90C18B9F3837B7E
        DBF15FE73FFE1A0060E1D818B654B67A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 160
      ExplicitTop = 22
      ExplicitHeight = 63
    end
    object bpagamento: TAdvGlowButton
      Left = 264
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000068E4944415478DAE4975B8C556719869FFFB0D6DAE73D330C7B2887
        61B050445AD3928648A9A6D88BC66834B1A246E5C6266A9478E581DA6AA5694C
        F070556B895AEA854D5A538C179A366A6A6A854E6B02365850CB491C6698C39E
        D9B3CFEBF47F5EEC618641E4C218B97025EB6AADF5BFDFE17DBFF75B4A44B811
        97E6065D370CD8569E7AF47740F17F8CDBB0CAF7EFB9F6B3FF56EFD5B533B6AB
        56CC01FD4BAF291CC25C12123B8756EA3F82732258AD19B0011A852C4F64CE62
        CCB20F52A0EB12BE77CBDD6C2BAE643E0E97D5402B45D17894AD0FC07C12D148
        639CC8B2DCCA5EC0F1C6340F9D7B9D406BF45574B25C212705349398412FE0A3
        831B18CC97214E96608D070A2E34AA8CD6A7007857A9C2F0C0DA5E5469BC545A
        CF724B50E43B178E331D75295B7F59CEF64A500734E32E1F1E1C61C066986F37
        49C42140561B0297F2D8F9633C397192A9B00592B22228B077CDAD3CBC7E1BA1
        4BE9B81405D858336033ECEA5BCBA1F13F53303E462D316731FF964B98E836B8
        B33CC43746EEC421C4E2003040DE063C78EE75F69F1B653AEE50F6328CE4FA71
        08FBCF8EF2E0D9D7C8DB80CB8D8BC511E3F8FAFA6DECE85BC3A56E9D461A230B
        496A05D492088B66776523CF6CB997B7658AD49268B167652FC391DA38072FBE
        499F9F67476988AF0EDFCE6F6FFF10F79457037070E214476AE394BDCC6205E7
        9390E1A0C0336F7F2F7B566FA1603C1A6984007636E9F2D886ED7C70E5AD0CE7
        B218033331282F8034C14A87541CCF4E9DA699848C64FB988EBBE48DE5E6F200
        466994F168265D9E9D3ACDF65205AB348938148AD9A4CB70A6C04F36EF622C6A
        F38B99B3EC3B3B8A8D9CE3DD035BD99887E6E44F89BAE7B128245887147661B3
        EBA885F39CE9D4C95A9F5012CEB75ABC3A3FC917E374912C59E373A653A79684
        E4B425912579CE25219E320C17FBD9110D113987557680B9D9E761ECBBB8FA09
        BC85B3C480041B311B7E402BB897B1A885A7340A856F2C596D97C9C3539AB1A8
        452B4D2818EFAA11A248C4419C301B8768A5D0A80C7AECDBD03E01368BF825C4
        2F81CDA23BA7D16307F08CA6683CDC759CCC8950341E9ED2D79D796A91D5DAA1
        AA65A86A487D30AA77A73EAA0A325DA2E4C1BAA0B02895581CA1EB9526742922
        8E8E4B58171428D9E5010A82518A012F00DF52343E0EC12A05CD520E26347A46
        2FF01C70828A215A5BA4E8C1CEF22A9E9B7A8B14A1DF066CCDF743C6F08E7C3F
        2FCF8F534F4276968628DA80B9A8D33B0221AB2D051BF062F53C2FCC8EF14673
        863E136025859C9B859104D71554D48B567C501A5C3C493B824F5536F1F4A5BF
        70BC3EC55D7DAB994B420E9E7983AE4BC96ACBCDC5329F18DA442789B94CB940
        1932DA70E0EFC7F8D68563D49388405B567A19ACB2303B5B8629831E0457E801
        AB0EA831502343341554BC0C8F6FBC9B3DA75EE268ED22476B13904620C28662
        85C737EE64859F653A6CA39542809297E1E9F193EC3B3B4AD1FAAC09F2C84225
        ACA4501C6C43DBC19C464F2CF426233000D23F8F76508D3BECEC5BCDAF6E7B1F
        4F8CBFC96BF54900B69786F8FC4D5BD95A5C41356A2FBA59415BAA519B27C74F
        A294A664FC650E6551A0AA0AF2E0D6A72CCEBC14A40AC1ACA1EC03920149D952
        1EE2FBE521C6C21E4357052002D30994BD223E0B46E17B9CAF4D722E6CB0C206
        57DB225694EAAF157230A9D1D3CBC995758A970B1D1EFAD311BAB12254168B70
        AF39C527BD3FB2494DD096907157E415B7999FA577E180225DACB6CC441D4484
        409BAB55D56FD324BFAF22B5CFB1211D918EC002B9F0C16485B9C6F485D14B7F
        3BF440F0CB7AD645770426FEC0C7CCD1FE4D34163D7A4860371072C7A5BDF1DE
        1F914AAAA581D51E152F8BFB576577D5C32FECE12B933F7FCA68EFD3E90048F6
        32B91466161A49E6879323C5CFBEB3F4D67DC4ECA7C36DB19FCD757C1F92A5A9
        604D4AAED9AC1EEEEC1CFC48F6CBE46833E05AB87FB3FA28F98DA2630A2F462D
        7B9FAE81EAAA4572B93E0872F1F319E9EC6E06F938CD2BAB2F2A54552315D70B
        52D30BA0ADB1334CE4C2B94D87CBEF697DA6F20016D763EFB576AEE6783F58CA
        BA92222320971DDA81EE4272C92F35421F32825E25485FAF1D6A4AA364A1D602
        92F0AA836F764CB975FFECEF39E9AFE191C18F73533C7D6D601D0AD2E1115AF6
        C72AEBD6C9C27C5731D0D1FF50CE1DD01AA4AEBEE45AEA519D9392780B433706
        843F68DCD762635F51B89E2814E45D885C676DB74A0B4EAB5FA7A2BE605BEA7E
        1C9B0194E6AF8951878DE5258323D6E60971AAA5EBBC1F5883A183E1588A3AA4
        8413A82B36620591B2D75D91D5FFDDBFD33F07001265E36C61A899FA00000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bpagamentoClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 240
      ExplicitTop = 22
      ExplicitHeight = 63
    end
    object brelatorio: TAdvGlowButton
      Left = 352
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000023E4944415478DAE497BF6B136118C73FEF79E6875C6E2908E6489A
        A1217429A2C592C52193A2462862281467375DA4FE094A163767B7D641B41474
        097429456944BB086D2909454B1382D1547289C99D432F31391212BDFC107CC6
        E77DEFFBE1FBBCCFFBBC9C304D9371840CF0E45DADD35A54928C4927E2862165
        814D7BFEFE25F9042C84D1E9BB7BA649C209580863A5131840624C21016C2417
        D9482E0E1DD6CA915B173E3EBD4B269301E0E6E3370381BD5ABA02402814EAAB
        D4CB85FDEDA853A8A5B1DCD719874221841009FDB818740AD68F8B412144C2EE
        D65EEA53C075605ED3B4CD1FFB5BBE6C21EB7602AE7CCB57344D2B01CF8017C0
        1A506F825555C5308C9716185996291FEE503EDC713E286419200ADC5114654D
        92A41BADA59E02AE0DAB9B772F7AF8E916588CA926B85EAFCF026204D75758AC
        F6EB34AC08A7F57F6C728DED75CAE7F3E172B93C12A0D7EB0D371DEBBABE3B2A
        A70D56C7E6AAD56A54ABD581805C2E57E32E779D5CCDC8E57278676FE30E9C77
        04AD1C7CA0B8F51CBFDFDF1F5855557CE72691CF6A8EC0B5DA574AAADABDB980
        A3D6A4A2285C8804D1669C39FEBCFD9D745AB1A78F9AE0542AB51E8BC5F61AE3
        CC1E9F0E4AACBEFDD23770E956A4DBD25E2A955A6F756C0209E001300FB85A77
        6B131EE2737E27E6ABD6EB94B4586D03E43DB000B801A1CD5C5EF913656DC2C3
        74C0C774C0F73B77A2212CCD058BD1BDB9E28F5EB79F5541EF59EAF89C1FF5CC
        E98E5AAB0FAFF6EE6A3B14B09C44FEBACE9DE0522FE8A0C2AE2DC6F50BF3FF3D
        8BBF06000A89ACCFF90571920000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = brelatorioClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 358
    end
    object bextornar: TAdvGlowButton
      Left = 440
      Top = 0
      Width = 88
      Height = 57
      Align = alLeft
      Caption = 'Extornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001F0806000000F06C7D
        07000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008764944415478DA8C97698C57E515C67FEF72EFFDDFFF32FBC0C0C0
        0CC308A8C810A11A50DB92D2A6294DB552F583D12E6AD39AB426D518BB494CDB
        44635BA3491362D2464DAA31A6D56028D55AD9DA8A0888585C18864D96D970F6
        FF7697F7F4C380388551CFA7FBE1E47DDE73EE739EE7BC6AF9F2E5003817E305
        75E41A3A014DB5D887E765B1410D5A09AF6C7C06A870E7DAD0DE7973EEA18B5A
        CDF7007A4EA64FAC7FA6F8D3F5CF9713CE445BE7522EEB5AC1F0E031FC9A16B4
        128AA7C748A208A5350096CF106325C395CBE6B2ACED10B7AE09D72F59ECDFD1
        7F641267C962EF9E5BD784B56345F9BE671C4E60EF6013E54AF48967AA4FABD8
        F8058A6547436DC877571D68BD69E55B2706870CCA2800D2046A0A8AB0562FA2
        B9D87DECADD97CF3E12F10CA2824A3D356AC3FAD5A01F299F4CA9E93FAF11777
        CF7AC739853172EEE60AD21470C94C060DEB9E99C7F0B810789F7CEE34C00A71
        0922D2A994BCE494D95CC8A6F3D3CAC0034363E9896C4E230EC4412EAF182FB9
        C1A33DA57D2FBC52C7DE2333985D5FED12914B9C4B00F5D9819D4BF0C386EF98
        20F39E4EF12BA95B555FCF57B6EC1C7EF4D997276ED7193DA12D680B5E4E4D6C
        D85ABDA5E386E2D8AD0F8CD25CE7130666A5F133EF06B9FADBC42517043E8F5C
        E21C9EF57E674CEE9E6A79FC3611F704024A4343ADC72B3B937FB43495977FEB
        EBE12D007FDD54F9F33F7755BB01A258D0065CC2E369945432D9C6271DD12571
        9CDC7B1EB04BA38FC8E55C8CE705BF4E93CA3DEFBCB96D557B47D7B69A9A3A48
        6244C0B31027502CB96EA55907502C39E2334505BE42048CA79838ED9E3AF0CE
        A1A38B97356DF56CBE5C74A3EB5CEA5067E8A183B091206C241336E167EAD604
        61F697FBDFFED7EADE5307B7054138E51F9D05F73D35C93A99FCF62E30944126
        4B5FEFD16DFBDF3CBE3A93F1EEF7C3E05A3F1BE0677DFCAC8FCDD7CD3FCB5E4F
        6BB531217D7878F4F466002D0AA5149F35923406ADD046A3540A1846872A9B5D
        5A7D305B57D890A4910FC40036163759BA52F73BA454AA96EEEBEC5A495C2E53
        0E415C8A529F3C7572A67D331BDA51E33195A4828B6051671BBE6F290E4EFCDC
        66333F52D6FCCAA5EE670056942022D62AFBE3B85CBA378E2BCC2CCC44D759CA
        E531925848BC0C4A1750D38CC6D9AEF88D2D94C31CA56282CE2A9A2E69C339C7
        482922ABF5DD39A57F2FCEAD534AC5DA88C32A75BD23D522D11F7D25B8CA3849
        7118CFA5289DA255847211EE4C77CE6B719C60BC904C3E4BD515C1A6389D50AA
        16A9C46594E788E2F29369128B36FA26145811C1186F6D54197AA3387E343636
        40443E5E0EAAEA2855FB88E3125A9BF3C5C0285C1A73F8CD2DC451E523593C27
        472042B2A0EBAA9D6DED8BAF2D17C79EB6188B23EDF44D7EA3AD5930A9811788
        4C26CBE8C4719C7B7B4A8E02D234A663D14A66CC68218ACAD372219BAB7DB51A
        956E442BAC052D220B2B263D28C64348412B3C2F338554156D29B477D05A6823
        A9F6022100713441DB9C16C6F2CBC8660C699A4CCFFAA47A304DE366A594B2A3
        A988116EE997BE1D63C908B57E131E01959153A41F933B11410779662BA80981
        DA1870A00DAF1FBA8AB6B9CD944B431875CE1D247524C58454C7A412A33C3DA4
        429545F06DC91A91527163C6CF72F9E5DF800F2B9C3CF836EFEE7F9DF1B181F3
        6E7D1C98E80BB8724516109EFA7B89DD7BF633D0D73DE5A200B6E0935FD840EE
        543DB9B001E7C55AA39C80D8B8BF9796964E967DEE3AE6B42E61DFAE0DC47179
        5299A68997772A6EFCC555D810B6ED7A11E8E683E31748AC8519977760572BEA
        7B5BA8F42433A96742A3235DE93D4E56873436B6512C8F3051FC90282A61ECF4
        CB4926A319AFFA8C577DFCCCF4CA96090BA87E0333047B87A0EBD40A19609F13
        419B206476C7921B8BA5E19D51B578B0B9A5F3B119B316D48C0C9F9AF6C04AA5
        442EE3C8860951A5347D5EDF38F9CE869A7CA1FEB1A450EDD6D7A477865FABE9
        EF897763172DFDD20D0B2F5BF5DC406F0F228ED9ED8BEFCA640B4BBBDFDFFE65
        AD4C32751B11824C0D49344A125730158F998BE711D59561549DE7F9923A3B67
        F5FC1773736ABE58395C447529745B7C7B30E46F56F73DB4E3701C953ACE8E8E
        88A08D2108F26B8117CE8AB1D686DA86399C1EE8E1BF3B9FA6F7F007847E487E
        7E0D7C5B50F304E9079229EBC5F569317A5E523739FB1A48051DD823169176E4
        FF361401112E3EEBD3DAF824A963F3A64729174F9054C7F0FC1042884FC5B8F5
        E09655B0D7688CF1D1EE23E48BA7AE36938622D06EA36A718F178457A4C9E442
        60AC8752261AE8EDD92E2E2193AD431373E4E07FD8B1E5292EEEBA9A6CA64075
        AC0C4E438DC0B8103F9D62CB01C52B46B0893F6928C26B5EDE475983240E1498
        C09094E23D46A1DE58B27CCD4D95F27888D2787E96DEA3BBF66CFDDB6FD71D3B
        B297D3FD3D8C0F1D66F8F45192141A9A5AD10AA2528AB10AEB59C4076712B2C3
        750CBC7A8CDD8F6FE2E4C66E4E6C3C70ACF9EAF6FADCACFC8AB49A4E327D5661
        A8FB4FBB6F3056D97E63EC5F66B42E14ADECFE0F070F3DD7F3DE4BABEBEA9A2F
        2A34B66C0A820C71B58C9FC9313232485D43335AA973C0BE4560522A7D455376
        2EC95895A1A153B83445678297B45507F2F3EB4B5AAB2DBD5B8FDCD1F7EF63EF
        5B946274B4FFB0D6E6272E85242E9338B53D08F2AF195C5BEAD4EDC67803531C
        6B9A05DC8923D225BA56AE863D7064701F95A171E2B1EAB3DAEA67D344A80C16
        5128B4D606DF0FCF58A1608C05CC8EB892CE55A2DAB45627B4D1EB80E638AA22
        67244D9C4CB14F710EA5D43C97261DC58911165FF6792EEDBA06ACA0EC643E22
        988C451935CDDB49814A39E144968A72771B63EF126D7ED03A77C1BB567B9BC1
        EDD556F769A303A015A52EF5B3E157956299A07E93B8F4C15254E2A24B57104D
        6C278EA24FDFABA718ED642D8F389147B45237D737B65C9724F15A41FF30D768
        728011A1AC507DDAB307C5B93F086C401BD2D41125D5695F12FF1B00390919D1
        8AE376380000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bextornarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      Enabled = False
      Layout = blGlyphTop
      ExplicitLeft = 400
      ExplicitTop = 36
      ExplicitHeight = 63
    end
  end
  object bdesliga_filtro: TBitBtn
    Left = 166
    Top = 148
    Width = 179
    Height = 25
    Caption = 'Desligar filtro'
    TabOrder = 6
    Visible = False
    OnClick = bdesliga_filtroClick
  end
  object Panel4: TPanel
    Left = 0
    Top = 399
    Width = 811
    Height = 62
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 7
    object Label16: TLabel
      Left = 792
      Top = 119
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A pagar:'
    end
    object Label17: TLabel
      Left = 974
      Top = 118
      Width = 38
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pagas:'
    end
    object Label2: TLabel
      Left = 27
      Top = 24
      Width = 43
      Height = 13
      Caption = 'A vencer'
    end
    object Image2: TImage
      Left = 6
      Top = 23
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7
        E3CAAA9BA16A508F573D8D563D996851C5A99BEEE7E3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDFC8BDA26547B17F56D4B692DAC2A5D9C2A5D1B38F
        AA7951915F47D8C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA25B3BCAA6
        7CD7BA9EC29B76B58961B3855FBD9571D0B296C4A27688563DD8C6BDFFFFFFFF
        FFFFFFFFFFF4ECE4B37749CEA980D9BBA1BD9065B98B61B6885EB2835DB0825C
        AF825BCCA98CC5A478946148EFE8E4FFFFFFFFFFFFDBBC9BBE905DDFC1A7C495
        6BC19068E0CAB7FDFCFBFEFEFDE9DBCFB3845DB2845DD3B498AD7A55C7A99BFF
        FFFFFFFFFFC58F51DABB9BD4AC88C6976BC29468C09266ECDED2F9F6F3BA8A62
        B88962B78961C49C77D1B7929F6951FFFFFFFFFFFFC0823BE2C6AECFA175C498
        6AC39669C39568EDDFD3FAF6F3BE8F65BD8E64BD8E63BD9168DEC5A995553AFF
        FFFFFFFFFFC68841E3C8AFCFA279CB9C70C6996BC4976AFEFEFEFEFEFDC29568
        C09367C19367C2976CDEC4AA98583AFFFFFFFFFFFFD19D5BDFBB9EDAB292CE9F
        74CC9D71CA9B70DCBEA2DCBEA1C4986AC4986AC3976AD0AA84D7B996AB6D51FF
        FFFFFFFFFFE6C8A4CC9B67E6CAB3D3A479CF9F76CE9D73FAF7F4FAF7F4CA9D70
        CA9C70CCA076DEBFA4B8895AD2AE9AFFFFFFFFFFFFF9F0E7D29959D8B18BE5C9
        B2D5A87CD0A478E1C3A7E0C2A7CFA175D0A376DCBCA1CFAB84B37549F3EAE4FF
        FFFFFFFFFFFFFFFFF1DCC5D0914ED8B18BE5CCB7DFB99CD6AA84D5A881D8B290
        E0C1AAD3AD85B3703DE5D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DDC5D59B
        5ACF9F69DFBE9FE2C4ADE2C4ADDEBB9EC79661C38948E9D5BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7E9CBA7D7A164CE904DCC9049D09B5A
        E3C6A1F7EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Label15: TLabel
      Left = 107
      Top = 24
      Width = 72
      Height = 13
      Caption = 'Vencendo Hoje'
    end
    object Image6: TImage
      Left = 86
      Top = 23
      Width = 16
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC8EC2CA6DF2AA3DE28A0DC269D
        DB249AD92297D81F92D51A8BD21584CE107DCB0C76C80870C5056BC20267C05D
        9CD647B5E5BDE2F4F3FBFDEEFAFDEDFAFDEDFAFDEEFBFDEEFBFDEEFAFDEDFAFD
        ECFAFDECFAFDEBFAFDF1FBFDAACDEA297ECAC3E7F761BEE7F3FBFDB4EEF957D9
        F457D9F456D7F257D6F157D5F156D8F350D7F44DD6F361D9F5E9FAFD4392D1B5
        D4EDFFFFFF5DC0EA9CD6F0E6F8FC8AE4F759DAF55AD9F33CA0D43CA0D453D5F1
        51D7F44FD5F3D7F5FB87BEE454A0D8FFFFFFFFFFFFE2F4FB36B1E4F2FAFDC2F1
        FA5BDBF55BD9F363DEF556CAEA54D5F153D8F493E6F7E2F3FA1B89D0DEEDF8FF
        FFFFFFFFFFFFFFFF78CCEE8BD1EFE9FAFD93E5F75BD9F346B0DC3CA0D455D6F1
        5BDAF4DDF7FC7CBFE687C3E8FFFFFFFFFFFFFFFFFFFFFFFFF6FCFE44B9E7C7E9
        F6E5F9FC5CD9F33CA0D43CA0D456D6F1C6F2FBBFE2F33AA3DCF5FAFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB8E5F770C7ECF8FDFE5DDBF33DA1D43DA1D45BD8F3
        ECFAFD67BAE4B2DCF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59C2
        EBA8DEF3ECF8FC3DA2D53DA2D5D3F4FBA1D6F05CB8E5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAF2FB39B7E7F8FCFE93E8F89DEAF9EBF9FD
        30A9E0D7EEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF73CDEF93D7F1F2FBFDE6F9FD8ED2EF85CEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FAFE43BDE9F0F9FCD4EEF942B7E7
        F1F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8CD7F384D3F081D0EFACE0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF5CC6EE68C9EEFDFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Image7: TImage
      Left = 199
      Top = 23
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6
        F79AA6E34C61CB354EC4334CC2455CC694A1DEE1E4F5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFC7EF4B62D05163D3838FE6949FED949EEC828DE4
        4B5CCD3C53C3B8C0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CAF1465FD47483
        E2A0ABF37E8AEB5B66E35A65E27C86E99EA7F06E7BDC314AC1B8C1E9FFFFFFFF
        FFFFFFFFFFE7EAFA586FDD7787E5A2AFF45666E65564E58891EC8791EB525EE1
        515CE09EA8F16E7CDC4056C6E2E6F6FFFFFFFFFFFFA7B4F05F72DFA3B2F6596D
        EA586BE95768E7FEFEFEFEFEFE5461E45360E2525EE19EA8F14F60D097A3E0FF
        FFFFFFFFFF6A81E88D9EEF8398F35B72ED5A6FEB596DEA8F9CF0A5AEF25666E6
        5564E55461E47C88EA8490E64D63CDFFFFFFFFFFFF5C75E99FB2F6647FF15E77
        EF5C75EE5B72EDD2D8F9FEFEFE586BE95768E75666E65C6BE698A4F03B54CBFF
        FFFFFFFFFF607AEDA0B5F76683F35F7BF25E79F05E77EFFEFEFEFEFEFE5A6FEB
        596DEA586BE95E6EE89AA7F04058CFFFFFFFFFFFFF758CF290A5F287A0F7617F
        F3607DF25F7BF2FEFEFEFEFEFE5C75EE5B72ED5A6FEB8192F08897EB586FD7FF
        FFFFFFFFFFB1BFFA6B80EBA8BCFA6281F46180F4617FF3FEFEFEFEFEFE5E79F0
        5E77EF5C75EEA4B4F75C6FDCA2AEEBFFFFFFFFFFFFEBEEFE748BF68296EFA8BC
        FA6281F46281F4FEFEFEFEFEFE607DF25F7BF2A5B8F87A8CE95C73E0E6EAFAFF
        FFFFFFFFFFFFFFFFCED6FD6C85F78396F0A8BCFA89A2F76A88F56A88F588A1F7
        A7BBF97E91EB5971E4C5CEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED7FD768D
        F96D82ED91A5F39FB3F79FB3F790A5F2677CE86880ECC8D0F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEFEB5C2FC7C93F96B85F66983F5768EF4
        B0BDF8E9ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Label22: TLabel
      Left = 219
      Top = 24
      Width = 42
      Height = 13
      Caption = 'Vencidas'
    end
    object Label23: TLabel
      Left = 303
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Pagas'
    end
    object Image8: TImage
      Left = 282
      Top = 23
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EE
        E08FBF913A8C3E2479282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C695
        3C964B307B33B4D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD
        82A7DAB486CB9765BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFF
        FFFFFFFFFFE1F2E432A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E
        5AB673A4D8B268B77E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0
        785EBD7074C484D3EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FF
        FFFFFFFFFF3EB45C90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA95
        56B66C5AB87184CB9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C9
        7FEFF8F0FEFEFEEAF6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FF
        FFFFFFFFFF2DB650A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFE
        FAFCFB8BCF9868C07DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C8
        7563C56E60C36D60C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFF
        FFFFFFFFFF9ADEAC56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370
        B5E2BD6EC67DABDEB447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0
        B46CCB7969C97567C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FF
        FFFFFFFFFFFFFFFFBFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79C
        ADE0B477C78A26A03AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C7
        6858C17395D6A2A4DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A
        97DBAAE1F5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Panel5: TPanel
      Left = 369
      Top = 3
      Width = 209
      Height = 58
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 209
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Caption = 'A Pagar'
        Color = 3684661
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object rpagar: TJvCalcEdit
        Left = 0
        Top = 22
        Width = 209
        Height = 36
        Margins.Left = 1
        Margins.Top = 1
        Align = alClient
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        ExplicitLeft = 20
        ExplicitTop = 27
        ExplicitWidth = 167
        ExplicitHeight = 24
      end
    end
    object Panel7: TPanel
      Left = 591
      Top = 3
      Width = 209
      Height = 58
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 209
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Pagas'
        Color = 3684661
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object rpaga: TJvCalcEdit
        Left = 0
        Top = 22
        Width = 209
        Height = 36
        Margins.Left = 1
        Margins.Top = 1
        Align = alClient
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        ExplicitTop = 27
      end
    end
  end
  object btotal: TButton
    Left = 592
    Top = 352
    Width = 75
    Height = 25
    Caption = 'totalizacao'
    TabOrder = 8
    Visible = False
    OnClick = btotalClick
  end
  object qrcontaspagar: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontaspagarCalcFields
    AfterInsert = qrcontaspagarAfterInsert
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 280
    Top = 280
    object qrcontaspagarFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 4
      FieldName = 'FILTRO'
    end
    object qrcontaspagarsituacao2: TIntegerField
      DisplayLabel = ' ?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontaspagarDATA_VENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontaspagarfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object qrcontaspagarHISTORICO: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 33
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcontaspagarNOTAFISCAL: TWideStringField
      DisplayLabel = 'NF'
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrcontaspagarDOCUMENTO: TWideStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 13
      FieldName = 'DOCUMENTO'
    end
    object qrcontaspagarESPECIE: TWideStringField
      DisplayLabel = 'Esp'#233'cie'
      DisplayWidth = 10
      FieldName = 'ESPECIE'
    end
    object qrcontaspagarVALOR: TFloatField
      DisplayLabel = 'Valor - R$'
      DisplayWidth = 11
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarconta: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'codconta'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrcontaspagarCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontaspagarDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontaspagarDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontaspagarCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcontaspagarVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarC: TWideStringField
      FieldName = 'C'
      Visible = False
      Size = 1
    end
    object qrcontaspagarE: TWideStringField
      FieldName = 'E'
      Visible = False
      Size = 1
    end
    object qrcontaspagarSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontaspagarCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontaspagarCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 240
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Pagamento1: TMenuItem
      Caption = 'Pagamento'
      ShortCut = 115
      OnClick = Pagamento1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = Localizar1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Filtro1: TMenuItem
      Caption = 'Filtro'
      ShortCut = 119
      OnClick = Filtro1Click
    end
    object Extornar1: TMenuItem
      Caption = 'Extornar'
      ShortCut = 120
      OnClick = Extornar1Click
    end
    object otalizar1: TMenuItem
      Caption = 'Totalizar'
      ShortCut = 121
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 432
    Top = 208
    Bitmap = {
      494C0101050009001C000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1E7E300CAAA9B00A16A50008F573D008D56
      3D0099685100C5A99B00EEE7E300000000000000000000000000000000000000
      00000000000000000000E0EEE0008FBF91003A8C3E0024792800247628003A84
      3E008FB99100E0EBE00000000000000000000000000000000000000000000000
      000000000000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1
      DE00E1E4F500000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000DFC8BD00A265
      4700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F4700D8C6
      BD000000000000000000000000000000000000000000B5D9B600308E3400419F
      510086C999009AD2AA009AD1AA0082C695003C964B00307B3300B4D0B6000000
      000000000000000000000000000000000000BFC7EF004B62D0005163D300838F
      E600949FED00949EEC00828DE4004B5CCD003C53C300B8C0E900000000000000
      0000C8926CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FF0000
      000000000000E2CCBD00A25B3B00CAA67C00D7BA9E00C29B7600B5896100B385
      5F00BD957100D0B29600C4A2760088563D00D8C6BD0000000000000000000000
      0000B5DBBA00248E29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA
      9700A4D8B30065B67C0023712600B4D0B600000000000000000000000000C1CA
      F100465FD4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7
      F0006E7BDC00314AC100B8C1E90000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000F4ECE400B3774900CEA98000D9BB
      A100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA98C00C5A4
      780094614800EFE8E40000000000E1F2E40032A0430071C18600A7DAB1005FBB
      76005BB9720058B76F0058B46E0057B46E005AB67300A4D8B20068B77E00307F
      3400E0ECE10000000000E7EAFA00586FDD007787E500A2AFF4005666E6005564
      E5008891EC008791EB00525EE100515CE0009EA8F1006E7CDC004056C600E2E6
      F600CC976FFFFFFFFFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFD
      FAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFCF7FFFBFBF6FFFFFFFFFFAC7554FF0000
      0000DBBC9B00BE905D00DFC1A700C4956B00C1906800E0CAB700FDFCFB00FEFE
      FD00E9DBCF00B3845D00B2845D00D3B49800AD7A5500C7A99B00000000008FD2
      9F004BAF6300A9DCB30063C078005EBD700074C48400D3EBD80089CC980055B5
      6B0057B46D005BB67300A5D9B300409A4D008EBB900000000000A7B4F0005F72
      DF00A3B2F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360
      E200525EE1009EA8F1004F60D00097A3E000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000C58F5100DABB9B00D4AC8800C697
      6B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B7896100C49C
      7700D1B792009F695100000000003EB45C0090D19E008CD3990063C2730078C8
      8600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8710084CB960086C6
      99003A8A3E00000000006A81E8008D9EEF008398F3005B72ED005A6FEB00596D
      EA008F9CF000A5AEF2005666E6005564E5005461E4007C88EA008490E6004D63
      CD00D49E75FFFFFFFFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFC
      F8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFF0000
      0000C0823B00E2C6AE00CFA17500C4986A00C3966900C3956800EDDFD300FAF6
      F300BE8F6500BD8E6400BD8E6300BD916800DEC5A90095553A000000000026AF
      4800A5DBAE006FC97E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFC
      FB0087CC95005AB8700066BD7C009FD6AE00227E2500000000005C75E9009FB2
      F600647FF1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768
      E7005666E6005C6BE60098A4F0003B54CB00D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000C6884100E3C8AF00CFA27900CB9C
      7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C1936700C297
      6C00DEC4AA0098583A00000000002DB65000A6DCB00071CB7F0065C67200AFE0
      B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6
      AD002283250000000000607AED00A0B5F7006683F3005F7BF2005E79F0005E77
      EF00FEFEFE00FEFEFE005A6FEB00596DEA00586BE9005E6EE8009AA7F0004058
      CF00D8A279FFFFFFFFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7
      F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF0000
      0000D19D5B00DFBB9E00DAB29200CE9F7400CC9D7100CA9B7000DCBEA200DCBE
      A100C4986A00C4986A00C3976A00D0AA8400D7B99600AB6D5100000000004AC4
      6B0094D6A00090D69A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3
      BF00FEFEFE00E2F3E5008AD098008ACD9C003B983F0000000000758CF20090A5
      F20087A0F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72
      ED005A6FEB008192F0008897EB00586FD700D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000E6C8A400CC9B6700E6CAB300D3A4
      7900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA07600DEBF
      A400B8895A00D2AE9A00000000009ADEAC0056BE6F00AEE0B6006CCB790067C7
      710064C66F0062C46D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A8
      5D008EC7930000000000B1BFFA006B80EB00A8BCFA006281F4006180F400617F
      F300FEFEFE00FEFEFE005E79F0005E77EF005C75EE00A4B4F7005C6FDC00A2AE
      EB00DBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF0000
      0000F9F0E700D2995900D8B18B00E5C9B200D5A87C00D0A47800E1C3A700E0C2
      A700CFA17500D0A37600DCBCA100CFAB8400B3754900F3EAE40000000000E4F7
      E90048C465007ECD8F00ADE0B4006CCB790069C9750067C7710067C7730067C7
      74006AC87800ABDEB30075C3880032A04200E1F1E30000000000EBEEFE00748B
      F6008296EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7B
      F200A5B8F8007A8CE9005C73E000E6EAFA00DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF0000000000000000F1DCC500D0914E00D8B1
      8B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD8500B370
      3D00E5D0BD00000000000000000000000000BFECCA003CC25B007ECD8F00AEE0
      B60091D79C0076CD820076CD820091D79C00ADE0B40077C78A0026A03A00B5DF
      BD00000000000000000000000000CED6FD006C85F7008396F000A8BCFA0089A2
      F7006A88F5006A88F50088A1F700A7BBF9007E91EB005971E400C5CEF5000000
      0000DDAC85FDE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFD0000
      00000000000000000000F1DDC500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4
      AD00DEBB9E00C7966100C3894800E9D5BD000000000000000000000000000000
      000000000000C0ECCB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5
      A0004FB8690034B25400B6E3C100000000000000000000000000000000000000
      0000CED7FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677C
      E8006880EC00C8D0F8000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000000000000000000000000000FAF1
      E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EEE4000000
      0000000000000000000000000000000000000000000000000000E5F7E9009EE2
      B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5E700000000000000
      00000000000000000000000000000000000000000000EAEEFE00B5C2FC007C93
      F9006B85F6006983F500768EF400B0BDF800E9ECFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000003C0000001E0000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      000000000000000080000000000000008000000000000000C002000000000000
      C002000000000000E006000000000000F00E000000000000F00E000000000000
      F81E000000000000F81E000000000000FC3E000000000000FC3E000000000000
      FFFE000000000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object Qrsoma: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Params = <>
    Left = 192
    Top = 72
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Contas a Pagar'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 712
    Top = 336
  end
end
