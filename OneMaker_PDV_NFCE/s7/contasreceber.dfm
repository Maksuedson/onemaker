object frmcontasreceber: Tfrmcontasreceber
  Left = 12
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CONTAS A RECEBER | M'#243'dulo de Consulta e Baixa'
  ClientHeight = 532
  ClientWidth = 906
  Color = clBtnFace
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
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 906
    Height = 2
    Align = alTop
    ExplicitWidth = 786
  end
  object Bevel6: TBevel
    Left = 0
    Top = 483
    Width = 906
    Height = 3
    Align = alBottom
    ExplicitWidth = 786
  end
  object Bevel18: TBevel
    Left = 0
    Top = 56
    Width = 906
    Height = 2
    Align = alTop
    ExplicitWidth = 786
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = 15264234
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 11
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label17: TLabel
      Left = 319
      Top = 11
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label18: TLabel
      Left = 423
      Top = 11
      Width = 34
      Height = 13
      Caption = 'Boleto:'
    end
    object Label23: TLabel
      Left = 615
      Top = 11
      Width = 73
      Height = 13
      Caption = 'F10 | Situa'#231#227'o:'
    end
    object Edit3: TEdit
      Left = 363
      Top = 9
      Width = 54
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object edit1: TRzButtonEdit
      Left = 52
      Top = 7
      Width = 257
      Height = 24
      Text = ''
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 2
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
      Left = 464
      Top = 8
      Width = 145
      Height = 21
      Text = ''
      FocusColor = 10550008
      TabOrder = 3
      OnEnter = edit2Enter
      OnKeyPress = Edit2KeyPress
    end
    object combo_situacao: TComboBox
      Left = 691
      Top = 8
      Width = 89
      Height = 21
      Style = csDropDownList
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
      Left = 664
      Top = 8
      Width = 57
      Height = 25
      Caption = 'filtrar cliente'
      TabOrder = 0
      Visible = False
      OnClick = bfiltrarClick
    end
  end
  object PageView1: TPageView
    Left = 0
    Top = 58
    Width = 906
    Height = 425
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 1
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 906
      Height = 404
      Caption = 'F1 | Rela'#231#227'o de Contas'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel2: TBevel
        Left = 0
        Top = 378
        Width = 906
        Height = 3
        Align = alBottom
        ExplicitWidth = 786
      end
      object Bevel4: TBevel
        Left = 0
        Top = 309
        Width = 906
        Height = 3
        Align = alBottom
        ExplicitWidth = 786
      end
      object Bevel5: TBevel
        Left = 0
        Top = 352
        Width = 906
        Height = 3
        Align = alBottom
        ExplicitWidth = 786
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 906
        Height = 309
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size'
          'SITUACAO2;ImageIndex;Original Size')
        Selected.Strings = (
          'FILTRO'#9'2'#9'S'
          'situacao2'#9'3'#9'?'
          'DATA_EMISSAO'#9'12'#9'Data Compra'#9'F'
          'CODIGO'#9'11'#9'Venda/N'#186
          'DATA_VENCIMENTO'#9'12'#9'Vencimento'
          'DOCUMENTO'#9'12'#9'Documento'#9'F'
          'VALOR_ORIGINAL'#9'11'#9'Vlr.Orignal'#9'F'
          'VALOR_PAGO'#9'11'#9'Vlr.Pago'#9'F'
          'VALOR_ATUAL'#9'11'#9'Vlr.Atual'#9'F'
          'juros'#9'10'#9'Juros/Multa'#9'F'
          'DIAS'#9'6'#9'Dias'#9'F'
          'RESTANTE'#9'14'#9'L'#237'quido'#9'F')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
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
      object FlatPanel3: TFlatPanel
        Left = 0
        Top = 355
        Width = 906
        Height = 23
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alBottom
        TabOrder = 2
        object Label13: TLabel
          Left = 7
          Top = 4
          Width = 90
          Height = 13
          Caption = #218'ltimo Pagamento:'
        end
        object DBText1: TDBText
          Left = 104
          Top = 3
          Width = 113
          Height = 17
          Alignment = taCenter
          DataField = 'DATA_PAGAMENTO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel3: TBevel
          Left = 405
          Top = 1
          Width = 2
          Height = 20
        end
        object Label46: TLabel
          Left = 215
          Top = 4
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object DBText21: TDBText
          Left = 248
          Top = 3
          Width = 113
          Height = 17
          DataField = 'TIPO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pselecao: TFlatPanel
          Left = 416
          Top = 1
          Width = 367
          Height = 19
          Color = clRed
          ColorHighLight = clRed
          ColorShadow = clRed
          TabOrder = 0
          object Label15: TLabel
            Left = 56
            Top = 3
            Width = 201
            Height = 13
            Caption = 'Total das Presta'#231#245'es Selecionadas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 40
            Top = 2
            Width = 5
            Height = 13
            Caption = '|'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object rselecao: TJvCalcEdit
            Left = 264
            Top = 3
            Width = 99
            Height = 18
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
          object rconta: TJvCalcEdit
            Left = 0
            Top = 2
            Width = 33
            Height = 18
            AutoSize = False
            BorderStyle = bsNone
            Color = clRed
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            OnChange = rselecaoChange
          end
        end
      end
      object FlatPanel5: TFlatPanel
        Left = 0
        Top = 381
        Width = 906
        Height = 23
        Color = 15264234
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alBottom
        TabOrder = 3
        object Label19: TLabel
          Left = 495
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
          Left = 343
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Conta:'
        end
        object DBText2: TDBText
          Left = 592
          Top = 3
          Width = 177
          Height = 17
          Cursor = crHandPoint
          Hint = 'Clique aqui para alterar/incluir o Nosso N'#250'mero...'
          DataField = 'NOSSONUMERO'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = DBText2Click
        end
        object DBText3: TDBText
          Left = 56
          Top = 3
          Width = 161
          Height = 17
          DataField = 'banco'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 280
          Top = 3
          Width = 57
          Height = 17
          Alignment = taCenter
          DataField = 'agencia'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 384
          Top = 3
          Width = 105
          Height = 17
          Alignment = taCenter
          DataField = 'conta'
          DataSource = dscontasreceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object FlatPanel2: TFlatPanel
        Left = 0
        Top = 312
        Width = 906
        Height = 40
        ParentColor = True
        Enabled = False
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alBottom
        TabOrder = 4
        object Label1: TLabel
          Left = 314
          Top = 1
          Width = 44
          Height = 13
          Caption = 'Subtotal:'
        end
        object Label2: TLabel
          Left = 437
          Top = 1
          Width = 30
          Height = 13
          Caption = 'Juros:'
        end
        object Label3: TLabel
          Left = 670
          Top = 1
          Width = 55
          Height = 13
          Caption = 'Valor Total:'
        end
        object Label41: TLabel
          Left = 175
          Top = 1
          Width = 55
          Height = 13
          Caption = 'Valor Pago:'
        end
        object Label42: TLabel
          Left = 60
          Top = 1
          Width = 67
          Height = 13
          Caption = 'Valor Original:'
        end
        object Bevel17: TBevel
          Left = 299
          Top = 4
          Width = 2
          Height = 31
        end
        object Label48: TLabel
          Left = 551
          Top = 1
          Width = 39
          Height = 13
          Caption = 'Cr'#233'dito:'
        end
        object rvalor: TJvCalcEdit
          Left = 313
          Top = 14
          Width = 89
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object rjuro: TJvCalcEdit
          Left = 436
          Top = 14
          Width = 89
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object rtotal: TJvCalcEdit
          Left = 669
          Top = 14
          Width = 97
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object rpago: TJvCalcEdit
          Left = 174
          Top = 14
          Width = 89
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object roriginal: TJvCalcEdit
          Left = 59
          Top = 14
          Width = 89
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object rcredito: TJvCalcEdit
          Left = 550
          Top = 14
          Width = 89
          Height = 24
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
      end
      object button1: TAdvGlowButton
        Left = 13
        Top = 340
        Width = 28
        Height = 24
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
          650041646F626520496D616765526561647971C9653C000003164944415478DA
          62FCFFFF3F032500208058D0058EDEF9A5FCEFFFFFA87FFFFEC70169897FFFFE
          31FCFDF7FF05905E04A497791BF0DF45560F10408CC82E3870F37B3050E36479
          611649C6FF7F19FEFEFD0B1667626262F805645E7BF2EDF9DF7FFF72C32CC5D6
          C2F4000410DC803D57BF06032517AA4BB0727FFCF29DE1FAE3AF0C8FDE7E05D9
          CE20C6CFC6A02DCDC72024C0C170ECC687AF7FFFFE8B4F7691031B0210406003
          B65DFCA40474E2612D6976A997EFBF31ECBEF29A41929F95C1D3508AE13F109E
          B9F39EE1ECFD770CF6EA220CD222DC0C7B2EBE7A0634C4B6D05FED1E40003181
          4CF9F1F3578CA228ABD487CF3F19765C78C9F0EDCB4F86685B7906211E360661
          1E76067703710636C6FF0C07AFBD6478075463A8C82FF5F5FBCF18905E800002
          1BF0EDC7EF5856A6FF0C17EF7F60F8FEE317C3EF7F7F810A7F31ECBFFC82E1D4
          EDD70C8C403576DA220C1FBE7C653877FF0D83000F0BC3D7EFBF62417A010208
          6AC02F6946A0531FBCFEC4F0071870BFFEFC62E8587B818189F11F83BE8220C3
          A76FBF191EBDFAC2F0F7CF3F8607CFDF33B00003F5CBF79FD220BD0001048EC6
          6FDF7F3280C2F20F10FFFA036403030EC4B7D19260780FF44ECFEAF30C3F7EFD
          610005F71FA0A1FF81DE01BA001CF80001043600C879FAEBEF5F156960287FFA
          FC8DE1DFBF3F0CA0F82F997514ACE8EFEF3F0C4053C1012A2921CCF0FDE76F90
          A54F4172000104F602D0398B9FBDFECA60A028C8C0CA08D1F0FFEF3F86B6440B
          86960473863F4003FF000D00A50D537571865B0FDF83BCBD18A417208098A02E
          58B2F1D8FD672C409EA7890C032B0B23C39F3FBF1956ECBFC1B0EAC04D4862FA
          F79BC1DD5C958195998961C18EABCF8001BF04240E1040F08494D0B52FF80F30
          2165FAE970FF06DA7EECCA1386472FDE33FC03069CB4383F8395B634030B0B33
          43D382135F81092EFED0C430704202082094A41C54BF0D941A2787DAAB48AACB
          0B31B0B33183C5BFFFF8C370E5EE6B8679DBAF3C0726F5DCE35323E149192080
          18D173A36BE93A6560F20566A67F71C0D406CC4CFF81C9F9DF0B60C65A04642F
          3B333306253301041023A5D91920C0007B329624097D86560000000049454E44
          AE426082}
        TabOrder = 5
        OnClick = button1Click
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
      end
      object plegenda: THeaderView
        Left = 16
        Top = 52
        Width = 241
        Height = 252
        AdaptiveColors = True
        BorderStyle = bsNone
        HeaderColor = clHighlight
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
          HeaderColor = clSilver
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
            Top = 200
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
            Left = 136
            Top = 217
            Width = 91
            Height = 24
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
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002A04944415478DA
              62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
              06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
              95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
              6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
              93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
              9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
              19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
              3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
              D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
              03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
              0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
              1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
              BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
              409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
              92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
              204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
              7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
              43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
              805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
              FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
              8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
              FBDD0000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = bfechar_legendaClick
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
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 906
      Height = 404
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
        Width = 906
        Height = 3
        Align = alTop
        ExplicitWidth = 786
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 41
        Align = alTop
        BevelOuter = bvNone
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
        Top = 44
        Width = 906
        Height = 360
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object wwDBGrid2: TwwDBGrid
          Left = 0
          Top = 0
          Width = 235
          Height = 360
          ControlType.Strings = (
            'FILTRO;CheckBox;1;0'
            'SITUACAO;ImageIndex;Original Size'
            'situacao2;ImageIndex;Original Size')
          Selected.Strings = (
            'DATA'#9'14'#9'DATA'
            'VALOR_PAGO'#9'18'#9'VALOR - R$')
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
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = True
          PaintOptions.AlternatingRowColor = 16053492
          PaintOptions.ActiveRecordColor = clBlack
        end
        object Panel5: TPanel
          Left = 235
          Top = 0
          Width = 671
          Height = 360
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
            Width = 3
            Height = 360
            Align = alLeft
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
      object ptampa_recebimento: TFlatPanel
        Left = 696
        Top = 312
        Width = 785
        Height = 425
        Caption = 'Presta'#231#227'o sem Recebimentos!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        Visible = False
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 2
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 21
      Width = 906
      Height = 404
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
        Width = 906
        Height = 3
        Align = alTop
        ExplicitWidth = 786
      end
      object Bevel14: TBevel
        Left = 0
        Top = 59
        Width = 906
        Height = 3
        Align = alTop
        ExplicitWidth = 786
      end
      object Bevel15: TBevel
        Left = 0
        Top = 249
        Width = 906
        Height = 3
        Align = alTop
        ExplicitWidth = 786
      end
      object Bevel16: TBevel
        Left = 0
        Top = 267
        Width = 906
        Height = 3
        Align = alTop
        ExplicitWidth = 786
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 41
        Align = alTop
        BevelOuter = bvNone
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
        Top = 44
        Width = 906
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 62
        Width = 906
        Height = 187
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size')
        Selected.Strings = (
          'CODPRODUTO'#9'7'#9'C'#211'DIGO'
          'produto'#9'39'#9'PRODUTO'
          'UNIDADE'#9'3'#9'UN.'
          'QTDE'#9'10'#9'QTDE.'
          'SERIAL'#9'24'#9'SERIAL'
          'UNITARIO'#9'12'#9'UNIT'#193'RIO'
          'TOTAL'#9'10'#9'TOTAL'
          'CST'#9'3'#9'CST'
          'ALIQUOTA'#9'8'#9'ICMS')
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
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16053492
        PaintOptions.ActiveRecordColor = clBlack
      end
      object wwDBGrid4: TwwDBGrid
        Left = 0
        Top = 270
        Width = 906
        Height = 273
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size')
        Selected.Strings = (
          'CODSERVICO'#9'7'#9'C'#211'DIGO'
          'SERVICO'#9'58'#9'SERVI'#199'O'
          'VALOR'#9'8'#9'VALOR'
          'TECNICO'#9'31'#9'T'#201'CNICO')
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
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 107
        TabOrder = 3
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16053492
        PaintOptions.ActiveRecordColor = clBlack
      end
      object Panel8: TPanel
        Left = 0
        Top = 252
        Width = 906
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Servi'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ptampa_produto: TFlatPanel
        Left = 545
        Top = 333
        Width = 785
        Height = 425
        Caption = 'Presta'#231#227'o sem Recebimentos!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        Visible = False
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 5
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 486
    Width = 906
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object breceber: TAdvGlowButton
      Left = 5
      Top = 1
      Width = 100
      Height = 42
      Caption = 'F2 | Receber'
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
        702E6969643A3531423845383333453238323131453239393932384331334245
        3437413935302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A353142384538333445323832313145323939393238433133424534374139
        3530223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3531423845383331453238323131
        453239393932384331334245343741393530222073745265663A646F63756D65
        6E7449443D22786D702E6469643A353142384538333245323832313145323939
        3932384331334245343741393530222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3ECBCFC7FB000004B44944415478DAC499
        0B88564514C7EF5E375FBB1A3E327335D7D2C430B5356B15CD554228C396C028
        452B0DD40AD34D30125A162531316B09134534312D455D35B6D228652BCAAC48
        DD141FB1B59A65BAF8E8E103DDFE47FE13C7C3DCEFBD5F077EDCB9F3CD9D7BEE
        993333E7CC9713541D0DD2903CD00F74075D4137108213A09ED4823F527D416E
        8ACF3D041E03C3C06D71DAFE0E6A4015D80CFE4EE645394958B03578118C07BD
        63B46BBCD6AF5F4E8135E00DF07326157C1C54829B54DD15F009F812EC0507C1
        797015B4E1B0DF0D8A68F136EA5969F3325890AE82CDF9C563559D28F326A806
        BF25687D51AE044C070FA8FA6FC013E0682A0AB6075F815EBC17DF990DDE8AE3
        06B7837D31DA8CE10716F2FE12B81F7CED6B1C467422C3B35F29F711E81947B9
        D1F42BB1F017A07344BBADF4E1256A94C410A392B1E03150C0F24A30C9FC2E33
        F83267A5B3DC59B32AAC024FC719FA32B048DDDF010EC7B3E04EA5DC62A35C6B
        5AE77DB009AC677D33CF92D53901DF7CDD7C8458B2552C05A782E12CD7F00BB5
        C8300C51F763F9D5327BCBCD52536E9E2DB42F57965EACFC7E79D410DF084ED3
        1A72BD85C3A8A50FF851DD5FA6A51A783F82D6FF1CD499673B80739E3E036590
        A12C17BB49A32DF81A950B68765F4707B8A6ED6107C54A3991CFB82CD5799E3D
        1D43B980CB8D9377AC053BAAFD721FF75727B3C040B0166C0B9A569682292CDF
        07763B0B96AA462FA9F2B360217792ADC6FFD2951E60B0A97BC5CC87FF867882
        5A5EAA55A362D3C15D1954B0C0D3DF49354AB294E58A826DD5976C320FCC0747
        B8777EAA7D230322136999A77EBB0AE54A7239736E50FE672785EC2637336CCA
        86D4A872FF9081A656282AA6CB96FCA05686AE21A360B769EF570D9BD1370705
        D9975F79ED98CB0539E022FA27CB6DB9A5F5E5FD30FA4C5388EC4617B94A3871
        7AE48726FA75E54E4A3991914D68ADE7C1E4A870D025382EA8747BA5CCDCB7F9
        6592F4AC68420565EF7FC4938C5DB3A428789C372DB8D7EA45BA0B2D793CCB3E
        E822A186D0BCBCAF69D8F03F4C903E2AF7A90FE9FC57587167C443DDB2A8E070
        55AE0D69A53DACB0BE203EB903FCC2C837CCA022B27C3DA336092725BC5E90E8
        C8BDF05D5E7B724971D2456561659ECED291290C4EF3545DBECA20B7807F9C82
        1B4C18EEA48E33F80893F68B1954F005702B38A3EA2AD4282DB111F53A8655CE
        CCBBB23C39DAA949594FE5AFF3A9329327C49227C134158127220322721227AB
        5579922F6992057B8E4A70AA223A7A941F2043F05482CA4D04DF838D11BF4B90
        FC30CB1FF248C59BD5BDCAE30837A3E7793AFB89334CE490F9ED39A6A236D0AD
        650EBD39E283E7B3FC1718172F716FC9FC249FF70B4C1AE072983CCF095523AF
        6B54941E4B2698A1BD077C1B2F71BFC0DCC34514B31949B732C768BEE3B3520E
        FDDC0494AB30CA8DB7CAC53B3C9283C9DDCC67036E8933CD92948ADCCB40A4C8
        9CEB54277378E47C4DF6C50F5492B39EB9EF441E8324230F82F7984F1729DF1C
        14A55C320798333C5BDD193AFD770C6E4FF088AE917EDC81D61AC823B742D367
        2517EB8C9CB0065C3867720D6CE7F9BD5129D822625BBCCA6DB552EDFF1953D0
        EE97A58CB4F3137846DCE2632A772C9997E5A4F937440F26DF054C4D5BAA04EC
        1427D6611E6AA624FF0A300075BC0FB53BF898510000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = breceberClick
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
    object bliquidar: TAdvGlowButton
      Left = 109
      Top = 1
      Width = 100
      Height = 42
      Caption = 'F3 | Liquidar'
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
        702E6969643A3732413442304433453238333131453238393841443236313242
        3830433731312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A373241344230443445323833313145323839384144323631324238304337
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3732413442304431453238333131
        453238393841443236313242383043373131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A373241344230443245323833313145323839
        3841443236313242383043373131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E0B0618CD000004D64944415478DABC98
        696C545514C75FC77106AA45B128E002898A3BB84090A6A16ADDA25631AE485C
        E35221EE267ED0B87C504CF8A0B892A0C12521AE151054026AACDA68DC700143
        68149791452105A1D5B6D0FA3FC9EF2637CF37EDEB9B793DC92FF3B6FBE6DC73
        EFD95E45B0F8A7A004A910C7881A314EEC2BF6143BC446F1855825DA92FE4136
        E1B80BC589A2564C16557D3CBB46B4886FC472F16B5A0AEE2D66881BC5A488FB
        EDA253F462C52122278E8500ABBE299E133FC45BA2784B7CBA7892E574F28758
        2D3E155F89F562ABE8613207F27C1DD69EE08DB589CC164F88EDA5286896982B
        6679D76CA99E121F8ADF625A3F2FA68AABC4D5DEF5EF38FF3E8982FB8957C459
        9C6F160F8857C5DF2538D6F1E261D1C0F9367183688A7A3853E425E68DCB3CE5
        9AF1D4F9252AE7AC7681B897ED60FFF586981E57C14AF1360A992C40D1F541F9
        C41CE951711E16B470B550D4C751701EFBC51D5F2FBA8274C4C2CEE59E2E8BC4
        98BE149CE66DE295E2B6207D5921AEE4789878BC988255B8BDC91666B62B181C
        59486C34B9485C11A5E035622CC777F6919E86A4A4E43D5E96B94FECE12B68D6
        BB9DE36FC56B455E3281B435350505B7910C0232CF745FC173C4E11CDB32777B
        03EF1233397E0F2B1752B2A22DB30BCC67FAB9D8E5D65FF0245F0E42C946D257
        0D21A75A3C220E084D288EE4488F73426377903A0F43C19159D2591D0FAC8DC8
        8D778BBD50F03AF139D7878A73C5210374A60AF6978D7F2C62721FE00F668CDA
        2CFB6A2237BF2CF2D25BC43B62A977AD40DA1A9DC0827956EB9F887B2BC95616
        72A6988253BCA55E55E485BB3CE5EA49EE5BF0F4B632EFC34DEC43AB804664BC
        C86DD96243C480E1CCC6E42196607C2835E6D82A0321C7D8287169B532EB3DB4
        5B74443CFC8C388AB4F72005430BD5CEEBE238927ED296C156ED520A5E27AE20
        C964BD0D5E51A4C27E992A783EFBA3D1F3C483F1E2A419C72CB93FEF6A8F4806
        BD59AA60F787D54512FAD944F79B427BE504C2501715CA40AD97A7320F3BCB28
        5779673DC7B0FD78A4783FE2652D8414371157DDFCEB05D672499E0ED1646786
        B8F63B176AFA196C16FB5A9C1C9A6D754C46C650709267C1B56E899B29798E8E
        18D088755FA2CA360BFEC9DE59CC6CBB06B0E72CD65E82F5A3A481406EFBBA39
        130AD0E3898BBE5867F6AC5847503E8D30D043916125FB8898161CCEEFEE3E26
        51CBEFC7166FB35EF4EE64FD677AE92CA0CA3165EEA02B5BC3F5AD64927DB81F
        C74932FDB499F59E814CC15EBFAB7B911CD84D6C5B17DAB8754C244D7997CAAA
        8D145CF00BD639DE3E793A34B0731094BB0CE59CB10AE18AFA471A72578BDD1A
        0C9E8CF28CB2D133D6FF9A26EB555B399E4B804E5B2CCF2F212AB8CA69533105
        7752F375736F9967F634244F2A9DCCB959F1ADFEFAE216BAAA1E72B3CDEEE614
        941B47CB398DF34551DBAAD8A78F269A962E9C661EB1B0BA4CCA59B4F8C4ABE4
        9BBC063E968201DF4B1A48E601F171352DE9E8044AE570BE1578A94B7BB3C92C
        DD49BF0F1E2AEE17D786CAFD2504D3CFBC5C1E16EB654EE2FBE229E254EF5E2B
        FDCED2727CC07471CABEAE9E11BA5E20F5FDEC65891CEDE918EFEBAA930D14C1
        CF93D38372291890C4CF1717E37947C41CF7179FDD6C795FA09F89593426FFCA
        5F49EE9C41D35F45259CC1B93A506439554F6B923FC996E0891DECC1A1848C61
        2105DB59C28F922A67F29F00030037AC1FC8E837390F0000000049454E44AE42
        6082}
      Transparent = True
      TabOrder = 1
      OnClick = bliquidarClick
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
    object bextornar: TAdvGlowButton
      Left = 214
      Top = 1
      Width = 100
      Height = 42
      Caption = 'F6 | Extornar'
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
        702E6969643A3433384531453735453238323131453239453939383435423344
        3532464433362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A343338453145373645323832313145323945393938343542334435324644
        3336223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3433384531453733453238323131
        453239453939383435423344353246443336222073745265663A646F63756D65
        6E7449443D22786D702E6469643A343338453145373445323832313145323945
        3939383435423344353246443336222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB3CF7EBF000004DB4944415478DABC99
        7B6C4E671CC74FEBD45E14DBAC96BACCA59B8545C622D12C337625143316A218
        D98265461762D125241244828D2DCDFA07B1D18D4DCC652386B86C82AD8B5135
        9DFB6553D5990D75ABF2FDCDF7243F4F9E73E9FBBEFC924FDE739EF39CF3FCCE
        737EB7E779539C55479C04E461D011B4024F824CB65F04A5E04FF03B381AEF00
        6E9CF70D04AF831EA05948DFCB601B5807BE06E76A33504A2D66F0213011E482
        D601FD6A40AACFB56B6029F804EC4DA682A3C047A0B16ABB0936831D601F2803
        FF51C186FCEC9DC133A037DBB4CCE30B27A4603AF812F4556DA2CC7C7EB2F288
        B3DF90E6301EBCACDA0F83E160573C0A8AC1EF062D795E053E009F3A89493FBE
        A036139980EF6C9DFD6CE50950A294DBC0B644951359438F2F506D6BC188A80A
        A6D1AE9AF07C31E805FE729227D7C1BB860D7E0E9E8DA2E08F2083C71FD34192
        21B69036CF78FE4F6A6CAB8262C45D792CB3F87E12676D2828B4B42F6684B8E3
        138EB3CCCF49242B54B2D37906E06B11076FCE70920D627CCE4E500C2EB14F2E
        63A038C824506DF972CF29475A6B2AB8484D777F1A73987400F91CDC26FF822F
        401E680FF6B33DCB92FE5A80533CAE008FEA4FDC54297720A27213996F7303FA
        48607F0FFC01A684D8FE696502A2CFABBA637FD5313F827232D81C4BBBA4AF15
        0CE65AB28C17B9EEF3DCA9EA78AC5670B89ADAD521CABD08661A6DD3411BD009
        BC019EA62D8FA33D9B72D3E7D9159EED41722493B9FC0CD96C5C1921547C65B4
        0D00ABD4F918563AC79997ABAD19CC5F7E60669178FC924BCF49E3C592086556
        53753EC9504E643B98E1D9501CB2433BA1CB10E1C989909BDF31CEE75AFA4881
        FA0828623EFF075C2555FCBD1030C61EDE23E55D3357E55BAFBA089219CA392E
        84F4CD4D20A89753C10C5795E90E350F928DCEFD912AFEC6520D838DDDC341EB
        D462A95147773CA32E3C064E06DCF838EDCBE543D288BCE8F701F7497A1BC2B4
        17E342EB7C48A1FCFF4CBA5C7979D2961545D040BD7DAE1D03DD8CE7E922C4CB
        10274394ABAF1CB732D5786056C8D4D758CECB39335221CF5621CB9365C6F9E4
        903124ECD5E3F1A954CE9817D97B86DCFC80C598F3B9E690670D0337784D0659
        0E06ABFE656C0B926C755CEA72BA8B590776E54C1CF7B9F986C5560A5809AF61
        AA92B2AD3B18E95524946A56E6613288BF122FB778DE54A40AD5690155747D55
        4635569EFF36F11389992F04BCB8FEBC1D792C35C115AF58F846751A6996DD16
        1B2DE4808722CCC812D00EFC16A1EF67EAB8405733E586312FF27980D72E0BAA
        AD1C78080B883D3497630CE8B358A48E88B8DD21F6FB94E71CCCE97755D499C6
        CAED2D1F45BFA5530DB25CAB1B50EB0549265FCC73C257C026B3B29580FDA13A
        5FC8AD0BC7525E8D0F584EC6233F2BE5D67BCAD94A6F29447F51E7BBE891A624
        6B8DDC80E3B5503B6143C3D6C5CFAB95585DDADAE07B909BB3E8385D545B77B3
        4AB229789571ED92910D6491FD6092941B0D0E32B7EBF2ECD7A87B33255C57FC
        ADDA64112F1E352181AA27879FB4D0A868FA7017ADD6DB6F19F4E41CA3FD2C77
        A336321C9CF1B9BF111DAD17D3A8E974A58CBBC5896E60E6B1BCB7CDF82DC6AD
        32A5683A63604B553A99B2805F23293BAC5EAD289FF94D96E3F1480DD3EA82A0
        598B57415D20C8DAF735AE91D323DCB3857B8C45DC41882C2909FE0DD186C9BD
        392B97980AD895AC350F59761A22CB6D010600366217C325081BDD0000000049
        454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bextornarClick
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
    object bfechar: TAdvGlowButton
      Left = 679
      Top = 1
      Width = 104
      Height = 42
      Caption = 'ESC | Fechar'
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
        702E6969643A3237463942453631453238323131453238383933383533304243
        3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A323746394245363245323832313145323838393338353330424336434635
        3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3237463942453546453238323131
        453238383933383533304243364346353036222073745265663A646F63756D65
        6E7449443D22786D702E6469643A323746394245363045323832313145323838
        3933383533304243364346353036222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
        7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
        9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
        15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
        F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
        EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
        C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
        FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
        1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
        C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
        4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
        E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
        21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
        6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
        02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
        60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
        5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
        C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
        6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
        65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
        2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
        E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
        5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
        A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
        3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
        484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
        02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
        86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
        CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
        5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
        E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
        94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
        D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
        ADC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
        D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
        079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
        475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
        AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
        AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
        8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
        703A52D50000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bfecharClick
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
    object brelatorios: TAdvGlowButton
      Left = 318
      Top = 1
      Width = 100
      Height = 42
      Caption = 'F8 | Extrato'
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
        702E6969643A4442423443394332453238313131453242394338393942364543
        3838344544452220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A444242344339433345323831313145324239433839394236454338383445
        4445223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4442423443394330453238313131
        453242394338393942364543383834454445222073745265663A646F63756D65
        6E7449443D22786D702E6469643A444242344339433145323831313145324239
        4338393942364543383834454445222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB0957FD5000005934944415478DAB458
        796C944514DF6F7771972A68418A55A828A0126F118D174710242A55A99188C4
        A0A051226852A3A2FC2189670C1210E21545413C62A8578C468D8A94C32ACAA1
        50143CD046C156DBDADA935D7F4F7F93BC0CF35D5D7DC92FFB7DB333F3BD79F3
        DEEFBD192FF1FAEE4401520C9C0C1C0D0C0306B37D1FB013A803B6033FF7F403
        E91E8EBB02A800C6024785F46D04D6006F02AB81A6381FF26258F030A012B806
        38A6870B6B0656028B816FFF4B0567008BA8A416B14C35F035B00D680572C021
        DCF2138151C045406F6BECBDC08242153C18781128576DB5C012E0AD18BE25BE
        7A213007B840B56FE68E6CEF8982A5C046A08CEF5DC05DC0A389C2642AE73852
        B58D06D6BA3A277D2619CE2D33CA7DCCB64295137905380E7846B57D024C8E6A
        C15EA487017C7F0998E6183B1F28017600ED4011ADD200FCC13E296028836A36
        F0BB35C7DDC0FDEA5D28EBAB300B562BE51EF7514EE4626E8B44E37EBA80F4AF
        A1C2ED54482C7625B9D29607809BD4FB7A06982F0FDE069CC5E71AAEDA4F44B1
        0DC067C011C04C06CD3C354EA2FA58E053A0DB679E2781D3A8681F600530C565
        C1C3492586AFC685F8529E1FFF15B81E7896ED39D5A705C870ABF30173DD4C83
        982430C665C145EA7916F0578882B2ADFD80D3ADF63FD573378D20CAFD1032DF
        D5800988E74C32300ACA164DE7F337C0AB8E09FA026703597E70180324C5F11E
        FB9558E33AD8E73AE07BBE6FB41622F21DB7F75A600870BEC48351708AEA38CF
        A1DC74A628DB823B494163022CD3C4452DB1DA672AB730720F1534DB5E6D7CD0
        34FE065459834EA1723F311A2F21DE67646642B6EE5046F46C8EABA0B5840747
        5A7D25C8DE5346CBA64929A3D8B8DAF101132C93AC9434993ED816A26086D65E
        C5E013F9859422696F93D5FF1D6022AD3E3EC9BD3696DCE213AD229D8E3CDD19
        2173E4E89F65563248F88CDFA0893B490737B2CB31C0F057918FF2D900E58AA8
        9C4D31073928C9C82665E94169E658530C6C899153F3E4B9462E2277401AFD37
        E535B3AF1771DE6E72ABB046495A95E96D21D5AE6D0549F81358403CE5503049
        4A91FC7A8E9514F2214AB6184BA7AD95B95669B670AFD5FE323F5C4C453CC782
        52F4BDA7C999461AACB903CF24A6E8EC4DC7EFB0FAD4292ED4E5D6E2024AAE49
        8AD6FC7CF71FB74BABC0E8C5ED5863757E0DF8025848EC67A19065FEF6420E5F
        1E5DA75E9C9E054182F56695CF9881FCAD4F93938C1CEF50B0933CF908B734AB
        F2EF97B4788B8332CA18AD397E7004776B1BA9E44E2ED69633E836227B44C175
        EACF9302B8ACD2F2AFE7811FF9DF7292765EEDC6E7AABF649165CC245B43B6FF
        3CF5BC23CD90167A3915B81C981B3241526588264EF8905230C93A70197DBA51
        A5C38111FC739CA2BD0FCDC74C213098D41145C1149DBC2FD1C69CDB41EE2B66
        0957AB22381932773FD68326E535271565185918231A3354A8CBDAFEFECCEB43
        790D3228E27CF7A9E7C7743D58C7AB897246F244555504317E293FEEF99CDEF6
        B1EE6B88A05C094B2C73B7F3816DF239EA7979C454D7C980C83920117F15179C
        8A30DF2AABA23FA0E4DF4313CFE7F1F15D45A87E915D43C7F7AB6A522CD1C2F2
        F002DE3C887CC45B0BDF73F16646B4F1C7DB1DE7E6563E6F55E55410519772D1
        97026F5BFF4F53D6EB62BFFAA0EBB7D1F4810CB94F14BAD5B2DC5EFADEC89829
        CE2E6E67314F1B19AB95F353B0D91C58A8E45C6EE38DFC4FD8FF4CE6CB7C0CE5
        727423230FF2AE479F51D6C7B93C3A813ED64725F64AC7E129AEC8E29FE0D59C
        910ABFBC1C449CB554D2D0CD001E0BC5B237909CA38A7CE73272E35AA5DC2E2A
        5C55E805E61DC0C38EA2F20D160CEBC8A5ADAAA497059DCB6B8D72EBBA2DC122
        F7168BE40BBA021ECE6099C11CEB92769561FC225B6ECB96BAFCAD500575BE9C
        CA63E77875000A926A9EA35FE099F87FB944F70BA411ACFDFAF3EACCE35637F2
        B0BFDB2ABD62C9DF020C009946633A8EAB94390000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = brelatoriosClick
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
  object Panel9: TPanel
    Left = 0
    Top = 39
    Width = 906
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Color = 15264234
    TabOrder = 3
    object Label43: TLabel
      Left = 4
      Top = 3
      Width = 49
      Height = 11
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      Top = 3
      Width = 453
      Height = 11
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 524
      Top = 3
      Width = 54
      Height = 11
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lcpf: TLabel
      Left = 588
      Top = 3
      Width = 93
      Height = 11
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 684
      Top = 3
      Width = 34
      Height = 11
      Caption = 'Limite:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object llimite: TLabel
      Left = 724
      Top = 3
      Width = 53
      Height = 11
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object dscontasreceber: TDataSource
    DataSet = QRCr
    Left = 712
    Top = 184
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 520
    Top = 48
    Bitmap = {
      494C01010600080010000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 432
    Top = 32
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
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 116
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
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
    end
    object Funes1: TMenuItem
      Caption = 'Gerar Boletos'
      ShortCut = 123
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object ImprimirCheque1: TMenuItem
      Caption = 'Imprimir Cheque'
      ShortCut = 16457
    end
  end
  object dscontasreceber_pgto: TDataSource
    DataSet = qrcontasreceber_pgto
    Left = 400
    Top = 176
  end
  object dsproduto_mov: TDataSource
    DataSet = qrproduto_mov
    Left = 272
    Top = 168
  end
  object dsservico_mov: TDataSource
    DataSet = qrservico
    Left = 520
    Top = 184
  end
  object fxduplicata: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 39575.784703946760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 808
    Top = 144
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
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
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
            32302031302E302E31303234307D5C766965776B696E64345C756331200D0A5C
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
        object Picture2: TfrxPictureView
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
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo62: TfrxMemoView
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
        object Line16: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo68: TfrxMemoView
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
            32302031302E302E31303234307D5C766965776B696E64345C756331200D0A5C
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
            32302031302E302E31303234307D5C766965776B696E64345C756331200D0A5C
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
            32302031302E302E31303234307D5C766965776B696E64345C756331200D0A5C
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
    Left = 760
    Top = 104
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
    Left = 696
    Top = 96
  end
  object qrduplicata: TJvMemoryData
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
    Left = 608
    Top = 109
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
  object qrcr_recibo1: TJvMemoryData
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
      end>
    Left = 496
    Top = 100
    object qrcr_recibo1FILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
    end
    object qrcr_recibo1situacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcr_recibo1DATA_EMISSAO: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object qrcr_recibo1CODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcr_recibo1DATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcr_recibo1DOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
    end
    object qrcr_recibo1VALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibo1VALOR_PAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibo1VALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 9
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibo1juros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_recibo1DIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcr_recibo1RESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcr_recibo1CODCEDENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object qrcr_recibo1TIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcr_recibo1VALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibo1DATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcr_recibo1CODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcr_recibo1CODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcr_recibo1CODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcr_recibo1VALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcr_recibo1SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcr_recibo1CODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcr_recibo1NOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcr_recibo1CODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrcr_recibo1banco: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'banco'
      KeyFields = 'codcedente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcr_recibo1agencia: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'agencia'
      KeyFields = 'CODCEDENTE'
      Visible = False
      Size = 10
      Lookup = True
    end
    object qrcr_recibo1conta: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODCONTA'
      KeyFields = 'codcedente'
      Visible = False
      Lookup = True
    end
  end
  object CRBatchMove1: TCRBatchMove
    AbortOnProblem = False
    Destination = QRCr
    Mode = bmAppendUpdate
    Left = 256
    Top = 87
  end
  object QRCr: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    IndexFieldNames = 'data_vencimento,codigo'
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
        Name = 'valor_anterior'
        DataType = ftFloat
      end>
    Left = 592
    Top = 55
    Data = {
      03001C00060046494C54524F03000000000000000900534954554143414F3203
      000000000000000C00444154415F454D495353414F0900000000000000060043
      4F4449474F01000C00000000000F00444154415F56454E43494D454E544F0900
      0000000000000900444F43554D454E544F01001400000000000E0056414C4F52
      5F4F524947494E414C07000000000000000A0056414C4F525F5041474F070000
      00000000000B0056414C4F525F415455414C070000000000000005004A55524F
      5307000000000000000400444941530300000000000000080052455354414E54
      4507000000000000000A00434F44434544454E54450100060000000000040054
      49504F01001400000000000B0056414C4F525F4A55524F530700000000000000
      0E00444154415F504147414D454E544F09000000000000000B00434F4456454E
      4445444F5201000600000000000800434F44434149584101000600000000000A
      00434F44434C49454E544501000600000000000E0056414C4F525F444553434F
      4E544F07000000000000000800534954554143414F0300000000000000080043
      4F4456454E444101000700000000000B004E4F53534F4E554D45524F01002F01
      000000000900434F4452454749414F0100060000000000050042414E434F0100
      1E000000000007004147454E43494101000A00000000000500434F4E54410100
      1400000000000E0076616C6F725F616E746572696F7206000000000000000000
      00000000}
  end
  object DataSource1: TDataSource
    DataSet = QRCr
    Left = 616
    Top = 183
  end
  object frxRichObject1: TfrxRichObject
    Left = 824
    Top = 79
  end
  object qrproduto_mov: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select mov.*, pro.produto from c000032 mov, c000025 pro'
      'where mov.codproduto = pro.codigo')
    Active = True
    Left = 264
    Top = 279
    object qrproduto_movCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODPRODUTO'
    end
    object qrproduto_movPRODUTO: TStringField
      DisplayWidth = 39
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrproduto_movUNIDADE: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrproduto_movQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrproduto_movSERIAL: TStringField
      DisplayWidth = 24
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrproduto_movUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 12
      FieldName = 'UNITARIO'
    end
    object qrproduto_movTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrproduto_movCST: TStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 10
    end
    object qrproduto_movALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 8
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
    end
    object qrproduto_movCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 30
    end
    object qrproduto_movICMS: TFloatField
      FieldName = 'ICMS'
      Visible = False
    end
    object qrproduto_movIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrproduto_movCFOP: TStringField
      FieldName = 'CFOP'
      Visible = False
    end
    object qrproduto_movDATA: TDateTimeField
      FieldName = 'DATA'
      Visible = False
    end
    object qrproduto_movNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Visible = False
    end
    object qrproduto_movCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
    end
    object qrproduto_movDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrproduto_movACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrproduto_movCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
    end
    object qrproduto_movCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Visible = False
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrproduto_movVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrproduto_movSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_movECF_SERIE: TStringField
      FieldName = 'ECF_SERIE'
      Visible = False
      Size = 30
    end
    object qrproduto_movECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 10
    end
    object qrproduto_movCUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
      Visible = False
    end
    object qrproduto_movCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Visible = False
    end
    object qrproduto_movCUPOM_ITEM: TStringField
      FieldName = 'CUPOM_ITEM'
      Visible = False
    end
    object qrproduto_movLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 30
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
      Visible = False
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Visible = False
    end
    object qrproduto_movVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Visible = False
    end
    object qrproduto_movCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 40
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qrproduto_movPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qrproduto_movCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qrproduto_movLOJA: TStringField
      FieldName = 'LOJA'
      Visible = False
      Size = 30
    end
    object qrproduto_movCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
    end
    object qrproduto_movTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 10
    end
    object qrproduto_movORIGEM: TStringField
      FieldName = 'ORIGEM'
      Visible = False
      Size = 80
    end
    object qrproduto_movDESTINO: TStringField
      FieldName = 'DESTINO'
      Visible = False
      Size = 80
    end
    object qrproduto_movCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Visible = False
    end
    object qrproduto_movPRODUTO_1: TStringField
      FieldName = 'PRODUTO_1'
      ReadOnly = True
      Visible = False
      Size = 100
    end
  end
  object qrfunci: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000008')
    Active = True
    Left = 336
    Top = 279
    object qrfunciCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfunciNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfunciENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrfunciBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfunciCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrfunciUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfunciCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrfunciTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qrfunciCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrfunciEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrfunciCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object qrfunciRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrfunciCTPS: TStringField
      FieldName = 'CTPS'
      Size = 25
    end
    object qrfunciFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 30
    end
    object qrfunciDATA_ADMISSAO: TDateTimeField
      FieldName = 'DATA_ADMISSAO'
    end
    object qrfunciDATA_DEMISSAO: TDateTimeField
      FieldName = 'DATA_DEMISSAO'
    end
    object qrfunciSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrfunciSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object qrfunciCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrfunciOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrfunciOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrfunciOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrfunciNASCIMENTO: TDateTimeField
      FieldName = 'NASCIMENTO'
    end
    object qrfunciF_CAIXA: TIntegerField
      FieldName = 'F_CAIXA'
    end
    object qrfunciF_VENDEDOR: TIntegerField
      FieldName = 'F_VENDEDOR'
    end
    object qrfunciF_TECNICO: TIntegerField
      FieldName = 'F_TECNICO'
    end
    object qrfunciNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfunciSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
  object qrcontasreceber_pgto: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000050')
    Active = True
    Left = 416
    Top = 279
    object qrcontasreceber_pgtoDATA: TDateTimeField
      DisplayWidth = 14
      FieldName = 'DATA'
    end
    object qrcontasreceber_pgtoVALOR_PAGO: TFloatField
      DisplayLabel = 'VALOR - R$'
      DisplayWidth = 18
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceber_pgtoCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 9
    end
    object qrcontasreceber_pgtoVALOR_PARCELA: TFloatField
      FieldName = 'VALOR_PARCELA'
      Visible = False
    end
    object qrcontasreceber_pgtoVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
      Visible = False
    end
    object qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
    end
    object qrcontasreceber_pgtoDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Visible = False
    end
    object qrcontasreceber_pgtoCHEQUEAV: TFloatField
      FieldName = 'CHEQUEAV'
      Visible = False
    end
    object qrcontasreceber_pgtoCHEQUEAP: TFloatField
      FieldName = 'CHEQUEAP'
      Visible = False
    end
    object qrcontasreceber_pgtoCARTAO: TFloatField
      FieldName = 'CARTAO'
      Visible = False
    end
    object qrcontasreceber_pgtoBOLETO: TFloatField
      FieldName = 'BOLETO'
      Visible = False
    end
    object qrcontasreceber_pgtoTROCO: TFloatField
      FieldName = 'TROCO'
      Visible = False
    end
    object qrcontasreceber_pgtoCREDITO: TFloatField
      FieldName = 'CREDITO'
      Visible = False
    end
    object qrcontasreceber_pgtoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField
      FieldName = 'CAIXA_BANCO'
      Visible = False
    end
  end
  object qrservico: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000053')
    Active = True
    Left = 520
    Top = 279
    object qrservicoCODSERVICO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODSERVICO'
      Required = True
      Size = 6
    end
    object qrservicoSERVICO: TStringField
      DisplayLabel = 'SERVI'#199'O'
      DisplayWidth = 58
      FieldName = 'SERVICO'
      Required = True
      Size = 50
    end
    object qrservicoVALOR: TFloatField
      DisplayWidth = 8
      FieldName = 'VALOR'
    end
    object qrservicoCODTECNICO: TStringField
      FieldName = 'CODTECNICO'
      Visible = False
      Size = 6
    end
    object qrservicoDATA: TDateTimeField
      FieldName = 'DATA'
      Visible = False
    end
    object qrservicoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrservicoCODOS: TStringField
      FieldName = 'CODOS'
      Required = True
      Visible = False
      Size = 6
    end
    object qrservicoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrservicoQTDE: TFloatField
      FieldName = 'QTDE'
      Visible = False
    end
    object qrservicoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      Visible = False
    end
  end
  object qrcontasreceber: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000049')
    Active = True
    Left = 600
    Top = 279
    object qrcontasreceberCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
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
    object qrcontasreceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
  end
  object qrbanco: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000013')
    Active = True
    Left = 704
    Top = 279
    object qrbancoNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 6
    end
    object qrbancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object qrbancoLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qrbancoCARTAO_CREDITO: TIntegerField
      FieldName = 'CARTAO_CREDITO'
    end
    object qrbancoFINANCEIRA: TIntegerField
      FieldName = 'FINANCEIRA'
    end
    object qrbancoRESSARCIMENTO: TIntegerField
      FieldName = 'RESSARCIMENTO'
    end
    object qrbancoPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object qrbancoCOMISSAO_CREDITO: TFloatField
      FieldName = 'COMISSAO_CREDITO'
    end
    object qrbancoCOMISSAO_DEBITO: TFloatField
      FieldName = 'COMISSAO_DEBITO'
    end
    object qrbancoREC_DEBITO: TIntegerField
      FieldName = 'REC_DEBITO'
    end
    object qrbancoREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
    end
    object qrbancoCONTA_PADRAO: TStringField
      FieldName = 'CONTA_PADRAO'
      Size = 15
    end
    object qrbancoTITULAR_CONTA_PADRAO: TStringField
      FieldName = 'TITULAR_CONTA_PADRAO'
      Size = 100
    end
  end
  object qrconfig_cobrebem: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000064')
    Active = True
    Left = 808
    Top = 287
    object qrconfig_cobrebemCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfig_cobrebemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qrconfig_cobrebemCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 15
    end
    object qrconfig_cobrebemCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
    end
    object qrconfig_cobrebemARQUIVO_CONFIGURACAO: TStringField
      FieldName = 'ARQUIVO_CONFIGURACAO'
      Size = 100
    end
    object qrconfig_cobrebemARQUIVO_LOGOMARCA: TStringField
      FieldName = 'ARQUIVO_LOGOMARCA'
      Size = 100
    end
    object qrconfig_cobrebemTIPO_BOLETO: TStringField
      FieldName = 'TIPO_BOLETO'
      Size = 50
    end
    object qrconfig_cobrebemNOSSONUMERO_INICIO: TStringField
      FieldName = 'NOSSONUMERO_INICIO'
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_FIM: TStringField
      FieldName = 'NOSSONUMERO_FIM'
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_PROXIMO: TStringField
      FieldName = 'NOSSONUMERO_PROXIMO'
      Size = 10
    end
    object qrconfig_cobrebemVARIACAO_MODALIDADE: TStringField
      FieldName = 'VARIACAO_MODALIDADE'
      Size = 10
    end
    object qrconfig_cobrebemMARGEM_SUPERIOR: TStringField
      FieldName = 'MARGEM_SUPERIOR'
      Size = 10
    end
    object qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField
      FieldName = 'REMESSA_UTILIZA'
    end
    object qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField
      FieldName = 'RETORNO_UTILIZA'
    end
    object qrconfig_cobrebemREMESSA_LOCAL: TStringField
      FieldName = 'REMESSA_LOCAL'
      Size = 100
    end
    object qrconfig_cobrebemRETORNO_LOCAL: TStringField
      FieldName = 'RETORNO_LOCAL'
      Size = 100
    end
    object qrconfig_cobrebemINSTRUCOES_1: TStringField
      FieldName = 'INSTRUCOES_1'
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_2: TStringField
      FieldName = 'INSTRUCOES_2'
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_3: TStringField
      FieldName = 'INSTRUCOES_3'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_1: TStringField
      FieldName = 'DEMONSTRATIVO_1'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_2: TStringField
      FieldName = 'DEMONSTRATIVO_2'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_3: TStringField
      FieldName = 'DEMONSTRATIVO_3'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_4: TStringField
      FieldName = 'DEMONSTRATIVO_4'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_5: TStringField
      FieldName = 'DEMONSTRATIVO_5'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_6: TStringField
      FieldName = 'DEMONSTRATIVO_6'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_7: TStringField
      FieldName = 'DEMONSTRATIVO_7'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_8: TStringField
      FieldName = 'DEMONSTRATIVO_8'
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField
      FieldName = 'DEMONSTRATIVO_TIPO'
    end
    object qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField
      FieldName = 'LIN_VENCIMENTO'
    end
    object qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField
      FieldName = 'COL_VENCIMENTO'
    end
    object qrconfig_cobrebemLIN_DATADOC: TIntegerField
      FieldName = 'LIN_DATADOC'
    end
    object qrconfig_cobrebemCOL_DATADOC: TIntegerField
      FieldName = 'COL_DATADOC'
    end
    object qrconfig_cobrebemLIN_NUMERO: TIntegerField
      FieldName = 'LIN_NUMERO'
    end
    object qrconfig_cobrebemCOL_NUMERO: TIntegerField
      FieldName = 'COL_NUMERO'
    end
    object qrconfig_cobrebemLIN_ESPDOC: TIntegerField
      FieldName = 'LIN_ESPDOC'
    end
    object qrconfig_cobrebemCOL_ESPDOC: TIntegerField
      FieldName = 'COL_ESPDOC'
    end
    object qrconfig_cobrebemLIN_ACEITE: TIntegerField
      FieldName = 'LIN_ACEITE'
    end
    object qrconfig_cobrebemCOL_ACEITE: TIntegerField
      FieldName = 'COL_ACEITE'
    end
    object qrconfig_cobrebemLIN_ESP: TIntegerField
      FieldName = 'LIN_ESP'
    end
    object qrconfig_cobrebemCOL_ESP: TIntegerField
      FieldName = 'COL_ESP'
    end
    object qrconfig_cobrebemLIN_QTDE: TIntegerField
      FieldName = 'LIN_QTDE'
    end
    object qrconfig_cobrebemCOL_QTDE: TIntegerField
      FieldName = 'COL_QTDE'
    end
    object qrconfig_cobrebemLIN_VALOR: TIntegerField
      FieldName = 'LIN_VALOR'
    end
    object qrconfig_cobrebemCOL_VALOR: TIntegerField
      FieldName = 'COL_VALOR'
    end
    object qrconfig_cobrebemLIN_VALORDOC: TIntegerField
      FieldName = 'LIN_VALORDOC'
    end
    object qrconfig_cobrebemCOL_VALORDOC: TIntegerField
      FieldName = 'COL_VALORDOC'
    end
    object qrconfig_cobrebemLIN_DESCONTO: TIntegerField
      FieldName = 'LIN_DESCONTO'
    end
    object qrconfig_cobrebemCOL_DESCONTO: TIntegerField
      FieldName = 'COL_DESCONTO'
    end
    object qrconfig_cobrebemLIN_OUTRAS: TIntegerField
      FieldName = 'LIN_OUTRAS'
    end
    object qrconfig_cobrebemCOL_OUTRAS: TIntegerField
      FieldName = 'COL_OUTRAS'
    end
    object qrconfig_cobrebemLIN_MORA: TIntegerField
      FieldName = 'LIN_MORA'
    end
    object qrconfig_cobrebemCOL_MORA: TIntegerField
      FieldName = 'COL_MORA'
    end
    object qrconfig_cobrebemLIN_OUTROS: TIntegerField
      FieldName = 'LIN_OUTROS'
    end
    object qrconfig_cobrebemCOL_OUTROS: TIntegerField
      FieldName = 'COL_OUTROS'
    end
    object qrconfig_cobrebemLIN_COBRADO: TIntegerField
      FieldName = 'LIN_COBRADO'
    end
    object qrconfig_cobrebemCOL_COBRADO: TIntegerField
      FieldName = 'COL_COBRADO'
    end
    object qrconfig_cobrebemLIN_CEDENTE: TIntegerField
      FieldName = 'LIN_CEDENTE'
    end
    object qrconfig_cobrebemCOL_CEDENTE: TIntegerField
      FieldName = 'COL_CEDENTE'
    end
    object qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField
      FieldName = 'LIN_CEDENTEENDER'
    end
    object qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField
      FieldName = 'COL_CEDENTEENDER'
    end
    object qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField
      FieldName = 'COL_INSTRUCOES'
    end
    object qrconfig_cobrebemLIN_INST1: TIntegerField
      FieldName = 'LIN_INST1'
    end
    object qrconfig_cobrebemLIN_INST2: TIntegerField
      FieldName = 'LIN_INST2'
    end
    object qrconfig_cobrebemLIN_INST3: TIntegerField
      FieldName = 'LIN_INST3'
    end
    object qrconfig_cobrebemLIN_INST4: TIntegerField
      FieldName = 'LIN_INST4'
    end
    object qrconfig_cobrebemLIN_INST5: TIntegerField
      FieldName = 'LIN_INST5'
    end
    object qrconfig_cobrebemLIN_INST6: TIntegerField
      FieldName = 'LIN_INST6'
    end
    object qrconfig_cobrebemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField
      FieldName = 'REMESSA_SEQUENCIA'
    end
    object qrconfig_cobrebemREMESSA_LAYOUT: TStringField
      FieldName = 'REMESSA_LAYOUT'
    end
    object qrconfig_cobrebemRETORNO_LAYOUT: TStringField
      FieldName = 'RETORNO_LAYOUT'
    end
    object qrconfig_cobrebemENTRE_LINHAS: TIntegerField
      FieldName = 'ENTRE_LINHAS'
    end
    object qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField
      FieldName = 'ACERTO_ENTRE_LINHAS'
    end
    object qrconfig_cobrebemCODIGO_CARTEIRA: TStringField
      FieldName = 'CODIGO_CARTEIRA'
      Size = 1
    end
    object qrconfig_cobrebemFORMA_CADASTRAMENTO: TStringField
      FieldName = 'FORMA_CADASTRAMENTO'
      Size = 1
    end
    object qrconfig_cobrebemCONTADIG: TStringField
      FieldName = 'CONTADIG'
    end
    object qrconfig_cobrebemAGENCIADIG: TStringField
      FieldName = 'AGENCIADIG'
    end
    object qrconfig_cobrebemCONVENIO: TStringField
      FieldName = 'CONVENIO'
    end
    object qrconfig_cobrebemCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrconfig_cobrebemCODCONTADIG: TStringField
      FieldName = 'CODCONTADIG'
    end
  end
  object qrcontacorrente: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000041')
    Active = True
    Left = 272
    Top = 335
    object qrcontacorrenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcontacorrenteCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrenteCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object qrcontacorrenteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcontacorrenteTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 30
    end
    object qrcontacorrenteCONTADIG: TStringField
      FieldName = 'CONTADIG'
    end
    object qrcontacorrenteAGENCIADIG: TStringField
      FieldName = 'AGENCIADIG'
    end
    object qrcontacorrenteCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
    end
    object qrcontacorrenteFISICAJURIDICA: TStringField
      FieldName = 'FISICAJURIDICA'
      Size = 10
    end
    object qrcontacorrenteINSTRUCOES1: TStringField
      FieldName = 'INSTRUCOES1'
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES2: TStringField
      FieldName = 'INSTRUCOES2'
      Size = 80
    end
    object qrcontacorrenteINSTRUCOES3: TStringField
      FieldName = 'INSTRUCOES3'
      Size = 80
    end
    object qrcontacorrenteCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
    object qrcontacorrenteNOSSONUM: TStringField
      FieldName = 'NOSSONUM'
    end
    object qrcontacorrenteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcontacorrenteLAYOUT: TIntegerField
      FieldName = 'LAYOUT'
    end
    object qrcontacorrenteCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 2
    end
  end
  object zQuery1: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select'
      '*'
      'from'
      'c000049'
      'where'
      'codigo in ('#39'000001'#39','#39'000002'#39')')
    Active = True
    Left = 352
    Top = 343
    object zQuery1CODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object zQuery1CODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object zQuery1CODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object zQuery1CODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object zQuery1CODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object zQuery1DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object zQuery1DATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
    end
    object zQuery1DATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
    end
    object zQuery1VALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object zQuery1VALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object zQuery1VALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object zQuery1VALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object zQuery1VALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object zQuery1DOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object zQuery1TIPO: TStringField
      FieldName = 'TIPO'
    end
    object zQuery1SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object zQuery1FILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object zQuery1NOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object zQuery1CODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object zQuery1CODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object zQuery1P5: TFloatField
      FieldName = 'P5'
    end
    object zQuery1P3: TFloatField
      FieldName = 'P3'
    end
    object zQuery1NUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object zQuery1VALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object zQuery1COD_VENDA_ORIGINAL: TStringField
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object zQuery1VALOR_ATUAL_ANTERIOR: TFloatField
      FieldName = 'VALOR_ATUAL_ANTERIOR'
    end
    object zQuery1EMAIL_ENVIADO: TIntegerField
      FieldName = 'EMAIL_ENVIADO'
    end
    object zQuery1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
  end
  object query: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    Left = 424
    Top = 343
  end
  object qrvenda: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'sELECT codigo, cupom_fiscal, total from c000048')
    Active = True
    Left = 512
    Top = 343
    object qrvendaCODIGO: TStringField
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
  object qrcliente: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000007')
    Active = True
    Left = 600
    Top = 351
    object qrclienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrclienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrclienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrclienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrclienteTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrclienteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrclienteRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrclienteCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrclienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrclientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrclienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrclienteREF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrclienteREF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrclienteCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrclienteOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrclienteOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrclienteOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrclienteOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrclienteOBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrclienteOBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrclienteNASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrclienteCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrclienteCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrclienteCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrclienteRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrclienteRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrclientePREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrclienteCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrclienteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrclienteCORRESP_UF: TStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrclienteCORRESP_CEP: TStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrclienteRESP1_NOME: TStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrclienteRESP1_CPF: TStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrclienteRESP1_RG: TStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrclienteRESP1_UF: TStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrclienteRESP1_CEP: TStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrclienteRESP2_NOME: TStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrclienteRESP2_CPF: TStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrclienteRESP2_RG: TStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrclienteRESP2_UF: TStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrclienteRESP2_CEP: TStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrclienteCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
end
