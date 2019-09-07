object frmcontasreceber: Tfrmcontasreceber
  Left = 340
  Top = 134
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONTAS A RECEBER | M'#243'dulo de Consulta e Baixa'
  ClientHeight = 644
  ClientWidth = 870
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 11
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label17: TLabel
      Left = 303
      Top = 11
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label18: TLabel
      Left = 496
      Top = 11
      Width = 33
      Height = 13
      Caption = '&Carn'#234':'
    end
    object Label23: TLabel
      Left = 715
      Top = 11
      Width = 73
      Height = 13
      Caption = 'F10 | Situa'#231#227'o:'
    end
    object Label48: TLabel
      Left = 404
      Top = 11
      Width = 34
      Height = 13
      Caption = '&Boleto:'
    end
    object Label49: TLabel
      Left = 588
      Top = 11
      Width = 36
      Height = 13
      Caption = '&Ordem:'
    end
    object Edit3: TEdit
      Left = 348
      Top = 7
      Width = 51
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clWhite
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object edit1: TRzButtonEdit
      Left = 50
      Top = 7
      Width = 246
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 16460
      AltBtnWidth = 15
      ButtonWidth = 22
      OnButtonClick = edit1ButtonClick
    end
    object edit2: TRzEdit
      Left = 531
      Top = 7
      Width = 52
      Height = 21
      Text = ''
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 3
      OnEnter = edit2Enter
      OnExit = edit2Exit
      OnKeyPress = Edit2KeyPress
    end
    object combo_situacao: TComboBox
      Left = 790
      Top = 7
      Width = 75
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 0
      TabOrder = 4
      Text = 'Abertas'
      OnChange = combo_situacaoChange
      Items.Strings = (
        'Abertas'
        'Vencidas'
        'Recebidas'
        'Todas')
    end
    object bfiltrar: TButton
      Left = 1064
      Top = 23
      Width = 57
      Height = 25
      Caption = 'filtrar cliente'
      TabOrder = 1
      Visible = False
      OnClick = bfiltrarClick
    end
    object edit4: TRzEdit
      Left = 440
      Top = 7
      Width = 52
      Height = 21
      Text = ''
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 2
      OnEnter = edit2Enter
      OnExit = edit4Exit
      OnKeyPress = edit4KeyPress
    end
    object combo_ordena: TComboBox
      Left = 628
      Top = 7
      Width = 82
      Height = 21
      Style = csDropDownList
      Color = clWhite
      ItemIndex = 4
      TabOrder = 6
      Text = 'Data Pagto'
      OnChange = combo_ordenaChange
      Items.Strings = (
        'Data Venda'
        'Venda/N'#186
        'Documento'
        'Vencimento'
        'Data Pagto')
    end
  end
  object PageView1: TPageView
    Left = 0
    Top = 104
    Width = 868
    Height = 474
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = 13230308
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 1
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 868
      Height = 474
      Caption = 'F1 | Rela'#231#227'o de Contas'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 868
        Height = 317
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size'
          'SITUACAO2;ImageIndex;Original Size')
        Selected.Strings = (
          'FILTRO'#9'2'#9'S'
          'SITUACAO2'#9'3'#9' ?'#9'F'
          'DATA_EMISSAO'#9'12'#9'Data Venda'#9'F'
          'CODVENDA'#9'11'#9'Venda/N'#186#9'F'
          'NUMERO_CUPOM'#9'8'#9'C.Fiscal'#9'F'
          'DOCUMENTO'#9'11'#9'Documento'#9'F'
          'DATA_VENCIMENTO'#9'12'#9'Vencimento'
          'VALOR_ORIGINAL'#9'11'#9'Vlr.Orignal'#9'F'
          'VALOR_PAGO'#9'11'#9'Vlr.Pago'#9'F'
          'DATA_PAGAMENTO'#9'12'#9'Data Pgto'#9'F'
          'VALOR_ATUAL'#9'10'#9'Vlr.Atual'#9'F'
          'juros'#9'9'#9'Juros/Multa'#9'F'
          'DIAS'#9'4'#9'Dias'#9'F'
          'RESTANTE'#9'11'#9'L'#237'quido'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dscontasreceber
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
        UseTFields = False
        OnTitleButtonClick = wwDBGrid1TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        OnEnter = wwDBGrid1Enter
        OnExit = wwDBGrid1Exit
        OnKeyPress = wwDBGrid1KeyPress
        ImageList = ImageList1
        PaintOptions.AlternatingRowColor = 16053492
        PaintOptions.ActiveRecordColor = clBlack
        object wwDBGrid1IButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
        end
      end
      object DBEdit1: TDBEdit
        Left = 304
        Top = 64
        Width = 121
        Height = 21
        DataField = 'NOSSONUMERO'
        DataSource = dscontasreceber
        TabOrder = 1
        Visible = False
        OnChange = DBEdit1Change
      end
      object FlatPanel3: TPanel
        Left = 0
        Top = 351
        Width = 868
        Height = 23
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        TabOrder = 2
        object Label13: TLabel
          Left = 7
          Top = 3
          Width = 64
          Height = 13
          Caption = 'Retirado Por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 75
          Top = 4
          Width = 206
          Height = 16
          DataField = 'RETIRADO_POR'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel3: TBevel
          Left = 430
          Top = 1
          Width = 2
          Height = 20
        end
        object Label46: TLabel
          Left = 287
          Top = 3
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText21: TDBText
          Left = 315
          Top = 3
          Width = 113
          Height = 16
          DataField = 'TIPO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pselecao: TPanel
          Left = 524
          Top = 1
          Width = 342
          Height = 19
          Color = clRed
          TabOrder = 0
          object Label15: TLabel
            Left = 8
            Top = 3
            Width = 169
            Height = 13
            Caption = 'Total das Presta'#231#245'es Selecionadas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object rselecao: TJvCalcEdit
            Left = 227
            Top = 2
            Width = 115
            Height = 16
            Margins.Left = 1
            Margins.Top = 0
            AutoSize = False
            BorderStyle = bsNone
            Color = clRed
            DisplayFormat = 'R$ ###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -11
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
      end
      object FlatPanel5: TPanel
        Left = 0
        Top = 374
        Width = 868
        Height = 62
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object Label19: TLabel
          Left = 535
          Top = 4
          Width = 73
          Height = 13
          Caption = 'Nosso N'#250'mero:'
        end
        object Label20: TLabel
          Left = 7
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Banco:'
        end
        object Label21: TLabel
          Left = 223
          Top = 4
          Width = 42
          Height = 13
          Caption = 'Ag'#234'ncia:'
        end
        object Label22: TLabel
          Left = 356
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Conta:'
        end
        object DBText2: TDBText
          Left = 614
          Top = 4
          Width = 177
          Height = 17
          Cursor = crHandPoint
          Hint = 'Clique aqui para alterar/incluir o Nosso N'#250'mero...'
          DataField = 'NOSSONUMERO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = DBText2Click
        end
        object DBText3: TDBText
          Left = 45
          Top = 4
          Width = 169
          Height = 17
          DataField = 'banco'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 270
          Top = 4
          Width = 57
          Height = 17
          DataField = 'agencia'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 395
          Top = 4
          Width = 105
          Height = 17
          DataField = 'conta'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText22: TDBText
          Left = 327
          Top = 4
          Width = 21
          Height = 17
          DataField = 'AGENCIADIG'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label50: TLabel
          Left = 320
          Top = 4
          Width = 5
          Height = 13
          Alignment = taCenter
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 506
          Top = 3
          Width = 18
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText23: TDBText
          Left = 502
          Top = 4
          Width = 27
          Height = 17
          DataField = 'CONTADIG'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object FlatPanel2: TPanel
        Left = 0
        Top = 319
        Width = 868
        Height = 30
        BevelOuter = bvNone
        Color = clWhite
        Enabled = False
        ParentBackground = False
        TabOrder = 4
        object Label1: TLabel
          Left = 435
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Subtotal:'
        end
        object Label2: TLabel
          Left = 585
          Top = 8
          Width = 30
          Height = 13
          Caption = 'Juros:'
        end
        object Label3: TLabel
          Left = 722
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object Label41: TLabel
          Left = 200
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Pago:'
        end
        object Label42: TLabel
          Left = 48
          Top = 8
          Width = 40
          Height = 13
          Caption = 'Original:'
        end
        object Bevel17: TBevel
          Left = 351
          Top = 3
          Width = 2
          Height = 24
        end
        object rvalor: TJvCalcEdit
          Left = 483
          Top = 4
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object rjuro: TJvCalcEdit
          Left = 620
          Top = 4
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object rtotal: TJvCalcEdit
          Left = 754
          Top = 4
          Width = 97
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object rpago: TJvCalcEdit
          Left = 232
          Top = 4
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object roriginal: TJvCalcEdit
          Left = 96
          Top = 4
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
      end
      object button1: TAdvGlowButton
        Left = 2
        Top = 319
        Width = 31
        Height = 31
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
          786D702E6969643A393641313230423132434342313145344131464238373045
          42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
          6469643A39364131323042323243434231314534413146423837304542434346
          36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
          696E7374616E636549443D22786D702E6969643A353343344531303032434342
          3131453441314642383730454243434636374238222073745265663A646F6375
          6D656E7449443D22786D702E6469643A39364131323042303243434231314534
          41314642383730454243434636374238222F3E203C2F7264663A446573637269
          7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
          3F787061636B657420656E643D2272223F3EA0A53635000004D74944415478DA
          AC57CD8B1C5510AFD7AFBB77268E598DE8C1889204B36E563DE4A2C86258311A
          881050F7623E2E91F5A257FF889CBD04152151FC88208A8A5F183789A0203944
          8399D5088A8AC96A26D999ED9EFEF657DD35EB6C7F4D067CEC6FB7B75EBDAA7A
          F5D5D5EAB1D7BEA33197057C083C90A37F0B3C0104E3083369FCB50DD80DA81C
          9D695B81F638C28C9ABD8D15F4E912E524B4E98A33AD710D9803BE073E076672
          7B77D7189DDF9B11193F88CCEB32E011E05DE04EE051E024F0ACC4FE3E605F8D
          01FB84C792332745C65D22B36084CA25212B3F016C2A117E16D85EE74E593D60
          09D859B2B70C3C059C2EF3C08DC0EB15CA4904B68A615765F1DE5921E356E06D
          D15530C003CE8F4C5BA53224097EA214FCBC461FBDCE8BAE4219FAC00BC0D7A5
          5E10E191D7A7A8BF4A910F197124D7D0A4ED09D28D1B484F34321A1B555C5780
          E7455769125E005E04C2BCF2248EC9BFFA3779572E51D05BA124F099D64B8167
          A6F11EF3306F89374291DD1E5505AF02E7D6DD1C02BDABCB14ACAEF0CD7CA5F5
          51D2FA71C3B2A718FC9CD2B0C73CCC4B4523CE89EC919D704AB27D2DCDBC6E87
          22D72128FB5D99D68138F0167367FE04E367BAD17C2B0E82E3E0BDC3D71D9A98
          BC858602B15D64B7F30698D25E678469EF20DB9532106B9742A7CB4175ACD6E4
          33CA304EF73B2E29C47DDD42CCCD66EBABA411EFF73ACB9FE04CD36C2227EC26
          B6E24175BC027C244670325E64E51F03B340B32C6B427715EE4C38D18E457E1F
          F59B54667BE8ADB2D9A760DC3184E0393ECB060CAD59012F97FB01E7C0C355CA
          B9C438DBA13286D21321C210BA6E1A98242DC30C03A3C23EBCD57760AC7A87CF
          A46793A8AA1C59E72EF6401F98287BB7B0EB34841B96E990695F285666E68924
          CE3524856A528103092D36904349545A96FDCAD731EE461A71DEB26D0B2EA428
          E030A87521CF44A60A8A21B10D85C825F4DB8A4711F3D4BC0D1B754690619065
          EA0D5A1BD383D66BE046B6A9C9D406A0B16FA4462AE986A0EFE0337C36A9EF8A
          0D36605112A2D0E5B9949D20E267E69BD7B8950944D8C8E24F6B7FF996BC67B2
          2109CDF3193E9BB68372E5AC73D194B2DB2A653825FFCF9244ADDB0FE9A60993
          2C431DB2B47A930F857152B819DFBE6119AC6C971F2507D9FD7C36599F1D6772
          65F88B292D7249C0EB3D80DFD12D5C28F5C03508BAB9693583287903F483F29E
          2F780CFB7370D57178A2D97182F4ACF15F7EF4644618D98ADB43C6A4315D767C
          EAF92169459B41F914DE380AF21E3CDFCE808A3D26D3B007859B7B5E949EC9F5
          8BA5B279B1AC0A0E03F70FDF2C821FFFE87A74DB069B261BA6656B630159B060
          2ABE15271FBC4559D677DC802EE3F6B9A221917938FF3EC81B700F70244F4F13
          1202FFEAF9740D9ED8689BD4B4500546D6B243F41A3708A98B3DC7CFB24E954F
          E047240FDA6506D8C04B551391925FACC0F57D32D45023C2CD63E90B46FD4CB2
          4974EC1DCC04C3067037DC31728E57831E41A9CBD7063355596E543229DB0303
          8693905F79FB656AA18AA1B4377222CC78CE56C8F80738302C275F055C5EF339
          232E4BF93C083C24235BD53A233CCCBB2053F0F044FC24F0E5A8326486A7815F
          E5A3624E3237908F95F76B0CF8407898F76539FB85C862E5A7AEF7DB903D716F
          DEE5B27EAE31E0A7920978B78CE1DD71BF0D7B15F41F2BDEAD89EC95ADEEFFF9
          757C514293FF3CFF867BFBB8C2FE156000F730EDFA36FE11110000000049454E
          44AE426082}
        Transparent = True
        TabOrder = 5
        OnClick = button1Click
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
      end
      object plegenda: THeaderView
        Left = 3
        Top = 56
        Width = 241
        Height = 252
        AdaptiveColors = True
        BorderStyle = bsNone
        HeaderColor = 3684661
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -16
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderSize = 273
        ParentColor = False
        Visible = False
        object HeaderView3: THeaderView
          Left = 3
          Top = 3
          Width = 235
          Height = 246
          AdaptiveColors = False
          BorderStyle = bsNone
          Caption = 'Legenda'
          Color = clWhite
          HeaderColor = 3684661
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindow
          HeaderFont.Height = -11
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          HeaderSize = 16
          ParentColor = False
          object Image1: TImage
            Left = 8
            Top = 24
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
          end
          object Image3: TImage
            Left = 8
            Top = 48
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
          end
          object Image4: TImage
            Left = 8
            Top = 72
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
          end
          object Image5: TImage
            Left = 8
            Top = 96
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
          end
          object Label8: TLabel
            Left = 32
            Top = 24
            Width = 43
            Height = 13
            Caption = 'A vencer'
          end
          object Label9: TLabel
            Left = 32
            Top = 48
            Width = 72
            Height = 13
            Caption = 'Vencendo Hoje'
          end
          object Label10: TLabel
            Left = 32
            Top = 72
            Width = 42
            Height = 13
            Caption = 'Vencidas'
          end
          object Label11: TLabel
            Left = 32
            Top = 96
            Width = 29
            Height = 13
            Caption = 'Pagas'
          end
          object Label5: TLabel
            Left = 8
            Top = 136
            Width = 172
            Height = 13
            Caption = '-------------------------------------------'
          end
          object ltaxa: TLabel
            Left = 144
            Top = 152
            Width = 73
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,33%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lmulta: TLabel
            Left = 144
            Top = 168
            Width = 73
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '2,00%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lcarencia: TLabel
            Left = 144
            Top = 184
            Width = 73
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '10 dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 8
            Top = 195
            Width = 172
            Height = 13
            Caption = '-------------------------------------------'
          end
          object Image2: TImage
            Left = 8
            Top = 120
            Width = 15
            Height = 15
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              000010000000010020000000000000040000C40E0000C40E0000000000000000
              0000FFFFFF00FFFFFF0060A664315BA25FCC569F5A4BFFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF001D57C4780345B9DF0442BCFE0345B9E30345B87AFFFF
              FF00FFFFFF006AAE6E0565AA69AF60A665FD6BAE6FFF4C9750FB529C56344E99
              5222FFFFFF001A57C3802564C9FB2177E6FF0579EAFF0164DDFF044DBDFC0345
              B87AFFFFFF006FB274277CBB81FCB7DEBBFF67AC6CFF75B67AFF4E9851FE539C
              57B84F99537A0345B9E3639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF0345
              B9E4FFFFFF0075B67A9B9CCDA0FF6FB273FF8DC792FFAADCAFFF76B67BFF519B
              55FF77B77BFF0442BCFFAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF0442
              BCFE7FBE84197BBB80FF77B77CFF91CB97FFABDEB1FF9CD7A2FFAADDB0FF77B7
              7CFF60AC65FF1A58B8FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF0344
              B9DE7FBD84A07FBD84FF97CE9CFFADDFB3FF6FB374FF96D59DFF9DD8A3FFAADD
              B0FF78B87CFF4B8C9AFF3B76D1FF8DB5F7FFB8D6FEFF72A8F5FF2D6BCAFD1153
              A18A7BBB80FF8EC893FFAFDFB5FFA1DAA7FF98D79FFF97D69EFF7EC083FF82C1
              87FFABDDB0FF79B97DFF438693FF235FC1FF0543BCFF1857BAFF2B7283FF4592
              49118DC9937D7DBB82FF8FC894FFB0E0B6FFA2DAA8FF7FC185FFA4D0A7FFDDEE
              DFFF80B883FFABDEB1FF7AB97FFF569F5AFFC4E7C8FF78B87CFF4E995284FFFF
              FF00FFFFFF008EC993257DBC82FA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C2
              97FFDDEEDFFF82C287FFABDEB1FF7BBA7FFF58A05CFF59A15DFF539C5704FFFF
              FF00FFFFFF00FFFFFF00FFFFFF007EBD83F691CA96FFB1E0B6FFD9F3DDFFF7FC
              F8FFA4D0A7FF7EC084FF9FD9A5FFACDEB2FF7BBB80FF569F5AFBFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007FBE85F592CB97FFB1E1B6FF85C3
              8AFF80C185FF99D7A0FF98D79FFF9FD9A5FFACDFB2FF7DBB81FF58A05CF6FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0081BF86F593CC98FFB1E1
              B7FFA3DBA9FF9BD8A2FF73B477FFAFDFB4FF87C38CFF65AA69FF5DA4610EFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0082C087F594CC
              99FFB2E2B7FFA3DCAAFFB0E0B6FF8CC692FF6EB173FF66AB6B0EFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0083C1
              88F594CD9AFFB3E2B7FF93CB98FF77B77CFF70B2740EFFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0084C28AF596CD9BFF80BE85FF79B97E0EFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0086C38BF582C0870EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00}
            Stretch = True
          end
          object Label7: TLabel
            Left = 32
            Top = 120
            Width = 86
            Height = 13
            Caption = 'Cr'#233'dito do Cliente'
          end
          object Label6: TLabel
            Left = 16
            Top = 152
            Width = 102
            Height = 13
            Caption = 'Taxa de Juros Di'#225'ria:'
          end
          object Label12: TLabel
            Left = 16
            Top = 168
            Width = 84
            Height = 13
            Caption = 'Multa por Atraso:'
          end
          object Label14: TLabel
            Left = 16
            Top = 184
            Width = 46
            Height = 13
            Caption = 'Car'#234'ncia:'
          end
          object bfechar_legenda: TAdvGlowButton
            Left = 119
            Top = 205
            Width = 112
            Height = 40
            Caption = 'Fechar'
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
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
              7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
              1F900000053F4944415478DAC4974F885C551687BF73EE7D55A94E5226817455
              9B40A24C70E3C6859B9861C20C3303AE14375192744750D21D9C888BD1EECDEC
              BA1D611699907F0EE44F47548691590EE8E028C4B8C8226E4517061CD3550D89
              5D095657BD7BEF71F1AA5B43EA75060DCC81BB7A70BE73CFFD9DDF7D57FEB377
              2F2B11A3B1AEE6D83A5AA3DFEB6326281ED43C2EFD0E9327BCEAEE84EDC0E401
              00C49614B91652BA8CD827447D9F24211110312AD50A8BED2ECBDD8873B2CAF2
              94849901D4D47354549E07B74B44300C416035876C3178C8ABDB6B1878BEB0C4
              D914EC989975CBF26B1954D53DEB3377551D73C02E00C3282DF4876FBBD431E7
              337755D53D3BD8C0DDE094A058468C8625438459E7FDDBA2EE112B6795176120
              EA1E71DEBF2DC2AC0D72A764ACF07C960D1A264A561136D6B379900360F013A0
              77D08BCCD31BEB95ED467E50B09523C4D7EB456BB34A46A5529D35EC404A3F87
              7867A464D446FC819191ECEB7EBF3793F7FB88086A565461C633C96CFA7E427F
              0C4F66D3663CB3C25391753857F3CEFB63654248BD1E962288946717C15224F5
              7AA553E2BC3FE65CCD8BAC433187F7EE1555DD5696D0ADDF40EA762186E17011
              8881D4EDE2D66F282D5055B779EF5EC11CEA3D5575BC3C4C49A9B78C78CFCED9
              E38CEE9BA0DF5EC0427E6762112CE4F4DB0B8CEE9B60E7EC71C47B526F79E8D0
              A9E365EFADAAD1C73DA23236ACCB9265846F6FD2B9F4215BF71DA2313149DE5E
              C0F2015C04CB73F2F6028D8949B6EE3B44E7D287846F6F222BE372D798C958F4
              718F3BF2E82FA65474F7D02EAB439C63E9E37F6396688E4F42323A973F4247D6
              434AE4EDEB340E1EA6313EC9C2F993B4CE9EC06FDA8CB8325314CC687B2FFA78
              E9C09A21CE938D36685F388D18340E4D810A0B674F00D07CFE088DF1495AE74E
              D29E3F4DD6182BA0A5CE637891C73DC28E7B1981F88C6C748CD6C53390791AE3
              93C4DBB7000AE85B6FD2BA78866C740CF1D91AD0D54DEFF066525F6B4A56E159
              015FF8DB5F89376FF0E04BAF01F0CDF1D759FCC75B54C6B623DEDF1B0A98495D
              F93F8517B10EC896B55B3350EFE202CD17FE4063FF8B7C73E20D001E7CE935DC
              E62DB4CE9E20DBDA2CD47CCF56DB92C7B886B0734D68C87F50EFFE17695D38C5
              E2DFE701701B36D2189F843CD05A11D73DCE59E19A0F6657BCE8AF862A5B048B
              81BCDD6274FC308D89295AE74ED29A3F4D656C3B00ADF3A720198D435398407B
              FE4DB246730D650B21A52BEEF0A30F27AFEEE05011A448EA76694E4CD1D8FF02
              AD8B67685D385DA837CB1055B43642E7D38F4195E6F824BAAEC6EDAB570A0F50
              1DB21721B7F827EF82BB6462D745B9CBBD2CCFF19B3653DFF36B16DF3D47EBFC
              29B2D1E61DAD2CD4DEA475FE149A55A9FFF237DCF8D73F89B76F21CEDD65E996
              ECBA0BEE927CF6D4936415FEE832F9F3D0DB4904719EB0741357ABC1B0160E2E
              89D85DC63FB0098B61689B458498DBAB799F37E4B3A77F8F083EABEA5722B2AD
              EC5A94CCAFED48033D581ED06AB5EC6AFC6FDE4B3BCD086AB64C8CDD1043382A
              65D759B58AA85B7B4CCC1075A5501121867034C66E305B46458462F19E8ACCA9
              CA7D370B554145E644786F85E73B9D42E2220123CED4EBD9F6DA88BF6FFF5DAA
              42F7BB70B1D3C9678A9FBD62633ECF574F92100CC10ED646DCD720D308FF93F7
              969D79610D3677ABD39FE97E17F15E587909A82A144B704E1015CC9889213C67
              297E2EF21399297E1E4378CE8C1919E45615567965424829BE13F2F8588A4C03
              5FC28F5E2D43FD6835BE4C91E990C7C7528AEF9409D697572D984937055E47F9
              0B2EFD16B3279CB8DD88EDB0C1A34DC49630B9162C5E46E413A27E40222F7453
              5EE8F703002EBE857159353E1E0000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = bfechar_legendaClick
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
            Appearance.ColorMirrorHotTo = 10807807
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
          end
          object bitbtn1: TAdvGlowButton
            Left = 4
            Top = 205
            Width = 112
            Height = 40
            Caption = 'Alterar/Juros'
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
            Appearance.ColorMirrorHotTo = 10807807
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
          end
        end
      end
      object blayoutBoletoBancario: TButton
        Left = 680
        Top = 70
        Width = 125
        Height = 25
        Caption = 'layout boletos bancarios'
        TabOrder = 7
        Visible = False
        OnClick = blayoutBoletoBancarioClick
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 868
      Height = 474
      Caption = 'F7 | Recebimentos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel11: TBevel
        Left = 0
        Top = 41
        Width = 868
        Height = 2
        Align = alTop
        ExplicitTop = 43
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 868
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label29: TLabel
          Left = 16
          Top = 16
          Width = 52
          Height = 13
          Caption = 'Presta'#231#227'o:'
        end
        object DBText11: TDBText
          Left = 72
          Top = 16
          Width = 81
          Height = 17
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 160
          Top = 16
          Width = 59
          Height = 13
          Caption = 'Vencimento:'
        end
        object DBText12: TDBText
          Left = 224
          Top = 16
          Width = 81
          Height = 17
          Color = clBtnFace
          DataField = 'DATA_VENCIMENTO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 312
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Documento:'
        end
        object DBText13: TDBText
          Left = 376
          Top = 16
          Width = 89
          Height = 17
          Color = clBtnFace
          DataField = 'DOCUMENTO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 480
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Valor Original:'
        end
        object DBText15: TDBText
          Left = 552
          Top = 16
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'VALOR_ORIGINAL'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 640
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Valor Atual:'
        end
        object DBText16: TDBText
          Left = 704
          Top = 16
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'VALOR_ATUAL'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 43
        Width = 868
        Height = 431
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object wwDBGrid2: TwwDBGrid
          Left = 0
          Top = 0
          Width = 209
          Height = 431
          ControlType.Strings = (
            'FILTRO;CheckBox;1;0'
            'SITUACAO;ImageIndex;Original Size'
            'situacao2;ImageIndex;Original Size')
          Selected.Strings = (
            'DATA'#9'12'#9'Data'#9'F'
            'VALOR_PAGO'#9'16'#9'Valor - R$'#9'F')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          DataSource = dscontasreceber_pgto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          PaintOptions.AlternatingRowColor = 16053492
          PaintOptions.ActiveRecordColor = clBlack
        end
        object Panel5: TPanel
          Left = 209
          Top = 0
          Width = 659
          Height = 431
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          object Label24: TLabel
            Left = 32
            Top = 32
            Width = 43
            Height = 13
            Caption = 'Dinheiro:'
          end
          object Label25: TLabel
            Left = 32
            Top = 48
            Width = 57
            Height = 13
            Caption = 'Cheque AV:'
          end
          object Label26: TLabel
            Left = 32
            Top = 64
            Width = 57
            Height = 13
            Caption = 'Cheque AP:'
          end
          object Label27: TLabel
            Left = 32
            Top = 80
            Width = 37
            Height = 13
            Caption = 'Cart'#227'o:'
          end
          object Label28: TLabel
            Left = 32
            Top = 96
            Width = 57
            Height = 13
            Caption = 'Boleto/Dep:'
          end
          object DBText6: TDBText
            Left = 104
            Top = 32
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'DINHEIRO'
            DataSource = dscontasreceber_pgto
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 104
            Top = 48
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'CHEQUEAV'
            DataSource = dscontasreceber_pgto
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 104
            Top = 64
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'CHEQUEAP'
            DataSource = dscontasreceber_pgto
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 104
            Top = 80
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'CARTAO'
            DataSource = dscontasreceber_pgto
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 104
            Top = 96
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'BOLETO'
            DataSource = dscontasreceber_pgto
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 32
            Top = 8
            Width = 118
            Height = 13
            Caption = 'Meios de Pagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel12: TBevel
            Left = 0
            Top = 0
            Width = 2
            Height = 431
            Align = alLeft
            ExplicitHeight = 349
          end
          object Label40: TLabel
            Left = 32
            Top = 128
            Width = 67
            Height = 13
            Caption = 'Lan'#231'ado no:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCheckBox1: TDBCheckBox
            Left = 32
            Top = 144
            Width = 65
            Height = 17
            Caption = 'Caixa'
            DataField = 'CAIXA_BANCO'
            DataSource = dscontasreceber_pgto
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 96
            Top = 144
            Width = 65
            Height = 17
            Caption = 'Banco'
            DataField = 'CAIXA_BANCO'
            DataSource = dscontasreceber_pgto
            TabOrder = 1
            ValueChecked = '2'
            ValueUnchecked = '1'
          end
        end
      end
      object ptampa_recebimento: TPanel
        Left = 696
        Top = 312
        Width = 785
        Height = 425
        BevelOuter = bvNone
        Caption = 'Presta'#231#227'o sem Recebimentos!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 0
      Width = 868
      Height = 474
      Caption = 'F9 | Produtos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel13: TBevel
        Left = 0
        Top = 41
        Width = 868
        Height = 2
        Align = alTop
      end
      object Bevel14: TBevel
        Left = 0
        Top = 58
        Width = 868
        Height = 2
        Align = alTop
      end
      object Bevel15: TBevel
        Left = 0
        Top = 262
        Width = 868
        Height = 2
        Align = alTop
        ExplicitTop = 247
      end
      object Bevel16: TBevel
        Left = 0
        Top = 264
        Width = 868
        Height = 2
        Align = alTop
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 868
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label35: TLabel
          Left = 16
          Top = 16
          Width = 34
          Height = 13
          Caption = 'Venda:'
        end
        object DBText14: TDBText
          Left = 56
          Top = 16
          Width = 81
          Height = 17
          Color = clBtnFace
          DataField = 'CODVENDA'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 160
          Top = 16
          Width = 59
          Height = 13
          Caption = 'Vencimento:'
        end
        object DBText17: TDBText
          Left = 224
          Top = 16
          Width = 81
          Height = 17
          Color = clBtnFace
          DataField = 'DATA_VENCIMENTO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 312
          Top = 16
          Width = 58
          Height = 13
          Caption = 'Documento:'
        end
        object DBText18: TDBText
          Left = 376
          Top = 16
          Width = 89
          Height = 17
          Color = clBtnFace
          DataField = 'DOCUMENTO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 480
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Valor Original:'
        end
        object DBText19: TDBText
          Left = 552
          Top = 16
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'VALOR_ORIGINAL'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 640
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Valor Atual:'
        end
        object DBText20: TDBText
          Left = 704
          Top = 16
          Width = 73
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'VALOR_ATUAL'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 43
        Width = 868
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Produtos'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 60
        Width = 868
        Height = 187
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size')
        Selected.Strings = (
          'CODPRODUTO'#9'7'#9'C'#243'digo'#9'F'#9
          'PRODUTO_1'#9'39'#9'Produto'#9'F'#9
          'UNIDADE'#9'3'#9'Un.'#9'F'#9
          'QTDE'#9'10'#9'Qtde'#9'F'#9
          'SERIAL'#9'24'#9'Serial'#9'F'#9
          'UNITARIO'#9'12'#9'Unit'#225'rio'#9'F'#9
          'TOTAL'#9'10'#9'Total'#9'F'#9
          'CST'#9'3'#9'CST'#9#9
          'ALIQUOTA'#9'8'#9'Aliq.'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsproduto_mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 107
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16053492
        PaintOptions.ActiveRecordColor = clBlack
      end
      object wwDBGrid4: TwwDBGrid
        Left = 0
        Top = 266
        Width = 868
        Height = 273
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size')
        Selected.Strings = (
          'CODSERVICO'#9'7'#9'C'#243'digo'#9'F'#9
          'SERVICO'#9'58'#9'Servi'#231'o'#9'F'#9
          'VALOR'#9'8'#9'Valor'#9'F'
          'TECNICO'#9'31'#9'T'#233'cnico'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsservico_mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 107
        TabOrder = 3
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16053492
        PaintOptions.ActiveRecordColor = clBlack
      end
      object Panel8: TPanel
        Left = 0
        Top = 247
        Width = 868
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Servi'#231'os'
        Color = 3355443
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
      end
      object ptampa_produto: TPanel
        Left = 855
        Top = 380
        Width = 785
        Height = 425
        BevelOuter = bvNone
        Caption = 'Presta'#231#227'o sem Recebimentos!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 5
        Visible = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 583
    Width = 870
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 2
    object AdvGlowButton1: TAdvGlowButton
      Left = 634
      Top = 116
      Width = 105
      Height = 24
      Caption = 'Boletos'
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
        610000023149444154388D8593CD4B945114C67F77DE77669A699C1C6DD2B111
        9D489292843692106D22AA450B350C2A025BB869D126EABF2884D68A0C989BB6
        4141F461B8485C0CA40B03C1B172EC436DE69D6966EE7B4F8BF16BF2EB81C33D
        70EF79CE7D9E7BAE621DC3C3C994D7EB6D161140101144585F2B512814FE0402
        81DE81813B531B756A234926C757FA6EF4D46A57D81502CFC7C6D0BABCA294BA
        3C38786F0AC0B3B92F8276855279F7F85B72510ABACF77454A4EEEF5D3ABD71E
        5CAFAFB7ECAA1607C0B26C3EBE79CBE9572F6B4FD8F693D678FCDC264145FBDE
        504AD17DE1226BD353E4F279BEB92ECAE3B9B24DC2FEDD8BCE0ABA98C78DC770
        6FDF65B1AC657675B5A7CA83BD50CA66087FEE85E5117EFEFA4DA131C6525FFF
        DAE3F9F98903094AD90CA1999B38B240DD97119A0BEF683BD58EF17A4B00FB7A
        5029EEC7913492D6F8558470E212B58D4D9BE7B711986ACD7F32D4CCF6E3C822
        9276F1A9082B6787A0B10BED1A8C31FF136CDD40EB32C1D42D1CDF5764C1C592
        080BED43D8E10EB29965B23E2197CB599D9D9D353B088C117E2C7E229A68C59F
        FA4E5E0799083DA4BCA4C9CD7DC0B27D34374531C62022A68A4004B46BD0D949
        CAE100338533BC9F3B8AE34F531BC9133BDEC2B186382D8918D353936E2A9572
        36098C115C23384E81F117B3F842718C7592BA44948E9636A20D3102C1109665
        73387408A5D44E136D4B71241CE4FEA367B8462AD3AD3C28A5AA063DE8B776BE
        42B1585C4A8E8EFAD6B5ED88CA17DFF24A6B9D01F80710133F0B484C1B3A0000
        000049454E44AE426082}
      TabOrder = 0
      Visible = False
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      DropDownButton = True
      DropDownMenu = Boletos
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 1658
      Top = 46
      Width = 104
      Height = 24
      Caption = 'Remessa'
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
        650041646F626520496D616765526561647971C9653C000001F54944415478DA
        62FCFFFF3F0325002080981828040001C40263FC7FB0FDFF9FCF6F18FEFFFFC5
        F0FFCF6F86FF7F81F80F88FD13C8FEC9C0F0FB07C3DF3F3F80FCEF60367FD022
        46903E80004218F0F70F03AB4E04860D201F825532C2041818DEAF8E84CB0304
        10DC809F1F9E32700255FFFFF71D22C008D2FC0FCCF8CF80308191899DE1FFEF
        EF7003000208E1823F7F18FEFD7AC1F0E7F34906867F3FC15E01D3FF4034D0E9
        60FC9D814D2490E1DFEF6F7003000208C90B407F32FC012B045A01D584AC1984
        BF816C62F8FF0BE1028000821BF0E7CB5B8893516CFECEF00F6420D47606B0F7
        8006FCF90A37002080E006FCFBFB83E1C7EDC30C7F7EDE6160F8FB0B6CD3DF1F
        9F1838E4C52036830CF90B340068097218000410DC80BFDFDF32FCF9F49481C7
        201A641C303C1E327C3EBF12A809E4EC6F40FA07C4052083910C000820784262
        04C6C0EF579718DEEF2961F8FBED36D0C4DF0CFF406101D70C71C5BFFF7F515C
        0010404CC8F1CD6B16CFF0FBC36B860F87FAA19A7FC0358303F13F28A0FF4212
        1314000410DC0B0CC054C6C8CCC4C06D94CCF0FDDA3686CFC73631300BEB3370
        48D8013DF41F144DE00004790F943A61002080186199E9F512BFFFFF7E03431F
        945C814EFCF3FD25D8814C8C8C6031865F3FC131024EDA7FFE3228B4FD07A72C
        800062A43437020410C5B91120C000B9B73A5C2CDB361E0000000049454E44AE
        426082}
      TabOrder = 1
      Visible = False
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      DropDownButton = True
      DropDownMenu = remessa
    end
    object bliquidar: TAdvGlowButton
      Left = 161
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Liquidar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        1F900000057B4944415478DAEC975D6C1C5719869F73E678C6BB3BBB6B67ED5D
        FF5008318DEC48A8454A15538120D4764222014973D34A54E5270D429510127F
        4238711A21CA3F08A10A489342A18514191291B46AD3D695AAF6228E5BE4F482
        BA949240BC25B577BD5E7B667666CF7031F6DAD335B720A19CABD19C67DE4FE7
        3B67BEEF3D62ECA6ED97814C18866C34EA485AA56630E1D12A358106783B2BD0
        8092922D6D59949468AD37D44308808A02DE2184105EB58AAED7638C340C949D
        897D142C57098320AEA5143265C7B8D059267C9B9E300C44CA8630CCA8300C2B
        5EB59ABDFD5BDF247FE37B62E0BF665EE3775FFB06A69D8050132C56D936F65D
        527D37C6B8A5BFCE70E9F09751691BC210BD54A5ED4B47509BB7C4B8E08DD729
        7DEF283291AC2880BAEFB3657007ED37F4C6403B97A3EEFB400200EDFBB4DF32
        486BEF3B639CB92987F66B6B2F7C1FF3E6EDA8EEB89E6CDB04BE0F099000424A
        AA73734DDB519D9B4348B9962A29A9CD3773B5F9388794E8F27C13A7CBF3B0C2
        49FE47E37AE0EB81FF4F03875A9329E49B2633853CE1BA9A1B6A8DD55968E2AC
        CE428C436B8C5C671367E43A61855342082CDBE6CCD16324DBDA62E072B98C65
        DB08214008946DF397FB8FD0926D8F71FE420965DB51031002914CB1F0936F23
        33713D5D292392A9480B4059167F3EF32702AF16039565922C74030120302C8B
        E2B9D3E89A174F9B6961E6D732212C8BE5A71F875A5C0FD3C4E82C80D651E050
        6BD2F9FC867B1168DD380951AA37E6B4D68D72F89F52BD3A77FD77FAAF0EB5CE
        BD10D675C38548C34018B2D9E54460C38508A540181BD821200C61D5AD28B56A
        7BD6562CA424705C9C5219691848C3C02995091CB7A91F6BCF21289510864218
        8AA054427B4E533FC6F308174A60186018D1B3E7350EA0124250AB56D13A6478
        F4EBBCF7131F0360FA8F6778E63BDF4757ABB4A6132004F5A545C27AC8BBBF7A
        84DCDEFD00CC9D1DE78D1FDD8F5EAA62D8E96855CB4B84F53AF6BD5F410DEF8D
        FE8EA7CE52FDF98F11CB4B9048A2B4D6F8AECB81077ECAD6DB76F2C4D8310076
        8F8D92EDEDE1B79FBB179DB440D7A93B2EFD3FFC05FA03BB387DDF7D007CE4F0
        61FABB7BB9F4857B209904AD095D97ECB11F507CDF0779EE58A4F7A1D151BA0A
        3D2C8C7E1161B5A296E7E7D9B6E7A3F4EF1AE2C18F1FE0B589090066A72FF199
        D3BF6760CF6E5E3FF73841CDA16BD75EAC9D7B7868DF7EFEB6C25DBB34CDDD7F
        18A773640FE5F3E7080949DCB69BEAE04EC6F71DE0EFCF45DCDC2BAF70D7F863
        243E3C8CF3EC9348DF71E81A18A0325BE4F2E4241D7D7D74F4F571797292CA6C
        91AE81017CC7413B0EE9816DBC355BE4EA850B0DEEEA850BBC355B243DB00DED
        38E039585BFB79F39FB314D7E915272779F36A116B6B3F780ED24CA5B8323545
        BAAB8BFE9161AECDCC706D6686FE9161D25D5D5C999AC24C25315229CA2F5D24
        DF53A06F64A4C1F58D8C90EF29507EE922329982441277FA657A7ABBD93C34D4
        E0360F0DD1D3DB8D3BFD72B4C7C9F6765E7DFA19A67EFD28779C3CCEBB067700
        70EBA1835C7CF837BC7AFE593A0A398C84CBDCC453644EFD92DB4F3C48EFE020
        0083F71C64E1D449E626CE93CC1710D92CEEF313A4CE3EC6BE13C7797147A4F7
        FE4307B1CE9EA2F2FC0432D781387AF32D65DF75B36E65915B0F7D96ED777D12
        80C95F3DCC0B3F3B8E4A6748274D76243CCCDA326EA5C20D9FFE3C3D77DE0DC0
        D5471EE2CA890790761A33998CAE307E8D60B142EACE4F91DA7F4764FAC71F65
        E99193483B0D56EB8218BB69BB16528AC0F370172AC816B562DE035AB319305B
        B108A2BB9302DFAD51AF2C440501200830325942D34441145829B4E7122E2E46
        0506088300914E836981D6A102FE116A9D315A5A4875E458BDBC89952AB3BE3B
        A135A2A50595EB88AAD2DA252C3202EBBA13AA05D1BEA9C1ADEAAD74A7CABF07
        006236412BDFAD246C0000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bliquidarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object breceber: TAdvGlowButton
      Left = 76
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Receber'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        786D702E6969643A364238413632443932433936313145344131464238373045
        42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
        6469643A36423841363244413243393631314534413146423837304542434346
        36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
        696E7374616E636549443D22786D702E6969643A364238413632443732433936
        3131453441314642383730454243434636374238222073745265663A646F6375
        6D656E7449443D22786D702E6469643A36423841363244383243393631314534
        41314642383730454243434636374238222F3E203C2F7264663A446573637269
        7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
        3F787061636B657420656E643D2272223F3E5B3870DE0000040D4944415478DA
        EC57DB6B145718FF9D33676677B2BBD9AC316BD178890A454504A9A06815114A
        F5A508D528F8DAF73ED897B68FAD0F82D03FA2A5A2880F050541C50B48510A45
        AC4F416912A91B63DC6C36B3B799D3EF3B3313377B895A9AED83FDC25932E7F2
        FDBEF3FB6E33E2BB1BC746019CA13148033AD0D0581E113CA4881FA7697CADE8
        E71C8D3531F84C619EFE59261384C040BE0FD2222334B28CCD06641159E6D703
        808CC8D2262144172D3AFC6B3192F78BF08E9D4FD1FE225D4EFB1A42C9F87C96
        0DF0F9C1AF0528BDACC071159463B501B05F7CDD4023A8C1B15C1A4958429925
        9EAFF9151A1E9474C279D17A7969743346664512520936DA5786F6E7F3669393
        B4901A4884E04DF881F609B88E7C6A1DB6E6F760EDC016AC4C0DC35569B3EE35
        E6F0A23C81F1578FF147E11E0AE53FC9101B52588B7863DDE55755145F78662E
        B7AA0F4A87FC203B440F0919BABF099C6FA7848D039B46B16BF8085C3BDD466F
        42F5612099C7E6C19DD8BDEE33DC9FB882BB4F2FA1A1EB0B2CB14E7633DFBE41
        AE2E163C03A3E2F0E4C55670AD03037E74DB97D842376F15AF3E47DB0373D3A4
        4A99393670FFC8710CA5D6E2F2A31F0C7B4C7F6C848E332172915A2A68D9DF1F
        6F38DE06CE865D1FFB098F0A774DE0E5DC5538B9E35B437B2C7CE6D9EC18EE3C
        BD009BE2A59B74354093E5493B831DAB0FB6AD71B0FD36790D873FFC021F6446
        9076728BC063E1B3F727AFA241012A9AE2E1ED0CA06153446713836D6B9C051F
        0D7F8A5B4FCE9B7DDBF2FB7070E389D75447C26759479D0DE8822397AA5A7572
        41B13ADDA19E48EC5D7FD4D07E6064140F26AE1A565A85CFB20EB1849B55F7A2
        65A1522FE1F767377168F3A996D8A8E3E2C3B398F19E9BF4DAB9E613C34AABF0
        59D6F18F62C02C127DBF8EFF82D5FD9B160522FBFBF3ED5F85114E24764ACDC7
        540FF82CEBC01B19D0611FE072AAF13A15996ACE654EA7A9F2F8A23A10A75DA7
        D4EC5807E2748F7A4E8CA144D424B83AC595D0E469B481157031BA3EF6231EFE
        75FB9D2A612B3803CF5125AC55FC0563148371490C6891EB3497CACC0A17CD4D
        594A0B0EC5C4B437899B4F7E7E432FB0CD5A78D5667C41E0155305B32B5DD311
        195BC59D505187CAE492284ECD5357240BA5E890190A368106D4D12A7E7941BF
        8812CA16AE010D3AB5F32040CD6B4425DF0ADDC00CF0CD2D4B9A094B8556C5CD
        E25F7F1D20DDDC05B9D971BCF93E95FAD9290FFD432EE2F6CF166259DF89C258
        6096185B150B65543D8A5625D14BF11B012AA51A94655B26F08C4F448FD0A3D6
        EC24E9E527203FF4F573EAF59400BA303535625E490A40AF543513BD65809A5D
        2262C0CDFCCFC07BCE80E5669CE64FA61E31A0B9345B8A3E424AE5D96A1ABAB7
        064068B829A7A4DCB4739A0AC2F7549F733DC5176286AAEF37422FD787E85B8A
        C47F2C7F0B30006EFFEEFA79050BC30000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = breceberClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bincluir: TAdvGlowMenuButton
      Left = 0
      Top = 0
      Width = 76
      Height = 61
      Align = alLeft
      Caption = 'Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      TabOrder = 4
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
      DropDownButton = True
      DropDownMenu = PopupMenu2
    end
    object balterar: TAdvGlowButton
      Left = 246
      Top = 0
      Width = 72
      Height = 61
      Align = alLeft
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      TabOrder = 5
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bexcluir: TAdvGlowButton
      Left = 318
      Top = 0
      Width = 76
      Height = 61
      Align = alLeft
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      TabOrder = 6
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bextornar: TAdvGlowButton
      Left = 394
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Extornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        1F90000001834944415478DAEC97314BC35010C7FFF792B81714870E6E8EEE4E
        F503B4B80835DF407070EAD710DC847E007573702E7610D1D1315B0B1D14A14B
        17CDEB3B8744496242EED9D814F14186DCFBDFFDEEDE252F2FC4CCA863B8C99B
        CDA3A1C467D718DE4A1A94A21180FB32C7E7F3563E5858FD0981BA19BF2B0938
        952C6A1AA98A8948E2736698AF53D9138D6CC1AB51F17F8FFF7E8FDF94F34DB0
        36D73FEAF1BBE32E5831937D39021F5555205BADAA34A04582AAB225B46C4919
        B8012000C05F17A71FAC18DA4D69229FC622E029C36903985A1423F2912C7560
        980E0084026D186B03ABA5F6B42ED20D18382E7D0422CD206F2E1B5BE5090A12
        E813705A048DE7FAD27885DB8BA7355E9B7B59736F6332DC06D0CED86F5E9AAD
        5E56BC3EB9956D99458E89040C3CF611D21D809DD8F6048F7D00460214810B12
        9869723B2EEB4700D0E4765C843329D00A9C4C80A3868E1599FDD83CE6D00E6A
        0DFE1C0E8798831E00C011BD65E5E0C35FFE0C5FE69F404017CB02AFC82913EC
        2F0B4C75FDB47D0C00EDD79C13F1FF5EAF0000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
      OnClick = bextornarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object brelatorios: TAdvGlowButton
      Left = 479
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Boletos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        1F90000002E34944415478DAE4973D4C145110C77FEFEDEEDDC2718788081CA2
        6863C44BF0ABC0A8A150A3264609056A414362A2AD76C658DB9850586862EC8C
        91520B2D6C4C2888891FC54534C400E2470C82CA87C0EDDD1B8BBD3B0FD13BCC
        5D4E13A7D9E4CDECFFB73BB333EFAD121172ADBBBB9BCF4E359616C4680062B1
        58D6BF6E7D0B1A7346294E008870C7A0AFBD7D339A8D89C7E300286D4819458D
        F795FEFEFE251C9BFC66011863AA320BC6A47628257DA9945C00D05AF5199157
        C698A739F7CDA6AFA9DF092F032B04A05944767A5E3206E0BAEEF68C3F9998DF
        A69CC0E4E497C9EB00B5AB6ACF27BDC40DD7759F67623C2FF90CC009A838A827
        0A192F084E2827023C985F48B656852A00688C36A2D27E114144080682B7002C
        CB8ADA76259595A14D0002B815812E80D9B97982C1C08B84727603D379C1334E
        B8578B69DD1EDBC281BDED00BC7C3B81527E3E32160E458E0378C9DC6C0A2270
        B6E724000F0706191A7EDD3AE3847B81BEBC604B4C8700A78E1DA17D479B9FFE
        47838C7F9CC018C9FB4168AD68AEAFE36887FFC075AB6BB874E52A96988E8260
        030905789E975D3BB46717E31F3F618C2900D634D7AFE147ADBDAC66C11AA7CB
        84C96933C7B6D9D4D4C09F5A8EC6B25469FE92FD7F607B2541DF1616FD604B13
        709CF28147DE7D00205215A2B9BE8EF7139379E3A375B5A5012F26FCB648A687
        C5C2A2579E37DE10AD0720984EF386E8DAF2806BAB234BA79BD6E501A7D2EDAF
        55EEB42E03F8F2903FF1B6565B7436598CCCE59FD91B43AA34E08B8F7DF0C116
        9BCE268B9EC1C5BCF103FBDDD280630D16006D357E6DBBD659E549F5BD7D4100
        AA6C3F85E7363BE501B7844A3F59FFA94D42F9AD537CE3E468A882600D0100A7
        049B414623A399B7C629A51F69319DB7EFDE6762EA7351E087038359CD82E0B0
        377373D60E9D7E161F6A1D1E192D0A9C39DE86BD999B05C101F1A681C315AEBD
        73613E112B065CE1DA71233C496BAEA89DA694526396A522C58095620C61EA97
        BE9F7FDACA65DF0700F50CF658F33699B70000000049454E44AE426082}
      Transparent = True
      TabOrder = 8
      OnClick = brelatoriosClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 564
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      TabOrder = 9
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object brenegociar: TAdvGlowButton
      Left = 649
      Top = 0
      Width = 85
      Height = 61
      Align = alLeft
      Caption = 'Renegociar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        1F90000003A74944415478DAC496DD6F145514C07F77663BCCB06D978A0D3550
        DDA0F4C31A485B6BA325958F6042E0C18890101F083CFAE2232FE5A1FC058D7D
        90F0626C50C36AA81184A4A1256ED6A5A40AA9B131A0C64D3681AC6103DD366C
        776677AE0F3B6CF67B3A6DA3E769EEB9E79CDFB977CE3DF70A2925FF87F8CA15
        A3A3A31546E170182104CF934CA7D386DFEFEF9752EE00D0346D12C8ACACAC20
        84209D4E57C48846A3F5C12EF216306E18469F6DDB05DF4C26F331F09997408A
        07DB4F8088032F4F780CF80A18DC68F0B094720C68A831AF0127851011E0BD8D
        022BC0A7358B4481AE970A617C4210020CCFC5150E87CB557B813DE5B0DE5754
        F675FA18DAA5D2A40BBEF8C964226A2125015DD70F03573C81AB480F80AA40EF
        CB2AFBBA7CEC7560C5726A480360226AE1FCEB75835FDFBD4365F4FD4D341BA2
        AEE1A9218DDF1FD9FC1CB35FF4BCD5D3D33325E30307F6B7BED0285CA1CFC5BF
        4960DBB67F66E6D6BA8A4B0CB6675ABD7625C7A76EA6A2A2657EBDAB78F4B614
        4AF4D7A5D7D8D3AEB2B86472EDC7381F1D7DB5C4E5CB6B7F71F4DD76024D1AF3
        F11CBB9BFE4448FB1DE076C1E8E41F2EE06FDE281E3592B36E11E8E843080560
        71C924D0A495B894E8A4B4597C7017B5613FB05C303AFE9BA7AD5E060610A290
        7939B44297B71D2881AEA9816CE9A464CBDCE5B6E383B77F3CFD4135BBAD98D9
        0504DBEA469324D07C3D40B262EEE09535F5EA24701A64A60E3593B7A9025DCD
        39FEF06A9793BC828A84748ED089070037F8E797B33407C7D0B7169D16092B49
        48C5CED2FAE60D8013A10E30547208043600DF1EF4DEB938FE7D378D298DCF07
        AF26483F02C5075A203F692E829D0549E274A89FE56613416E43EF63FDA67D2C
        484B0F483BBFCA9564FEBBA5879BF6B120A06FE47D1C00CE2D379B0F2FDEEF1C
        491F89589C49F1AC6382671D13702645FA48C4BA78BF7364B9D97C089C737CD6
        053E247535069C075A24F82F4F4566ADC74BC4462E101BB980F57889CB539159
        097EA00538EFF81C5A2B78584ABE03B6142BA72273DB1BDADA30BABB31BABB69
        686B632A32B7BDFCF43BBEC35EC1838A943F009BCB27AC6C76E7ECFCC2BD6C32
        49369964767EE19E95CDEEAC1263B3136370556029048A14E34063AD6C2F4D5E
        B7CC781C331EE7D2E475ABCEAE352A528C4B2156B5E23E99EFB53525F1E4697F
        4A37644A3764E2C9D3FEFACD8C01A0CFB581283643ABA874F54E4F6FC2F9DEE6
        5AC1F99877EB82253228707F6DDCD1AB5C5335572D83EE6F2E4108C99C5BB0AC
        972789E06FF7DBE93F927F07005D7D49CB4618980A0000000049454E44AE4260
        82}
      Transparent = True
      TabOrder = 10
      OnClick = brenegociarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientMirror = ggDiagonalBackward
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
    object bfuncoes: TAdvGlowButton
      Left = 1584
      Top = 0
      Width = 159
      Height = 40
      Caption = 'F12 | Gerar Boletos'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
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
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3336353145454231453238323131453238413644434433454343
        3137343139412220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A333635314545423245323832313145323841364443443345434331373431
        3941223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3336353145454146453238323131
        453238413644434433454343313734313941222073745265663A646F63756D65
        6E7449443D22786D702E6469643A333635314545423045323832313145323841
        3644434433454343313734313941222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3ECE583CB6000003DD4944415478DACC99
        7B684E7118C7DFF76CCC652397E5368C88090B59886D096584141921FE402997
        F963A2564A6EE5B6B492E43A44984B73498D5C722F63514C69AEC3927B86F93E
        7C7FF5743AEFE5BC37EF539FDEDF7BCE797FE77B9EF3FBFD9EDFF3BC5E4F59B5
        270C6B0EFA83AE200D74061678056A4815781BEA0D1243FC5D1E980A4680EE01
        AE7D032E8332701C7C757323AF0B0F3603CBC00CD0CBCF750D7FFB75B677603F
        D8029E4552E034500C52D5B15FE002B8062AC123F009FC06297CED03C0407A3C
        45FD56AE5901D6872BB0319F788A3A2662B68272F03A48EF8BB85CB0088C52C7
        6F817C501D8AC0D6E03AE8C9EF32760AC1364F7836810F98CEEF3F4036B8E174
        B1E5A313793D0F94B8B3A04704C4899DE4182E516F491C31C68DC0ABA003DBBB
        C0582E1D9132F1DA424E3A63E79443FC0ABC083AB1BD19CCF544CF368139EABB
        78B2A93F810B400EDBB2761578A26FBBE90833EE77F89A242DC17B90C04F79C5
        F52E6F26E36918FB6870785B557E868A386438DB43CCA4D19164033BF6D0EDF5
        217843A2CB3E3FE72BC0481FE7F2191AC5F680DE5A605B308FEDFBE0944307A9
        F442839F089217E001FA818EE027A8B59D7B0EB683F99CE559E0A61138495DB8
        DCA1E3D15C981318057C090C14DBC5112F188544C84EDBF9221E37F3E1A69924
        33D553943B74DC8637F752A4136E361E095C6BED56ABDE9E0C974411D8020CE5
        C1633E3AFC1E85D9FBD9C7F1F36A2B976B71E63452E3EF7FDB65D5CEB4B8D134
        F6300E04DE03756CA759DC059BF0F3C0131FF6D24C2A4BC5DC8F7EC645ACCDE8
        48B66CBB5FAF27BECC6BA9D093620FD4FFD19A1B4F5A5C38C59240469C086CCF
        CF3A2D50AC6F1C88CB50B94F8D08BCC2D023D6270E04E6A87695C535E7360F4C
        8C0381B92A7A5598585CCACF1E4CC6ED961C0521AD7CDCC7649027C03713E08F
        30EF35DBF0C1B61F3E61DEEB6F37137CB1E05F1FB71CCEAD52BBFC12FB8EFA20
        1374E3E64B317EB5AD5488938D6B177B4E5260CB13626D7B557BAE53D2240BF6
        4AB6D359EC8995C926793CDB67585271CCEAD6A8B121337A750CC44D066BD9FE
        02A607CA8BB355B0168FAE8BA238D9C91FB5AD811F0209FCCED4D1882C649615
        E938BDCA36EEA4AC7727D8D287ECAC33991F8BCD028F6D55AE502D8B428AD4B1
        71E0809BDA8CD853C6C5D3FC2EE590C3CC6D45703397C2A4BE738809F94013CA
        B8E69687527ED3B6046CB43D908C1529E9DE65B1E9154B74927E36612628DE1A
        C4925BBAAD4F090C8B03AFEAC1978065E15C0A66FB08530D4A60924AC4B4FD66
        582D56F13F6202EDF17212CB18C1C4E90A96D74A997BBB888BE1FD0DD18DE50C
        199FEDF86A4D02F68E7B4D995C95A1DEE08F0003006968D36050239B4A000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 11
      Visible = False
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
      Layout = blGlyphLeftAdjusted
      DropDownButton = True
      DropDownMenu = Boletos
    end
    object ppp00015: TAdvGlowButton
      Left = 770
      Top = 0
      Width = 100
      Height = 61
      Align = alRight
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
        1F900000053F4944415478DAC4974F885C551687BF73EE7D55A94E5226817455
        9B40A24C70E3C6859B9861C20C3303AE14375192744750D21D9C888BD1EECDEC
        BA1D611699907F0EE44F47548691590EE8E028C4B8C8226E4517061CD3550D89
        5D095657BD7BEF71F1AA5B43EA75060DCC81BB7A70BE73CFFD9DDF7D57FEB377
        2F2B11A3B1AEE6D83A5AA3DFEB6326281ED43C2EFD0E9327BCEAEE84EDC0E401
        00C49614B91652BA8CD827447D9F24211110312AD50A8BED2ECBDD8873B2CAF2
        94849901D4D47354549E07B74B44300C416035876C3178C8ABDB6B1878BEB0C4
        D914EC989975CBF26B1954D53DEB3377551D73C02E00C3282DF4876FBBD431E7
        337755D53D3BD8C0DDE094A058468C8625438459E7FDDBA2EE112B6795176120
        EA1E71DEBF2DC2AC0D72A764ACF07C960D1A264A561136D6B379900360F013A0
        77D08BCCD31BEB95ED467E50B09523C4D7EB456BB34A46A5529D35EC404A3F87
        7867A464D446FC819191ECEB7EBF3793F7FB88086A565461C633C96CFA7E427F
        0C4F66D3663CB3C25391753857F3CEFB63654248BD1E962288946717C15224F5
        7AA553E2BC3FE65CCD8BAC433187F7EE1555DD5696D0ADDF40EA762186E17011
        8881D4EDE2D66F282D5055B779EF5EC11CEA3D5575BC3C4C49A9B78C78CFCED9
        E38CEE9BA0DF5EC0427E6762112CE4F4DB0B8CEE9B60E7EC71C47B526F79E8D0
        A9E365EFADAAD1C73DA23236ACCB9265846F6FD2B9F4215BF71DA2313149DE5E
        C0F2015C04CB73F2F6028D8949B6EE3B44E7D287846F6F222BE372D798C958F4
        718F3BF2E82FA65474F7D02EAB439C63E9E37F6396688E4F42323A973F4247D6
        434AE4EDEB340E1EA6313EC9C2F993B4CE9EC06FDA8CB8325314CC687B2FFA78
        E9C09A21CE938D36685F388D18340E4D810A0B674F00D07CFE088DF1495AE74E
        D29E3F4DD6182BA0A5CE637891C73DC28E7B1981F88C6C748CD6C53390791AE3
        93C4DBB7000AE85B6FD2BA78866C740CF1D91AD0D54DEFF066525F6B4A56E159
        015FF8DB5F89376FF0E04BAF01F0CDF1D759FCC75B54C6B623DEDF1B0A98495D
        F93F8517B10EC896B55B3350EFE202CD17FE4063FF8B7C73E20D001E7CE935DC
        E62DB4CE9E20DBDA2CD47CCF56DB92C7B886B0734D68C87F50EFFE17695D38C5
        E2DFE701701B36D2189F843CD05A11D73DCE59E19A0F6657BCE8AF862A5B048B
        81BCDD6274FC308D89295AE74ED29A3F4D656C3B00ADF3A720198D435398407B
        FE4DB246730D650B21A52BEEF0A30F27AFEEE05011A448EA76694E4CD1D8FF02
        AD8B67685D385DA837CB1055B43642E7D38F4195E6F824BAAEC6EDAB570A0F50
        1DB21721B7F827EF82BB6462D745B9CBBD2CCFF19B3653DFF36B16DF3D47EBFC
        29B2D1E61DAD2CD4DEA475FE149A55A9FFF237DCF8D73F89B76F21CEDD65E996
        ECBA0BEE927CF6D4936415FEE832F9F3D0DB4904719EB0741357ABC1B0160E2E
        89D85DC63FB0098B61689B458498DBAB799F37E4B3A77F8F083EABEA5722B2AD
        EC5A94CCAFED48033D581ED06AB5EC6AFC6FDE4B3BCD086AB64C8CDD1043382A
        65D759B58AA85B7B4CCC1075A5501121867034C66E305B46458462F19E8ACCA9
        CA7D370B554145E644786F85E73B9D42E2220123CED4EBD9F6DA88BF6FFF5DAA
        42F7BB70B1D3C9678A9FBD62633ECF574F92100CC10ED646DCD720D308FF93F7
        969D79610D3677ABD39FE97E17F15E587909A82A144B704E1015CC9889213C67
        297E2EF21399297E1E4378CE8C1919E45615567965424829BE13F2F8588A4C03
        5FC28F5E2D43FD6835BE4C91E990C7C7528AEF9409D697572D984937055E47F9
        0B2EFD16B3279CB8DD88EDB0C1A34DC49630B9162C5E46E413A27E40222F7453
        5EE8F703002EBE857159353E1E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 12
      OnClick = ppp00015Click
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
  end
  object Panel9: TPanel
    Left = 0
    Top = 37
    Width = 870
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label43: TLabel
      Left = 4
      Top = 2
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 12
      Top = 39
      Width = 41
      Height = 11
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lendereco: TLabel
      Left = 60
      Top = 2
      Width = 477
      Height = 13
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 532
      Top = 2
      Width = 52
      Height = 13
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lcpf: TLabel
      Left = 596
      Top = 2
      Width = 93
      Height = 13
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 692
      Top = 2
      Width = 31
      Height = 13
      Caption = 'Limite:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object llimite: TLabel
      Left = 732
      Top = 2
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 1492
    Top = 116
    Width = 989
    Height = 36
    Cursor = crDefault
    Caption.Text = 'CONTAS A RECEBER'
    Caption.Location = plCenterLeft
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -19
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = clWhite
    Caption.ColorEnd = clWhite
    Caption.Line = False
    Fill.Color = 3684661
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    OnMouseDown = AdvSmoothExpanderPanel1MouseDown
    TabOrder = 4
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 36.000000000000000000
    object bfechar: TAdvMetroButton
      Left = 951
      Top = 1
      Width = 34
      Height = 50
      Appearance.PictureColor = clWhite
      Caption = 'ESC | Sair'
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
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
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = bfecharClick
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 54
    Width = 870
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object bt_receber001: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 136
      Height = 49
      Align = alLeft
      Caption = 'Rela'#231#227'o de Contas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
        11000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000050C4944415478DAB49659685C551880BFFFEE33736726C9B4350D84
        C626156BDAB44A71411045AD8A3E88D2BA2F2F5210FAE043F149E85BC1BE8882
        203EB904B41511149A8A552A15C582AD6DB45B5A9B84A4E9324966CB9DBB1E1F
        66526B4D43A2F587CB3987F3FFFF77EEBDFF728477C75984BC03BC748DBD0F80
        AD0B7564B0386903B2F3EC2D58B4458267FEE5DE1C6FECE41B33D120F221A836
        E6D7535402960B86DD980346E7D82F0098B14F31BB9C52CB0AF04B805C2F2A38
        2DE4A7872954CE11EA76037CFFEF5F5C06CF5859066E7D8E625B0F78C5B9E0F3
        9D46E684A60A14268778F8503FE9A07219ACD5EC2C353BCB5466197A12B1F170
        3F4B8A27C15D0666AA61FC97E44081085899C62332AB93FB1BD04C81BB8C25C5
        936C3CDC8F9E444C659631CBD37BD7DFDB3CAE22341CECC8A7EBC2311CBF4CD9
        C9136496369C271128750CDDF80A27DFBFFED4DE1BDB27CF8C4EB4AFDD4212F6
        93245F2272013305968B5BBB48DF1FFBD970EA1BCC24C2B3B348F3FFFE239D44
        25CC582E7654A7EFCC7EBACF1D61A87D2DC73A6E6526DB0E2A19C4B0076F3EBD
        8F3B4EEF7B16A06EA5F71CEFBEBF1198A291AE4CB07AFC103D1347C97853D46D
        9719CB45BB023A671E6B2A21D42D824C012BF2597FF67BBACF1FE564FB3A4E77
        DE4EC7F941EE3E31402955C800DC7D620085307EC31ABA477FE6A6895FC97A53
        78964B39534094FA07144036BDBC7DFE9814C18A7CACA88E676531239F483789
        34E3730023899E30E290D0B049051502C321306C44A9FF56B9442942DD22D42D
        B42426306C9408820A00624D27110D5109353B77D966B12533D72C89731E28D1
        F42B972DCD71851241893E1F27022A40F95AE09F801B8078019561367D0E2E40
        5707CE03B7CC0536814EE015E0C705387BAF396E5980EE5DC0FB4D46086094BC
        346D992A71A2D1FC1CC7752D192E7B299412B2290F8038D1A88429D2868FA547
        2825D300226A38880D66229BACE9A14B020895C844449133426225AD4DDFE8A2
        980C2DB4DE8E31C6A6DAD0A41110BA96642F967374B44CB3B27D82F1C936464A
        052A91C39AC20822506F38B54494D598C39AC2089530C5C84C0B637E8A959932
        1DB6C705DF41179505D04431564FD3EB96D0F7BD3DC4D1E12E8E9FEBD0DBDCEA
        6B17CAF9CF5A33B5911D4FF7F3E8868338464C4EF93CDFF5135BFA0670806FC6
        7AB1F5F0A958695CAAE73E7D75F5B76C5DF7151D4E051293075A8B6CED1EE4CE
        FC25F64FB6530CEC153923DC34ECB96FDD969B4A76AC3E88A8C32E5E68F1FAC7
        2FF2F560DFE8DACED1FB763EF7E150D7F231825A062BEFC190011336CA3010BB
        CAAE93F7B0F3C8231F016CEBDBF3C2E69BBE47F92E62D6206883720F61A230AD
        80B3D53CDB8E6DE8395A6EFD6EE3D2F1CE37571FC4D1238CA972FEC1D65CC9D8
        FEE46E3DE3F8E967EEFAE1F1AE8EB1DFA6260B6892FCEC95CCA2D44C24D0518A
        3556A2776E5E758052905E09B079D58147EA5E9E2036462591417C1715D8A085
        859A97BEBD2B33CD1B3D477A3F19BF31BD6DE5E0638E1EC7D37E2A92E903CB55
        9268A46D1FDBF188029B6ADD411AFFFC614CB557CE9A4851074BED52C8265D12
        326623E86A618A5869086A375AB819BF0D555D015AF81030A094E01A21BA1E11
        442633B181260A03A86A5AE2D643133F34518D489D4D83E0AAB4280B8A4409D5
        203DDB0091465B2C5FA51B34A39E5A6C20B1816A06185035AE6CB86A41D7896B
        EAAA05193697D7F972F5FFDD32AF2B38BB8826929E4737BD88CE973580F179E0
        FE55EBC9D9D237874CCE617B2DDDCA9F03005647170C08C6E2CE000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bt_receber001Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
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
    end
    object bt_receber002: TAdvGlowButton
      Left = 136
      Top = 0
      Width = 136
      Height = 49
      Align = alLeft
      Caption = 'Recebimentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001D0000001E0806000000D00715
        A1000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000058B4944415478DAE4564B6C1C55163DF77DBAAABA5DDDB6DB6EBBB1
        1D3B4EDB494C0464080824466246F240101F89051B162C404220766C904002F1
        114159B06194150C8B91469A59CD20081F21CD84BF10DF104C14E543009BA493
        B8DBDDF5EB7A1F16765AEDB89DC40856734A4F25BD7BDF3B75EF7BF7DCA2A87E
        00DDA094FE8F31F60E22D4B1317022E62E544FFE214EC2839C8B350E62A07CCB
        AA096B2DC228C61BFF7E31B7FBCE5934CE9E2E000011208400D15A166B01A514
        AC058808448466FD9C6C34162165662DE99EBDF7AF998CA2185B2A57701B3797
        9D04471425F8F28BA3485305C658DBD71803290566AE1C87E739504AC35A8DE9
        CDD7F864BBA7423CF2F0FD5DA619C2A57A76A9D104630CC65830C6501CC8436B
        03EA08D75A0BCE59DBAF7D3C50FE7AF917F5EAB9AE062272CE47A4B586101C95
        CA08C000744640000C902429B4D6ED0F22900F5A87741D430E047F851C52F236
        39F43A1B090680412903632C88614C88EE9B8B8EE3E9B8191883C568C69538B5
        700E870FFF08CED9AAB4AEBD4C165A1B6CDD3A8A4D13033879B2B9F3E3CFEA70
        32AC4BA489BD9010E0988024A99581EB653032526CDFCA8B915A6BE17A19A489
        86EBB0D12DE31E385FBB46D8AEFBD026C27219F4F478E8EFCFC3C25EB2400984
        562B4518A5C8E5F8F4353BFC1240A771C1198A7C71A86315431A361026CD5958
        B44BA3D54A37A60E9C411B538A2275ADC7E57E46AB532CF67FF8763B3DA9D198
        2C8DCAE991B1EB5986E1C4F19F71ECD80284E0174D6D678A95D2989C2C636AA6
        82373F7FFFEEBD1FFC6BFF593E0F431A0CCBE4E2B6671E3D5F584000DCFBE0DD
        F7FEFDBE2736A571083F9FC5C4C4D02A31B8148C31F0F359C010728EF7C07BDF
        7FFB51CAAAAF40A29D6551DC5404AC8526A08660664779FC4930096D348686FB
        303C3AB8AC73970B2258A5805684EB46A7ECADD3BB9EDE7FE28343360D3ED15A
        030C10438512A02D22AE512E4FFE75F7D6EB26A0129C3A5D43AD168073868D42
        6B83426F161353DB68F7F4AE910F8F1F79BEB9F4D39F7512010210559F208990
        C6D1B33BFBAEB869A6341E1BD572C320C6996A0D528A0D93A6A95A16945680D9
        CACEDA4B9FBCFE2747EAA7D2983FA514873092C038BFA911B61EFBCB96AB2399
        CBF72C2D5631B1791895A99176FD31C6209DCCBA3298262D1863DAF5AC9446D8
        6CA0521ACFDC3CBEE3DC3FBEF9DF93C5ECC09B41AC3F163DDAFA26895FAEF40E
        F3D9C99D0192B84732066840697D5EFF1186218E7D750C69AAC118755C1C0B29
        3926B70CC3751CA043F40916104EF6AEED3736FE79F000988CFEE66ABA9E6538
        7F2154ADE91BC767E6274B63C5300A60AC85B1A63D08B45CFA8CC0385B3388AD
        D841ABD6190BB49A8BF8E3C44CF686B16D676A71B84D48DA43BBFF7B4F4D195D
        18CC1562DFF11C65743B0C65350471F378F9B664B337E0296921A4582D301650
        A9824809C7A333D1730B6F38CA6A2688AF982D1C9EB1D5662DA925812B39AF0B
        A7E0C123C2A28ADD1F82C55522A0AD41685AC9A1786161737E7CB21954F1DDDC
        0F68362208C1A194468FEF61DBF631F4E6067168F1E0C2E7C1C97296653CDEA1
        4216960A6ECECDE7F230D642E896825EE971BD22DBE56709DEBBF539F7F6E2AE
        C0176EAED8EFC3EF71579AB6412623E10B17D02A78B73EE7E658C6EB13B92EFB
        58A42A5DE9329740BFC8E1D3E044DFBEF9B7AA0F9567D95465CAB33682B10A8C
        04883CA0D58AF6CDBF75F6D3E0C4607F37C235ADED929D03C873CF7BF5CC47A5
        F956BD7647DF558BDBBDB2E7F36C6F4387B5B9E868F4DAE2D7ECEDA56F4B45D1
        E3D20515F5AB482D00491C83D277DF69CC0D1F681C39BBD51BA2027751D7311D
        8E4E3909547150FAE06097D5022F4B6E2C2C180843228F14BA78383E85D46848
        C67B73C2412FB2B02BCFE560431A676121C050E01EC057CF6F041B57F3DF00FF
        3FA402C01280FCCAFBF7461EC0D22F0300FB526D870A6F86ED0000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bt_receber002Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
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
    end
    object bt_receber003: TAdvGlowButton
      Left = 272
      Top = 0
      Width = 136
      Height = 49
      Align = alLeft
      Caption = 'Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
        1F90000003CB4944415478DAC496CB6F555514C67F6BEF7D5EF7716E5BB8A584
        87A50DAF844A420D2490C0C43875C04426CC1CFB1730E11F50C21F803A73A689
        89094E74E200470E148CA446B1CAA3ED85D27BEF79EEEDA0F4062CE246AEF14B
        CE68AFB3BFBDD6FAD697259F7EF01E5BA8EA9A3409CECDCD743F7322CA39C7F3
        50E543A6E78E03707FE93B4C943C374E4410E7ECD2DD076FAF0FCBAF8DD6A333
        B31C0F4120739669AB5898EC5E535A77AABAE655E19C436BCD6B9313D76EB03C
        775F596251E04075B5D0558A29EB9869B42F27CDE440652DE342652D49333930
        D3685F9EB28EAE5274B560A6F308EB1CFB82E8E0747BEA52612DFC4D89FF65DA
        14D632D79EBAD4CAAA8F8799BDAD44506BB9623577C4ADF4431D06D83166BB05
        6B2D3A0C885BE947AB99632D57A8BBF106BB26A28B13ADD6E9B2AAF9AF505635
        13ADD6E95D93D1C5BBF106AAA955BAA3D3B92222B87196F83942131176743A57
        9A5AA566319DB99A36DB1355551198C0EB12A94BA22806203006E3F99F03D266
        7B62B19CB92A5FBCFF6E2DA39915BF0B6C4DD44801C807EB88D2BE79F3A4B2D6
        ACACAD0D9D734D7999BA8950AFDC07409BF0A5A6C06D1ACBD08441E02DE3C028
        B4524F7892A7DF416D2D65E57D9535BEAF344AC88A8A2CAF10257F29BD238E0C
        A1D154D67935CC8B38329A7E5670FDC612EB838C403FDBD3B2AE491B316F9D9C
        A31987141E63E999F1A62892D850D6C13662532B92D86C0A07BF7E7B11179525
        0C346FBE314759D688C8B6190D023D8A1D5BA905B0D6A1951087665B4E0258E7
        A83DFBEB4DBC85DA3A6AC6E36E8AFF09CADF33045BD76483FEC877B7FC3D1BF4
        B1F5F6DEBF32B1885016394A6B76CFCE5357D533DFEED97994D69445EE4DEE45
        5C571522C2C299739C3D7F81C38BA7A88A9CAAC839BC788AB3E72FB070E61C22
        425D55E3232EB221F3AF9F60E79EFDAC2CDF61EFA1A374F7CDD2DD37CBDE4347
        5959BEC3CE3DFB995F3841910DC7A7EA306EF0FBD26DD6D7563970EC3837BFFA
        9222CB00F8F6FAE71C3D799A9B37BE61E3618F306E8C8F581B4DEFC13D4C1092
        B452FA0F7B9445B16997D990A49D92F5FBF41EDCA39576BC160A3FCB748E200C
        D1418073161386A3DDCC8421CE5A74101084A1F716239F5C7E671D68BF304829
        F2411F6B2DADCE248F7BABB827C4A214EDC91D6C3CEAA194226A3447672FC063
        AF8CF3C180FD478EB1F7E011868FD709A2783436CE39CA3C2369A7FCF6D32D7E
        BDF53D611C8FC9AB95A2C886F41FF5A8CA72BB7245B0B6A6C8868852DEE26AFF
        B3AA63EEFDF233777EFC613353D9BE2938E708E38430497C4ADD36C01F40EBC5
        CB9D2588228228F25804BDD69F8D3F07009312AB9992D0270F0000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bt_receber003Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
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
    end
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasreceberCalcFields
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1032
    Top = 464
    object qrcontasrecebersituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontasreceberjuros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcontasreceberRESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberbanco: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'banco'
      KeyFields = 'codcedente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcontasreceberagencia: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'agencia'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcontasreceberconta: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODCONTA'
      KeyFields = 'codcedente'
      Visible = False
      Lookup = True
    end
    object qrcontasreceberagenciadig: TStringField
      FieldKind = fkLookup
      FieldName = 'agenciadig'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'AGENCIADIG'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcontasrecebercontadig: TStringField
      FieldKind = fkLookup
      FieldName = 'contadig'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODCONTADIG'
      KeyFields = 'CODCEDENTE'
      Size = 10
      Lookup = True
    end
    object qrcontasreceberCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceberDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TWideStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
  end
  object qrcontasreceber_pgto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 1128
    Top = 440
    object qrcontasreceber_pgtoDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 12
      FieldName = 'DATA'
    end
    object qrcontasreceber_pgtoVALOR_PAGO: TFloatField
      DisplayLabel = 'Valor - R$'
      DisplayWidth = 16
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceber_pgtoCODCONTA: TWideStringField
      DisplayWidth = 9
      FieldName = 'CODCONTA'
      Visible = False
      Size = 9
    end
    object qrcontasreceber_pgtoVALOR_PARCELA: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_PARCELA'
      Visible = False
    end
    object qrcontasreceber_pgtoVALOR_JUROS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_JUROS'
      Visible = False
    end
    object qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_DESCONTO'
      Visible = False
    end
    object qrcontasreceber_pgtoDINHEIRO: TFloatField
      DisplayWidth = 10
      FieldName = 'DINHEIRO'
      Visible = False
    end
    object qrcontasreceber_pgtoCHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'CHEQUEAV'
      Visible = False
    end
    object qrcontasreceber_pgtoCHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'CHEQUEAP'
      Visible = False
    end
    object qrcontasreceber_pgtoCARTAO: TFloatField
      DisplayWidth = 10
      FieldName = 'CARTAO'
      Visible = False
    end
    object qrcontasreceber_pgtoBOLETO: TFloatField
      DisplayWidth = 10
      FieldName = 'BOLETO'
      Visible = False
    end
    object qrcontasreceber_pgtoTROCO: TFloatField
      DisplayWidth = 10
      FieldName = 'TROCO'
      Visible = False
    end
    object qrcontasreceber_pgtoCREDITO: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDITO'
      Visible = False
    end
    object qrcontasreceber_pgtoCODCLIENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CAIXA_BANCO'
      Visible = False
    end
  end
  object dscontasreceber: TDataSource
    DataSet = QRCr
    Left = 1416
    Top = 560
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 1160
    Top = 744
    Bitmap = {
      494C0101060008003C000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000006AAE6E0565AA69AF60A665FD6BAE
      6FFF4C9750FB529C56344E995222000000001A57C3802564C9FB2177E6FF0579
      EAFF0164DDFF044DBDFC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      00006FB274277CBB81FCB7DEBBFF67AC6CFF75B67AFF4E9851FE539C57B84F99
      537A0345B9E3639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D1000000000075B67A9B9CCDA0FF6FB273FF8DC7
      92FFAADCAFFF76B67BFF519B55FF77B77BFF0442BCFFAECDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF187FEFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8007FBE
      84197BBB80FF77B77CFF91CB97FFABDEB1FF9CD7A2FFAADDB0FF77B77CFF60AC
      65FF1A58B8FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF8007FBD84A07FBD84FF97CE9CFFADDFB3FF6FB3
      74FF96D59DFF9DD8A3FFAADDB0FF78B87CFF4B8C9AFF3B76D1FF8DB5F7FFB8D6
      FEFF72A8F5FF2D6BCAFD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000007BBB
      80FF8EC893FFAFDFB5FFA1DAA7FF98D79FFF97D69EFF7EC083FF82C187FFABDD
      B0FF79B97DFF438693FF235FC1FF0543BCFF1857BAFF2B7283FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD00000000008DC9937D7DBB82FF8FC894FFB0E0B6FFA2DA
      A8FF7FC185FFA4D0A7FFDDEEDFFF80B883FFABDEB1FF7AB97FFF569F5AFFC4E7
      C8FF78B87CFF4E99528400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      00008EC993257DBC82FA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEE
      DFFF82C287FFABDEB1FF7BBA7FFF58A05CFF59A15DFF539C5704000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E5000000000000000000000000000000000000000000000000007EBD83F691CA
      96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC084FF9FD9A5FFACDEB2FF7BBB
      80FF569F5AFB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      00000000000000000000000000007FBE85F592CB97FFB1E1B6FF85C38AFF80C1
      85FF99D7A0FF98D79FFF9FD9A5FFACDFB2FF7DBB81FF58A05CF6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000081BF86F593CC98FFB1E1B7FFA3DBA9FF9BD8A2FF73B477FFAFDFB4FF87C3
      8CFF65AA69FF5DA4610E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C087F594CC99FFB2E2
      B7FFA3DCAAFFB0E0B6FF8CC692FF6EB173FF66AB6B0E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083C188F594CD9AFFB3E2B7FF93CB98FF77B77CFF70B2
      740E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084C2
      8AF596CD9BFF80BE85FF79B97E0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086C38BF582C0870E000000000000
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
      000000000000000000000000FFFFFF0000010100000000000001000000000000
      000100000000000080000000000000008000000000000000C002000000000000
      C002000000000000E007000000000000F00FC00400000000F00FE00000000000
      F81FF00000000000F81FF80400000000FC3FFC0C00000000FC3FFE1C00000000
      FFFFFF3C00000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 1128
    Top = 744
    object RelaodeContas1: TMenuItem
      Caption = 'Rela'#231#227'o de Contas'
      ShortCut = 112
      OnClick = RelaodeContas1Click
    end
    object Receber1: TMenuItem
      Caption = 'Receber'
      ShortCut = 113
      OnClick = breceberClick
    end
    object Liquidar1: TMenuItem
      Caption = 'Liquidar'
      ShortCut = 114
      OnClick = bliquidarClick
    end
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 115
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 116
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Extornar1: TMenuItem
      Caption = 'Extornar'
      ShortCut = 117
      OnClick = bextornarClick
    end
    object Recebimentos1: TMenuItem
      Caption = 'Recebimentos'
      ShortCut = 118
      OnClick = Recebimentos1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 119
      OnClick = brelatoriosClick
    end
    object Produtos1: TMenuItem
      Caption = 'Produtos'
      ShortCut = 120
      OnClick = Produtos1Click
    end
    object Filtro1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 121
      OnClick = Filtro1Click
    end
    object Renegociar1: TMenuItem
      Caption = 'Renegociar'
      ShortCut = 122
      OnClick = brenegociarClick
    end
    object Funes1: TMenuItem
      Caption = 'Gerar Boletos'
      ShortCut = 123
      OnClick = bfuncoesClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object PesquisaBoleto1: TMenuItem
      Caption = 'Pesquisa Boleto'
      ShortCut = 32834
      OnClick = PesquisaBoleto1Click
    end
    object PesquisaCarn1: TMenuItem
      Caption = 'Pesquisa Carn'#234
      ShortCut = 32835
      OnClick = PesquisaCarn1Click
    end
    object Ordem1: TMenuItem
      Caption = 'Ordem'
      ShortCut = 32847
      OnClick = Ordem1Click
    end
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select mov.*, pro.produto from c000032 mov, c000025 pro'
      'where mov.codproduto = pro.codigo')
    Params = <>
    Left = 1352
    Top = 752
    object qrproduto_movCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto_movPRODUTO_1: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 39
      FieldName = 'PRODUTO_1'
      Size = 60
    end
    object qrproduto_movUNIDADE: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto_movQTDE: TFloatField
      DisplayLabel = 'Qtde'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrproduto_movSERIAL: TWideStringField
      DisplayLabel = 'Serial'
      DisplayWidth = 24
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto_movUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 12
      FieldName = 'UNITARIO'
    end
    object qrproduto_movTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrproduto_movCST: TWideStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto_movALIQUOTA: TFloatField
      DisplayLabel = 'Aliq.'
      DisplayWidth = 8
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCODIGO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrproduto_movCODNOTA: TWideStringField
      DisplayWidth = 15
      FieldName = 'CODNOTA'
      Visible = False
      Size = 15
    end
    object qrproduto_movICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS'
      Visible = False
    end
    object qrproduto_movIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
    end
    object qrproduto_movCFOP: TWideStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrproduto_movDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrproduto_movNUMERONOTA: TWideStringField
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODCLIENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_movDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrproduto_movACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrproduto_movCODVENDEDOR: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODGRADE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrproduto_movVALOR_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrproduto_movSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_movECF_SERIE: TWideStringField
      DisplayWidth = 20
      FieldName = 'ECF_SERIE'
      Visible = False
    end
    object qrproduto_movECF_CAIXA: TWideStringField
      DisplayWidth = 10
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TWideStringField
      DisplayWidth = 5
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrproduto_movCUPOM_NUMERO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CUPOM_NUMERO'
      Visible = False
      Size = 10
    end
    object qrproduto_movCUPOM_MODELO: TWideStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_MODELO'
      Visible = False
      Size = 5
    end
    object qrproduto_movCUPOM_ITEM: TWideStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_ITEM'
      Visible = False
      Size = 5
    end
    object qrproduto_movLOTE_FABRICACAO: TWideStringField
      DisplayWidth = 10
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 10
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO_ESTOQUE'
      Visible = False
    end
    object qrproduto_movCODBARRA: TWideStringField
      DisplayWidth = 25
      FieldName = 'CODBARRA'
      Visible = False
      Size = 25
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Visible = False
    end
    object qrproduto_movVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Visible = False
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qrproduto_movPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'PIS'
      Visible = False
    end
    object qrproduto_movCOFINS: TFloatField
      DisplayWidth = 10
      FieldName = 'COFINS'
      Visible = False
    end
    object qrproduto_movLOJA: TWideStringField
      DisplayWidth = 6
      FieldName = 'LOJA'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODSUBGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrproduto_movTIPO: TWideStringField
      DisplayWidth = 1
      FieldName = 'TIPO'
      Visible = False
      Size = 1
    end
    object qrproduto_movCODUSUARIO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 6
    end
    object qrproduto_movORIGEM: TWideStringField
      DisplayWidth = 40
      FieldName = 'ORIGEM'
      Visible = False
      Size = 40
    end
    object qrproduto_movDESTINO: TWideStringField
      DisplayWidth = 40
      FieldName = 'DESTINO'
      Visible = False
      Size = 40
    end
    object qrproduto_movPRODUTO: TWideStringField
      DisplayWidth = 200
      FieldName = 'PRODUTO'
      Visible = False
      Size = 200
    end
    object qrproduto_movCODFILIAL: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 6
    end
    object qrproduto_movMOV: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Visible = False
      Calculated = True
    end
  end
  object qrservico: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'SELECT * FROM C000053')
    Params = <>
    Left = 1368
    Top = 411
    object qrservicoCODSERVICO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODSERVICO'
      Required = True
      Size = 6
    end
    object qrservicoSERVICO: TWideStringField
      DisplayLabel = 'Servi'#231'o'
      DisplayWidth = 58
      FieldName = 'SERVICO'
      Required = True
      Size = 50
    end
    object qrservicoVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 8
      FieldName = 'VALOR'
    end
    object qrservicoCODTECNICO: TWideStringField
      FieldName = 'CODTECNICO'
      Visible = False
      Size = 6
    end
    object qrservicoDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrservicoCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrservicoCODOS: TWideStringField
      FieldName = 'CODOS'
      Required = True
      Visible = False
      Size = 6
    end
    object qrservicoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrservicoQTDE: TSingleField
      FieldName = 'QTDE'
      Visible = False
    end
    object qrservicoUNITARIO: TSingleField
      FieldName = 'UNITARIO'
      Visible = False
    end
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      '*'
      'from'
      'c000049'
      'where'
      'codigo in ('#39'000001'#39','#39'000002'#39')')
    Params = <>
    Left = 1192
    Top = 748
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1344
    Top = 428
  end
  object dscontasreceber_pgto: TDataSource
    DataSet = qrcontasreceber_pgto
    Left = 1264
    Top = 360
  end
  object dsproduto_mov: TDataSource
    DataSet = qrproduto_mov
    Left = 1184
    Top = 520
  end
  object dsservico_mov: TDataSource
    DataSet = qrservico
    Left = 1304
    Top = 504
  end
  object fxduplicata: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 39721.694649884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1560
    Top = 648
    Datasets = <
      item
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 487.559370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape17: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape16: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape18: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape5: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape6: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape7: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape8: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape9: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape10: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000001000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692949999999990000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133889999999990000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000001000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000001000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000010000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 51.133889999999990000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 1 - EMPRESA')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape12: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape13: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape14: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape15: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line3: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo24: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape21: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo47: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape23: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape24: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape25: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape26: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape27: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape28: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape29: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape30: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape31: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape32: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape33: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape34: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo57: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000001000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo58: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692949999999990000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133889999999990000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000001000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000001000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000010000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133889999999990000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 15720447
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 2 - CLIENTE')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape36: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape37: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape38: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape39: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line17: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo80: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape42: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo101: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo103: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo106: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape43: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape44: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape45: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape46: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape47: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape48: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape49: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape50: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape51: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape52: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape53: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape54: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape55: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo113: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo114: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo118: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo124: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 12910576
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 3 - CONTABILIDADE/FATURAMENTO')
          ParentFont = False
        end
        object Shape56: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape57: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape58: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape59: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape60: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line31: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo125: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape61: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo136: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo138: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape62: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape63: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo157: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo159: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line38: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo160: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo161: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo162: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape64: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape65: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape66: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape67: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape68: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape69: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape70: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape71: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape72: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape73: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape74: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape75: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape76: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo169: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo170: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo174: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo180: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 13434879
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 4 - CONTABILIDADE/RECEBIMENTO')
          ParentFont = False
        end
        object Shape77: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape78: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape79: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape80: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape81: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line45: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo181: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape82: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo192: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo194: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRA'#199'A DE PGTO.:')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape83: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape84: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo213: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich4: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E31363239397D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B66736475706C69636174612E22656D6974656E74655F72617A
            616F225D205C62305C6930204F55205C27633020535541204F5244454D204E41
            205052415C2763374120452056454E43494D454E544F204143494D4120494E44
            494341444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo215: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo216: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo217: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo218: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 1528
    Top = 648
  end
  object fsduplicata: TfrxDBDataset
    UserName = 'fsduplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emitente_fantasia=emitente_fantasia'
      'emitente_razao=emitente_razao'
      'emitente_slogan=emitente_slogan'
      'emitente_telefone=emitente_telefone'
      'emitente_endereco=emitente_endereco'
      'emitente_cnpj=emitente_cnpj'
      'emitente_ie=emitente_ie'
      'data_emissao=data_emissao'
      'fatura_numero=fatura_numero'
      'fatura_valor=fatura_valor'
      'duplicata_numero=duplicata_numero'
      'duplicata_valor=duplicata_valor'
      'data_vencimento=data_vencimento'
      'desconto=DESCONTO'
      'desconto_ate=desconto_ate'
      'condicoes_especiais=condicoes_especiais'
      'sacado_nome=sacado_nome'
      'sacado_endereco=sacado_endereco'
      'sacado_municipio=sacado_municipio'
      'sacado_uf=sacado_uf'
      'sacado_cep=sacado_cep'
      'sacado_praca=sacado_praca'
      'sacado_cnpj=sacado_cnpj'
      'sacado_ie=sacado_ie'
      'notas_ficais=notas_ficais'
      'extenso=extenso')
    DataSet = qrduplicata
    BCDToCurrency = False
    Left = 1424
    Top = 352
  end
  object qrduplicata: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'emitente_fantasia'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_razao'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_slogan'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_telefone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'emitente_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'emitente_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'emitente_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'data_emissao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'fatura_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'fatura_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'data_vencimento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto_ate'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'condicoes_especiais'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sacado_nome'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'sacado_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_municipio'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sacado_uf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sacado_cep'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sacado_praca'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sacado_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'notas_ficais'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'extenso'
        DataType = ftString
        Size = 240
      end>
    Left = 1424
    Top = 461
    object qrduplicataemitente_fantasia: TStringField
      FieldName = 'emitente_fantasia'
      Size = 80
    end
    object qrduplicataemitente_razao: TStringField
      FieldName = 'emitente_razao'
      Size = 80
    end
    object qrduplicataemitente_slogan: TStringField
      FieldName = 'emitente_slogan'
      Size = 80
    end
    object qrduplicataemitente_telefone: TStringField
      FieldName = 'emitente_telefone'
      Size = 40
    end
    object qrduplicataemitente_endereco: TStringField
      FieldName = 'emitente_endereco'
      Size = 100
    end
    object qrduplicataemitente_cnpj: TStringField
      FieldName = 'emitente_cnpj'
      Size = 25
    end
    object qrduplicataemitente_ie: TStringField
      FieldName = 'emitente_ie'
      Size = 25
    end
    object qrduplicatadata_emissao: TStringField
      FieldName = 'data_emissao'
      Size = 15
    end
    object qrduplicatafatura_numero: TStringField
      FieldName = 'fatura_numero'
      Size = 30
    end
    object qrduplicatafatura_valor: TStringField
      FieldName = 'fatura_valor'
      Size = 30
    end
    object qrduplicataduplicata_numero: TStringField
      FieldName = 'duplicata_numero'
      Size = 30
    end
    object qrduplicataduplicata_valor: TStringField
      FieldName = 'duplicata_valor'
      Size = 30
    end
    object qrduplicatadata_vencimento: TStringField
      FieldName = 'data_vencimento'
      Size = 30
    end
    object qrduplicatadesconto: TStringField
      FieldName = 'desconto'
      Size = 30
    end
    object qrduplicatadesconto_ate: TStringField
      FieldName = 'desconto_ate'
      Size = 30
    end
    object qrduplicatacondicoes_especiais: TStringField
      FieldName = 'condicoes_especiais'
      Size = 50
    end
    object qrduplicatasacado_nome: TStringField
      FieldName = 'sacado_nome'
      Size = 80
    end
    object qrduplicatasacado_endereco: TStringField
      FieldName = 'sacado_endereco'
      Size = 100
    end
    object qrduplicatasacado_municipio: TStringField
      FieldName = 'sacado_municipio'
      Size = 40
    end
    object qrduplicatasacado_uf: TStringField
      FieldName = 'sacado_uf'
      Size = 2
    end
    object qrduplicatasacado_cep: TStringField
      FieldName = 'sacado_cep'
      Size = 15
    end
    object qrduplicatasacado_praca: TStringField
      FieldName = 'sacado_praca'
      Size = 100
    end
    object qrduplicatasacado_cnpj: TStringField
      FieldName = 'sacado_cnpj'
      Size = 25
    end
    object qrduplicatasacado_ie: TStringField
      FieldName = 'sacado_ie'
      Size = 25
    end
    object qrduplicatanotas_ficais: TStringField
      FieldName = 'notas_ficais'
      Size = 240
    end
    object qrduplicataextenso: TStringField
      FieldName = 'extenso'
      Size = 240
    end
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'SELECT codigo, cupom_fiscal, total from c000048')
    Params = <>
    Left = 1384
    Top = 411
    object qrvendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 1552
    Top = 731
  end
  object qrcr_recibo: TJvMemoryData
    FieldDefs = <
      item
        Name = 'FILTRO'
        DataType = ftInteger
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATA_VENCIMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_ORIGINAL'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_ATUAL'
        DataType = ftFloat
      end
      item
        Name = 'CODCEDENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DATA_PAGAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCAIXA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VALOR_DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODREGIAO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NUMERO_CUPOM'
        DataType = ftString
        Size = 10
      end>
    Left = 1376
    Top = 412
    object qrcr_reciboFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
    end
    object qrcr_recibosituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcr_reciboDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object qrcr_reciboCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcr_reciboDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcr_reciboDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
    end
    object qrcr_reciboVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_PAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboVALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 9
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibojuros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcr_reciboRESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_reciboCODCEDENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcr_reciboVALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcr_reciboCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcr_reciboCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcr_reciboVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_reciboSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcr_reciboCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcr_reciboNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcr_reciboCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrcr_recibobanco: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'banco'
      KeyFields = 'codcedente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcr_reciboagencia: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'agencia'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcr_reciboconta: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODCONTA'
      KeyFields = 'codcedente'
      Visible = False
      Lookup = True
    end
    object qrcr_reciboNUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
  end
  object QRCr: TClientDataSet
    PersistDataPacket.Data = {
      CC0300009619E0BD010000001800000020000000000003000000CC030646494C
      54524F040001000000000009534954554143414F3204000100000000000C4441
      54415F454D495353414F040006000000000006434F4449474F01004900000001
      00055749445448020002000C000F444154415F56454E43494D454E544F040006
      000000000009444F43554D454E544F0100490000000100055749445448020002
      0014000E56414C4F525F4F524947494E414C0800040000000100075355425459
      50450200490006004D6F6E6579000A56414C4F525F5041474F08000400000001
      0007535542545950450200490006004D6F6E6579000B56414C4F525F41545541
      4C080004000000010007535542545950450200490006004D6F6E657900054A55
      524F53080004000000010007535542545950450200490006004D6F6E65790004
      4449415304000100000000000852455354414E54450800040000000100075355
      42545950450200490006004D6F6E6579000A434F44434544454E544501004900
      00000100055749445448020002000600045449504F0100490000000100055749
      4454480200020014000B56414C4F525F4A55524F530800040000000100075355
      42545950450200490006004D6F6E6579000E444154415F504147414D454E544F
      04000600000000000B434F4456454E4445444F52010049000000010005574944
      544802000200060008434F444341495841010049000000010005574944544802
      00020006000A434F44434C49454E544501004900000001000557494454480200
      020006000E56414C4F525F444553434F4E544F08000400000001000753554254
      5950450200490006004D6F6E65790008534954554143414F0400010000000000
      08434F4456454E444101004900000001000557494454480200020007000B4E4F
      53534F4E554D45524F0200490000000100055749445448020002002F0109434F
      4452454749414F01004900000001000557494454480200020006000542414E43
      4F0100490000000100055749445448020002001E00074147454E434941010049
      0000000100055749445448020002000A0005434F4E5441010049000000010005
      57494454480200020014000C4E554D45524F5F4355504F4D0100490000000100
      055749445448020002000A0010434F4E54524F4C455F494E5445524E4F010049
      00000001000557494454480200020028000C524554495241444F5F504F520100
      4900000001000557494454480200020014000A4147454E434941444947010049
      0000000100055749445448020002000A0008434F4E5441444947010049000000
      0100055749445448020002000A000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FILTRO'
        DataType = ftInteger
      end
      item
        Name = 'SITUACAO2'
        DataType = ftInteger
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATA_VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_ORIGINAL'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_ATUAL'
        DataType = ftCurrency
      end
      item
        Name = 'JUROS'
        DataType = ftCurrency
      end
      item
        Name = 'DIAS'
        DataType = ftInteger
      end
      item
        Name = 'RESTANTE'
        DataType = ftCurrency
      end
      item
        Name = 'CODCEDENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftCurrency
      end
      item
        Name = 'DATA_PAGAMENTO'
        DataType = ftDate
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCAIXA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VALOR_DESCONTO'
        DataType = ftCurrency
      end
      item
        Name = 'SITUACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 303
      end
      item
        Name = 'CODREGIAO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'BANCO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMERO_CUPOM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONTROLE_INTERNO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RETIRADO_POR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGENCIADIG'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONTADIG'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    IndexFieldNames = 'data_vencimento'
    Params = <>
    StoreDefs = True
    OnCalcFields = QRCrCalcFields
    Left = 1336
    Top = 327
    object QRCrFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object QRCrSITUACAO2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SITUACAO2'
      Calculated = True
    end
    object QRCrDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object QRCrCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 12
    end
    object QRCrDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object QRCrDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object QRCrVALOR_ORIGINAL: TCurrencyField
      FieldName = 'VALOR_ORIGINAL'
    end
    object QRCrVALOR_PAGO: TCurrencyField
      FieldName = 'VALOR_PAGO'
    end
    object QRCrVALOR_ATUAL: TCurrencyField
      FieldName = 'VALOR_ATUAL'
    end
    object QRCrJUROS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'JUROS'
      Calculated = True
    end
    object QRCrDIAS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object QRCrRESTANTE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      Calculated = True
    end
    object QRCrCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object QRCrTIPO: TStringField
      FieldName = 'TIPO'
    end
    object QRCrVALOR_JUROS: TCurrencyField
      FieldName = 'VALOR_JUROS'
    end
    object QRCrDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object QRCrCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object QRCrCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object QRCrCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object QRCrVALOR_DESCONTO: TCurrencyField
      FieldName = 'VALOR_DESCONTO'
    end
    object QRCrSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object QRCrCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 7
    end
    object QRCrNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 303
    end
    object QRCrCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object QRCrBANCO: TStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object QRCrAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object QRCrCONTA: TStringField
      FieldName = 'CONTA'
    end
    object QRCrNUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object QRCrCONTROLE_INTERNO: TStringField
      FieldName = 'CONTROLE_INTERNO'
      Size = 40
    end
    object QRCrRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
    end
    object QRCrAGENCIADIG: TStringField
      FieldName = 'AGENCIADIG'
      Size = 10
    end
    object QRCrCONTADIG: TStringField
      FieldName = 'CONTADIG'
      Size = 10
    end
    object QRCrvalorbaixado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorbaixado'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object QRCrsubtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QRCr
    Left = 1440
    Top = 807
  end
  object PopupMenu2: TPopupMenu
    Left = 689
    Top = 311
    object Simples1: TMenuItem
      Caption = #218'nica Parcela'
      OnClick = bincluirClick
    end
    object EmGrupo1: TMenuItem
      Caption = 'V'#225'rias Parcelas'
      OnClick = EmGrupo1Click
    end
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Cedente.TipoInscricao = pOutras
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFR1
    Left = 1704
    Top = 567
  end
  object ACBrBoletoFCFR1: TACBrBoletoFCFR
    ACBrBoleto = ACBrBoleto1
    MostrarSetup = False
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 1736
    Top = 567
  end
  object remessa: TPopupMenu
    Left = 1691
    Top = 664
    object remessa001: TMenuItem
      Caption = 'Remessa da(s) parcela(s) selecionada(s)'
      OnClick = remessa001Click
    end
    object remessa002: TMenuItem
      Caption = 'Remessa de toda a listagem'
      OnClick = remessa002Click
    end
  end
  object Boletos: TPopupMenu
    Left = 1634
    Top = 663
    object boletos001: TMenuItem
      Caption = 'Boleto da(s) parcela(s) selecionada(s)'
      OnClick = boletos001Click
    end
    object boletos002: TMenuItem
      Caption = 'Boleto de toda a listagem'
      OnClick = boletos002Click
    end
    object C1: TMenuItem
      Caption = 'Configura'#231#227'o Cobran'#231'a'
      OnClick = C1Click
    end
  end
  object exp_PDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 1392
    Top = 360
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Contas a Receber'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1688
    Top = 680
  end
end
