object frmproduto: Tfrmproduto
  Left = 317
  Top = 161
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | Ficha de Cadastro'
  ClientHeight = 594
  ClientWidth = 1099
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pfichas: TFlatPanel
    Left = -557
    Top = 728
    Width = 1713
    Height = 922
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 0
    object Label6: TLabel
      Left = 350
      Top = 60
      Width = 65
      Height = 12
      Caption = 'SUBGRUPO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 725
      Top = 184
      Width = 25
      Height = 12
      Caption = 'CST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object bservicos: TBitBtn
      Left = 744
      Top = 464
      Width = 75
      Height = 25
      Caption = 'bservicos'
      TabOrder = 0
      OnClick = bservicosClick
    end
  end
  object Panel1: TPanel
    Left = -45
    Top = -28
    Width = 193
    Height = 21
    Caption = 'Panel1'
    TabOrder = 1
    Visible = False
    object blocaliquota: TBitBtn
      Left = 85
      Top = 20
      Width = 25
      Height = 21
      Glyph.Data = {
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
      TabOrder = 0
      OnClick = blocaliquotaClick
    end
    object ealiquota: TDBEdit
      Left = 41
      Top = 20
      Width = 43
      Height = 21
      DataField = 'CODALIQUOTA'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = ealiquotaExit
      OnKeyPress = ealiquotaKeyPress
    end
  end
  object batualiza_estoque: TBitBtn
    Left = 1122
    Top = 464
    Width = 137
    Height = 25
    Caption = 'batualiza_estoque'
    TabOrder = 2
    Visible = False
    OnClick = batualiza_estoqueClick
  end
  object bcalcula_precovenda: TBitBtn
    Left = 978
    Top = 511
    Width = 129
    Height = 25
    Caption = 'bcalcula_precovenda'
    TabOrder = 3
    Visible = False
    OnClick = bcalcula_precovendaClick
  end
  object bcalcula_precocusto: TBitBtn
    Left = 848
    Top = 459
    Width = 129
    Height = 25
    Caption = 'bcalcula_precocusto'
    TabOrder = 4
    Visible = False
    OnClick = bcalcula_precocustoClick
  end
  object bpreco_custo: TBitBtn
    Left = 744
    Top = 459
    Width = 129
    Height = 25
    Caption = 'bpreco_custo'
    TabOrder = 5
    Visible = False
    OnClick = bpreco_custoClick
  end
  object bpreco_venda: TBitBtn
    Left = 1256
    Top = 465
    Width = 129
    Height = 25
    Caption = 'bpreco_venda'
    TabOrder = 6
    Visible = False
    OnClick = bpreco_vendaClick
  end
  object bnovopreco_venda: TBitBtn
    Left = 1481
    Top = 505
    Width = 129
    Height = 25
    Caption = 'bnovopreco_venda'
    TabOrder = 7
    Visible = False
    OnClick = bnovopreco_vendaClick
  end
  object bremarcacao: TBitBtn
    Left = 756
    Top = 252
    Width = 193
    Height = 25
    Caption = 'remarcacao'
    TabOrder = 8
    Visible = False
    OnClick = bremarcacaoClick
  end
  object PageView1: TPageView
    Left = 163
    Top = 199
    Width = 953
    Height = 352
    ActivePage = PageSheet9
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 9
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet9: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = ' Estoque'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 953
        Height = 330
        ActivePage = PageSheet10
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = 13230308
        BackgroundKind = bkSolid
        Color = clWhite
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ParentColor = False
        ShowTabs = False
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        OnKeyPress = combo_tipoKeyPress
        OnChange = PageView2Change
        object PageSheet10: TPageSheet
          Left = 0
          Top = 0
          Width = 953
          Height = 330
          Caption = 'Posi'#231#227'o do Estoque / Informa'#231#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha2: TPanel
            Left = 0
            Top = 0
            Width = 953
            Height = 330
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object Label94: TLabel
              Left = 233
              Top = 122
              Width = 44
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'IPPT:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label92: TLabel
              Left = 179
              Top = 122
              Width = 30
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'IAT:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label91: TLabel
              Left = 163
              Top = 170
              Width = 56
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Incid'#234'ncia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label89: TLabel
              Left = 216
              Top = 146
              Width = 62
              Height = 13
              Caption = 'PIS/COFINS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label80: TLabel
              Left = 163
              Top = 122
              Width = 24
              Height = 13
              AutoSize = False
              Caption = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label60: TLabel
              Left = 168
              Top = 98
              Width = 44
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 34
              Top = 170
              Width = 37
              Height = 13
              Caption = 'Fra'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 20
              Top = 77
              Width = 48
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CF/NCM:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 14
              Top = 146
              Width = 54
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Comiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 18
              Top = 122
              Width = 50
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Validade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 1
              Top = 54
              Width = 70
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Localiza'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 16
              Top = 29
              Width = 53
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Aplica'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label107: TLabel
              Left = 170
              Top = 77
              Width = 43
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CEST:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Image16: TImage
              Left = 753
              Top = 292
              Width = 18
              Height = 24
              AutoSize = True
              Center = True
              Picture.Data = {
                0B54504E4747726170686963F6060000424DF606000000000000360000002800
                000012000000180000000100200000000000C006000000000000000000000000
                000000000000CCCCCC00CCCCCC00CCCCCC06CCCCCC84CCCCCCEBCCCCCCEACCCC
                CCE6CBCBCBE6CBCBCBE6CBCBCBE6CBCBCBE6CCCCCCE6CCCCCCEACCCCCCEBCCCC
                CC84CCCCCC06CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC2BCCCCCCE7CCCC
                CCFFCCCCCCFFCACACAFFD2D2D2FFDADADAFFDADADAFFD2D2D2FFCACACAFFCCCC
                CCFFCCCCCCFFCCCCCCE8CCCCCC2CCCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
                CC01CCCCCC80CCCCCCE7CCCCCCD9CECECED5D2D2D2EEC8C8C8FFC8C8C8FFD2D2
                D2EECECECED5CCCCCCD9CCCCCCE7CCCCCC80CCCCCC01CCCCCC00CCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC03CCCCCC18C9C9C920DFDFDF12919191945C5C
                5CFF5C5C5CFF91919194DFDFDF12C9C9C920CCCCCC18CCCCCC03CCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CACACA00DFDF
                DF006060607C414141FF414141FF6060607CDFDFDF00CACACA00CCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
                CC00CACACA00DBDBDB008F8F8F8C5F5F5FFF5F5F5FFF8F8F8F8CDBDBDB00CACA
                CA00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
                CC00CCCCCC00CCCCCC0BCBCBCB4DCACACA99C4C4C4EABBBBBBFFBBBBBBFFC4C4
                C4EACACACA9ACBCBCB4ECCCCCC0BCCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC2AC9C9C9BEC8C8C8FFD2D2D2FFE4E4E4FFEEEE
                EEFFEEEEEEFFE4E4E4FFD3D3D3FFC8C8C8FFC9C9C9BECCCCCC2DCCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC00CBCBCB45C7C7C7E4D1D1D1FFEAEAEAFFFAFA
                FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFEDEDEDFFD1D1D1FFC7C7
                C7E7CBCBCB48CCCCCC00CCCCCC00CCCCCC00CCCCCC2CC6C6C6E2D6D6D6FFF9F9
                F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFAFA
                FAFFFAFAFAFFD7D7D7FFC5C5C5E3CBCBCB2CCDCDCD00CCCCCC0CC6C6C6B1D0D0
                D0FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
                F9FFCACACAFFDADADAFFFFFFFFFFF8F8F8FFD0D0D0FFC6C6C6B1CCCCCC0CC9C9
                C94CC7C7C7FFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDADADAFFC3C3C3FFEFEFEFFFFFFFFFFFFFFFFFFFEAEAEAFFC7C7
                C7FFC9C9C94CC6C6C69BD5D5D5FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF7F7F7FFC6C6C6FFE0E0E0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFCFCFCFFD5D5D5FFC6C6C69BC6C6C6D0E0E0E0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFAFAFAFFC1C1C1FFA5A5A6FFD2D1D0FFFFFFFEFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FFC6C6C6D0C6C6C6E4E3E3E3FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FF515151FF4D4D4AFFB8B8
                B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FFC6C6C6E4C6C6
                C6E4E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0AFFF4B4B
                45FF40414CFF6670B7FFC7CFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3
                E3FFC6C6C6E4C6C6C6CDE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4
                E4FFC4C4C4FFB9B8B1FFACAEC0FF6B79EBFF4456EDFF8F9AF2FFE8EBFCFFFFFF
                FFFFFFFFFFFFE0E0E0FFC6C6C6CEC8C8C898D5D5D5FFFAFAFAFFFFFFFFFFFFFF
                FFFFE0E0E0FFC2C2C2FFE3E3E3FFFFFFFFFFFFFFFFFFEDEFFEFF98A2F3FF3C51
                E8FF5969ECFFE2E5FDFFFFFFFDFFD5D5D5FFC8C8C897C9C9C94CC7C7C7FFEAEA
                EAFFFFFFFFFFEAEAEAFFC1C1C1FFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFC4CAF8FF8491F2FFE1E4FFFFF6F5EBFFC7C7C7FFC9C9C94CCCCC
                CC0DC6C6C6B2D0D0D0FFFAFAFAFFF6F6F6FFEBEBEBFFFDFDFDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFD0D0D0FFC6C6
                C6B2CCCCCC0DCCCCCC00CCCCCC2FC6C6C6E8D5D5D5FFF9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF9FFD7D7
                D5FFC5C5C6E8CCCCCC2FCCCCCC00CCCCCC00CDCDCD00CCCCCC3FC5C5C5E6CFCF
                CFFFE9E9E9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFE8E8
                E8FFCECECEFFC5C5C5E9CCCCCC41CDCDCD00CCCCCC00CCCCCC00CCCCCC00CCCC
                CC00CBCBCB2CC6C6C6BAC6C6C6FFD3D3D3FFE0E0E0FFE5E5E5FFE5E5E5FFE0E0
                E0FFD3D3D3FFC6C6C6FFC6C6C6BACBCBCB2ECCCCCC00CCCCCC00CCCCCC00CCCC
                CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0CCACACA4CC7C7C79AC6C6C6D0C6C6
                C6E4C6C6C6DFC6C6C6CBC7C7C79BCACACA4CCCCCCC0CCCCCCC00CCCCCC00CCCC
                CC00CCCCCC00}
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 280
              Top = 118
              Width = 32
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = False
              AllowClearKey = False
              Color = clWhite
              DataField = 'IPPT'
              DataSource = dsproduto2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'T'
                'P')
              ItemIndex = 0
              Sorted = False
              TabOrder = 12
              UnboundDataType = wwDefault
              OnEnter = combo_tipoEnter
              OnExit = DateEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object wwDBComboBox3: TwwDBComboBox
              Left = 215
              Top = 118
              Width = 32
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = False
              AllowClearKey = False
              Color = clWhite
              DataField = 'IAT'
              DataSource = dsproduto2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'T'
                'A')
              ItemIndex = 0
              Sorted = False
              TabOrder = 11
              UnboundDataType = wwDefault
              OnEnter = combo_tipoEnter
              OnExit = DateEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object wwDBComboBox1: TwwDBComboBox
              Left = 219
              Top = 166
              Width = 93
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = False
              AllowClearKey = False
              Color = clWhite
              DataField = 'INCIDENCIA_PISCOFINS'
              DataSource = dsproduto2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'NENHUMA'
                'MONOF'#193'SICA'
                'SUBST.TRIBUT'#193'RIA'
                'AL'#205'QUOTA 0'
                'SUSPENS'#195'O')
              ItemIndex = 0
              Sorted = False
              TabOrder = 16
              UnboundDataType = wwDefault
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object RxDBCalcEdit1: TJvDBCalcEdit
              Left = 215
              Top = 94
              Width = 96
              Height = 21
              Margins.Left = 4
              Margins.Top = 1
              Color = clWhite
              DecimalPlaces = 15
              DisplayFormat = '#0.00'
              NumGlyphs = 2
              ShowButton = False
              TabOrder = 9
              DecimalPlacesAlwaysShown = False
              OnEnter = DBEdit1Enter
              OnExit = ealiqExit
              OnKeyPress = DBEdit1KeyPress
              DataField = 'IPI'
              DataSource = dsproduto2
            end
            object GroupBox16: TGroupBox
              Left = 394
              Top = 5
              Width = 203
              Height = 96
              Caption = 'Promo'#231#227'o'
              TabOrder = 0
              object Label12: TLabel
                Left = 28
                Top = 15
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Pre'#231'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label65: TLabel
                Left = 28
                Top = 45
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'In'#237'cio:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label66: TLabel
                Left = 28
                Top = 72
                Width = 40
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Fim:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object RzDBNumericEdit4: TRzDBNumericEdit
                Left = 75
                Top = 11
                Width = 121
                Height = 21
                DataSource = dsproduto2
                DataField = 'PRECO_PROMOCAO'
                Alignment = taLeftJustify
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
                IntegersOnly = False
                DisplayFormat = '###,###,##0.000'
              end
              object DBDateEdit1: TJvDBDateEdit
                Left = 75
                Top = 40
                Width = 121
                Height = 21
                Margins.Left = 4
                Margins.Top = 1
                DataField = 'DATA_PROMOCAO'
                DataSource = dsproduto2
                Color = clWhite
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBDateEdit2: TJvDBDateEdit
                Left = 75
                Top = 69
                Width = 121
                Height = 21
                Margins.Left = 4
                Margins.Top = 1
                DataField = 'FIM_PROMOCAO'
                DataSource = dsproduto2
                Color = clWhite
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBDateEdit2Exit
                OnKeyPress = DBEdit1KeyPress
              end
            end
            object GroupBox12: TGroupBox
              Left = 640
              Top = 80
              Width = 204
              Height = 65
              Caption = #218'ltima Remarca'#231#227'o'
              Enabled = False
              TabOrder = 1
              object Label64: TLabel
                Left = 14
                Top = 30
                Width = 43
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Data:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit60: TDBEdit
                Left = 64
                Top = 27
                Width = 120
                Height = 21
                Color = clWhite
                DataField = 'DATA_REMARCACAO_VENDA'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnExit = DBEdit2Exit
                OnKeyPress = DBEdit2KeyPress
              end
            end
            object GroupBox11: TGroupBox
              Left = 394
              Top = 116
              Width = 203
              Height = 81
              Caption = 'Peso'
              TabOrder = 2
              object Label17: TLabel
                Left = 26
                Top = 15
                Width = 43
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bruto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label59: TLabel
                Left = 26
                Top = 47
                Width = 43
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'L'#237'quido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit17: TDBEdit
                Left = 76
                Top = 11
                Width = 120
                Height = 21
                Color = clWhite
                DataField = 'PESO'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit10: TDBEdit
                Left = 76
                Top = 42
                Width = 120
                Height = 21
                Color = clWhite
                DataField = 'PESO_LIQUIDO'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit10KeyPress
              end
            end
            object FLAG_SIS: TDBEdit
              Left = 34
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              Color = clWhite
              DataField = 'FLAG_SIS'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object FLAG_EST: TDBEdit
              Left = 174
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              Color = clWhite
              DataField = 'FLAG_EST'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object FLAG_ACEITO: TDBEdit
              Left = 104
              Top = 188
              Width = 67
              Height = 21
              TabStop = False
              Color = clWhite
              DataField = 'FLAG_ACEITO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object ecombo_piscofins: TwwDBComboBox
              Left = 281
              Top = 142
              Width = 32
              Height = 21
              ShowButton = True
              Style = csDropDownList
              MapList = False
              AllowClearKey = False
              Color = clWhite
              DataField = 'PISCOFINS'
              DataSource = dsproduto2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'S'
                'N')
              ItemIndex = 1
              Sorted = False
              TabOrder = 14
              UnboundDataType = wwDefault
              OnEnter = combo_tipoEnter
              OnExit = DateEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBMemo1: TDBMemo
              Left = 74
              Top = 7
              Width = 238
              Height = 39
              Color = clWhite
              DataField = 'APLICACAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnKeyPress = DBMemo1KeyPress
            end
            object DBEdit62: TDBEdit
              Left = 74
              Top = 142
              Width = 89
              Height = 21
              Color = clWhite
              DataField = 'COMISSAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object DBEdit28: TDBEdit
              Left = 74
              Top = 166
              Width = 89
              Height = 21
              Color = clWhite
              DataField = 'QTDE_EMBALAGEM'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit62KeyPress
            end
            object DBEdit18: TDBEdit
              Left = 74
              Top = 118
              Width = 89
              Height = 21
              Color = clWhite
              DataField = 'VALIDADE'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit18KeyPress
            end
            object DBEdit15: TDBEdit
              Left = 74
              Top = 49
              Width = 238
              Height = 21
              Color = clWhite
              DataField = 'LOCALICAZAO'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object rComposicao: TRzGroupBox
              Left = 640
              Top = 9
              Width = 204
              Height = 60
              Caption = 'Composi'#231#227'o'
              Color = clSilver
              TabOrder = 17
              Visible = False
              object DBEdit70: TDBEdit
                Left = 6
                Top = 24
                Width = 100
                Height = 21
                Color = clWhite
                DataField = 'COMPOSICAO1'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit71: TDBEdit
                Left = 109
                Top = 24
                Width = 87
                Height = 21
                Color = clWhite
                DataField = 'COMPOSICAO2'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
            end
            object eNCM: TRzDBButtonEdit
              Left = 74
              Top = 73
              Width = 90
              Height = 21
              DataSource = dsproduto2
              DataField = 'CLASSIFICACAO_FISCAL'
              Color = clWhite
              FocusColor = 10550008
              TabOrder = 8
              OnKeyPress = eNCMKeyPress
              AltBtnWidth = 15
              ButtonWidth = 15
              OnButtonClick = eNCMButtonClick
            end
            object GroupBox17: TGroupBox
              Left = 640
              Top = 166
              Width = 209
              Height = 31
              TabOrder = 18
              object Label90: TLabel
                Left = 4
                Top = 10
                Width = 111
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'C'#243'digo do Fornecedor:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit29: TDBEdit
                Left = 116
                Top = 6
                Width = 88
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'REFERENCIA_FORNECEDOR'
                DataSource = dsproduto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit2Exit
                OnKeyPress = DBEdit29KeyPress
              end
            end
            object eCEST: TRzDBButtonEdit
              Left = 220
              Top = 72
              Width = 90
              Height = 21
              DataSource = dsproduto2
              DataField = 'CEST'
              Color = clWhite
              FocusColor = 10550008
              TabOrder = 19
              OnKeyPress = eCESTKeyPress
              AltBtnWidth = 15
              ButtonWidth = 15
              OnButtonClick = eCESTButtonClick
            end
            object DBCheckBox1: TDBCheckBox
              Left = 777
              Top = 295
              Width = 125
              Height = 17
              Caption = 'Exportar para Balan'#231'a'
              Color = clWhite
              DataField = 'USA_BALANCA'
              DataSource = dsproduto2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 20
              ValueChecked = '1'
              ValueUnchecked = '2'
              OnKeyPress = DBCheckBox1KeyPress
            end
            object HeaderView1: THeaderView
              Left = 27
              Top = 228
              Width = 186
              Height = 51
              AdaptiveColors = False
              BorderStyle = bsNone
              Caption = 'Estoque Inicial'
              Color = 3355443
              HeaderColor = 3355443
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindow
              HeaderFont.Height = -11
              HeaderFont.Name = 'Arial'
              HeaderFont.Style = [fsBold]
              HeaderSize = 17
              ParentColor = False
              object Image1: TImage
                Left = 0
                Top = 17
                Width = 30
                Height = 34
                Align = alLeft
                Center = True
                Picture.Data = {
                  0B54504E474772617068696336100000424D3610000000000000360000002800
                  0000200000002000000001002000000000000010000000000000000000000000
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
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000007C7C7C0179DAA91479D2B11679D2
                  A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2
                  A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2A61679D2
                  A61679D2A61679D2A61679D2A61679D2A61679DAA9147C7C7C01000000000000
                  0000000000000000000000000000000000006FBF9F0F66CC9CE169D0A0F266CC
                  9DF266CC9DF266CC9DF266CC9DF266CC9DF266CC9DF266CC9DF266CC9CF266CC
                  9DF267CD9EF267CD9EF266CC9DF266CC9CF266CC9DF266CC9DF266CC9DF266CC
                  9DF266CC9DF266CC9DF266CC9DF269D0A0F266CD9DE169C3A510000000000000
                  00000000000000000000000000000000000069C3961064CC9BF16AD5A3FF67D0
                  9FFF67D09FFF67D09FFF67D09FFF67D09FFF67D09FFF66D09FFF69D2A1FF69D3
                  A2FF62CC9AFF61CC99FF6AD3A2FF69D2A1FF66D09FFF67D09FFF67D09FFF67D0
                  9FFF67D09FFF67D09FFF67D09FFF6AD5A3FF63CC9CF263C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CB9CFD64CB9BFD68CE9FFD5EC594FD40A9
                  73FD379F68FD3EA36DFD3BA66FFD5FC594FD68CE9FFD64CB9BFD65CB9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CB9CFD67CE9EFD5EC594FD359E66FD3A9D
                  68FD99CFB2FDB0DAC4FD48A573FD329C64FD5EC494FD67CE9EFD65CB9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CC9CFD67CE9FFD45AC77FD279459FD87C6
                  A5FD9DD1B6FD81C4A1FDA2D4BAFD339A62FD43AB76FD67CE9FFD65CC9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD66CC9DFD62C999FD3BA26BFD379D66FD379E
                  67FD50AB7BFD9DD1B6FDA3D5BBFD349C64FD3AA16AFD62C999FD66CC9DFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD66CC9DFD63C999FD3BA26CFD309A61FD53AC
                  7DFDB8DFCBFDA5D5BCFD3CA06BFD329B63FD3BA26BFD62C999FD66CC9DFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CB9CFD68CE9FFD45AC77FD249357FD92CC
                  ADFD95CDB0FD66B68CFD60B387FD309860FD45AC77FD67CE9FFD65CC9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CB9CFD67CE9EFD5FC595FD349D65FD4BA6
                  75FDABD7C0FDBEE1CFFD6BB68EFD309B62FD5EC594FD67CE9EFD65CB9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961065CC9CEB68D0A0FD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD65CB9CFD64CB9BFD67CE9FFD60C695FD3FA9
                  72FD41A570FD4AA977FD3CA870FD5FC695FD68CE9FFD64CB9BFD65CB9CFD65CB
                  9CFD65CB9CFD65CB9CFD65CB9CFD68D0A0FD65CC9DEC63C69B11000000000000
                  00000000000000000000000000000000000069C3961064CB9BF269D2A1FF66CC
                  9DFD66CD9DFD66CD9DFD66CD9DFD66CD9DFD66CD9DFD66CC9DFD68CF9FFD69D0
                  A1FD62CA99FD60C998FD69D0A1FD68CF9FFD66CC9DFD66CD9DFD66CD9DFD66CD
                  9DFD66CD9DFD66CD9DFD66CC9DFD69D2A1FF64CB9BF363C69B11000000000000
                  0000000000000000000000000000000000006FBF8F0F67CD9DDB66CF9DFF63CD
                  9BFF62C998FF62C898FD62C898FD62C898FD62C898FD62C898FD62C898FD62C9
                  98FD63C999FD63C999FD62C998FD62C898FD62C898FD62C898FD62C898FD62C8
                  98FD62C898FD62C998FF63CD9BFF66CF9DFF66CD9EDC69C39610000000000000
                  000000000000000000000000000000000000FFFFFF006ABF941741A570D13EA7
                  6FEC3EA26DFF3FA56EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA5
                  6EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA56EFF3EA5
                  6EFF3FA56EFF3EA26DFF3EA76FEC41A570D26AC99F17FFFFFF00000000000000
                  000000000000000000000000000000000000000000000000000045A25B0A47A3
                  7018378F5CD435925BF1338E59F1338E59F1338E59F1338E59F1338E59F1338E
                  59F1338E59F1338E59F1338E59F1338E59F1338E59F1338E59F1338E59F1338E
                  59F135925BF136905BD5449C6B193F94540B0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00003E8F5E0F479D6D1447916114479161144791611447916114479161144791
                  6114479161144791611447916114479161144791611447916114479161144791
                  6114479D6D143E8F5E0F00000000000000000000000000000000000000000000
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
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Transparent = True
                ExplicitLeft = 14
                ExplicitTop = 15
                ExplicitHeight = 29
              end
              object RINICIAL: TJvCalcEdit
                Left = 51
                Top = 16
                Width = 132
                Height = 25
                Margins.Left = 5
                Margins.Top = 0
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                ShowButton = False
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object HeaderView2: THeaderView
              Left = 221
              Top = 228
              Width = 186
              Height = 51
              AdaptiveColors = False
              BorderStyle = bsNone
              Caption = 'Entradas'
              Color = 3355443
              HeaderColor = 3355443
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindow
              HeaderFont.Height = -11
              HeaderFont.Name = 'Arial'
              HeaderFont.Style = [fsBold]
              HeaderSize = 17
              ParentColor = False
              object Image3: TImage
                Left = 0
                Top = 17
                Width = 32
                Height = 34
                Align = alLeft
                AutoSize = True
                Center = True
                Picture.Data = {
                  0B54504E474772617068696336100000424D3610000000000000360000002800
                  0000200000002000000001002000000000000010000000000000000000000000
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
                  0000000000000000000000000000000000000000000000000000000000005BE7
                  FE0A46E2FE1146E2FE115BE7FE0A000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000004FD7FF1F40E3FE6D3BDEFDAB39DBFDD137DA
                  FDE535D8FCED35D8FCED37DAFDE539DBFDD13BDEFEAB40E1FC6E4DD8F7200000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000003DD8FC7C39E1FEF338EAFFFF35E5FFFF34E0FFFF35DD
                  FFFF36DDFFFF36DDFFFF35DDFFFF34E0FFFF35E5FFFF38EAFFFF39E0FDF43ED8
                  FC7D000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000003FDAFB4B39EEFFFF36DDFFFF3EDDFDFD47E3FDFD4DE6FEFD50E9
                  FEFD52EAFEFD52EAFEFD50E9FEFD4DE6FEFD47E3FDFD3EDDFDFD36DDFFFF39EE
                  FFFF3ED7FB4D0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000003BD3FB3F44E8FEFA54ECFEFD5CF0FEFD5EF1FEFD5DF1FEFD5CF0
                  FEFD5CF0FEFD5CF0FEFD5CF0FEFD5DF1FEFD5EF1FEFD5CF0FEFD54ECFEFD43E8
                  FEFB3AD7FE400000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000064EEFE3C60F8FEFA5CF2FEFD53EAFEFD4BE5FEFD45E1FDFD41DF
                  FDFD3FDEFDFD3FDEFDFD41DFFDFD45E1FDFD4BE5FEFD53EAFEFD5CF1FEFD60F9
                  FEFA65EEFE3E0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000067F1FE4956F5FDFC3EDEFEFD34D7FCFD30D4FCFD2FD4FCFD2FD4
                  FCFD30D4FCFD30D4FCFD2FD4FCFD2FD4FCFD30D4FCFD34D7FCFD3DDEFEFD56F5
                  FDFC69F4FE4A0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000049DCFA3337DEFEF830D6FEFD36D8FCFD3DDCFDFD43E0FDFD46E2
                  FDFD48E3FDFD48E3FDFD46E2FDFD43E0FDFD3DDDFDFD36D8FCFD30D6FDFD37DE
                  FDF948DDFE340000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000037D6FB513BE6FEFD4AE5FDFD55ECFEFD5BEFFEFD5DF0FEFD5DF1
                  FEFD5DF1FEFD5DF1FEFD5DF1FEFD5DF0FEFD5BEFFEFD55ECFEFD4AE5FDFD3CE6
                  FEFD36D4FB530000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000060E8FE2C5AF1FEF85FF4FEFD5AEFFEFD54EBFEFD4FE8FEFD4BE6
                  FEFD4AE4FDFD4AE4FDFD4BE6FEFD4FE8FEFD54EBFEFD5AEFFEFD5FF4FEFD5AF2
                  FEF85CE9FE2E0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000066F3FE565FFDFFFF48E4FEFD3BDBFDFD35D7FCFD32D5FCFD30D5
                  FCFD30D4FCFD30D4FCFD30D5FCFD32D5FCFD35D7FCFD3BDBFDFD48E3FEFD5FFD
                  FFFF64F3FE580000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000061E6FE293EE0FDF72FD7FEFD30D5FCFD35D7FCFD39DAFDFD3EDD
                  FDFD40DEFDFD40DEFDFD3EDDFDFD39DAFDFD35D7FCFD30D5FCFD2FD7FEFD3EE0
                  FDF85CE7FE2B0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000037D8FE5636E5FFFF40DEFDFD4CE6FEFD56ECFEFD59EEFEFD55EB
                  FEFD50E9FEFD51E9FEFD55ECFEFD59EEFEFD56ECFEFD4CE6FEFD40DEFDFD36E5
                  FFFF39D6FE580000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000004DDBFE2A51ECFEF75BF2FEFD5DF1FEFD53EAFEFD3FDEFDFD35D8
                  FCFD33D6FCFD33D6FCFD35D8FCFD3FDEFDFD53EBFEFD5DF1FEFD5BF2FEFD50EC
                  FEF849DCF92C0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000063F0FE5662FFFFFF5AEFFEFD4DE6FEFD34D7FCFD32D6FCFD34D7
                  FCFD35D9FCFD35D9FCFD34D7FCFD32D6FCFD34D7FCFD4DE7FEFD5AEFFEFD62FF
                  FFFF61F0FE580000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000062EDFE2B5FF5FEF356F4FFFF34D6FCFD33D6FCFD35D7FCFD36DB
                  FCFD32CFFBFD33D1FCFD36DAFCFD35D7FCFD33D6FCFD34D6FCFD56F5FFFF5EF5
                  FEF465F3FE2C0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000006EEEFE2D43E5FDE134DCFEFD35D7FCFD35DAFCFD31CD
                  FBFD28B1F9FD2AB7FAFD34D6FCFD35D8FCFD35D7FCFD34DDFEFD44E5FDDF6CEE
                  FE2E000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000028AAFF0536D6FCE636DEFEFD35D7FCFD35D8FCFD33D2
                  FCFD35D8FCFD2CBDFAFD2CBCFAFD36DCFCFD35D7FCFD36DFFEFD36D6FCE1007C
                  FF01000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000043DCFE2C37DCFFFF35D9FEFD35D7FCFD35D7FCFD36DB
                  FCFD31CDFBFD28B0F9FD30C8FBFD36DAFCFD35D7FCFD35DAFEFD37D9FEFF46D8
                  FF27000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000044D9FE2837DAFEFF35DAFEFD35D7FCFD36DAFCFD2FC7
                  FBFD28B0F9FD32D0FCFD36DBFCFD35D7FCFD35D7FCFD35DAFEFD36D7FCFD48DA
                  FE22000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000053E2FE0837D8FCE636DFFEFD35D7FCFD36DBFCFD2DC1
                  FAFD2BBAFAFD32CFFBFD33D2FCFD35D8FCFD35D7FCFD36E0FEFD38D8FCE16DDA
                  DA06000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000003CD9FD8E3AEEFFFF35D6FCFD35D8FCFD36D9
                  FCFD2BBCFAFD29B5FAFD34D4FCFD35D9FCFD35D7FCFD3AEEFFFF3DD9FD870000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000004FE4FE123ADCFDE138E8FFFF35D7FCFF35D9
                  FCFD34D5FCFD34D5FCFD36D9FCFD35D6FCFF38E9FFFF3ADBFCDD4FDFFF0F0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000048D4FE293CE1FDD73AEEFFFF37E3
                  FFFF36DEFFFF36DEFFFF37E3FFFF3AEEFFFF3BE1FDD449D6FE25000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000061C4FE0C40E1FE793ADF
                  FDCB37DBFCEA37DBFDE93BDFFEC93FE1FC775BD0FE0A00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000054EEFF0E5AFEFE0D00000000000000000000000000000000000000000000
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
                  000000000000}
                Transparent = True
                ExplicitLeft = 14
                ExplicitTop = 15
                ExplicitHeight = 32
              end
              object rentrada: TJvCalcEdit
                Left = 51
                Top = 16
                Width = 132
                Height = 25
                Margins.Left = 5
                Margins.Top = 0
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                ShowButton = False
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object HeaderView3: THeaderView
              Left = 414
              Top = 228
              Width = 186
              Height = 51
              AdaptiveColors = False
              BorderStyle = bsNone
              Caption = 'Sa'#237'das'
              Color = 3355443
              HeaderColor = 3355443
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindow
              HeaderFont.Height = -11
              HeaderFont.Name = 'Arial'
              HeaderFont.Style = [fsBold]
              HeaderSize = 17
              ParentColor = False
              object Image4: TImage
                Left = 0
                Top = 17
                Width = 32
                Height = 34
                Align = alLeft
                AutoSize = True
                Center = True
                Picture.Data = {
                  0B54504E474772617068696336100000424D3610000000000000360000002800
                  0000200000002000000001002000000000000010000000000000000000000000
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
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009FFF070097FE78009BFE910095
                  FE810093FF7F0093FF7F0093FF7F0093FE810097FE95009BFE8A009DFF7F009F
                  FF7F009FFF7F009DFF7F009AFE8A0097FE95009EFE81009FFF7F009FFF7F009F
                  FF7F009EFE810097FE93009CFE950097FE8B008BFE0A00000000000000000000
                  000000000000000000000000000000000000009DFE140096FEF4029CF8A71FA9
                  CAFF22B4D3FF21B2D2FF22B4D3FF1FACCEFF0097FE93498ACCCF8093C1FF808F
                  BDFF808FBDFF8093C1FF4D8DCCD40097FE935A8ABFFF638FC3FF608EC2FF638F
                  C3FF5A8ABFFF0A95F59C009BFE930097FE890099FF0900000000000000000000
                  000000000000000000000000000000000000009BFE160097FED22BA69B164AB5
                  6BE24ABA74FD47B571FD4ABA74FD48B570EB00000000FE60316BFE734CFDFE69
                  44FDFE6944FDFE734CFDFE6F3E7600000000D2654EEAD56A50FDD0674EFDD56A
                  50FDD1664DEB0000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2843B4
                  79E444B77FFD42B27CFD44B77FFD42B37CEC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FED418A1CD2842B3
                  79EB46BC82FF44B77FFF46BC82FF41B27CF300000000FE6B5376FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160097FED5189FCC2744B3
                  78D443B77EEC41B27BEC43B77EEC42B27CDC00000000FF6A5277FE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160097FEDA009CF51943AA
                  770E3EBF7F0F3EAF7F0F3EBF7F0F43BB770E00000000FC6F547DFE765AFDFD6D
                  53FDFD6D53FDFE765AFDFE755C8100000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160097FEDB0098FE180000
                  00000000000000000000000000000000000000000000FD6F5388FF8061FFFF76
                  5AFFFF765AFFFF8061FFFE755C8C00000000C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  00000000000000000000000000000000000000000000FA6D543EFE755B7DFE6D
                  527DFE6D527DFE755B7DFF775B3FC6705308C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000C6715411C06A5CEBC46E5EFDBF6B5CFDC46E
                  5EFDBF6B5CECB871541100000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000C6715411C26B5DFFD57766FFD07463FFD577
                  66FFC26C5DFFBB784F1200000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000BE5E5E07C16A5D74C46D5F7DC06B5D7DC46D
                  5F7DC0695C75A970530800000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000009BFE160098FEDA0098FE180000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000098FE180098FEED0097FE1A0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000A2FE0A0098FE6C0094FF0B0000
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
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Transparent = True
                ExplicitLeft = 16
                ExplicitTop = 16
                ExplicitHeight = 32
              end
              object rsaida: TJvCalcEdit
                Left = 51
                Top = 16
                Width = 132
                Height = 25
                Margins.Left = 5
                Margins.Top = 0
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                ShowButton = False
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object HeaderView4: THeaderView
              Left = 606
              Top = 228
              Width = 186
              Height = 51
              AdaptiveColors = False
              BorderStyle = bsNone
              Caption = 'Estoque Atual'
              Color = 3355443
              HeaderColor = 3355443
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindow
              HeaderFont.Height = -11
              HeaderFont.Name = 'Arial'
              HeaderFont.Style = [fsBold]
              HeaderSize = 17
              ParentColor = False
              object Image6: TImage
                Left = 0
                Top = 17
                Width = 32
                Height = 34
                Align = alLeft
                AutoSize = True
                Center = True
                Picture.Data = {
                  0B54504E474772617068696336100000424D3610000000000000360000002800
                  0000200000002000000001002000000000000010000000000000000000000000
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
                  000000000000000000006D91FE376A94FE49678DFE496C8FFE487FA3FE0D0000
                  0000000000000000000000000000000000007194FE236E97FE496789FE496E97
                  FE49708EFF210000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000091A3FE0D688CFEF26D96FFFF6B92FFFF739CFFFF6D91FE5C0000
                  000000000000000000000000000000000000688CFEAD729DFFFF6B92FFFF729D
                  FFFF698CFEA80000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000007F9BFE11688CFEED678DFFFF658AFFFF6D95FFFF7094FE5C7F9F
                  FF0F7397FE297598FE337198FE2C7F99FF13678BFEAE6C94FFFF658AFFFF6C94
                  FFFF698BFFA90000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000087A5FF10688CFEEB678DFEFD658AFEFD668BFEFD688CFEDB678A
                  FEEA678CFFFF698FFFFF688DFFFF668BFEEE658AFEF2658BFEFD658AFEFD6C94
                  FEFD698CFEA60000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000CBCBFF04688AFEEA678DFEFD658AFEFD6489FEFD688EFFFF678D
                  FFFF668BFFFF668BFFFF668BFFFF678DFFFF668BFFFF6489FEFD658AFEFD6C94
                  FEFD688BFEA00000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000006F93FE466A90FEF5668BFEFD658AFEFD6589FEFD658AFEFD6A8E
                  FEFD678BFEFD6589FEFD6A8EFEFD688DFEFD6489FEFD658AFEFD658AFEFD688F
                  FEFD6A8EFED5799BFE1600000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00007092FE4A6B91FEFB678DFFFF6589FEFD658AFEFD668BFEFD688CFEFD456F
                  F4FD2753E9FD224FE8FD325DEDFD5A81FAFD698EFEFD6489FEFD658AFEFD6489
                  FEFD6C94FFFF6A8DFEC9BEBEFF03000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000007F9F
                  FF0F688DFEEA6A91FFFF6489FEFD658AFEFD658AFEFD698DFEFD3965F0FD0F3E
                  E1FD1862EBFD1D7EF3FD1244E3FD1A4AE5FD5980FAFD688DFEFD658AFEFD658A
                  FEFD6489FEFD6F98FFFF6E90FE6B000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006D8E
                  FE536F97FFFF6489FEFD658AFEFD658AFEFD698DFEFD557CF9FD1443E3FD1A55
                  E8FD2393F9FD2392F8FD217EF3FD113FE2FD2F5CEDFD698DFEFD658AFEFD658A
                  FEFD658AFEFD688FFEFD678CFEE06E91FF326A8EFE2A7FBEFF03000000000000
                  00000000000000000000000000000000000000000000000000007199FF136B8F
                  FEBB6A91FEFD658AFEFD658AFEFD658AFEFD6B8FFEFD436EF3FD1244E3FD1949
                  E5FD1C62ECFD2497F9FD2182F4FD1542E3FD2050E8FD6288FEFD668BFEFD658A
                  FEFD658AFEFD6489FEFD678CFFFF6990FFFF688CFEF07FA9FE11000000000000
                  000000000000000000000000000000000000000000007293FE256B90FEF17099
                  FFFF6388FEFD658AFEFD658AFEFD658AFEFD6B8FFEFD4871F5FD1241E2FD1A52
                  E8FD249AFBFD2183F4FD194CE6FD1545E4FD2352E9FD658AFEFD668AFEFD658A
                  FEFD658AFEFD658AFEFD658AFEFD688EFFFF688CFFEF7FA9FE11000000000000
                  0000000000000000000000000000000000007EAAFF056D90FE987298FE85688C
                  FEAA6A91FEFD658AFEFD658AFEFD658AFEFD678BFEFD5F85FCFD1C4AE6FD154F
                  E6FD2495F9FD2498F9FD1D69EEFD0F3CE1FD3D69F1FD6A8EFEFD6589FEFD658A
                  FEFD668BFEFD658AFEFD658AFEFD678DFFFF678CFEEE7FA9FE11000000000000
                  0000000000000000000000000000000000007F99FF0989A6FE19000000006E93
                  FE446E95FFFF6589FEFD658AFEFD658AFEFD6489FEFD6A8EFEFD5078F7FD1A48
                  E5FD1452E7FD1768ECFD1346E3FD315DEDFD658AFEFD668BFEFD658AFEFD658A
                  FEFD6388FEFD658AFEFD678DFFFF6B92FFFF688DFEF27FA9FE11000000000000
                  0000000000000000000000000000000000000000000000000000000000007FA3
                  FE0D678CFEEB688EFFFF6589FEFD658AFEFD658AFEFD6489FEFD6A8EFEFD5E84
                  FCFD446BF3FD3E63F0FD4F77F7FD688CFEFD678BFEFD6489FEFD6A8EFEFD446E
                  F3FD1F4EE7FD678EFFFF698CFEDE7498FE387192FE2EA9A9FF02000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00006D91FE6F7098FFFF658AFEFD658AFEFD658AFEFD658AFEFD6489FEFD678C
                  FEFD6B8FFEFD6B8FFEFD6A8EFEFD658AFEFD6589FEFD658AFEFD678CFEFD567D
                  F9FD446EF3FD6E96FFFF7193FE52000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000006A8EFEAE7099FFFF658AFFFF6589FEFD658AFEFD658AFEFD658A
                  FEFD658AFEFD658AFEFD658AFEFD658AFEFD658AFEFD658AFEFD6489FEFD678C
                  FEFD7096FEFD6A8EFE9D00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000009898FF046D91FEA26E96FFFF6990FFFF658AFFFF6589FEFD658A
                  FEFD658AFEFD658AFEFD658AFEFD658AFEFD6589FEFD658AFFFF6990FFFF6D95
                  FFFF7099FFFF6B8FFE8800000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000006D91FE5C6C91FED56D94FFFF6D95FFFF6A91
                  FFFF688EFFFF678EFFFF688EFFFF6990FFFF6D95FFFF6D95FFFF688CFEC86C8E
                  FE7C688DFECA6D94FFFF6E92FE75000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000009898FF047398FE4C6C92FE95698E
                  FEC6688CFEDE678CFEE6678CFEDF698FFECA6D91FE9B7296FE4DFFFFFF000000
                  000000000000779FFF1F7396FE2B000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000098CBFF04A2B9FE0AAAAAFF05000000000000000000000000000000000000
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
                  000000000000}
                Transparent = True
                ExplicitLeft = 14
                ExplicitTop = 14
                ExplicitHeight = 32
              end
              object restoque: TJvCalcEdit
                Left = 51
                Top = 16
                Width = 132
                Height = 25
                Margins.Left = 0
                Margins.Top = 0
                AutoSize = False
                BorderStyle = bsNone
                DisplayFormat = '###,###,##0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                NumGlyphs = 2
                ParentFont = False
                ShowButton = False
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
          end
        end
        object PageSheet11: TPageSheet
          Left = 0
          Top = 0
          Width = 953
          Height = 330
          Caption = 'Entradas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel8: TBevel
            Left = 0
            Top = 155
            Width = 953
            Height = 2
            Align = alTop
            ExplicitWidth = 937
          end
          object wwDBGrid4: TwwDBGrid
            Left = 0
            Top = 0
            Width = 953
            Height = 155
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'FORNECEDOR'#9'F'
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'15'#9'LOTE'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_entrada
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object Panel10: TPanel
            Left = 0
            Top = 155
            Width = 923
            Height = 82
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object GroupBox1: TGroupBox
              Left = 35
              Top = 7
              Width = 605
              Height = 56
              Caption = 'Filtro | Per'#237'odo'
              TabOrder = 0
              object Label4: TLabel
                Left = 112
                Top = 25
                Width = 6
                Height = 13
                Caption = 'a'
              end
              object di_entrada: TJvDateEdit
                Left = 8
                Top = 22
                Width = 98
                Height = 21
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 0
                OnKeyPress = di_entradaKeyPress
              end
              object df_entrada: TJvDateEdit
                Left = 127
                Top = 23
                Width = 98
                Height = 21
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 1
                OnKeyPress = df_entradaKeyPress
              end
              object bfiltro_entrada: TAdvGlowButton
                Left = 510
                Top = 17
                Width = 91
                Height = 32
                Caption = 'Filtrar...'
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
                  89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
                  F8000000097048597300000EC400000EC401952B0E1B000002A9494441544889
                  AD954F888E5114C67F8F99301AA230D813126527CA580C1622CD42E4BB57187F
                  9A2436165264A758208D523A9732A32924B1B0C142CA92EC280B16983EA5FC9B
                  712CBEFB8DB76FE69D197136EF39A7739EE79EF39E7BAEDC9D894808A10DD82E
                  69BDBB2F9234C3DDABC02B49F7DDBD37A5546DCCD3780431C6C9EE7E1C3802B4
                  4A92BB7BFD0B90F501E0B4A40B663634218218E32CE016B07642658203B7811D
                  66F66D4C8210C214E0A1A435FE27A82AA9D7DD9F491A70F736A043D266779F52
                  A8A61FD89652FAD53CC6694E00AB0B763FD06D661F1AE2AEC4181703D78195D9
                  D70974019747AD20C6D806BC015AB2AB17D859ECED2839338147C0F2EC7A072C
                  2CAB20B8FB54C0257D70F70329A552700033AB8610F6487AEAEE4DC07C499BCA
                  08D617F4AB29A5CF6381D725A5F43CC6F80468CFAE8E3282259294F5C713012F
                  C86349EBB2BE780441086192A4D6C28C37FED4F1E4632177FA088294D2AF18E3
                  17604676CDFD4B823905BD5AD6A297C082ACB703F7FE82605D417F5536A64780
                  73D9FC042C32B381F190638CAB80274053766D292398EBEEAF8169F966DEA276
                  337F9681871066038F242DCDFFE08DA4A5A5AB22C6F800D8904DA7D6A67D66F6
                  7E94D815D46EF2B242FC7633EB1B4190A7E88CBB1F85E1DD520FFA2AA93FEFA2
                  4FEE3E8FDA2EDAE8EE930AF13D29A58300CD8DE0C059E07049275A80005400E5
                  93D2A05F060ED513862B88310A380F74E784BA0C01066C0566951003BC058E01
                  7D6636DC16B93B2184264917DD7D7F435B06257599998510A6039D923AF28BD6
                  9A5FB417F945BB3BDA10A852A93401972475D5ABC9043F80BD29A56B639C7A5C
                  6996D403ECC9B875FFA0A45D6676E35FC0019ADD7D373574725B7E480A6676F3
                  5FC1A13645A78093D9FE0E54CCACFF7F8043AD45A7A94D4AB7A4836676E77F81
                  03FC064CBD449B10DE8C1C0000000049454E44AE426082}
                Transparent = True
                TabOrder = 2
                OnClick = bfiltro_entradaClick
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
              object combo_entrada: TComboBox
                Left = 241
                Top = 21
                Width = 264
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 3
                Text = '** TODAS AS ENTRADAS **'
                Items.Strings = (
                  '** TODAS AS ENTRADAS **'
                  '0 - IMPLANTA'#199#195'O DE SALDO'
                  '1 - COMPRA'
                  '7 - DEVOL.DE VENDA'
                  '8 - RETORNO SERIAL'
                  '10-ACERTO ESTOQUE'
                  '13-ENTRADA PRODUTO ACABADO'
                  '16-ENTRADA DA RENTABILIDADE')
              end
            end
            object GroupBox13: TGroupBox
              Left = 644
              Top = 7
              Width = 135
              Height = 56
              Caption = 'Totalizador'
              TabOrder = 1
              object eentrada: TLabel
                Left = 16
                Top = 25
                Width = 104
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
          end
        end
        object PageSheet12: TPageSheet
          Left = 0
          Top = 0
          Width = 953
          Height = 330
          Caption = 'Sa'#237'das'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel9: TBevel
            Left = 0
            Top = 155
            Width = 953
            Height = 2
            Align = alTop
            ExplicitWidth = 937
          end
          object wwDBGrid5: TwwDBGrid
            Left = 0
            Top = 0
            Width = 953
            Height = 155
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'CLIENTE'#9#9
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'15'#9'LOTE'#9'F')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_saida
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object Panel11: TPanel
            Left = 0
            Top = 156
            Width = 923
            Height = 81
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object GroupBox14: TGroupBox
              Left = 4
              Top = 17
              Width = 605
              Height = 57
              Caption = 'Filtro | Per'#237'odo'
              TabOrder = 0
              object Label9: TLabel
                Left = 112
                Top = 26
                Width = 6
                Height = 13
                Caption = 'a'
              end
              object di_saida: TJvDateEdit
                Left = 7
                Top = 24
                Width = 98
                Height = 21
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 0
                OnKeyPress = di_entradaKeyPress
              end
              object df_saida: TJvDateEdit
                Left = 127
                Top = 24
                Width = 98
                Height = 21
                NumGlyphs = 2
                ShowNullDate = False
                TabOrder = 1
                OnKeyPress = df_saidaKeyPress
              end
              object bfiltro_saida: TAdvGlowButton
                Left = 508
                Top = 17
                Width = 93
                Height = 32
                Caption = 'Filtrar...'
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
                  89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
                  F8000000097048597300000EC400000EC401952B0E1B000002A9494441544889
                  AD954F888E5114C67F8F99301AA230D813126527CA580C1622CD42E4BB57187F
                  9A2436165264A758208D523A9732A32924B1B0C142CA92EC280B16983EA5FC9B
                  712CBEFB8DB76FE69D197136EF39A7739EE79EF39E7BAEDC9D894808A10DD82E
                  69BDBB2F9234C3DDABC02B49F7DDBD37A5546DCCD3780431C6C9EE7E1C3802B4
                  4A92BB7BFD0B90F501E0B4A40B663634218218E32CE016B07642658203B7811D
                  66F66D4C8210C214E0A1A435FE27A82AA9D7DD9F491A70F736A043D266779F52
                  A8A61FD89652FAD53CC6694E00AB0B763FD06D661F1AE2AEC4181703D78195D9
                  D70974019747AD20C6D806BC015AB2AB17D859ECED2839338147C0F2EC7A072C
                  2CAB20B8FB54C0257D70F70329A552700033AB8610F6487AEAEE4DC07C499BCA
                  08D617F4AB29A5CF6381D725A5F43CC6F80468CFAE8E3282259294F5C713012F
                  C86349EBB2BE780441086192A4D6C28C37FED4F1E4632177FA088294D2AF18E3
                  17604676CDFD4B823905BD5AD6A297C082ACB703F7FE82605D417F5536A64780
                  73D9FC042C32B381F190638CAB80274053766D292398EBEEAF8169F966DEA276
                  337F9681871066038F242DCDFFE08DA4A5A5AB22C6F800D8904DA7D6A67D66F6
                  7E94D815D46EF2B242FC7633EB1B4190A7E88CBB1F85E1DD520FFA2AA93FEFA2
                  4FEE3E8FDA2EDAE8EE930AF13D29A58300CD8DE0C059E07049275A80005400E5
                  93D2A05F060ED513862B88310A380F74E784BA0C01066C0566951003BC058E01
                  7D6636DC16B93B2184264917DD7D7F435B06257599998510A6039D923AF28BD6
                  9A5FB417F945BB3BDA10A852A93401972475D5ABC9043F80BD29A56B639C7A5C
                  6996D403ECC9B875FFA0A45D6676E35FC0019ADD7D373574725B7E480A6676F3
                  5FC1A13645A78093D9FE0E54CCACFF7F8043AD45A7A94D4AB7A4836676E77F81
                  03FC064CBD449B10DE8C1C0000000049454E44AE426082}
                Transparent = True
                TabOrder = 2
                OnClick = bfiltro_saidaClick
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
              object combo_saida: TComboBox
                Left = 241
                Top = 22
                Width = 264
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 3
                Text = '** TODAS AS SA'#205'DAS **'
                Items.Strings = (
                  '** TODAS AS SA'#205'DAS **'
                  '2 - VENDA'
                  '3 - DEVOL.DE COMPRA'
                  '4 - SA'#205'DA'
                  '5 - BAIXA DE SERIAL'
                  '6 - EXCLUS'#195'O SERIAL'
                  '9 - VENDA EM O.S'
                  '11-BAIXA MAT'#201'RIA-PRIMA'
                  '12-ESTORNA MAT'#201'RIA-PRIMA'
                  '14-ESTORNA PRODUTO ACABADO'
                  '15-BAIXA PARA RENTABILIDADE'
                  '17-INSTALA'#199#195'O'
                  '18-GARANTIA DE SERVI'#199'O'
                  '19-SAIDA PARA OFICINA'
                  '20-DOA'#199#195'O'
                  '99-SAIDA SEM BAIXAR ESTOQUE')
              end
            end
            object GroupBox15: TGroupBox
              Left = 640
              Top = 17
              Width = 121
              Height = 57
              Caption = 'Totalizador'
              TabOrder = 1
              object esaida: TLabel
                Left = 9
                Top = 25
                Width = 104
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
          end
        end
        object PageSheet13: TPageSheet
          Left = 0
          Top = 0
          Width = 953
          Height = 330
          Caption = 'CFOP'#39's'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 953
            Height = 330
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object GroupBox28: TGroupBox
              Left = 107
              Top = 35
              Width = 589
              Height = 167
              Caption = 'Configura'#231#227'o CFOP'
              TabOrder = 0
              object Label97: TLabel
                Left = 8
                Top = 24
                Width = 136
                Height = 13
                Caption = 'CFOP Venda Dentro Estado:'
              end
              object Label98: TLabel
                Left = 8
                Top = 48
                Width = 125
                Height = 13
                Caption = 'CFOP Venda Fora Estado:'
              end
              object Label99: TLabel
                Left = 8
                Top = 71
                Width = 156
                Height = 13
                Caption = 'CFOP Devolu'#231#227'o Dentro Estado:'
              end
              object Label100: TLabel
                Left = 8
                Top = 96
                Width = 145
                Height = 13
                Caption = 'CFOP Devolu'#231#227'o Fora Estado:'
              end
              object Label101: TLabel
                Left = 8
                Top = 121
                Width = 147
                Height = 13
                Caption = 'CFOP Garantia Dentro Estado:'
              end
              object Label102: TLabel
                Left = 9
                Top = 143
                Width = 136
                Height = 13
                Caption = 'CFOP Garantia Fora Estado:'
              end
              object RzDBButtonEdit1: TRzDBButtonEdit
                Left = 166
                Top = 20
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_VENDA_DENTRO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 0
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object DBEdit73: TDBEdit
                Left = 238
                Top = 20
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopvendadentro'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 1
              end
              object RzDBButtonEdit2: TRzDBButtonEdit
                Left = 166
                Top = 44
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_VENDA_FORA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 2
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object DBEdit74: TDBEdit
                Left = 238
                Top = 44
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopvendafora'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 3
              end
              object RzDBButtonEdit3: TRzDBButtonEdit
                Left = 166
                Top = 68
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_DEVOLUCAO_DENTRO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 4
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object DBEdit75: TDBEdit
                Left = 238
                Top = 68
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopdevdentro'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 5
              end
              object RzDBButtonEdit4: TRzDBButtonEdit
                Left = 166
                Top = 92
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_DEVOLUCAO_FORA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 6
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object DBEdit76: TDBEdit
                Left = 238
                Top = 92
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopdevfora'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 7
              end
              object RzDBButtonEdit6: TRzDBButtonEdit
                Left = 166
                Top = 140
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_GARANTIA_FORA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 10
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object RzDBButtonEdit5: TRzDBButtonEdit
                Left = 166
                Top = 116
                Width = 73
                Height = 21
                DataSource = dsproduto2
                DataField = 'IND_CFOP_GARANTIA_DENTRO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                FocusColor = 11075583
                ParentFont = False
                TabOrder = 8
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
                ButtonShortCut = 117
                AltBtnWidth = 15
                ButtonWidth = 24
              end
              object DBEdit77: TDBEdit
                Left = 238
                Top = 116
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopgarantiadentro'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 9
              end
              object DBEdit78: TDBEdit
                Left = 238
                Top = 140
                Width = 347
                Height = 21
                Color = clWhite
                DataField = 'cfopgarantiafora'
                DataSource = dsproduto2
                Enabled = False
                TabOrder = 11
              end
            end
          end
        end
      end
    end
    object PageSheet7: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'C'#225'lculo Pre'#231'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object ppreco: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pficha1: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 352
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label87: TLabel
            Left = 557
            Top = 52
            Width = 138
            Height = 13
            Caption = 'Novo Pre'#231'o de Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label70: TLabel
            Left = 710
            Top = 52
            Width = 87
            Height = 13
            Caption = 'Pre'#231'o de Custo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object ptermometro: TFlatPanel
            Left = 555
            Top = 154
            Width = 216
            Height = 42
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 0
            object Label88: TLabel
              Left = 3
              Top = 22
              Width = 65
              Height = 12
              Caption = 'Processando'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object batualizar_estoque: TBitBtn
              Left = 7
              Top = 3
              Width = 206
              Height = 22
              Caption = 'Atualizar Pre'#231'os'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECF5F5F5FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED
                EDEDAFAFAFB5B5B5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB3B3B3DFDFDFD7D7D7B5B5B5F4F4F4FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB6B6B6E1
                E1E1FCFCFCFCFCFCD8D8D8B5B5B5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFEFEFBABABAE3E3E3FCFCFCFAEBD4FCD196FCFAF6D8D8D8B6B6
                B6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBDBDBDE4E4E4FCFCFCFA
                EBD5FCCC85FECE8BF9D096F8F6F2D8D8D8B6B6B6F4F4F4FFFFFFFFFFFFFFFFFF
                F0F0F0C1C1C1E6E6E6FCFCFCFAEBD5FCCC87FED497FED59BFECF8DF6CB8CFCFB
                FAD8D8D8B6B6B6F5F5F5FFFFFFF1F1F1C4C4C4E7E7E7FCFCFCFAEBD5FCCC87FE
                D497FED69DFED59AFECD88FCE0B9FCFCFCD6D6D6B4B4B4F8F8F8F2F2F2C8C8C8
                E8E8E8FCFCFCFAEAD2FECB82FED397FED69DFED59AFECE8AFCE1BBFCFCFCD8D8
                D8B8B8B8F8F8F8FFFFFFCCCCCCEAEAEAFCFCFCF9F9F9FAF2E6FDCD88FED395FE
                D499FECE8AFCE1BBFCFCFCD9D9D9BCBCBCF9F9F9FFFFFFFFFFFFCCCCCCFCFCFC
                FCFCFCFBFBFBF6F6F6FCF4E9FDCE89FECB82FCE1BBFCFCFCDBDBDBBFBFBFF9F9
                F9FFFFFFFFFFFFFFFFFFCDCDCDFCFCFCDFDFDFCACACACDCDCDF6F6F6FAF2E7FC
                E2BCFCFCFCDDDDDDC2C2C2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFCFCFC
                CCCCCCFFFFFFD4D4D4F2F2F2FAFAFAFCFCFCDFDFDFC6C6C6FAFAFAFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFD1D1D1FCFCFCE1E1E1CDCDCDDFDFDFFCFCFCFCFCFCE1
                E1E1CACACAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2FCFCFC
                FCFCFCFCFCFCFCFCFCFCFCFCE3E3E3CCCCCCFAFAFAFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFD4D4D4D3D3D3D1D1D1D0D0D0CFCFCFCDCDCDCCCCCCFB
                FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 0
              Visible = False
              OnClick = batualizar_estoqueClick
            end
            object bar: TProgressBar
              Left = 1
              Top = 34
              Width = 214
              Height = 7
              Align = alBottom
              TabOrder = 1
            end
          end
          object ppreco_automatico: TDBCheckBox
            Left = 558
            Top = 8
            Width = 173
            Height = 17
            Caption = 'C'#225'lcula Venda Autom'#225'tico'
            DataField = 'PRECO_AUTOMATICO'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '2'
            OnExit = ppreco_automaticoExit
            OnKeyPress = DBCheckBox1KeyPress
          end
          object pdtaltera: TFlatPanel
            Left = 555
            Top = 112
            Width = 218
            Height = 47
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 3
            object GroupBox10: TGroupBox
              Left = 5
              Top = 0
              Width = 205
              Height = 42
              Caption = 'Data da '#218'ltima Altera'#231#227'o'
              Enabled = False
              TabOrder = 0
              object DBText1: TDBText
                Left = 52
                Top = 15
                Width = 106
                Height = 17
                DataField = 'DATA_ALTERACAO'
                DataSource = dspreco
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 235
            Top = 3
            Width = 317
            Height = 219
            Caption = 'Comercializa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Label25: TLabel
              Left = 8
              Top = 14
              Width = 96
              Height = 13
              Caption = 'ICMS de Sa'#237'da:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 8
              Top = 34
              Width = 26
              Height = 13
              Caption = 'PIS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 8
              Top = 54
              Width = 52
              Height = 13
              Caption = 'COFINS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 8
              Top = 74
              Width = 129
              Height = 13
              Caption = 'Contribui'#231#227'o Social:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 8
              Top = 94
              Width = 122
              Height = 13
              Caption = 'Custo Operacional:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 8
              Top = 114
              Width = 66
              Height = 13
              Caption = 'Comiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Bevel16: TBevel
              Left = 0
              Top = 133
              Width = 316
              Height = 2
            end
            object Label41: TLabel
              Left = 8
              Top = 140
              Width = 111
              Height = 13
              Caption = 'Total dos Custos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 9
              Top = 192
              Width = 105
              Height = 13
              Caption = 'Pre'#231'o de Venda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 134
              Top = 36
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 134
              Top = 56
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 134
              Top = 76
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 134
              Top = 96
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 134
              Top = 116
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 134
              Top = 16
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel17: TBevel
              Left = 0
              Top = 159
              Width = 317
              Height = 2
            end
            object Label62: TLabel
              Left = 8
              Top = 166
              Width = 105
              Height = 13
              Caption = 'Lucro Desejado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label63: TLabel
              Left = 134
              Top = 168
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel18: TBevel
              Left = 0
              Top = 185
              Width = 316
              Height = 2
            end
            object DBEdit23: TDBEdit
              Left = 152
              Top = 30
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'PIS_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit23Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 50
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'COFINS_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit24Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit25: TDBEdit
              Left = 152
              Top = 70
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'CONTRIBUICAO_SOCIAL_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit25Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit26: TDBEdit
              Left = 152
              Top = 90
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'CUSTO_OPERACIONAL_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit26Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit27: TDBEdit
              Left = 152
              Top = 110
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'COMISSAO_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit27Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit33: TDBEdit
              Left = 228
              Top = 30
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'PIS'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit34: TDBEdit
              Left = 228
              Top = 50
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'COFINS'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit35: TDBEdit
              Left = 228
              Top = 70
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'CONTRIBUICAO_SOCIAL'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit36: TDBEdit
              Left = 228
              Top = 90
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'CUSTO_OPERACIONAL'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit37: TDBEdit
              Left = 228
              Top = 110
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'COMISSAO'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit38: TDBEdit
              Left = 152
              Top = 136
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'TOTAL_CUSTO_P'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit4: TDBEdit
              Left = 228
              Top = 136
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'TOTAL_CUSTO'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object DBEdit5: TDBEdit
              Left = 152
              Top = 188
              Width = 157
              Height = 26
              Color = clWhite
              DataField = 'PRECO_VENDA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
            end
            object DBEdit6: TDBEdit
              Left = 152
              Top = 9
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'ICMS_SAIDA_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit6Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit12: TDBEdit
              Left = 228
              Top = 9
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'ICMS_SAIDA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 152
              Top = 162
              Width = 75
              Height = 21
              Color = clWhite
              DataField = 'LUCRO_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit1Enter
              OnExit = DBEdit22Exit
              OnKeyPress = DBEdit22KeyPress
            end
            object DBEdit32: TDBEdit
              Left = 228
              Top = 162
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'LUCRO'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
            end
          end
          object GroupBox3: TGroupBox
            Left = 6
            Top = 3
            Width = 226
            Height = 219
            Caption = 'Custos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label19: TLabel
              Left = 8
              Top = 16
              Width = 130
              Height = 13
              Caption = 'Valor da Nota Fiscal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 46
              Width = 32
              Height = 13
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 0
              Top = 175
              Width = 226
              Height = 2
            end
            object Label21: TLabel
              Left = 8
              Top = 182
              Width = 117
              Height = 13
              Caption = 'Custo Mercadoria:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 8
              Top = 66
              Width = 60
              Height = 13
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 8
              Top = 97
              Width = 35
              Height = 13
              Caption = 'Frete'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 8
              Top = 155
              Width = 20
              Height = 13
              Caption = 'IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label77: TLabel
              Left = 8
              Top = 116
              Width = 46
              Height = 13
              Caption = 'Seguro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label78: TLabel
              Left = 8
              Top = 135
              Width = 109
              Height = 13
              Caption = 'Outras Despesas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object Label79: TLabel
              Left = 122
              Top = 48
              Width = 15
              Height = 9
              Caption = '(-)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label81: TLabel
              Left = 122
              Top = 68
              Width = 15
              Height = 9
              Caption = '(-)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 122
              Top = 96
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label83: TLabel
              Left = 122
              Top = 116
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 122
              Top = 136
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Label85: TLabel
              Left = 122
              Top = 157
              Width = 15
              Height = 9
              Caption = '(+)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Lucida Console'
              Font.Style = []
              ParentFont = False
            end
            object Bevel2: TBevel
              Left = 0
              Top = 37
              Width = 226
              Height = 2
            end
            object Bevel15: TBevel
              Left = 0
              Top = 86
              Width = 226
              Height = 2
            end
            object DBEdit19: TDBEdit
              Left = 141
              Top = 13
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'VALOR_ULTIMA_COMPRA'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit20: TDBEdit
              Left = 141
              Top = 42
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'ICMS_ENTRADA'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit21: TDBEdit
              Left = 141
              Top = 62
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'DESCONTO'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit3: TDBEdit
              Left = 141
              Top = 90
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'FRETE'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit64: TDBEdit
              Left = 141
              Top = 110
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'SEGURO'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit65: TDBEdit
              Left = 141
              Top = 130
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'OUTRAS_DESPESAS'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit19Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit66: TDBEdit
              Left = 141
              Top = 150
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'IPI'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit66Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit67: TDBEdit
              Left = 141
              Top = 178
              Width = 80
              Height = 21
              Color = clWhite
              DataField = 'CUSTO_COMPRA'
              DataSource = dspreco
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnEnter = DBEdit1Enter
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit68: TDBEdit
              Left = 56
              Top = 43
              Width = 62
              Height = 21
              Color = clWhite
              DataField = 'ICMS_ENTRADA_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit68Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object FlatPanel12: TFlatPanel
              Left = 185
              Top = 0
              Width = 33
              Height = 13
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 10
              object Label86: TLabel
                Left = 10
                Top = 0
                Width = 16
                Height = 13
                Caption = 'R$'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object DBEdit69: TDBEdit
              Left = 56
              Top = 150
              Width = 62
              Height = 21
              Color = clWhite
              DataField = 'IPI_P'
              DataSource = dspreco
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit1Enter
              OnExit = DBEdit69Exit
              OnKeyPress = DBEdit1KeyPress
            end
          end
          object bnovo_preco_venda: TRzDBNumericEdit
            Left = 559
            Top = 69
            Width = 119
            Height = 28
            DataSource = dspreco
            DataField = 'NOVO_PRECO_VENDA'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 6
            OnEnter = bnovo_preco_vendaEnter
            OnExit = bnovo_preco_vendaExit
            OnKeyPress = DBEdit1KeyPress
            IntegersOnly = False
            DisplayFormat = ',0;(,0)'
          end
          object bnovo_preco_custo: TRzDBNumericEdit
            Left = 708
            Top = 68
            Width = 85
            Height = 28
            DataSource = dspreco
            DataField = 'NOVO_PRECO_CUSTO'
            Alignment = taLeftJustify
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 7
            OnEnter = bnovo_preco_custoEnter
            OnExit = bnovo_preco_custoExit
            OnKeyPress = DBEdit1KeyPress
            IntegersOnly = False
            DisplayFormat = ',0;(,0)'
          end
          object batu: TAdvGlowButton
            Left = 555
            Top = 199
            Width = 218
            Height = 24
            Caption = 'Atualizar Pre'#231'os'
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
              650041646F626520496D616765526561647971C9653C0000029B4944415478DA
              62BC7AF5EA7F2060F8F7EF1F03884666036931131393D70C78004000315EBE7C
              F9BF96961686C4F3E7CF195EBE7CC9F0FBF76F317373739C8600041013C82610
              78FAF429C3C58B17191E3F7E0CE64B4A4A32888A8A32303333BF3A7AF4A8282E
              0300028809E45C1078FDFA3583A1A121E3AB57AFCE7DFBF60DEC0D696969B821
              070F1EC46A084000C10D10161666387DFAF44F205F94858585E1FDEB5F0C27F6
              BC6190959565101717071BB26FDF3E0C4300028805E605904219191936A09F65
              BF7E6260583BF729C3AF1FA0406560B0749507BBE8C99327AF76EDDA25E6E6E6
              060F13800002B9E0FBBB77EFC01C90A2CFEFFF31AC9AF998819B87854154929D
              E1CAE94F0CC777BF61505454649092926200BAEED5B66DDBE02E0108209001EE
              77EEDCF9FEE6CD1B903319DE019DFEFBE77F0646264606661646063E4156B821
              CACACA2057820DD9B46913D8108000620479E1D8B163D6408376ABAAAA728202
              EDDEF5CF0CBBD7BE046A666360656362F8FBE73FC387B7BF18744CF918ACDD45
              196EDDBAC570EFDE3D869F3F7F8A01041013C8142B2BABA340035C6FDCB8F11D
              180B0C4A9ABC0CAEC1E20C9FDE035DF3EB1FD0350C6083AE5F7C07F4E67F0626
              26263006EAE102082046582082003094AD81FCDD9A9A9A9C1212126097EC5CF3
              8281959599818B978121305186E1E9B34760DBBF7EFDAA141C1C7C1F2080500C
              0081DDBB7783BDA3A3A3C3094A4C77AF7D6238B1F71D4358BA1CC3C347F7C09A
              BF7CF9A2141212721FA41E2080300C0081EDDBB7830DD1D3D3E3042526100006
              34C3DDBB77C136C3348300400061350004366FDE6C0194DBA7AFAFCFF9E3C70F
              B8B3913583004000E1340004366CD8600174C93E4E2000393B3434F43EBA1A80
              00C26B0008AC59B306E4926740CD8FB0C903041800317E55ED538993D2000000
              0049454E44AE426082}
            TabOrder = 8
            OnClick = batuClick
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
          object ptampapreco: TFlatPanel
            Left = 0
            Top = 0
            Width = 953
            Height = 352
            ParentColor = True
            Visible = False
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            Align = alClient
            TabOrder = 1
            object Label38: TLabel
              Left = 288
              Top = 96
              Width = 198
              Height = 13
              Caption = 'Produto sem C'#225'lculo de pre'#231'o!'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object bitbtn7: TAdvGlowButton
              Left = 288
              Top = 123
              Width = 209
              Height = 47
              Caption = 'F5 | Criar Calculo de Pre'#231'o'
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
                89504E470D0A1A0A0000000D494844520000001E0000001F0806000000F06C7D
                07000000097048597300000B1300000B1301009A9C18000000206348524D0000
                7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
                1F90000006BC4944415478DABC976B8C555715C77FFB9C73CF7DCC9D3BEF078F
                299D190A48CBAB2DE5D116DA32084150D110214263511A4BAC1F4C6BA2C4D818
                AAB55825B5469B42B5DA50438CB1D89442AC45D0D8078596BE86476518649861
                DE3377E6DEF3D87BF961E830335C60C0E8FEBA72CE6FEFBDD6FAAFFF56E45A53
                A7C2FA07A0F2750A24E09693B3E829AB20286AA1A7CFA2B85F2828D558C931D8
                028270A92540AB363C5A966059D225ABF86AD4B5BE6DF17F58061001226A4D2C
                6A6DCBFAE657CE35FD49048C01F80250343464393696EBA294C28421A11FD01D
                182C5B151277B6F8BDC10613CAB6AB068B1142013796DC6494B559440FC6EC58
                94B03F435F530B26D4B8F9499AA271D696C4B939E572AACB7B6C82B2B639B6E2
                AAC04604D0C48BCA1FB61391CD2630C3A0FD4DCDB41DFE10AFA30BA3358DA170
                FFD2796C5E702B3FFDA885573AB3476F8C470845460F16011D406549E2C12237
                FE781004E74B67009A6DEBE0EC818348364B3A2FAFB3C30B0FAD9E52B1E017B3
                AA225BF77FC07612A41C3BB9AFCFC7528C0E2C02DA8414458BEE2F88BB4FEAD0
                1F8C29A540A0EBD849C2BE7E828AB2839FBD69E2E7574E1A53BBB8AAF86F5BF6
                BEADBFFBD7C3F6DC15F7902A2F21F406BEB54671BF88AFC92FB6EE4BE5C79FD6
                A11AA8D00B64B4E7E1777643D4C52E4CDDFBE379933A96CE9FBCBBA72FF8E6E6
                431FEF2A371AE94EA322910B457869A2023164F0898ECFBF3759EC3CABB54124
                47CF2A05968512C1685DF542634BA6ED74EBE2678E36FD3CEED813628E33401A
                F2AD732926A2C10FA82A9FB8D62D2B7BCE0FB290032AC6E0C463C4CB8BC934B5
                10EFE9FDED96D78FAFFBCDFB8DFB5A5ABBB7E7A5FB6E765379C44A8BD17E7005
                B01608B3D4BA33BE3CDDADFE5DC6F7064FAA9422D09A9EC0431B435EC4251E3A
                E44FAE25D3DC46B6F95C8595EEDF7B5629ED643D5B8950346D1A6E51013A93BD
                02B8BD8B9A9AB2353352F1E7337E162D1A85C2528A5EDF438B5037BE96925882
                034D0D34F5F6505250C8D88573683B524FB6A50D270CED48450905375493AA9D
                80F1FC61889CE09A4FCF5D35B3BA7447E65C1BA1080A0540360CB19462CBEDCB
                985258466BA68F65D74DA125D3CBBE33FF628FD740E5FC5BF07BD288D6388938
                4E3C86CE7A88D603B570A9E2AAF9D2F295331FFADACE4C5B07A116D490585BB6
                8F8D37CD6566C918D6EC7D812FBEF23CC5B138778FABA5289AA0279D46FC8048
                3241B43085655B84FD19C498615000A76CCECC4F7480FC9AEB964D7F68C31F33
                6D9D847E80B286EF2B3086D9E5E379F1E487EC69A867D78AFBC884212F9FAA67
                E1B86A769E3882AF431C6372378A652507C1739ED884120B813A65B12BD3D28E
                0906A09652747A192CA5287063D84AD19C49E3DA0EDBEA56B1E2FA4FB1E4CFCF
                52114FB2F5CEE554250B38D3DF83E3B817B5894210CF7B6B10EC7576A3C4BA03
                C54B808DC820B43DDBCF82B1D5E447A2BCFAEF1308C2FEA6937C6BC61DD896C5
                BABFECE48D96D33C327B110A458797C151D645482C851F04EB9D74CFAB4A0494
                C242B80D643722D1A17D9A0E7CCAE3497E347709D5A922DAB3FD785A33ADB892
                A8EDF0C0BE3FF18FE606E65454F18DE9F33970B681B3FDBD446DE7224DF003FF
                C1D084BF46D903B9560A4BC11E2039321DBDBEC7CAEAA9747B1E4FBDF74FFA02
                9F476EAB63F9F55338D5DBC991F6662A13F9144713EC38F62E4F7FF026A5B1C4
                08415304BEFFB017844FA911C56521AA35671D28C5D8648AA3DDADD477B6F2C3
                794B583769168FBEFD1AC608938B4AB195455BB68F9FBD7B80BEC023E14486C9
                A809F4F77410FE44E510664B903A8153B9E01F759CA33C96C713B77F86D51367
                B07AEFEFD971FC1D0AA3314A6379F85A632945592C8FA8EDA00753A5101DFC40
                02BD79E44987F67123220B80D3430349D76577E33126A40AD93075369BDED8C3
                CBA7EAF9FA8D7348BA2E27BADB89DAF685D1385CBF1F93D07CFF7223C8393F11
                1A4564A152EA00300E2034869AFC14C7BB3A3062583FE556D64E9AC50D85A53C
                7E783F67D2DD94C6F372B84AD92AC8779452B966CA854C2C7E71FBA093006A95
                527F072AB518526E0C4F87747B59EAAA26323691E2CD73A739D4DA44693C6F60
                D20D1DDDC6FC522CD9A88C42698D18088D26B0C1B614D174062503D23952AB3F
                1691BB9452FB23965DDEED65F18DC6B12C5E6AA8C78810B16DCAE27903F734DC
                A63C87918D8CD230E71A124745649181D71CCB2A75CECBE6C8FE94E1D6E80FCA
                C85750A3378E97DADFFB22B218E8B8B21F93DD88ACBA5A9B7CB98B79E73CBCEB
                3226703FF0B96B79135C292387446411D09B83FA16224B81E07F01FE047E1790
                1E027D4F8CD401996B7D4F8DF6D1764844EE446810E4A011B91B45CF7FF390FB
                CF000E341C644FF04ABE0000000049454E44AE426082}
              Transparent = True
              TabOrder = 0
              OnClick = BitBtn7Click
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
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Grade'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha4: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pgrade: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 352
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object wwDBGrid1: TwwDBGrid
            Left = 308
            Top = 28
            Width = 361
            Height = 217
            Selected.Strings = (
              'NUMERACAO'#9'10'#9'N'#218'MERO'
              'CODBARRA'#9'25'#9'C'#211'D.BARRAS'
              'ESTOQUE'#9'9'#9'ESTOQUE')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            DataSource = dsgrade_produto
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object DBCheckBox2: TDBCheckBox
            Left = 188
            Top = 38
            Width = 105
            Height = 17
            Caption = 'Utilizar Grade'
            DataField = 'USA_GRADE'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox2Click
          end
          object bitbtn8: TAdvGlowButton
            Left = 176
            Top = 79
            Width = 126
            Height = 72
            Caption = 'Gerar Grade...  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
              1F90000002E24944415478DAC4974D8B145714869F733F2A53DD5DB47146E981
              D124206E836BB70157820B77D98920B8F10F886B7F4D56812C82BA906491B524
              46C511C5A8AD1D7BBA66FAA33EEEC9A2DBE0D8D5D335C2B4076A5550EF3D6FBD
              CFB9F74AAFFBE81FA0C56A6BD7019BACBE1203A45F40383507BF9723535E201C
              C0AC814D5628AC017C07262FD1FE5D8836679D2B221CFA59546ECE5A97A0FDBB
              E8F3DB30D986D15364E312D816912FB016549777F441739C05CA727E119F082B
              889BF697FE0143E0F8536CDCC184949F7EEDF1F7F698666C960A17A522C0E50B
              EB7CB7B5C6DEA83C48180863689C45B66EA0A397F0F50FA83A429971F6DB98F5
              631EEF96874E67B6341B96AC08F38EF4BA8F0640B2CFA43001D7061B43D64531
              8021695A222F84406DAFD3BD92BC50CCFEB5A66E61A235836202E62B44A736ED
              0ECBCF4BB0D4C24980729620012D57C9B1013BE358DC9108577C55C19F40777E
              43470F319D2B90BF0320F28231025AFF1F6759A00C4B7112B009DAFB197D7613
              26CFD1C90B64F31AE21AECA463F2420F1C0C9F562336382B73EC57702C883F89
              66AF614F21E4B8C616A67CCB2FF7FBFCF96448AB6197731CA61CFF78718333A7
              E3B960CEE3642228FA84F77790BC0FC9394CFB3C147DD26120CB1431F53B4E9A
              96C809617FC76905C733A4FC493031646F200C411C91974ADB0EFAC793EA9199
              2E88AC85BC37B51EF37FB2B35CC9723D7482456AE3A41FBD0EABE418301E6CE3
              C80E03D523D36DA083DF61F817D2B90AF93B14A1D53044DE10B4BEDDBBC35035
              ABAB386ECF38BE05D92B74FC02BB751DEB9A3C783CE0FDA0A8B53B059D7A75E6
              9B35DA2D4B5EE8128E1164ED345A74612F07E331F1296CD1E5C1E3210FB747B4
              E21A1CCFF6E3CE86E7C4714F5E2CE3582228FE45FBF720DF81E47BA47D1E8A01
              DE09D6087A889999E581303F321770AC01FCFA6C3F7E03210731D373D4214314
              AAD7B88063B150F4A70FF06154A9D6DB1F3E33D51F737C7465E6C7E56AAE300E
              78F5252E6DFF0D00D72C35B2622F82190000000049454E44AE426082}
            Transparent = True
            TabOrder = 2
            OnClick = BitBtn8Click
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
            Layout = blGlyphTop
          end
          object bitbtn11: TAdvGlowButton
            Left = 176
            Top = 168
            Width = 126
            Height = 72
            Caption = 'Limpar Grade...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 3
            OnClick = BitBtn11Click
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
            Layout = blGlyphTop
          end
        end
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Seriais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha5: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel19: TBevel
          Left = 0
          Top = 301
          Width = 953
          Height = 2
          Align = alBottom
          ExplicitTop = 200
          ExplicitWidth = 937
        end
        object wwDBGrid2: TwwDBGrid
          Left = 0
          Top = 54
          Width = 953
          Height = 247
          Selected.Strings = (
            'NUMERONOTA'#9'10'#9'NF.COMPRA'
            'DATACOMPRA'#9'10'#9'DATA'
            'SERIAL'#9'28'#9'N'#218'MERO DE S'#201'RIE'
            'PRECOCUSTO'#9'9'#9'PR.CUSTO'
            'PRECOVENDA'#9'11'#9'PR.VENDA'
            'CLIENTE'#9'37'#9'CLIENTE'
            'DATAVENDA'#9'11'#9'DATA SA'#205'DA')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsserial_produto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDrawDataCell = wwDBGrid2DrawDataCell
        end
        object Panel6: TPanel
          Left = 0
          Top = 303
          Width = 953
          Height = 49
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label42: TLabel
            Left = 192
            Top = 10
            Width = 77
            Height = 13
            Caption = 'Seriais Vendidos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 192
            Top = 24
            Width = 77
            Height = 13
            Caption = 'Seriais Baixados'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Bevel14: TBevel
            Left = 480
            Top = 6
            Width = 2
            Height = 34
          end
          object Label67: TLabel
            Left = 487
            Top = 18
            Width = 45
            Height = 13
            Caption = 'Localizar:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Shape11: TShape
            Left = 176
            Top = 11
            Width = 13
            Height = 12
            Brush.Color = clRed
            Shape = stRoundRect
          end
          object Shape12: TShape
            Left = 176
            Top = 25
            Width = 13
            Height = 12
            Brush.Color = clYellow
            Shape = stRoundRect
          end
          object button3: TAdvGlowButton
            Left = 286
            Top = 8
            Width = 183
            Height = 30
            Caption = 'Baixar / Retornar Serial'
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
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F8000000097048597300000EC400000EC401952B0E1B000000D4494441544889
              DD94CB0D02310C44DF00171AA01A1AA0110A4062A550C05A820E688416A88502
              B8A0C51C6097B07CC4274182B924711C8F669C44EE4E4EF4B256FF1F8210C21C
              9800DD07B90B332B5E2590BB1342D802FD27F2D7C0D0CCAA570976A4B76B6166
              45CE1E4C81425F79079BD5780F481200EE8E244EE4DE6C1CF75C92EAB18E01E2
              58A4C91B8C969D0B8B6235D1BCADB25EC771DD3877569012B10B59087E5F411B
              BF4770AF07BA4E7D0F510F14132443A4C0B3107CF316E5B1A88D1E80575EAAAB
              D9A7C5627BBCF212AE3FB2E4380005AA6D9AEA9B3B440000000049454E44AE42
              6082}
            Transparent = True
            TabOrder = 0
            OnClick = Button3Click
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
          object eserial: TRzEdit
            Left = 543
            Top = 14
            Width = 373
            Height = 21
            Text = ''
            Color = 12582911
            FocusColor = 10550008
            TabOrder = 1
            OnChange = eserialChange
          end
          object DBCheckBox3: TDBCheckBox
            Left = 8
            Top = 16
            Width = 153
            Height = 17
            Caption = 'Utilizar controle de seriais'
            DataField = 'USA_SERIAL'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox3Click
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 54
          Align = alTop
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object AdvGlowButton2: TAdvGlowButton
            Left = 287
            Top = 3
            Width = 132
            Height = 50
            Caption = 'Incluir Serial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            OnClick = AdvGlowButton2Click
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
          object AdvGlowButton5: TAdvGlowButton
            Left = 424
            Top = 2
            Width = 132
            Height = 50
            Caption = 'Excluir Serial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            TabOrder = 1
            OnClick = AdvGlowButton5Click
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
        end
      end
    end
    object PageSheet4: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Composi'#231#227'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha6: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pcomposicao: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 352
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label34: TLabel
            Left = 6
            Top = 12
            Width = 52
            Height = 12
            Caption = 'RECEITA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object ereceita: TDBEdit
            Left = 88
            Top = 8
            Width = 64
            Height = 21
            Color = clWhite
            DataField = 'CODRECEITA'
            DataSource = dsproduto2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = ereceitaExit
            OnKeyPress = DBEdit1KeyPress
          end
          object blocreceita: TBitBtn
            Left = 152
            Top = 8
            Width = 25
            Height = 21
            Glyph.Data = {
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
            TabOrder = 2
            OnClick = blocreceitaClick
          end
          object DBEdit61: TDBEdit
            Left = 177
            Top = 8
            Width = 742
            Height = 21
            Color = clWhite
            DataField = 'receitas'
            DataSource = dsproduto2
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object GroupBox6: TGroupBox
            Left = 6
            Top = 37
            Width = 913
            Height = 181
            Caption = 'Composi'#231#227'o'
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object wwDBGrid3: TwwDBGrid
              Left = 8
              Top = 15
              Width = 779
              Height = 157
              ControlType.Strings = (
                'CODPRODUTO;CustomEdit;comboproduto;F'
                'prod;CustomEdit;comboproduto;F')
              Selected.Strings = (
                'prod'#9'50'#9'PRODUTO'#9#9
                'CODIGO'#9'6'#9'CODIGO'#9'F'#9
                'CODPRODUTO'#9'6'#9'CODPRODUTO'#9#9
                'QTDE'#9'10'#9'QTDE'#9#9
                'PRODUTO'#9'6'#9'PRODUTO'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dscomposicao_produto
              KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
            object comboproduto: TwwDBLookupComboDlg
              Left = 216
              Top = 80
              Width = 121
              Height = 21
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Localizar Produto...'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'PRODUTO'#9'60'#9'PRODUTO'#9#9
                'CODIGO'#9'6'#9'CODIGO'#9#9)
              DataField = 'CODPRODUTO'
              DataSource = dscomposicao_produto
              LookupTable = qrproduto_loc
              LookupField = 'CODIGO'
              TabOrder = 1
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
            end
            object button1: TAdvGlowButton
              Left = 810
              Top = 20
              Width = 83
              Height = 66
              Caption = 'Limpar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
                1F90000002CA4944415478DAE4974D48545114C77FE7BEEBA436A4A1956D5C46
                B52B82168515A4530415A2A5EB3E408836615B7557868B8AA055D0AAA2826C91
                159554A6D5DE561124B5B2043FD3E77BF7B468667C334DE00C4F5C74E06EEED7
                EFFDEFF9B8F789AAB21A665825B3008D275E00E0070B600C060507AA82F11CCE
                092A3418E40B9E7ECB2C3EDE79B068A0089CDF9558B6E246519E2A6E10A88BFB
                A8AB806D05E6A480C740056A3E8D333B31CE6C496A0B81ABFCD07F2698B7C08E
                C8F861E7A41F280779FCC3CEB4027E645C4B686D591F47F6A911C74B0C4D401D
                A20F81443EF44CE7B178820B984C7889941FFACF44D9AD8E977F54FE0DCDB37B
                C5029D335FF315E7C0D3319803DD102609BC30BA4F5B5C793C99F01229153EE4
                436B83B5D9490FAE3C8FE7A8E799C706166B2DC0E4C22F699A49CECC67A03561
                65C17C2CC5C40480CD55BC1864DD3805F8A3F75BA95D82F6012DB156AEA8F9C1
                026018BDDF1AEDBE0E9C53551FF8088CC509DE0BEC04AE9597BBECC9003744A5
                0350453AF2A0A504D730309601D72BE1004812A8002E03B2AF79E0262A67D3D0
                D3C02D8096CE26D297DA9DA27D8C698F82C744A44F952E412E81AED9DFFCA45E
                9553F9D095F071B708A8D205D293569403DD6467D87B31A76AB5171FD66EB850
                7045E0B950E73BB030D4DB1F85DF8DF321D0AD4A77141AE0E54C18EAED8FF905
                3291CDD99E0CB42C5CCCF4AD87A52F18EAED4795A29B0B6D61C5D38B6EE9AE92
                ECF0462F216FC683CADB51789C05C4028129AB6471610A63D7006C2A2378056C
                57A4FA271575C0F7A39D4DF145B556CFED21E4183097EEDB1C78F615B015F826
                A17700EBBE47D694125C578191A502A27A019164D29A01E008B0CE6838086CC9
                42E1334044EDC9A283CAB847C048C6896346CC21601A6870E1DC0B6BBDD785A0
                2B5140DE814B8179FAE721202C032A71E5F18888A4D2D7E28A28FDE7B508BC77
                EA1A3D5736B1525000F9EFFE9D7E0F006EFB4172396455320000000049454E44
                AE426082}
              Transparent = True
              TabOrder = 2
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
              Layout = blGlyphTop
            end
            object button2: TAdvGlowButton
              Left = 810
              Top = 104
              Width = 83
              Height = 66
              Caption = 'Excluir'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              TabOrder = 3
              OnClick = button2Click
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
              Layout = blGlyphTop
            end
          end
        end
      end
    end
    object PageSheet5: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Inf.Nutricionais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha7: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnutricional: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 352
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label76: TLabel
            Left = 8
            Top = 179
            Width = 198
            Height = 12
            Caption = '65535 - QTDE. N'#195'O SIGNIFICATIVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 8
            Top = 163
            Width = 129
            Height = 12
            Caption = '65534 - MENOR QUE 1g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label157: TLabel
            Left = 8
            Top = 147
            Width = 138
            Height = 12
            Caption = '65533 - MENOR QUE 5mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox5: TGroupBox
            Left = 16
            Top = 5
            Width = 169
            Height = 46
            Caption = 'Por'#231#227'o'
            TabOrder = 0
            object DBEdit39: TDBEdit
              Left = 9
              Top = 17
              Width = 152
              Height = 21
              Color = clWhite
              DataField = 'PORCAO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
          end
          object FlatPanel3: TFlatPanel
            Left = 255
            Top = 9
            Width = 137
            Height = 17
            Caption = 'Informa'#231#227'o'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 2
          end
          object FlatPanel4: TFlatPanel
            Left = 391
            Top = 9
            Width = 105
            Height = 17
            Caption = 'Por'#231#227'o'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 3
          end
          object FlatPanel5: TFlatPanel
            Left = 495
            Top = 9
            Width = 62
            Height = 17
            Caption = '% VD'
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 4
          end
          object FlatPanel6: TFlatPanel
            Left = 255
            Top = 25
            Width = 137
            Height = 162
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 5
            object Shape6: TShape
              Left = 0
              Top = 128
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape5: TShape
              Left = 0
              Top = 96
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape4: TShape
              Left = 0
              Top = 64
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape3: TShape
              Left = 0
              Top = 32
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 137
              Height = 17
              Brush.Color = 16381926
            end
            object Label145: TLabel
              Left = 2
              Top = 2
              Width = 101
              Height = 12
              Caption = 'VALOR CAL'#211'RICO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label148: TLabel
              Left = 2
              Top = 18
              Width = 89
              Height = 12
              Caption = 'CARBOIDRATOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label149: TLabel
              Left = 2
              Top = 34
              Width = 65
              Height = 12
              Caption = 'PROTE'#205'NAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label150: TLabel
              Left = 2
              Top = 50
              Width = 107
              Height = 12
              Caption = 'GORDURAS TOTAIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label151: TLabel
              Left = 2
              Top = 66
              Width = 132
              Height = 12
              Caption = 'GORDURAS SATURADAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label152: TLabel
              Left = 2
              Top = 83
              Width = 73
              Height = 12
              Caption = 'COLESTEROL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label153: TLabel
              Left = 2
              Top = 99
              Width = 100
              Height = 12
              Caption = 'FIBRA ALIMENTAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label154: TLabel
              Left = 2
              Top = 115
              Width = 44
              Height = 12
              Caption = 'C'#193'LCIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label155: TLabel
              Left = 2
              Top = 131
              Width = 36
              Height = 12
              Caption = 'FERRO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label156: TLabel
              Left = 2
              Top = 147
              Width = 38
              Height = 12
              Caption = 'S'#211'DIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
          end
          object FlatPanel7: TFlatPanel
            Left = 391
            Top = 25
            Width = 166
            Height = 162
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 1
            object Shape10: TShape
              Left = 0
              Top = 128
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape9: TShape
              Left = 0
              Top = 96
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape8: TShape
              Left = 0
              Top = 64
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape7: TShape
              Left = 0
              Top = 32
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Shape2: TShape
              Left = 0
              Top = 0
              Width = 166
              Height = 17
              Brush.Color = 16381926
            end
            object Label158: TLabel
              Left = 75
              Top = 2
              Width = 21
              Height = 12
              Caption = 'kcal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label159: TLabel
              Left = 75
              Top = 18
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label160: TLabel
              Left = 75
              Top = 34
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label161: TLabel
              Left = 75
              Top = 50
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label162: TLabel
              Left = 75
              Top = 66
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label163: TLabel
              Left = 75
              Top = 82
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label165: TLabel
              Left = 75
              Top = 146
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 75
              Top = 130
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label32: TLabel
              Left = 75
              Top = 114
              Width = 15
              Height = 12
              Caption = 'mg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 75
              Top = 98
              Width = 6
              Height = 12
              Caption = 'g'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object FlatPanel8: TFlatPanel
              Left = 104
              Top = 0
              Width = 1
              Height = 188
              ParentColor = True
              ColorHighLight = clBlack
              ColorShadow = clBlack
              TabOrder = 0
            end
            object DBEdit40: TDBEdit
              Left = 5
              Top = 1
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'VALOR_CALORICO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit41: TDBEdit
              Left = 107
              Top = 1
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'VALOR_CALORICO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit42: TDBEdit
              Left = 5
              Top = 17
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CARBOIDRATOS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit43: TDBEdit
              Left = 107
              Top = 17
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CARBOIDRATOS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit44: TDBEdit
              Left = 5
              Top = 33
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'PROTEINAS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit45: TDBEdit
              Left = 107
              Top = 33
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'PROTEINAS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit46: TDBEdit
              Left = 5
              Top = 49
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'GORDURASTOTAIS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit47: TDBEdit
              Left = 107
              Top = 49
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'GORDURASTOTAIS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit48: TDBEdit
              Left = 5
              Top = 65
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'GORDURASSATURADAS'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit49: TDBEdit
              Left = 107
              Top = 65
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'GORDURASSATURADAS_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit50: TDBEdit
              Left = 5
              Top = 81
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'COLESTEROL'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit51: TDBEdit
              Left = 107
              Top = 81
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'COLESTEROL_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit52: TDBEdit
              Left = 5
              Top = 97
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FIBRA'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit53: TDBEdit
              Left = 107
              Top = 97
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FIBRA_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit54: TDBEdit
              Left = 5
              Top = 113
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CALCIO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit55: TDBEdit
              Left = 107
              Top = 113
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'CALCIO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit56: TDBEdit
              Left = 5
              Top = 129
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FERRO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit57: TDBEdit
              Left = 107
              Top = 129
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = 16381926
              DataField = 'FERRO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              OnEnter = DBEdit1Enter
              OnExit = DBEdit40Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit58: TDBEdit
              Left = 5
              Top = 145
              Width = 67
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'SODIO'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit59: TDBEdit
              Left = 107
              Top = 145
              Width = 55
              Height = 14
              BorderStyle = bsNone
              Color = clBtnFace
              DataField = 'SODIO_VD'
              DataSource = qrinfnutricional_produto
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              OnEnter = DBEdit1Enter
              OnExit = DBEdit42Exit
              OnKeyPress = DBEdit59KeyPress
            end
          end
          object ptampainfnutricional: TPanel
            Left = 0
            Top = 0
            Width = 953
            Height = 352
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 6
            object Label44: TLabel
              Left = 416
              Top = 86
              Width = 166
              Height = 26
              Caption = 'Produto sem tabela de '#13#10'informa'#231#245'es nutricionais.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object bitbtn6: TAdvGlowButton
              Left = 390
              Top = 126
              Width = 196
              Height = 41
              Caption = 'Criar...'
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
              OnClick = BitBtn6Click
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
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Foto'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 6
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha8: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object PFOTO: TPanel
          Left = 0
          Top = 0
          Width = 953
          Height = 352
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label48: TLabel
            Left = 233
            Top = 106
            Width = 127
            Height = 23
            Caption = 'Sem Imagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 739
            Top = 71
            Width = 30
            Height = 24
            Hint = 'Inserir imagem de um arquivo'
            Flat = True
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000000801000210
              0300031905000521070006280900072F0B00083B0D0009490F000A5411000B60
              13000B6914000B7015000C7616000C7A16000C7D17000C7F17000C8117000C82
              17000C8317000C8317000C8417000C8417000C8417000C8417000C8418000C84
              18000C8418000C8418000C8418000C8318000C8318000C8218000C8118000D80
              18000D7E18000E7C19000F79190010741A00116F1B0014691C0016601E001959
              20001D502200204924002245260025412800283D2A002A392C002D352E003131
              3100323232003333330034343400353535003636360037373700383838003939
              39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
              4100424242004343430044444400454545004646460047474700484848004949
              49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
              5100525252005353530054545400555555005656560057575700585858005959
              59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
              6100626262006363630064646400656565006666660067676700686868006969
              69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F006F7B8000787E
              9600817FAA009176BF00A566D100C247E400E61EF500F60AFC00FC03FE00FE01
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE01FE00FD02FE00FC03FE00FA05FE00F809FE00F310FD00EC1B
              FB00E12CF800D242F300BE62EC00AD7EE300A48FDB00A296D300A19ECA00A1A6
              BF00A2AEB300ABABAB00AFB0B100B2B6B600B6BBBB00B9BFC000BCC3C400C2CA
              CB00C7D0D100CDDBDD00D0E6E900D3EFF200D4F3F700D5F5FA00D6F6FB00D8F7
              FB00D6F7FC00D4F7FC00D1F7FC00CEF7FC00CAF6FD00C3F6FC00BAF6FC00B6F7
              FD00B1F7FC00ACF7FC00A9F7FC00A5F7FC00A2F7FD009FF6FD009EF4FD009DF3
              FC009BF1FC0099F0FC0095EEFC0092EBFB008FE9FB008CE7FB0089E5FB0086E3
              FB0084E1FA0080DEF9007BDCFA0079DAF90077DAF90074D8F90072D6F8006DD2
              F60066CDF2005EC7EB0058C3E70050BEE1004BBBDD0048B9D90046B8D40046BA
              CB0046BDC10047C0B70047C4AB004BCC980049CD890046CC80003FC679003DC3
              74003BC2740038BF730035BC730030B872002CB27D0028AD8B0022A698001A9D
              AA001396B6000D92B9000A8FBC00088EBD00078DBE00078DBE00078DBE00078D
              BE00078DBE00078DBE00078DBD00078DBD00078DBC00078DBB008AFBFBFBFBFB
              FBFBFBFBFBFBFBFB8A8AFBF1DBD2DADADADADADADADAE0FB8A8AFBDEE0CAD8D8
              D9D8D8D8D8D9DFD3FB8AFBD8FBC3D4D4D4D4D4D4D4D4DFC3FB8AFBD4F2CBCDD1
              D1D1D1D1D1D1DFC2FB8AFBD1DFDCC3CECECECECECE1ADEC1DAFBFBCFD6F1B9BE
              BEBEBEBE1AEC1AB9B8FBFBCCCCF2FBFBFBFBFB1AE7E5E91AFBFBFBC8C7C7C8C7
              C7C81AE7E6E6E5E91A8AFBB9C6C6C6C6C61A1A1A1AE6E71A1A1A8AFBB9C5C5C5
              FFDFDFDF1AE7EC1A8A8A8A8AFBFBFBFB8A8A8A8A1AE81A8A8A8A8A8A8A8A8A8A
              8A8A8A1AEDED1A8A8A8A8A8A8A8A8A8A8A8A8A1AED1A8A8A8A8A8A8A8A8A8A8A
              8A1A1A1A1A8A8A8A8A8A8A8A8A8A8A1A1A1A1A8A8A8A8A8A8A8A}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 739
            Top = 95
            Width = 30
            Height = 24
            Hint = 'Inserir imagem de uma webcan'
            Flat = True
            Glyph.Data = {
              5E040000424D5E04000000000000360000002800000012000000130000000100
              1800000000002804000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF5A7B9C5A7B
              9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9CFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF75B2DE85B9DF8ADEF5BFECF9FF
              FFFFC4EEFA96E3F36CBFEE5AA9EF4E79C25A7B9C5A7B9CFF00FFFF00FFFF00FF
              0000FF00FFFF00FFFF00FFFF00FFF7F0E9B3DBE74BC0ECE3F6FF96E3F36FCBEE
              58A8EF4E79C25374ACDBE7E9FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              FF00FFFF00FFFF00FFDCD6D1A7A7A7A0A0A09C9C9CA0A0A0A6A6A6ADADADF3EC
              E7FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFF1E9E4C7C3
              C0A8A8A8B3B3B3B8B8B8BBBBBBB5B5B5ADADADA5A5A5A8A8A8F1E9E4FF00FFFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFC8C4C1B9B9B9D1D1D1D4D4D4D6
              D6D6D1D1D1CCCCCCC5C5C5BDBDBDACACACC7C3C0FF00FFFF00FFFF00FFFF00FF
              0000FF00FFFF00FFE7E1DCB7B7B7DADADAE8E8E8EAEAEAECECECEBEBEBE4E4E4
              DADADAC8C8C8BCBCBCA4A4A4DCD6D1FF00FFFF00FFFF00FF0000FF00FFFF00FF
              B9B7B68B8B8B7F7F7FB4B2B1E2E0DFF5F5F5F3F3F3F0F0F0E9E9E9D9D9D9C4C4
              C4ACACACC0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FF8181819A69549D6E
              5BAC9761B5B2B0FCFCFCFBFBFBF6F6F6F1F1F1E7E7E7D3D3D3B8B8B8A0A0A0FF
              00FFFF00FFFF00FF0000FF00FFFF00FF787878B17813EBB2009D6E5BA4A2A1FF
              FFFFFFFFFFFCFCFCF5F5F5EDEDEDDADADAC2C2C29C9C9CFF00FFFF00FFFF00FF
              0000FF00FFFF00FF767676FFFFFFC39C2A997740B4B1AFFFFFFFFFFFFFFFFFFF
              F7F7F7F0F0F0E2E2E2C3C3C3A1A1A1FF00FFFF00FFFF00FF0000FF00FFFF00FF
              BFBDBB8D8D8D949494B6B4B3E3E1E0FFFFFFFFFFFFFFFFFFF9F9F9F1F1F1E6E6
              E6C1C1C1C0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FFE9E3DEDADADAFAFA
              FAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EFEFEFE6E6E6B1B1B1DCD6D1FF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFE2DEDBE8E8E8FBFBFBFEFEFEFF
              FFFFFEFEFEF9F9F9F1F1F1EAEAEAC5C5C5C7C3C0FF00FFFF00FFFF00FFFF00FF
              0000FF00FFFF00FFFF00FFF5EDE8E6E2DFE3E3E3ECECECF3F3F3F5F5F5EAEAEA
              D4D4D4B6B6B6C7C3C0F1E9E4FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
              FF00FFFF00FFFF00FFEBE5E0DAD7D4CCCBCAC5C5C5C9C8C7CDCAC7DDD7D2FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 739
            Top = 119
            Width = 30
            Height = 24
            Hint = 'Excluir Imagem'
            Flat = True
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000000000000000000000010000000100000005F0000005
              F1000005F2000005F2000005F1000005EF000005EC000005E7000005E3000005
              DF000005DC000005D8000005D4000005D0000005CD000005C8000005C1000005
              BA000005B7000005B7000005B7000005B6000005B6000005B6000005B6000005
              B6000005B5000005B5000005B4000005B3000106B0000206AD000307A6000509
              9D00070B94000A0D8B000D10800010137400151766001A1B56001C1E50001F20
              49002223420025263B00292934002D2D2D002E2E2E002F2F2F00303030003131
              3100323232003333330034343400353535003636360037373700383838003939
              39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
              4100424242004343430044444400454545004646460047474700484848004949
              49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
              5100525252005353530054545400555555005656560057575700585858005959
              59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
              6100626262006363630064646400656565006666660067676700686868006969
              69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
              7100727272007373730074747400757575007676760077777700787878007979
              79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
              8100828282008383830084848400858585008686860087878700888888008989
              89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
              9100929292009393930094949400959595009696960097979700989898009999
              99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
              A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
              A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
              C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
              C900CACACA00D1B2D100D994D900E46CE400F139F100F917F900FD07FD00FE01
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E9E9E9E9E9
              E9E9E9E9E9E9E9E91212E91212E9E9E9E9E9E9E9E9E9E91212E9E9121212E9E9
              E9E9E9E9E9E91212E9E9E912151212E9E9E9E9E9E91212E9E9E9E9E90B111212
              E9E9E9E91212E9E9E9E9E9E9E9E9121215E9151212E9E9E9E9E9E9E9E9E9E915
              0F0F0E1CE9E9E9E9E9E9E9E9E9E9E9E910100BE9E9E9E9E9E9E9E9E9E9E9E915
              0B0E0B07E9E9E9E9E9E9E9E9E9E9080B0CE9E90805E9E9E9E9E9E9E9E9030B05
              E9E9E9E90303E9E9E9E9E9E9030303E9E9E9E9E9E90303E9E9E9E9030303E9E9
              E9E9E9E9E9E9E903E9E9030303E9E9E9E9E9E9E9E9E9E9E9E9E90303E9E9E9E9
              E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9}
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton3Click
          end
          object Label45: TLabel
            Left = 462
            Top = 61
            Width = 180
            Height = 14
            Caption = 'Inserir atrav'#233's de um arquivo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 462
            Top = 103
            Width = 170
            Height = 14
            Caption = 'Capturar por uma Web Cam'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label47: TLabel
            Left = 462
            Top = 144
            Width = 39
            Height = 14
            Caption = 'Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Image2: TImage
            Left = 203
            Top = 22
            Width = 190
            Height = 190
            Stretch = True
          end
          object cySpeedButton14: TcySpeedButton
            Left = 409
            Top = 51
            Width = 47
            Height = 36
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            OnClick = SpeedButton1Click
            MonochromeGlyphColor = clBlack
            Degrade.FromColor = 15574106
            Degrade.SpeedPercent = 90
            Degrade.ToColor = 15574106
            Wallpaper.Transparent = False
            FlatDownStyle = dsMetro
            FlatHotStyle = hsMetro
            GlyphX.Data = {
              0B54504E4747726170686963BE0E0000424DBE0E000000000000360000002800
              00001E0000001F0000000100200000000000880E000000000000000000000000
              000000000000708D0000809B0E0087A2160079960A007F9B0A3A85A0109B859F
              14D285A013EC85A013EA84A013CA839E148A84A3142583910A007E880B007899
              110078960F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F007EA1110064710600708D
              00007F9B0E0085A01502829E10A085A015FF86A116FF85A013FF86A315FF86A2
              16FF85A014FF86A014FF85A315FE84970E7A7E8C0D007797100078960F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F007EA11100647106006F8C00007F9B0D0686A0
              15C586A115FF86A015FF849E13D884A1157880920C4E7D960D5086A1168787A1
              16E785A015FF86A316FF839E14A777940E0077950F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F007EA1110064710600718E0000819D109D87A216FF85A013FF849E
              127E8298130083A115007F890800808603007E9E0D007C9B0D0087A0129686A2
              16FF87A215FF829D13A777950E0077950E0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007EA1
              110064710600819E084185A017FF85A114FF859F127C849D110081981200829D
              13008498111A86930B6D7D9C0C847D9B0F4182970700839E097E8CA917FF859F
              15FF829D13A777950E0077950E0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F007EA111006471060085A0
              119286A216FF849E13D281911201819612007F9B1000819D114585A114F487A7
              17FF88A417FF89A316FF829C11B8424E000078900A6F92B018FF86A015FF829D
              13AA76950E0077950F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F007EA1110064710600859F15D385A114FF849F
              157B819B140081971200819A111884A014EB86A215FF829B13EE839C13D186A1
              14FB8DAA16FF738A13CC353F00007A930A6E92B018FF86A016FF819D13AC7695
              0F0077950F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F007EA111006471060085A013ED86A216FF80920B507E8C0700829B
              1200849E146986A114FF8CAB16EF6D7B0A2C6F7E0D0088A81662839E14FF93B0
              16FF768F13CA394401007A920A7392B018FF86A015FF829D13A976950E007795
              0E0078960F0078960F0078960F0078960F0078960F0078960F0078960F007EA1
              11006471060085A013E986A215FF7F950D557C900A00839E130085A0158785A0
              14FF88A614C8788B0D00798D0F0085A21600849E145A839E14FF94B217FF778F
              13CA384301007A920A6F92B018FF859F15FF829D13AC77950E0077950E007896
              0F0078960F0078960F0078960F0078960F0078960F007EA111006471060084A1
              13C585A014FF85A1159385A11300829F1300829F125585A014FF849E13FF89A4
              145987A31400829C1300839C1400839E1458839E14FF94B217FF789013CF323B
              00007A93096892B117FF86A015FF829D13AE77950E0077950F0078960F007896
              0F0078960F0078960F0078960F007EA1110064710600849B138185A114FF85A1
              16EF839C0C1D829B070085A0130085A014C485A014FF85A014FF849E1358849E
              1300849E1300839D1400839E1456839E14FF92B016FF789114CF353E00007991
              096B93B118FF86A015FF829D13B177960F0077950E0078960F0078960F007896
              0F0078960F007EA111006471060084A1132585A415F585A016FF849E11AE8097
              0000839C0600849F1516849F14D385A014FF85A014FF849E135B849E1300849D
              1300839C1400839E1457829E14FF93B116FF789013CD3A45010078900A6D93B1
              18FF859F15FF819D13AD77950F0077950E0078960F0078960F0078960F007EA1
              1100647106008292070083970D7486A216FF86A116FF849E0F9F7F970000819A
              080084A0161A85A014D385A014FF849F13FF849E135D849E1300839D1400839C
              1400839E1457839E14FF94B217FF789113CD374101007891096993B017FF869F
              15FF829E13B077950F0077950E0078960F0078960F007EA11100647106008078
              00007F810500839E159386A215FF86A218FF849E0EA17F970000819C080084A0
              1714859F14D785A014FF85A014FF849E135A849E1300839E1400839C1400839E
              1454839E14FF93B116FF7A9214D5313B00007890096293B118FF86A015FF839D
              13B277950E0277950F0078960F007EA1110064710600807E0000818305007995
              12007F9D129588A115FF86A218FF839E0EA27F970000819B090083A01710859F
              14D385A014FF85A014FF849E135D849E1300849D1300839C1400839E1452839E
              14FF92B016FF7A9214D336400100778F096793B118FF86A015FF829D13B47796
              0F0177950E007EA1120064710600807E0000818405007A96120075950E00809C
              129387A115FF86A117FF849E0EA07F970000819B080083A01616849F14CF85A0
              14FF849F14FF849E1361849E1300839D1300839C1400839D1454829E14FF93B1
              16FF7A9214D03A450103778F096893B118FF859F15FF829D13B277950E007CA0
              110064710700807E0000818405007B97120076960E0076950F00809C129587A1
              15FF86A118FF849E0FA37F970000819B0700849F1617859F14D085A014FF849F
              13FF849E1361849E1300839D1400839D1500839E1452839E14FF93B116FF7A93
              14D136400000778F086493B117FF869F15FF829D13B57DA0120063700600807E
              0000818405007A97120077970F0077950F0076940E00819C129287A215FF86A2
              18FF849E0FA57F970000809B080083A0170F859F14D385A014FF85A014FF849E
              135E849E1300839D1300829C1500839E144F839E14FF93B116FF7B9414DA313B
              0000778E095E93B218FF86A015FF89AA16B6606B0604807E0000818405007A97
              120077970F0078960F0077950E0076940E00809C139188A215FF87A118FF849E
              0EA57F970000819B080083A0160E859F14CF85A014FF85A014FF849F1461829B
              0F00819A0F00839D1500839E144D839D14FE92B016FF7B9414D637420100768D
              096293B118FF87A416FF7A8F0E7D807E0000818405007A97120077970F007896
              0F0078960F0077960F0076950E00809C138F87A115FF86A117FF849E0FA47F97
              0000819B080083A0151484A014CD85A014FF85A015FF829B10597F970B00829B
              1100839D1500839D1451839D14FF93B016FF7B9313D33D490109738C09618CA8
              17F4829F114F807E0000818405007A97120077970F0078960F0078960F007896
              0F0078960F0076950E00809C129187A115FF86A118FF849E0FA87F970000819B
              070084A0161485A014CE86A115FF829F13837F9E1100819E1200839D1400839D
              1400839E144E849E14FF92AE16FF7B9512D36D86090689A616007E9B1100807E
              0000818405007A97120077970F0078960F0078960F0078960F0078960F007795
              0F0076940E00809C128D87A215FF86A218FF849E0FAA7F970000819C0900839C
              1014849B0C4E83A1150E7FA0140081A01400839F1500839F1500839F150083A0
              154C83A015FD8BA816FF88A416AA7F930E007F910C00807E0000818405007A97
              120077970F0078960F0078960F0078960F0078960F0078960F0077960F007694
              0E00809C138C87A215FF86A117FF849E0FA97F9900007F970100849A0D0083A1
              180080A21700819D120083981000839A1200839A120082991100829B116386A0
              14FF85A416FF80880539807D0000807E0000818405007A97120077970F007896
              0F0078960F0078960F0078960F0078960F0078960F0077960F0076950E00809C
              128B87A215FF86A117FF849F10A87E970000819A0500839E0B007D9B0B007F9B
              100081850400807F00008F9303009396020090960407859F13D785A115FF849E
              1172839D1000807E0000818405007A97120077970F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0077960F0076940E007F9C128C87A2
              15FF86A117FF849F10AC7F98000081990000799000007D9A100087A215008198
              0F00525D0900454D0700515D0900829C13B788A315FF85A2158A85A31500807E
              0000818405007A97120077970F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0077950F0076940E007F9C128987A215FF87A2
              18FF849F10AE819A00007A9200007D980F008AA9170082A11500141B05000000
              00001015030D819A13E28BA816FF849A106783970D00807E0000818405007A97
              120077970F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0077960F0076940E00809C128987A115FF86A117FF86A1
              0FAC799100007C970E0085A21500849F130089A615007E9D0F0084A0117787A2
              15FF86A516FF818B052B7F7E0000807E0000818405007A97120077970F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0077960F0076950E00809C128787A115FF87A217FF819B0FB27E9A
              0F0785A01400849F130084A11300819F126C86A114FF87A115FF84A01298809C
              0D00819C0D00807E0000818405007A97120077970F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0077960F0076940E00809B138886A015FF87A216FF85A015E5849F1390849F
              1385849F14CC87A115FF87A316FF83A115CE60670404585B01005B610300807E
              0000818405007A97120077970F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F0078960F0078960F007795
              100077960B00839F0C7186A016FF86A115FF85A014FF85A014FF86A115FF85A2
              15FF879C10B27C910B12545A04004E470000514E0000807E0000818405007A97
              120077970F0078960F0078960F0078960F0078960F0078960F0078960F007896
              0F0078960F0078960F0078960F0078960F0078960F007795100078970A00839F
              0A0085A01528839E1289849F13B884A013BB839F129883A1134286990E007D8C
              090058620400524F000055550000}
          end
          object cySpeedButton15: TcySpeedButton
            Left = 410
            Top = 93
            Width = 47
            Height = 36
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            OnClick = SpeedButton2Click
            MonochromeGlyphColor = clBlack
            Degrade.FromColor = 15574106
            Degrade.SpeedPercent = 90
            Degrade.ToColor = 15574106
            Wallpaper.Transparent = False
            FlatDownStyle = dsMetro
            FlatHotStyle = hsMetro
            GlyphX.Data = {
              0B54504E4747726170686963460E0000424D460E000000000000360000002800
              00001E0000001E0000000100200000000000100E000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0087785A118B7E
              61848B7D60E98B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60E98B7E618487785A1187785A0087785A0087785A0087785A0087785A008778
              5A008C7C60008C7C60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7E61848B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7E
              61848B7E61008B7E61008B7E61008B7E61008B7E61008C7C60008C7C60008C7C
              60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B7D60E98B7D60FF8B7D60FF8B7D60FF8B7D60FF8678
              5CFF86785CFF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60E98B7D60008B7D
              60008B7D60008B7D60008C7C60008C7C60008C7C60008C7C60008C7C60008C7C
              60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008B7D60FF8B7D60FF8B7D60FF8B7D60FF796D55FF4F5094FF4F5094FF796D
              55FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60008B7D60008B7D60008C7C
              60008C7C60008C7C60008C7C60008C7C60008C7C60008C7C60008B7D6100897E
              5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D
              60FF8B7D60FF8B7D60FF5D586EFF3643F4FF3643F4FF5D586EFF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60008B7D60008B7D61008C7C60008C7C60008C7C
              60008C7C60008C7C60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D60FF8B7D60FF8B7D
              60FF6F6456FF3F48D0FF3F48D0FF6F6456FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D6000898064008B7D61008C7C60008C7C60008C7C60008C7C60008C7C
              60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B7D60FF8B7D60FF8B7D60FF8B7D60FF887B5EFF796D
              54FF796D54FF887B5EFF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60008980
              64008B7D61008C7C60008C7C60008C7C60008C7C60008C7C60008C7C60008C7C
              60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF655A46008980641C8B7D61918C7C
              60A88C7C60A88C7C60A88C7C60A88C7C60A88C7C60A88C7C60A88B7D61A1897E
              5E41FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF655A465883765C9E978255FFAF8C40FFAF8C40FFAF8C
              40FFAF8C40FFAF8C40FFAF8C40FFAF8C40FFA2874BFF8A7D60E8FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF645A45FF7A6D54C6AF8C40FFF5B018FFF6BA35FFF6BA35FFF9CF72FFFAD6
              88FFFAD37EFFF8C659FFD09A23FF8B7D60FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF645A45FF7A6D
              54C6AF8C40FFF4AA05FFF6BF42FFF7C34FFFF8C85EFFFCE3ACFFFCE2A9FFF5B2
              1DFFD09A23FF8B7D60FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF645A45FF7A6D54C6AF8C40FFF4A9
              03FFF5AE11FFF7C24EFFF7C24EFFF7BF42FFF6BB38FFF4A903FFD09A23FF8B7D
              60FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D
              60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
              60FF8B7D60FF8B7D60FF645A45FF7A6D54C6AF8C40FFF4A903FFF4A903FFF5B5
              27FFF5B527FFF4A903FFF4A903FFF4A903FFD09A23FF8B7D60FFFFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF8B7D60FF8B7D60FF8A7C
              5FFF7D7056FF756951FF756951FF7D7056FF8A7C5FFF8B7D60FF8B7D60FF8B7D
              60FF645A45FF7A6D54C6AF8C40FFF4A903FFF4A903FFF4A904FFF4A904FFF4A9
              03FFF7C047FFF7C047FFD09A23FF8B7D60FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B7D60FF8B7D60FF85775CFF6B604AFF736245FF9975
              44FF997544FF736245FF6B604AFF85775CFF8B7D60FF8B7D60FF645A45FF7A6D
              54C6AF8C40FFF4A903FFF4A903FFF4A903FFF4A903FFF4A903FFF4AC0DFFF4AC
              0DFFD09A23FF8B7D60FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008B7D60FF8A7C5FFF6B604AFF937244FFEEA142FFF5A542FFF5A542FFEEA1
              42FF937244FF6B604AFF8A7C5FFF8B7D60FF655A465883765C9E978255FFAF8C
              40FFAF8C40FFAF8C40FFAF8C40FFAF8C40FFAF8C40FFAF8C40FFA2874BFF8A7D
              60E8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF7D70
              56FF736245FFEEA142FFF5A542FFF5A542FFF5A542FFF5A542FFEEA142FF7362
              45FF7D7056FF8B7D60FF655A46008980641C8B7D61918C7C60A88C7C60A88C7C
              60A88C7C60A88C7C60A88C7C60A88C7C60A88B7D61A1897E5E41FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7D60FF756951FF997544FFF5A5
              42FFF5A542FFF5A542FFF5A542FFF5A542FFF5A542FF997544FF756951FF8B7D
              60FF8B7D6000898064008B7D61008C7C60008C7C60008C7C60008C7C60008C7C
              60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008B7D60E6756951FF997544FFF5A747FFF7B461FFF5A7
              47FFF5A849FFF7B667FFF5A747FF997544FF756951FF8B7D60E68B7D60008980
              64008B7D61008C7C60008C7C60008C7C60008C7C60008C7C60008C7C60008C7C
              60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008C7D5FB37D7056FF736245FFEFA448FFF8C382FFF9C88DFFF9C98EFFF8C3
              82FFEFA448FF736245FF7D7056FF8C7D5FB38C7D5F008C7D5F008B7D61008C7C
              60008C7C60008C7C60008C7C60008C7C60008C7C60008C7C60008B7D6100897E
              5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B7E60658A7C
              5FFF6B604AFF937244FFEEA244FFF6AE55FFF6AD54FFEEA244FF937244FF6B60
              4AFF8A7C5FFF8B7E60658B7E60008B7E60008B7E60008C7C60008C7C60008C7C
              60008C7C60008C7C60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000018B7D60BF85775CFF6B60
              4AFF736245FF997544FF997544FF736245FF6B604AFF85775CFF8B7D60BFFF00
              0001FF000000FF000000FF000000FF0000008C7C60008C7C60008C7C60008C7C
              60008C7C60008C7C60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FF0000008980621A8B7D60BF8A7C5FFF7D7056FF7569
              51FF756951FF7D7056FF8A7C5FFF8B7D60BF8980621AFF000000FF000000FF00
              0000FF000000FF0000008C7C60008C7C60008C7C60008C7C60008C7C60008C7C
              60008B7D6100897E5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FF00000089806200FF0000018B7E60658C7D5FB38B7D60E68B7D60E68C7D
              5FB38B7E6065FF00000189806200FF000000FF000000FF000000FF000000FF00
              00008C7C60008C7C60008C7C60008C7C60008C7C60008C7C60008B7D6100897E
              5E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          end
          object cySpeedButton16: TcySpeedButton
            Left = 410
            Top = 135
            Width = 47
            Height = 36
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Layout = blGlyphTop
            ParentFont = False
            OnClick = SpeedButton3Click
            MonochromeGlyphColor = clBlack
            Degrade.FromColor = 15574106
            Degrade.SpeedPercent = 90
            Degrade.ToColor = 15574106
            Wallpaper.Transparent = False
            FlatDownStyle = dsMetro
            FlatHotStyle = hsMetro
            GlyphX.Data = {
              0B54504E4747726170686963CE0C0000424DCE0C000000000000360000002800
              00001A0000001F0000000100200000000000980C000000000000000000000000
              0000000000004AA020004AA020004AA020004BA0211D4DA122C94DA223FB4DA2
              23F44DA223F24DA223F24DA223F24DA223F24DA223F24DA223F24DA223F24DA2
              23F24DA223F24DA223F24DA223F24DA223F24DA223F44DA223FB4DA122C94BA0
              211D4AA020004AA020004AA020000482030004820300007F0000399A1AA056A6
              27FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
              23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
              23FF56A627FF399A1AA0007F0000048203000482030035991700359917003398
              160047A020C250A325FF4DA223FF4DA223FF4AA01EFF4CA222FF4DA223FF4DA2
              23FF4DA224FF4BA120FF4BA120FF4DA224FF4DA223FF4DA223FF4CA222FF4AA0
              1EFF4DA223FF4DA223FF50A325FF47A020C233981600359917003599170053A3
              230053A3230054A323004FA223CA4CA223FF4DA222FF4DA224FF53A52CFF4EA3
              25FF4CA222FF4DA223FF4CA121FF51A42AFF51A42AFF4CA121FF4DA223FF4CA2
              22FF4EA325FF53A52CFF4DA223FF4DA223FF4CA223FF4FA223CA54A3230053A3
              230053A32300499F2200499F2200499F22014CA123D24EA223FF4BA120FF4FA3
              27FF6FB65CFF55A730FF49A01DFF4DA223FF479F19FF66B14EFF66B14EFF479F
              19FF4DA223FF49A01DFF55A730FF6FB65CFF4FA327FF4BA120FF4EA223FF4CA1
              23D2499F2201499F2200499F22004C9F21004C9F21004C9F21084DA122D94DA2
              23FF4BA120FF4FA327FF70B75FFF55A731FF49A01DFF4DA223FF479E18FF68B2
              50FF68B250FF479E18FF4DA223FF49A01DFF55A731FF70B75FFF4FA327FF4BA1
              20FF4DA223FF4DA122D94C9F21084C9F21004C9F21004DA221004DA221004DA2
              21104DA222E04DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA2
              23FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B7
              5DFF4FA327FF4BA120FF4DA223FF4DA222E04DA221104DA221004DA221004BA2
              22004BA222004BA222184CA223E84DA223FF4BA120FF4FA327FF70B75DFF55A7
              30FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A0
              1DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4CA223E84BA222184BA2
              22004BA222004CA122004CA122004CA122214DA223F04DA223FF4BA120FF4FA3
              27FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E
              19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA2
              23F04CA122214CA122004CA122004CA123004CA123004CA123284DA223F74DA2
              23FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B1
              4EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA1
              20FF4DA223FF4DA223F74CA123284CA123004CA123004CA222004CA222004CA2
              22304DA223FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA2
              23FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B7
              5DFF4FA327FF4BA120FF4DA223FF4DA223FF4CA222304CA222004CA222004CA2
              22004CA222004CA222384DA223FF4DA223FF4BA120FF4FA327FF70B75DFF55A7
              30FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A0
              1DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA223FF4CA222384CA2
              22004CA222004EA225004EA225004DA2243F4DA222FF4DA223FF4BA120FF4FA3
              27FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E
              19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA2
              22FF4DA2243F4EA225004EA2250049A01C0048A01B004AA01E484DA224FF4DA2
              23FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B1
              4EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA1
              20FF4DA223FF4DA224FF4AA01E4848A01B0049A01C0034980300319700003C9B
              0D4F50A327FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA2
              23FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B7
              5DFF4FA327FF4BA120FF4DA223FF50A327FF3C9B0D4F3197000034980300439B
              1D00429A1C00469D1F594EA324FF4DA223FF4BA120FF4FA327FF70B75DFF55A7
              30FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A0
              1DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4EA324FF469D1F59429A
              1C00439B1D004A9D1F004A9C1E004B9F20644DA323FF4DA223FF4BA120FF4FA3
              27FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E
              19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA3
              23FF4B9F20644A9C1E004A9D1F004C9F21004C9F21004CA0226E4DA223FF4DA2
              23FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B1
              4EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA1
              20FF4DA223FF4DA223FF4CA0226E4C9F21004C9F21004AA121004AA121004BA1
              22784DA223FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA2
              23FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B7
              5DFF4FA327FF4BA120FF4DA223FF4DA223FF4BA122784AA121004AA121004CA1
              21004CA121004CA122824DA223FF4DA223FF4BA120FF4FA327FF70B75DFF55A7
              30FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A0
              1DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA223FF4CA122824CA1
              21004CA121004CA022004CA022004CA1228C4DA223FF4DA223FF4BA120FF4FA3
              27FF70B75EFF55A731FF49A01DFF4DA223FF479E19FF68B24FFF68B24FFF479E
              19FF4DA223FF49A01DFF55A731FF70B75EFF4FA327FF4BA120FF4DA223FF4DA2
              23FF4CA1228C4CA022004CA022004CA023004CA023004CA123964DA223FF4DA2
              23FF4BA120FF4FA327FF72B861FF56A731FF49A01CFF4DA223FF469E18FF69B3
              52FF69B352FF469E18FF4DA223FF49A01CFF56A731FF72B861FF4FA327FF4BA1
              20FF4DA223FF4DA223FF4CA123964CA023004CA023004DA222004DA222004DA2
              22A04DA223FF4DA223FF4CA222FF4EA224FF58A936FF50A427FF4CA121FF4DA2
              23FF4BA120FF55A731FF55A731FF4BA120FF4DA223FF4CA121FF50A427FF58A9
              36FF4EA224FF4CA222FF4DA223FF4DA223FF4DA222A04DA222004DA2220049A7
              20004CA022004CA122AB4DA223FF4DA223FF4DA223FF4DA223FF489F1CFF4CA1
              21FF4DA224FF4DA223FF4EA224FF4AA01DFF4AA01DFF4EA224FF4DA223FF4DA2
              24FF4CA121FF489F1CFF4DA223FF4DA223FF4DA223FF4DA223FF4CA122AB4CA0
              220049A720005395250048AA20004DA122B64DA223FF4DA223FF4DA223FF4DA2
              23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
              23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
              23FF4DA122B648AB2000539425006E5E35005394270045AF1FBF49AB21FF49AA
              21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA
              21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA
              21FF49AA21FF49AB21FF45AF1FBF539427006F5D35006F5C354F6E60356A578D
              28E4549427FF569028FF569028FF569028FF569028FF569029FF569028FF5690
              28FF569028FF569028FF569028FF569028FF569028FF579028FF569028FF5690
              28FF569028FF569028FF569028FF549427FF578D28E46E60356A6F5C354F6B64
              33B96E6035FC705B36CF6F5C36C66F5C36C96F5C36C6705C36CD6F5C36FA6F5C
              35D0705C36C46F5C36C96F5C36C96F5C36C96F5C36C96F5C36C9705C36C26E5B
              36D56F5C36FA705C36C96F5C36C76F5C36C96F5C36C96F5C36C6705B36CF6E60
              35FC6B6433B96B6333006C6334006C6334006C6334006C6334006D6435006F63
              35026D6234D86A62315D6B6233006C6334006C6334006C6334006C6334006C63
              34006B6233006A6232756D6234CF6F6335006D6435006C6334006C6334006C63
              34006C6334006C6334006B6333006B6333006C6334006C6334006C6334006D64
              350067613200605D2F006761328E6C6335F56661322C6C63341C6C6334256C63
              34256C6334256C63341B6A60313A6D6334FF66603279605D2F00686132006D64
              35006C6334006C6334006C6334006C6334006B6333006B6333006C6334006C63
              34006C6334006F643500625F3000565A2B00615D2F026D6233A86C6334FF6C63
              34F06C6334EF6C6334EF6C6334EF6C6334F06C6334FD6D623397605D2F00565A
              2B00646031006F6435006C6334006C6334006C6334006C6334006B633300}
          end
        end
      end
    end
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Rentabilidade'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 7
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha9: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label55: TLabel
          Left = 8
          Top = 136
          Width = 224
          Height = 65
          Caption = 
            'Esta fun'#231#227'o faz com que este produto '#13#10'ao ser comprado, n'#227'o alim' +
            'ente o seu '#13#10'estoque, atribuindo aos produtos listados '#13#10'os resp' +
            'ectivos percentuais aos seus estoques.'#13#10'Ex.: Animal Bovino, divi' +
            'do em carnes.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel11: TBevel
          Left = 344
          Top = 0
          Width = 3
          Height = 352
          Align = alRight
          ExplicitLeft = 312
          ExplicitHeight = 319
        end
        object Panel3: TPanel
          Left = 347
          Top = 0
          Width = 606
          Height = 352
          Align = alRight
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Bevel12: TBevel
            Left = 0
            Top = 3
            Width = 606
            Height = 3
            Align = alTop
            ExplicitTop = 40
            ExplicitWidth = 530
          end
          object Bevel13: TBevel
            Left = 0
            Top = 0
            Width = 606
            Height = 3
            Align = alTop
            ExplicitTop = 37
            ExplicitWidth = 530
          end
          object Label37: TLabel
            Left = 284
            Top = 221
            Width = 107
            Height = 13
            Caption = 'Total dos Percentuais:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object AdvGlowButton3: TAdvGlowButton
            Left = 6
            Top = 212
            Width = 86
            Height = 56
            Caption = 'Limpar'
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
              1F90000003664944415478DAC497CF6A555714C67F6BED7DCECD91260D051151
              1A1D04C7169CD40C3269B5838E044141077D8188B3E401924E0AE6053A68411F
              C1DA0E74620615EAC48954D094960E8A44D3E0C93D7FF6D7C1BD37B5E0BDB9D7
              C1ED820DFBB0F75EDF5ADFF9CE5EEBD8F3FBCB0C2C25916581D9B902CA0AC920
              8B80A285F4B9929DC7FC53430B987D0880F45AD8364A5BE67AA8D67F046BA81B
              CC0445CEDFBB2575DDE26E075891612681287056CCEC2B088BE60608F8D70166
              1F199CC6C232080BFC2AF12DD226A81CE6DE878266E18AE5E1B1391BC0627F81
              E176B0B668CE86E5E13159B882DE7DC61390802491929084897562BC4D0C6746
              628D8A218633C478DBC4BAFABE93C4002F6683CDC151308A22FBCEDCAE298D40
              B488AABF7AD3FC28A879376B80B9AD16457E12EAEB86A0EF37CE41EFE148863A
              9D7593AEA5343A4D353BE447BF04A07A79170BB343F7A624F22C5ECBF2EC77EB
              76D7D8ABC00D173D7A252E8156A5C3B955B5C3CCB1CBCC1CBB8CAA9DC3F74BF4
              7C7349124278EACC908E149118374963BE5073944A944A301FEF4C12C4B8998E
              14317566703C6079B849F013930928F5C62416FC84E5E1261E709C8E3937782F
              F94E2E77736EE0EAB8C57609ECF89470013B6EA15D72121799B6C92F3AE6E7A6
              43F35B699B9D73838569276CB0E098CD4D9D6AB339E77F3247DA9DBEB8F4DA05
              DB53C7856D477AF49FC23ED6C9160BB3BDE2A0767269498F1C4B3F4C1C729CA5
              DA7940B5F300E2EC7B882BDDB3973F7FD1F168CF31C6BFBD2C23EDFFD613C9CC
              C7A07AEC64117FA646A79D645D256E4D42B7DA3DB2F925B2F925D4EE4D44B312
              B748D6B5975B1700A2E7FE02B7B12A542A5F30FFC93D005EFD72012F4E8D5B1A
              FF48553A0534EEDD7DFC4DD9D0342BF89859878266EF09CDDE1308C5981FAE41
              D3ACF89BB2F1EE3EF6EAFE72AF487F900F5A9FB1BA90C92E2A43661B6FB73E71
              7710CD7E83F6DBB5A2C84E76F27848DF65A0AA3FCD47B6BDEE46B76ABE2FCB7A
              CD100356BD066AA06E1355D55096D575256D600666232A4CD61BC340FBE795B4
              5196D5F5AA6AA8DBC400CFBDDFD5BB19EED6A785359AE62A4DFB74D2BBE5E0B3
              69DAA734CD55196BD6F7ED661CE00D8DB66EEFA86ACF2AB10A3C9B00F69912AB
              AADAB3D4ED9D61ACC5118A00AC24F1B5E01B0BE933259DC7C2909FB676CBDC1E
              AAF59F80BA47F5F0E8FE1900792B9C9FC39EF93C0000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = AdvGlowButton3Click
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
            Layout = blGlyphTop
          end
          object AdvGlowButton4: TAdvGlowButton
            Left = 94
            Top = 212
            Width = 86
            Height = 56
            Caption = 'Excluir'
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
            TabOrder = 1
            OnClick = AdvGlowButton4Click
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
            Layout = blGlyphTop
          end
          object Panel4: TPanel
            Left = 0
            Top = 6
            Width = 606
            Height = 57
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object Label15: TLabel
              Left = 336
              Top = 13
              Width = 69
              Height = 13
              Caption = 'Rentabilidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object elocproduto: TRzButtonEdit
              Left = 72
              Top = 9
              Width = 73
              Height = 21
              Text = ''
              Color = clWhite
              FocusColor = 10550008
              TabOrder = 0
              OnKeyPress = elocprodutoKeyPress
              AltBtnWidth = 15
              ButtonWidth = 15
              OnButtonClick = elocprodutoButtonClick
            end
            object eproduto: TRzEdit
              Left = 152
              Top = 9
              Width = 177
              Height = 21
              Text = ''
              Enabled = False
              TabOrder = 1
            end
            object erentabilidade: TRzNumericEdit
              Left = 408
              Top = 9
              Width = 65
              Height = 21
              Color = clWhite
              FocusColor = 10550008
              TabOrder = 2
              OnKeyPress = erentabilidadeKeyPress
              IntegersOnly = False
              DisplayFormat = '###,##0.00%'
            end
            object brent_gravar: TAdvGlowButton
              Left = 530
              Top = 1
              Width = 58
              Height = 56
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
                A200000009704859730000093A0000093A01F064924A000000206348524D0000
                7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
                1F90000002754944415478DAC497314B1C4114C77F6F569354827042BC08769E
                B781408C972241B92A4D0AD1DCA58A1FC426AD5F43B0947858A4499AE3B44B38
                6C2CD2046CAE3AAE10E450B333296676A3B7E7EDEEDD061F0C2C3B33FF1FEFCD
                BC9937628CE1216C0AE0FDE187E887521A00AD95FD16034610AD56B4176C8891
                75A0E81A4007E818312D15784746E9763827D2707AA17DDDFA62C109B609EC1A
                A54B626458FF12B02446AA46E9CFC02F6007688C125523FA168116460E815286
                2896DC9C96D3C804AE2AA57F026B132CE39AD3A8A6055705BE01851CF650C169
                5593C08BC08181E9BC76AFD33A180CBB02505E609BD2FB39791AF35C29BD1F72
                063DDE9C704D23F394E2F1542C61D61CE31F58020F8CECE603153EBEF6D97EFB
                8227D3037023BB1278773C5EC99832F742EB95E7949E1658989D61E365299E6A
                9665C1DA0B36F2822ECFDB2D72D1BFE2FBD9EFD8B89065436D8FC15CA17B27A7
                F42EFBB1B1212B0C757112682D25F4362B11BC303BC3D6AB329E8A9FD34A84DA
                AA4F393D34628DBC249ECDCEF0E98DDD9D8FA63C0E7E9C11681341EB159F7271
                2E0B347672758675F6AF6FB8FE63137E79BE406DD54789584FC7877612C1BDCB
                3E7B27A75CF4AF002817E7A8557C6A151F7F4C4FEF808D98D67DA306E17E716E
                1268C4B26775E01D8D1A3C081F177A9B1586BAED2A8754F071A18ED18E76B5B1
                37C68EAB1C12E1E1776613B36386DC4E0DE038696EEFB23F1ED46A37EEA4930E
                3CDBB4DA06BAFFE13EEE6AADB643CEB00AE41CA80BDCE445745A75A73DB2E66A
                1A789793E75DA7D54C5B6536B556AB69D67CD49A3A8D66D6BAFA1C5847CC5652
                AAC552C6CE591F0C6FEC0993600DA091E909932AB31EE8D1F677002FBD397636
                4708BE0000000049454E44AE426082}
              Transparent = True
              TabOrder = 3
              OnClick = brent_gravarClick
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
            object RadioButton1: TRadioButton
              Left = 4
              Top = 2
              Width = 61
              Height = 17
              Caption = 'Produto:'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              TabStop = True
              OnClick = RadioButton1Click
            end
            object RadioButton2: TRadioButton
              Left = 5
              Top = 18
              Width = 61
              Height = 17
              Caption = 'Perda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = RadioButton2Click
            end
          end
          object rtotal_rent: TRzNumericEdit
            Left = 400
            Top = 217
            Width = 105
            Height = 21
            Color = clWhite
            TabOrder = 3
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00%'
          end
          object wwDBGrid6: TwwDBGrid
            Left = 0
            Top = 60
            Width = 606
            Height = 150
            Selected.Strings = (
              'CODPRODUTO'#9'13'#9'C'#243'd.Produto'
              'PRODUTO'#9'54'#9'Produto'
              'RENDIMENTO'#9'10'#9'Rentabilidade %')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsrentabilidade
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 4
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            PaintOptions.AlternatingRowColor = 16316664
            PaintOptions.ActiveRecordColor = clBlack
          end
        end
        object check_rentabilidade: TDBCheckBox
          Left = 8
          Top = 208
          Width = 209
          Height = 17
          Caption = 'Utiliza Rentabilidade'
          Color = clRed
          DataField = 'USA_RENTABILIDADE'
          DataSource = dsproduto2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = check_rentabilidadeClick
        end
        object AdvShapeButton1: TAdvShapeButton
          Left = 5
          Top = -12
          Width = 221
          Height = 159
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000DC000000A10806000000ACE6D1
            9E0000001974455874536F6674776172650041646F626520496D616765526561
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
            702E6969643A4535424330324245303241413131453441373033434541413635
            3744393439322220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A453542433032424630324141313145344137303343454141363537443934
            3932223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A4535424330324243303241413131
            453441373033434541413635374439343932222073745265663A646F63756D65
            6E7449443D22786D702E6469643A453542433032424430324141313145344137
            3033434541413635374439343932222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3E4D7FB0100000A16E4944415478DAECBD
            079C5DD5752FBCCE39B74EEF5D9A511BF582845001844411A26330D5183730B6
            1F71E297383D2F4E5EDEF7FBBEE79417E7252FC5765C705C315D0804A2175524
            24D47B1F49D3676E3BEDADFFDA7B9FB99271BE185B36C473E1FE3473E7DC53F6
            5E7DFDD75A56188634FA1A7D8DBE7E392F7B7409465FA3AF51861B7D8DBE4619
            6EF435FA1A7D8D32DCE86BF435CA70A3AFD1D7E86B94E1465FA3AF51861B7D8D
            BE46196EF435FA1A7D8D32DCE86BF435CA70A3AFD1D7E86B94E1465FA3AF5186
            1B7D8DBE46196EF435FA1A7D8D32DCE86BF435CA70A3AFD1D7E86B94E1465FA3
            AF0FC02BF65EBEF4D8E6933FF1190A59D38938D595A7285FF0289FCF53493C4E
            3565298A5944BD0303D4E7DB545A5A4AE525712AB37CEA1FC8137F855CCF278B
            8FC9FB31F229A0543C46A1E590C39F395648392F24FE870AC4FFF20FD50987DC
            20A444E8110505B2AD1C05419CD265651458491CC5BFFB147A16BFB3343C7486
            2AEA5AE9CF7EFF0B74D1A5CBE98A1B6FE1CF0689FC806271877C3E7FD2217EDB
            D4977329E6C4299E4A90E7FAE4F179F20597E27C3F713E36CFCF398CCB0601D5
            A56CF2F8F78161974A92FC207E81C82B50C09FD9015F77A04F9E37964891EFE7
            68B0A78FD2257554525943C984CDEBE3F0F56D3EDEA242DEE375B22933D84DFB
            0E6EE3E7B4DF83F4B4E4BEDE5CB78E5CDFA344CCA1E953A7526D4D23553534A4
            CA4B4B160F0FF45FE9FA8579A5A5E5ED7C6F95BC6F318F8F0D7C9F1C27468542
            813CCFEB0EC260732E9BDB94CBE75EF3F28537027EE4986D53554D350D0D0C52
            96F7B7B6AE96D7C893E74DA592F25D9B8F49F2759D54296582123AD9334083D9
            3CEF7992D787E9224C905318A0D08E91C7EFD01DA2CAF22AEAEEEEA1305547BE
            9BE575C852556D0BC56DBE2A1F83754DF0CF552529DAB7F7083FA347B5F5F554
            56DD203492F7F2E432CD3121517945150931853ED9BC2759FE38CE6B9D2FF87C
            797EE77394E37BCFF59FE0CF02722941ED2D357C1EA6155E413F56CBD774E414
            0ED3A2C3F4954826284E4374F2C43EDAB6FF08754CBB84EFB38FD789F79BD7FC
            F64BE79D5F861B7D7DB08C1866AA1B7ACF74FDE9F14343F30226904422C10220
            A4825B60E1122387192499483291592C54E2148BC5EAE2F1D8E49274C91DAEEB
            86038303AFB805F707F97C6E0D9F70C7FBED0903BC43087DF506B3FCA7D270A3
            AF0F009B31D1153C2F99CD66FEDF5C49EE37432BB032B92C6BB1B868C1FEFE7E
            3A75EA1495B155505E5E4E1927A3AC9292520A8340CE914AA5C09C564D4DCD12
            A6E42583834319CFF35FF57DFF0966CE75FCDEC587F5FFAA9E11CC15F07326AC
            704179A97545E03B413C6EAD6365B689FFD6C73205460CD99A1147196EF4757E
            0891C5BD1F841DB535357F174B24AF672B8F4D4097C047B198323B3D36C1A0E9
            3C36037B7ABAC534824918540714771C1A1C1EA6AAAA4A3E2629C75BB668C692
            6C36BB9CB979792A9E62AB3D38C8E6E7ABCC783FE0F753BF2CC502733BE47722
            6E2DAE2DA13F0EBCF0CAC073E376D2660D9D23CB49ED6387634B2EA4C355258E
            0FB61B207A75206BAD62F3B730CA70A3AF5FECA6C69C65C343997FADA9AE6E87
            AEEA1F1EA47C36273E9AC3CCD4D2D20227949930279F43933971FC8D09997D39
            97FFC6E7607FCCA121F6757D5613F045C90985F9F0739C1D2366B2F16CAE8ECF
            6432F70E0F0F3FCAA6E8EFB11FB9FBFC319AC58C6F5376A87F19BB7E778CE96C
            BCD70AFCB41B4BB1E0B06990EFB5BF7F80AAABAA26E05D89E3D937CFE73CAA8C
            855FEC73FC37FB2CE77F74E5E9C9D128E5E82B0A3E45C4F533BD952F63DBF68D
            3366CE7CF482D9B3DB1B1B9B289D4CD2D0C010334A48C3C34312D4809F060D76
            FCE831097E2498E1CACACAA9BABA8609D4A15822CE6666058227C26078175C97
            5C576945DB51410598A0B85F9C6F6870E8E6E1A1E19759EDDD775ED64534B75F
            DF7564D737727DC79E6FAC2D7BC0B1ACB4CF9A19C11CDFF7D81F7528C1CFDBCB
            4CD73B38C826B5CF5ADB230FA625BF4B6C77617DAAF0786D49F065D674CEAFC2
            CC1CD570EF3BED14177FC36502B77E06EF1FC732432C656DF3DDD6D6D692E6E6
            66729921D804A486863AE146CB4670242E8C82A85C9C8993B59290733CA17CBB
            642AC916A32D811430671006ACF910F755C22097CB3171FB4A2B32818788ED05
            36959695E27B8DECE3FD8BC72667C2B27E97AF78F017E1A7E15D918E7F74B8F7
            E4EF57A4ED691327CFA2F68EF1B082257A8D7B608DCBCF55A0BEDE3EB9AFD35D
            A7C8AFA9A68A8A4A15BDE5E74824D394C9F65A154EE17782CA54CB91EEFC03FC
            F1D028C3FD1A6BB74422C5445D60461922C7FE59B62748B3E6F99B743A5DC24C
            2744E7B0E61933668C3095F8673015D974CC0C67A8B4BC4C88D1678A2B292D51
            FE1C6B300AD57D1498782B2B2B840107070645004093E1BC303749523456C4EC
            6C5FCAB1F8C4F3FDDB86870616D949E74FF9745F7FAF9A045A3996B03A9A2A92
            7F5993B66EDD7CA087A6CF9A456D63C742DD69660CC86593D761E180E7C47340
            58643359EA65E6B3598095B309ECEBE702634253D75496DDCDBFD61DEAF1EF08
            43AB4F3897C25186FB75633810445D5D13EDDFBF8B28FEB358FCE1E5D5355573
            1075842968B33F565559255A008C0466C1E7265756C2440846C1676C904A8E0A
            DFB17C951A4090C4E5BF39B623BFC364C3B1D06CD090384748EABBA263103164
            C2870F98612D1877626DB142D7D7AA63C9ABDD44FC4F983D775B3F23B3559527
            AE6AAF4EFE533A618FF3F8F7969656AAAAAA128D8597B90FE41BE16BBA9E4BA9
            744A3430FC4C089E422E4B1E6B7298C1F05B2B2A2AE4B99112294F3BCB9B4ADD
            6FF3AFB79115CF21F346648D32DCAF578431A009E33B9931F23430D02304FF1F
            F16F4A4A523722A2D8D7D74F49661084F791D0C61F4194A285F4BF60A0043336
            980A9F81D9A015C03C613C1493B2245D12312B3407022E487083988DA68336C9
            3241A75269F2039558E61352BA242DC223C9845E998CDF5E92F22FEFCFE4FF76
            989CAF31E39DF8FFD37808D2D496C56F9ED652FE3DDF77938582CBE74A516363
            A368E450DF476F6FAFA4344A4BCBE5FEE2FC3922B483BC06B88FCA2AD6E0BC9E
            83ECCF95B21687B683A6C6DF0A30ABD99A288967AF1F1A1EFA7D2B55FD25929C
            A4ACC27963BC51867B9FBD0252FE524BF318268E3C7FE051F8EFF87236D011A1
            9FB66DE762682130039B95F22F4C481027DED07C623632A17AAC09A08D6C6638
            041A9CD29810B0B20F49180E3E0F5F58B4866841416FB0C3333444156C6AE238
            9C179A04DF85C68086C477E153F9A1D27A8343592032EACA62CE7FAF2B2BFB5C
            5FD67D69C0A3BFCF87F46A18E5C72C09F888EFCA0C5311A3C59D8DE97FB1C230
            393C9C95EB48C29E19DF659F344F79756E662498C8317E2EDC1F1815CF9C6286
            4790071A0E6B81FB83364CDBB14860A44B4AC46C8EB15070CF9CF98DC0B5BE96
            AA6A3A425A638F6AB85F27A603D1A44BD9FF1A47037D5D1471C24F0F984C61C9
            DD89303F8E4B3291093332C38018C1680890C4E1DF782A9A07020493241271D1
            AA092642307682291981169F091F690268D8F2AA321A1A1EA6617EE305AD0706
            068341FB41B3A55803813971EF79D6CEE08861365F5D266A5C3B9DE6E3824273
            79CCBFB3AC3AF6E18C4B6B7A73FED7BDD03E947482A9B1D0DF595991B2CA92B1
            0F8DADA9BF2F9D4E552114EA648819A740BD7D7DD4C41A0E9AD5E5FB665755E0
            7BD047CC982244A065C5FC85B6CDE6A8C06FD1D6D5E9C8D7845F8B674FEAFC62
            259BDD43030335437EEEA3B154C9FF1306745ECDCA51867BDF329DCFC40CA24A
            3281F4FD3BD84AF6C3826096C39622CC48C991311381B8C004F0B9C080D1B7A1
            E504BB6A89B4B781597504FE25C40922875680FF869723BE1A725979F93B7C28
            683968C0644C11AD2369028BEF3327E776D9040C3CE5F3498AA1A25C822A40B9
            C06CE37B8AD526E2CB1BF285E50537E1EFDAB1D399DED9191C3CB8C5DAB467AF
            35F6D65BE9C489A3B465FD1BF4D8134FD00D37DF4A172DB884BABBBBA99CB52B
            4C6713C429614D256622BFD2FCACC81D4A44929F3327F7E0D2306BBA24FF8EB4
            8898C7FCB644BD923C6B059B9E5EEFE0FDB1C0FDA667C78F012000A44EC209D8
            22B04619EED7288A42E9CA064A7800FE6699A89D77E337CAE5F29387FAFB29CD
            CC06E28FC7605682D954F4B138A208E64920D0C08C00460C249092C73998500B
            A2E9245707F38DFF166ABF12440AF0B18AA426240A18B8BE50A6989F7C23C383
            43C204F0DDB288880A66D3A323870FD1E9AED354067F8B1964EBD6AD94612D3A
            7EC27830A8F3EA2BAFB0A998B3216426764EA6FD07F6D3D089FDF48507BF4087
            BA07D937CBD3E4295399D173C2E060905E663E68393021044C093F8B30784C09
            1A30A198A27C6FC343EC3D563A045FD03C371813F7092D2FD1DA20EC18D3E83C
            CEDAF840363338942B0487F901F6BB5EEA208BBEED969F3F453097C391009708
            A9FF808F3DCA701F1C8E930D2E4DD7D140FF3136F5FADF95E958538DB561DA31
            71231002C203B32414BB886F0302049A24260C1953C482E0838E08969421793D
            204106444A41FCD06ED04C3857193333349B683DD688D96C4E11109FB3ACB44C
            45FED8543B7DFA14EDD9B59B8E1D3BCE4C90A271E3C7D3A68D9BA8B5AD5518B5
            B9A585264D9E2CA17A68A73C137C7F6F2F65D85CBDE4B2CBE8B5575FA3B8E5D3
            76D66E60B6D9CD71AA4964E8D5975EA6C08ED3CC1933220D8E408F9887CC38C2
            F2B62DE62C98AFBCAC5C0243F0E3903B84E9897551E0ECB83CBFA7FDD6B81632
            837D5D73B7BDF5E6DC0D2F3E456ECF516A1A33965A26CCF42A1AC61CADAC1BF3
            A443F6B38964FC9D583C998BC54A8FFB6E8CD7A4EFD78BE144D2502844A39C6B
            25C5039D56393722F6819B8727523446D5756329387D88FDA72C3945E625FC2E
            FE2D01A272AC52D13C3093E07BC5B4F48D6BD8960B02D39219A615B485044EF4
            CF6058683C986C05360F0B7E41D612A6A4172813137E1C08B4BEBE5E42ED83CC
            A4DBB66DA3AD6F6FA5BE9E6E9A357BB6F87BD3A74FA3A69666AAA9A9A5C5975C
            22FE1EEEC9662619CF4C887B3C7EFC38AD7EE619BA68E1429A3A750A1D397294
            2EBEF4122AB7737460ED6A2A633B394CD8D4D7DF4BAFBFF9063308521D95EC3F
            96B2EF55A952076CE2429864588BD5D6D6EA00498EB53DFB98FC5C88D48231F1
            39CA6CC4C41C1C94C00A182F282010342CF7B6FEF537E9631FFF18D5B23150CB
            864179F2756AA8F941ACA5ADBEA3A1BDF3C196CE790F764C9DD3EF1DDFBC2755
            537BA5EDE7FA77BCFD0CD1B28BFFF3329CE47BF49B69AD9E17B32E194F8D779C
            E4B4442AD1C4BE4E792852DF3EE57AF6A67CD6DAC2BF1E659328CF527B1C9B00
            07FC0F1CCF01DB98A4CA9A36EAEF3E4285EC80A0464C2080B54D1716E6349B57
            63C78E1522045C0B096A03FD1233510B9C28228900B830B42DA668056B05C95D
            B1960033C18CF4A019630A839963AD864861F79933C264BB77ECA40B175C44FB
            F7EEA5B6316D34EFC279CC60D53463D64C2166681B31EDF83F080224C6497CAF
            9830FAB7BEF10DAAADA9A159B3E630432B13B0A7BB878FEBA3F6A624DD3CA982
            1EDE33403DBDEFD0EC4B6A6930E3D119BE3629548DE4DEF6ECD92B9A77C3860D
            F2DC77DF7D9798AE397E0E6854D4E9C1AFCC020C10AAC4388413FEC53D4210E1
            79616E66334354CBF7D556E5487A21331C50EF99900549171DD9C79AFBADB768
            C2FC4595D3E6CCBFB0AA63FAD3679CE46FB3107BE33FA586039320641E77684C
            69D25E9E4ED8D795A55217B10955CDA64F89F251C2B302E678BBE565FD0D35A9
            437BF6EEEB292F498D5BBE7CE9D7FDC07D9E8FDFCA6B3A1016D55119860EDFA7
            4C075D565BD7C1A6CF31CA0C9C51617882E6B0F2B9824F9D9D9D92AB92225040
            AF049AC50CE6A95C1A4C4BF82C46C3490E0E5A4EE7E6B086F83C572888E92961
            767E1F3E7498CDC45DB467F76E9A3673261D3B7244B4DE654B2FA3B11D1DB468
            D122F6C932D475B24B981880E830A5A2AD88668278C5947362C280608C954F3C
            49F575F5F4E9CF3EC09AD715A007823E9B376FA6D6C593A884356875C919FAE4
            EC7AEA8E57939B6033D84ED1A40913249C9FD40CF3C8238FD1C30FFF88D22588
            9A5ACCF0353477EE5C09D454B26F267E1A9889EFA9ACBC4CE28FC8DDC9F3B340
            8A5B0A1B3A9CE993A264A4337AFA3DBAA0D5A25BAF9B4EB3264CA2BE5C8186FA
            872961E5A9B4A581E052677A0E2FAA4A943FDF59DFF0209FF2EBFF29184EEC72
            D16456BA2C65AD284BC56EA94C59579524638DC260DAB40231C2BC304C176A18
            4FC0529309AE924DA559FFFC0F5FA1CF7EEE732C39ABFE8C4D882F1562F6AEAC
            1BBCC3871ECB3B742866597B59B8F5C663F699986D77F3C9D961E11526CB0FCE
            D1ACE65DCCAC019D7F24B8305D3C49F563A7D2C923FBE858D73121D6D298956B
            1F3386B66FDF4EEBDE7C932AABAAE9D4C993E2CF353635893FB369D34621D4B1
            ED63A9BCB24A7E875F03530E26E4962D9B855966CF9E251A101A233B9CA1254B
            970A219EEA3A45175E7411B533832DBE78B1F87940ADE4595B20012D0975E031
            91E74A2645ABC147039309001AF7EE5AEC2B96D273AB9F9380CADD1FBB977A7A
            7A256881631A9A1A45DAEDDF7F8882540D0D0771EA6CAC61CDDE421B4E6568CE
            FC45C2AC05BE66C8CC03E6FACBBFFEB2044276EEDA4973E6CCA1556CA2C2349E
            387102337B05D5D7D64AA25BCC67CB8E040D7CC794684A5718179F1F3CB08F16
            7494D1351775D2BC89753467DC188956C6CAF91CD56DCA1CEFEFA3BE304D5DCC
            A8CC82E949C9EA2F7EE019CE1070C2B6EACB53F69D25B1F0BE743C9C954C38E2
            18930E5F8FE4A16CF9151219C402873F10D44120126EDFA14312997AECD1C764
            83A7CF9C61A5928929EC994CC177CAD2B6F8457E685169D2CA5856D8EF87851E
            2B690DF2C76E10A6B24160F733939DC985E15069213C91F7E8582A6E67BC201C
            C8C59D6371DBEEF57DAB0F7C6E707B20605B87D57FA13E2BBFEB9B3B2848D650
            6F364F43033D0F3DFEE4539F7EF5E597EA1B58C3C1BCEBE3E71C376E1C55D756
            F35A96526B6BAB44315B9A9A99E12AA9AEBE4E08B0823501CCAB8993260AD300
            FA048D3493355929FB41C91215C93C7DE6B4A418C0B4C8D3214DE0E9D401F25E
            26F820A1785F69540146EBB540DE0B4C08F373F5AA67E8B39F7F5018073E6105
            335188443CAFD775375C4F07DE7E9386DC04A5F9197BF8BCC9F2463AB9E36D11
            BEA00BDCBF8930428B3DF0C0FDB47AF56A9A37EF421102FBF7EFE77B44E4F58C
            54125456576B90F6C81AAA348632794BF9193399145555A4E9339FBC83565CD8
            493E5B0CD97EB622D877F506D93CAD4E138B7DF2ED0AB2D99C4D751DA5B0BA94
            F2B1C4E10FA44919EA120A1067CCB1675596387757A6E8F6981D8C3318434BF7
            9A78B700886234A5E94887B24100EF6CDD468F3CFA28FDF7BFF81FB47EED5A7A
            EAC9277943F6D19469D384082B79B3E15F14421DE2F6DC1276AC4BD86769C6F7
            49996C14174627968ABCE1718F422714C60F6376589F8E0DF8BEDB9BCBB9270A
            097BA717585B7D2F71C81D0E7B8687868F5655A70EE5C3D055929E043541EFFA
            A677F9FDDD170BDAAE8A4DA3FABA9A522BA86979EAA1FD035FF89DDFAE1FC726
            57493225042955018E42FDD3B4E9E253C17C4AB0446F6E69968254603C00FEAD
            11F3948430B1820A63A98498EE73A2901DD010104EE81903FF0FC11098EEAE27
            896F84C9A1611C6630C36C31ED03E2843FFED1C374CFBD1F157312E743F0C40A
            559D1D7CA966D6C84F3D7A9C264D64E6F1CBC8899750B730749C060606459BA9
            FD65A671E0BF66A8B6B68EAEBBEE7AA958A8618D76019B947B99B159A80A5DE1
            1E11B104E40CE53B01A06C58E1980A26C535140EDF3FCDF7BE3F574263F83E62
            95EDB25EB697A7BC5542545A47596B8086ED20E7B537AF1D2E6D7E7BFBD6D7FF
            7AF1FB9FE114418139D04007CA8C4DB9C92549FB8A54D2B9AC3C4957C56DAF54
            419A902F899F1526170222633606913623295054E715279F25E8D7BEFA55BAEB
            9E8F08D1CC629363E6EC99BC7103F414FB10DF60C77FC68C1974CD75D7AA5A30
            84B69990415CB80E6C7F014F09A3FBD234C630B69486006E144FB0D2752A59AB
            56B258EC4884B428C5BE41797539BDF5DA1A34481AB8FEE69BF7F4F6799B63D5
            15FB1309276F3BEE49B001F3A01386B1E110FB1F7A49BEA6C3A6573C0CFD9341
            E0B132F5D92D09BC743AC19AD40FACD04FB2F6CD3A56980FEDB0231DF71694A6
            E8FAD75E5A3363E6F4A9B46CD9E592DF020143789531910D6787457B5B4C5829
            0D56CE1772B286782E612C809681BA47A81C56016061CA909680034CB2986E30
            24A53BBCB688EE21EA07C20F10A2D77BA1F2746985A7D4C20F9FC7F9D8D5CF3C
            4B77F35E8C696FA73E364311BE97F03C40D2DA674495794D6D3D1D640D7D6830
            4FA7FB4EB1366EA286FA063AD97552F604D84DEC3336094C08AD8C600D6AF9B0
            2B152C882E646D874437AAD97D5F5549C4783D80C92C843941AB207083BF5996
            2701A383C7BB28AC4FD0DADDFB28565D474D4D9D903802AF1B1ECAD18193BD07
            8682C4D36732CED71B6A6B3716BC2ACA7B3F9BFD12FB95988B819F6241737D63
            556A16FBC2931D3BE88CDBD419067E49A8BDA1801CB1ADC1042A7C6D475139B3
            8951B44D47DA4C044ECC449656F04366B14FB270E142EAE60DF65D247973C2A0
            B77CF856F14FB6BCF516EDDAB19BDE78F3756A6C68A08E8EF13479EA642100A0
            1A4068125890663C7E744D109EDC13EE4FE4872DA6AD60150357CCAEB7366FA6
            3BEEBAB322971B9E178B85F3AAAACA44A384E12013B88D7D64ED82760124F569
            3E29151F8440990005C192978976E593DF0B6FBCE54354C9F62EFFD9B3620556
            309EFC127AAE0438EEB8EB6E05C9D2F707A183F3610D5D6694849514064BA462
            82E837C20A5A3DA641CDC65CB544A85952BC89BF875E205A4292ECF91C9B60A5
            BA11D1C85A20D92E824A883B2E6176934A4090E295975EA6ED2CE06032A2EB97
            A55B3A28CB3B43C9545A823CA869BBFADA15F4577FF957D43D98A5E327D8944D
            96F039CA289D4A6B189727C7E2FB8343439A59532220E01BC28C805F8AA008A0
            5B7836687CEC17A2971030D266022910BE57E02E912C9F3C65063DFAC4BFD12D
            2BAEA6E7D7BE4953A6644E35368E3FBAEDE0DE374F0FE4D6EC3E7AF0C58ACA09
            DD6DAD1DC47250BA7AFDAC0D8B7E690C27041060F1D317678FEEF8F2136FBEB2
            E8BE073EC35A28CB8417A8FC9984B06D8D6AB76551CFCEEA1BC20844F286E108
            AC48988D190A6DED006F029A61C73BEFD07D9FFEB4982EA4A52FE98212A0EA41
            8C575DB3420A351B1AEAE9E8F163D43FD0C77EC67E7A7ECDF34288F06DE65E78
            A134DD4179880201C72306C77D8864B7032132989AB8A7BEBE3EAA66A7BE9DA5
            B944FDA284B57D569536495BB984226C266048696104E0FCD8DC7DF98597A8EB
            D429AB91253C188A8924C6C41F73F9BB25A9127AFAE99574907D96ABAFB9469E
            13FD48E4BE48D58BC5348C4998DAB67455B823BFE338A7E87E1C52D643A09129
            4EDC51EBEC2BAC2509CE3227E6244CB4420ED5E249D136C053C24F835989EFC2
            BAC042C315387AF4083DB3F269FA833FFE23E9A102A605C3C2D2482501B40EE5
            D93D5E4324CFE173DD77FFFDF4177FFEE7B2D6BE941B3954DFD820E90E5CDF76
            944086E41E18E8575A14F7085AD00C870A8258DA91354DEA28EC309BA048B2CB
            B3F33A0CF39AE2D98058B96CD955B479DFFEB52BDFDAFCCF1515E1F1A776EED8
            3663C282AEEEDEE36E756583023E3BF6CFD5152CF6CBD0684C4C95E565C9CB1B
            D2A91B1A2A82BBBA2A4B52070E1C924DC1033B51F4C852E68A6E5A83E0871087
            966A8276E77FF1E08648428D4A17698B46373175CC57FFE99FE8F6BBEE92A426
            AE83732ACC9D262601C1BAD4DBDD23B99AB11DED34A1739298A679FE7CEE8573
            41E892BF81447EF5E597A59A78F2B4A9E2FB1D3D7C845AC7B4D178F699EAD887
            40CE0B1B9C633F04B9AABDBBF7D20A6602B916B460186AE160EB566E96F45734
            496C859C886924073F33840D1FF80233FE3D1FBD474975A0F82174C8929FE1BF
            AC79EE39FAFC6FFD96487BF193F4B9E206CA0541C504E5FACA4A100C21CA6EE0
            C7B09915D7411D84C3AD227F58D65710044144CCF82A2060F2F7046B4636F571
            5D80A265EF62AA021CFB84E08AF87EFC2F90279FB8EF5352AB964584315005AE
            EABC8E081261AC822F9FE3426DBCC67535B52C048FCBBA20B8D2C416087C2E60
            2349AF219E192910A93CD7425069E7BC4A452062AA4D65E54F3293020626253F
            494AF809A13DF87038E794B9731E3BF8EAF1AF0FF61E6593BC544CED240B0DA0
            73ACC2CF8FAB8C9D5FAD46944AD857D6973B7F6B87A96990AA05F629CACA2B44
            8A76779F6113801F3AAD1EDA98399288D539248284D5CF090691E24A6DCA9976
            6EA2B500D6E585C7DFFFFE2B7F47F3E6CDA78B2FBE980E1F3EA4A2985A139A1E
            1DC566AA9497F006A81E1D81545D8379C7B4B509116123E62FB848361D3D407A
            981191A07D87B528C2E203ACFD7632510105317FC102F607ABE8A16F7F9B7EF7
            0F7E5FCE85DBF4B5367674445534BA6F8FF8A4101A9A6862BA7A196DECAEB8F2
            0A9A306952546C29C2483FEB9E3D7B68CE9C0B6802333D12D6C5356FE638F3AF
            F8C32048C0BEC030F0510179D26D16642D35D31906C4F168286B12E36C168BB9
            48451687E07CB4FF6C520022D82CD566EF07DFFD9EA0523A3A3A24418D638C46
            849634FB2A55E60557D61B7E686D5D1D2DE5675FB77EA3683DC8A540D7C20953
            920A1C615DE4675850BA8816BEA162C69416304AE845195A59DFB8989EC2F0F9
            ACEC634559058D6F6E9C92CBB045E25791E7E6252DA076EB7D0E5E76D96B6FAC
            885F5F571A7C2F97CD94228A05C98C5C0D40A74B972D13624BA19629423D0491
            84B7344379815A585B6B3EC52496E47B0CB1A27B3292B72FAE79819E5EB992CD
            BF3E6A6E6EA1756FAE65629D20C4038906C60D7464D34843F333360DE708EC98
            4AB0870A4D0F9F0CF707692D887436813A98C03BA74C16467675DDD5C597F6D3
            A1438785D9F6EED92BE77AE98517E8AE7BEE11A28DEBE72AF6437D5B45F72091
            855974B81A6FD46B3DF4D77FC3FECC35D1BD9A70B6D1CEAFBFFA2ADD7EE79DA2
            C1CDDF8AC3DEE6D984090DAC0BEB0A6D07B817FC46E9121D08930712E20F4698
            091A41CC4F5BAE81703F12CE5282A343EA82434414506B3585A92C48D064C3DA
            7574F2E449FAF8A73E29E6AE98DEBC9F8896E25F5816660FB1BE586FC752F8C8
            2136373BD9E2A8A9AF13F07119FBD3D0AEF85B4C57AFC34DC177011143B00516
            060239606A4F77924EF13A42E2F97A5DE41824F705906D8BE6039A06DF01634E
            6FEF5C313ED9D038ECE7BB5071DF37E04A3C41B7317AFF319C09EFD79527EE68
            ABB2FEB9B7B7A7148469CA3892765224D576D60E75ECE340FAC169850D6F6B6D
            6250DE468319C4BA0996188240152F360A50A3EF7EE73B7486EDF0FB1EF8B4E4
            9F5E7EF1253A7AEC98201710025FB86891B485C379422D5515B23D1199AA2A00
            C0CC1B5766966AFF3DE2232A6651C80DD47A590AC7281A02E168486568E6A953
            A7D2D5EC787FE36B5FA75D3B77B2F33D256258A385A294863DD217C43024EEE7
            ED2D5BA88F3527F26130B9CCF7F0FC08A5C3C43D7EECB844E8F0F7919CE48856
            2BEE3962CC72DDD94B341C8853F2678984AC03726B38574C755F96FB91A8667E
            84A12DED23999FE3DA9F95B542D0C35751633C2FFCD80F7DF8565D29AE18040C
            A30216AEAA1A4F2615D85AB41C45606308D552F6971BD86F3B7AF0A094FC1861
            403A30868A085CBBABAB4B3416846AC0F70DD40BB4277CB3B89F14060BB5B0B1
            B450519F9198DE684501811E2A644CC3D21537DFB6FBF0C9FF1D0743822EC4B6
            CE52807AC09F138BFB0B653855A461958CAB4DFE4D899DFBF4F050BFDA60661E
            2C6403DBE0D8082010CA99504EF042CDD512B39840B491A8094C993981D674B0
            E193AC65E070BFF2D22BF4ECB3ABD8AC9A4B77DE7DB72AC1474F0DBED682C58B
            8430B66ED94CAB9E7E9A5E646D73FB5D7750136B3E136133496953752C5ACEB1
            A31444C46CC5CF674C34BDF0BE16028196A03189B4A9FCD783BFF979FAEB2F7F
            99DEDAB8913E72EFBD94CB6623B339D43E5DB1D633E6207C8B03FBF7D3B5D75E
            2B4107C1FEC1BFB31DE9A085D7AAA757D1DD1FB93B8A14166B37C3D0C5E6B398
            CD124554459AC839C13F4543A1EDEF6CA7B7DEDA24A1FAC5975C4C278F9F105C
            E654F65767CF9E2D888E44A220A064986D821A91750985118CC98997A7DBD5FD
            F0FB3F10931CFEEE309B925283A7D70CF706B0315AF3A1411182204190126697
            FB45EA056063D4D231D3A52BCA293738C43E9EEAC702B35E52148E8A8E363535
            C93960C28A26E6E78450420A00DA3CB0B529AAD30F2A111F8FA2DBC645418413
            C19559933B3EB5F5C8BEFFE35B71BE09B5AE5EC8CC5D35863230410B6C8A5B15
            4223818EC49E57867BB7F66D2A986FC59ACAAD6F96D9990F77F7F46BF0AC4D67
            7A7AA88D175F2289A192D06846DACF4C435AE2C475C0C09C5A707E26EC6C5BDA
            4F73C46F7967DB3BBC112A12F9A94F7D8A264D9EA2EBC272519ECC43A084BFD5
            3E613C7DF6C107D9EC3826EFEF7CF3DB34FFA28B98211752596979844E51CC3D
            42BC818652218A6712EAD08D31B341DAC4336FDC78DC19299D81A90209FF89FB
            EFA73FF9833F64466FA6CBAFB842958A14F5933C9759F0F340FF803CEFA28B17
            4B145788C474C662663C7DFA345DB1FC2AD69C53D93AF0CE3A57743FE7684D98
            8E95E5E5F22C886A3EFFDCF3527776F125972A0B8005D4D83163A8AABA9A9960
            800EB056C1FA222AFBE31FFE88EFBF91FDD38522AC42ED33C10C43C431291141
            47351DE27F37B180E962A6BD8E05860A88244483496D1EAFB198E1D89F50AD11
            A2CAF08FC144695DAD6E8412D23BD89F9A867A3AC6164B57D749361F6B84A9F0
            9D40B7EC3B71E2A4E027A1B56D2DF48044910A055DFF17976A6F83C38C496E4E
            067C684B46041EFF3B61EC9839CB165E7E7F4F3EFE8F71DBFA09EB01AF41084B
            76144AABDB7F26DE71BEF4A52FFDCC0C77F0CC30131E9DF5460B9AD6EAF86FD4
            C4B2FF7538A324104A3C1005049E2FA1FB4EA00011AF8ACA4ACAF366A03ECA48
            F7289F56841401D39E3871824EB136FCEA57BF4AEBD6AD1344FC654B97D29557
            5D25A17724315DED03F85A428AE521D1B09CFC0E29BD6AE52ABAF1E69B69E78E
            1DB477F71E319D103EAE635310E730C11538D3A6E4C7D1BE8D4CC481F9055F92
            8AB48796124E11D1FBFA58301DC2D68862223256CF1A3EF055EEA6D8C72A6618
            3C33023D285BB9E2CA2B45208C1CA7CCCD7FF8BBFF4DB366CEA296B6D648F39F
            ABE18A99195601205040DD3CFEE8A3E40045CFE6D83DEC5FCE9D3757841F0422
            CC3BE33F82F92E9C3F5FF6AE8ECDFE9DDB77D09AE79FA396D616D93B6816116C
            ACD104DA25914F5718E6C5175EA4254B9708640BED18546E540942044E10AC41
            60A49ACF739CF7166DFAA40191F6738759EB4ADF157E36988BD0C08098A558DB
            EF63FF78EAF4A9AA6910DF033A2D634D90E6010DE2DE4D45805C1B6D1762CA75
            80650533544C61478197CD9A9B3C1D18110C5C535EBEACABC77DD40F63A76336
            D035EAEDD86C425B6CBE929EBA54DE46D3C7569E5F0D973FD3754E3412EDAFD3
            E35B4B1AFEA4BF7F50081D9FED3F709066CD994D15E515EA621AB1EEFB79919C
            4F3DF5144D671F05280F2CB0F15F40DC30BF101478F59557C597F9D0873E44B7
            DC7AAB301BCA3C72BC29C88D8545664A713D9CAF7D32D1442CA5300EA98735ED
            04D67853A64C960D79E5E557E8476CFA4C9D3A8DAE629F0B9B0D33070E3F9C6E
            308BAFCD3030105ACB41134B82D9F2CF8AAA46D13D5F994E9EBE2F986D1B376E
            A0DBEFBC8BF208DD5B5654167356B259FF8CE7DFB973171376AB366947DC06AC
            1F34FC69F659A74E9F1E994FC51AB358C3E105E2C13DFDCD5FFD151D3A78886E
            BBFD7689B8E2DC780E1321C4793CE333B39908BFDAD6A67C47473B4DFEDC67A9
            87CDCC75EBDEA487D84AF8D0876FE3BD9BC666E610B9ECFB41DB21C1FDD4E34F
            D0AC59B3D87D60330F15D658431D58C2B3211A08A158F00A927E91A256A6897E
            FED7542B483E91B50FFAA1C0C79786487C7F758DF534B1633C3DF2A31FD3473F
            FE31D1704864F7A1170B6B30684BA465D00417BE6D46A70F0044C0CF62F2231F
            27395F928010FC75B36E960633C3FCAD4C5BA5D3DB127FBAE364E64E9D22FE77
            1CA9F36C527617319C91F6D3DA26FC791878B5053F145BFB209B24D39828EA6B
            EB814F943B368109D3ED090BB361DD06BAF6FA6B4593C12FDBB87E03BDB0660D
            4DEC9C2428F265972FA369BC8131EDD466A59B704E724842F09E17E1F57CC374
            DED92622B0837B8E1C111FD248502CEEF2AB57D025972EA135CFADA663478ED2
            1B6FBC4E03BCD9C8C95CB57C391D397C585AADD55455532913D3BA37DF10898B
            84EFC73EF90931134D8ECF7046A82BA411240022E3E0810352B6223E532E1FE5
            012D9D9B8B1525F7496318EBEB6AA9635C87CE396A3483F4FB8FB199B7852E5D
            72A90A7248AA40F55B8C7CD0A2F38101366DDA24819B79F3E6D1E71EFC0D214C
            082A735C3182276692F9BA4A1C58C3D052DD96F33AC8B470E122F6995A2420E4
            B22F3377FE8574E2F871297D417DDC0ED6844B965E46DD3DBDC0EB490A00DF95
            560E45C2D07795AFADCCCBAC300F207C488CE3B93299616138989410923027CF
            B0D0BCEBCE3B65DD76EFDC4D633BC6C87AF733A355A2DF24A29DBCC6B0AAEA1A
            1BC8F4E84CC693C288B896E95EA6F2A161516A48CD53C0FD21910E0BADA9B2FC
            76378CAD3DDEEFFD75A8E17CBF92286565496A0434CC37525B5DB1BCB2B2ECCE
            7E9676595E3844D82EE48D80598250EE48C42FA61D4D658E2D5CBC58724D20C8
            F5EBD60A33BDF3F6565ABA6CA9683E54F5E2C161EF4B6217C9185B4923213668
            0A6D9E799E815D8564A2A20A69A11006203E10425E5A0DC42334049ADCDC78F3
            8724740FAC25242EF07788901D6686DBC50404C2B8944D58F8373398F9110878
            E2B1C724FC8DA8A831994C159E80ADF959ABD9A47A76D72E9A38699234B829E8
            6637469ADAEF223661A2EDDEBD9B56B0FFA3B4973E9E0903123C194FD315575D
            A1B4A5F67B7DFFEC1C93EA0999A0E79E7B8EFEEDDBDFA6DFFAC217E4D9A0D186
            87DDC81731FE5D501408B2B5DFE76BE48E6DAA33C4CC5684D9DE3E96FEE8BFFD
            31EFD906FAFE77FE8DAEBBF10609AD3FCB66F03D1FBF57B448A8850098147B97
            63E68C87496D86FA51EBBABEBE5E16BC8DACA97262BE634F245FC7CF36303428
            340073B70BADCBF97EF07714B87EEF3BDFA189C727D1F8891345E020073A9C19
            12E44A1F0B6E044010983302AEA6AA46BB0D96EE43124615EC286AC5FD6CDBF6
            36F5F4F649E578C8C2BA9F7F3E7CF4D81F8D9FB36455603BDB29FC29DA6C76EB
            F9F5E1F69ECA90932A316F7BCA989A7FB4AD70C2E95367847160524CEE9C2C9B
            23DED039B92F93B885EFF4F8238FF246ADE29F1B2494BEEC8A2B4473045A1202
            1605A947DA7C13134F23CB7D9D5B0A3432220C4D1F465F87A14D9238493FFAE1
            0FA9B9A9999A5BDB46AAA02DE537AAAA64E58BC191AEADA9154988FE19F32EBC
            902E904AE61A9ACE1A1BE52F70BAA74E9B2638CC1F3FFC63419B80A1F11D5717
            7B2289FBC20B2F88D6C673595A03DA45D1C873B1A1B83E2A171E653F0BFE9B49
            03E09960CE3EBF7AB514815E72D9125907275A4F5B3489C2A9AAA01412F30F3D
            F4107DF1777F8F264C9A2884551C212DBE76B1FF1705077425AE44F1245D1344
            3D330DAA07FEDCDA37D7B290DC4653674C1721893D45D0076621FC4429D96146
            07F360BD557A24106246D0049AABA9A9514C6F05724E0A03D892A32CB055D2A8
            93FCBB2580348B990DCF8BBABC67573D43F56C6642F8A4D2496A6C6CA6C1A101
            B18060BAC2DCC40D4330A1270BCE632C0195C88FD1CA55ABE8B39FF90CDFEF10
            1D3D7A8C1E7DFC717AFDB5D769DFBEFDB4FAF935F4D8634FA42BCB9CFE8EF6FA
            35854C0F0585819F78CF9931F3FC6AB8A15C2E429294A5E3E363716B11224230
            23D1CB1E3029D5D62D14B340085AB07A79091EC09C44990CCCC443870ED1673E
            FB199AC70E3A8833A7734A26291B85DF350399FA2B95300DA5F762189AC0C188
            19595C980A628330A8676691D20CC756810D69B8A300BC22C9B5E67503D506C0
            4C87C94748887C44D438FE81CF7D8EF6EFDB27C40D28D982458B841191F87EE9
            85353486FD4D601CAB59339A16E3E712B6613633D5060C05A90E735A7C107D3C
            B4D31A66E04F3FF0800A10C1C40C42EDDF9948A9F2D976EDD8414F3CF104FDD9
            9FFFB97C8EC4B1698B578CB0098A605BC53EA0399F082C29BFE135B714D8C068
            40C58F017D9AF7EE9FFEE1FFB0F97D4404524F6F8FD6A483B2CF06CEE668AD6A
            6AE3705E4986FBA1CC52C86BED6FAA3CCCF5A139E17A54B1C03BC83E2862044D
            4DA5D29AE1D60FDF2A3403867AF5D5D7E9FAEBAF63ED542FEB8667465EB69FAF
            810826CD0CA5BF8A89460AE3F33D1D655703B95ABCF137F8F3703D702D99C3C0
            A6EDA9132727B6B58CD78D937E057938651A92D8F75569FB4A2F9F2D3970F088
            10F605175C2025F6795ED4218DE4C6C282495079ECF2BFD820F842BFFDBB5F94
            BFBFB0E60529DDF7C4F7123CBD6CA89854E1D9F56EBE68395FA4A7C08422C0F3
            086CCB2C8A92D48144B2EA1BEAA5D8524DA551A16D575FCFF49D8FFC9873227E
            62BA6A0D52ECF760635B59C0748C1B2795D45FF8CDDF649FF372C1505EB46821
            D5D5D648A40C04544CE4C53F5B11012B2287B30FFF11CC6D9E0392186B396FEE
            5CF1EDA46110C2F0815A13D174DA44C41E208A89BC9F098F1757573845A90B27
            4A7F846799A4C6B72C20CB08A6B646FC4E0A8DC9AE4A98E0AF7FFE373F4FDFFA
            C637656D01332B8E4A5ADAF181600B434F074F54F04C6AD1A4BE2D10F030EE03
            E001440C891400199A5D82496874A4CD50D57CD6A339732FA0A71E7F924E9EEA
            A2DD2CF8C028000AC0EF53E904D5E67CE5CA9522046EB8E14611C892DC47829C
            D7116E4F7B7B071D3D76548409E80481A053AC6511D9C5336FD8F4D69457376C
            45EFF7CCBB35A15ABE64D1F965B8DAFAC6687B9ACB0A77E573FDB2602D2DCD02
            AB025C09901ED42321EA87E1EB095B49D19798B98097FBBD3FFC03B1A5A7F202
            F50F0C8A449248A5ADAAAF0586A589C810A8A7F365706E63B653641229D43D05
            4A6B29B44B20E741C72B244F67CE9E1599B34210D088BA239644E374A2DD84F5
            8BFD1A6840A78830CD718E0EE400210FC2983471127DF4631F8B243992CA54D4
            B8C7A43FA2C474514D9FE48A98D0000783BF551CB984D67AEC9147F81966ABDC
            57908BD01D724F9A8940A8CFB01F8540067278033ACF3922289D7334996A2D77
            7625467856225E40BF96CA85C22F95DEFE5221A1D605691424945157F8FDEF7D
            8F1E64A123B30B12A92815E41415B7C24C44D90F80D708D3ABC8A01FE542C150
            807E25D1E027E144A53866A008044F4E3A43070284C6B3FEFD57BE2209EE575F
            7B8D06060768FAB4A9E2A220898DF97893274FA6575E7985AEB9E65A5923B484
            F075CB77A09DA6CD98267D2F9B5B9A04178BC838F0A63147615C93E9B23A2755
            51E6249399C0FFF97095EFA90D4796F962A8205A6772901D9A0F0D627C2A0441
            204120C9206190A804E1D5D6D5D3C33FFC91D8D69FBCEF3E66B27EEAEDEB91DE
            8530FD1E7FF411F1B5104256237159BEF2E6E410AD720BBA4BF048758001B2DA
            3A4F86E3CD3D80911D1385D2F55A6BD8FF91624A52C977213C6D1A29E67A17D4
            8C3D122E8E1009E7B43A90F3902AD787AF87CFB059019D3D54D110FBD9D5EA67
            87F0612AEE3F70801AEAEB232D012103C681AF04090E2D12E870BDAAAA50DA0D
            F7B66FEF5E09E4DCFBF18F476DC98B85844184441A567B34A6C56058D4492988
            08C42057280A58A921202AF7082604A46A166B1B549BBFC6446FE072520DEEA8
            6B3A520DA2AA144EB14652F02EC5B860025840CA22F1A52A034C0E5F14EB8A7B
            84992DD525A02BFE2ED604097AF88C489100930B66DCB57B0FBDF2EA6BF43233
            D8EAE79FA7471E7B9CB66D7B870EB1E9F8DC73AB7507B498C676A21F671975B4
            774871F1962D6FD30B2FBEACA2E97C3F9EA4085C5830BD4D6D1D43D5B54D5453
            DFFC13EFF3CE7049C1DE25A9A6D459C16492CE641483C1C6451F0C918C9E1B01
            8DB1682823D9CF8E280A10F1B0B0E3919084B4027C68C3FAF5922BB375594E31
            2C09CC6512C0660845A87336421F5A5A85D1649511B88D74E30550979970A0AF
            4F9969811AABE4E8DABB4027A949275C1CFD0E83B3511BE79A135164CFB675EE
            28A10A5271CFBA8CC8107A71A02462623A1B6D02C98B52903A662C934281645F
            CF6BD3D6D6AA204C3089E5FB454CAB8F039C2AA693B9667A69F1B58BF34D11B2
            42D7E599BF193F39A6D32A46C099CE49068D212DC5F5FA08E69285C5876FBB4D
            82470862940AB42AA99B3BD92218604D98F5AAADAE11A6944EC8FC2F9AC9C26F
            EED7011753EF686B131F85A4A67506840EF6F8F4A9D36249218052C3E6BBD198
            7DBDFDE25B23A98E600D6AE090537D9685EE3BDBDF9135AAAFAFA3CAEA2AA125
            4493114F40C5C7202B0212011B53F72C8239993F70E448FED0E143D245FADCF7
            7967B898CB0CE30D5BE576EE5A988F47587A8819A141A226D70589830DC0C202
            1BF8E1DB6E550D68F2398104815880CF4BB3BD3D6DFA34DAB163BB6C92D2682A
            BF8610BEEFE924B3B6FBA5BC5E03604DB98EAD213C8E2911D104EF69BF05E8FE
            E29215D5E2C1A780CEEE8B528C41546687F2638A93CA4170B65921E890830769
            F7AE9D72FF266DF16E11C011ED483AC736A205A1FD575CB32282B905DA5F4597
            E29B6EB9450D553C87D9654D6C057943C4EFAA2BAF14E96F9EE5DD46189FDB94
            C85C0BC5BB7E845AB1220D1C9A7E31C50103C3ACCE48312BBA6EF5F5F4D0A6F5
            1BA8990584A9EA5623B21C9DD8764473612024F659DAE869B700411634799208
            A2A408F2D133B434358A901ED67854657A1644D03736D647116C179D974BD3AA
            09153333D20535EC8BC15C07F0011DC3F6EEDD2FD7D9B563A768B540E777551A
            C4D11A59E338013573E2BB58CCF92E4A9AE827DFE73FF1CD666222E1B48489F4
            05602C48E6E953A74A375B3020882E9540B16146366BCB962D924C86E4462E49
            86011A22E0FF06FAFAE9DA1B6EA0B56FBC2EA81229B074B476043241C37E4877
            09065319C297EEB9C6D90FC211D350171D1A066B1B3B465AA3194652097B8B12
            7ABC9248FE782CCA3519DF10E73785B11262D68C6DFA7018002DA261ADAD6344
            5AA31E2B1BAA367170FC612E99025153C52E95C68998006C0DC266EBD66D722E
            197A88C24E7E56E494563FBB9AFEEB177F67646C149DDB415A4531A161426DFE
            79817F96197C6EE5C0B988144FE7C76C441FE3BA54479BE746C0D80A322A3EAE
            CCD5C63C354BE5E9508700A8DE55575D455FF9DBBFA5CB91D6D03E9068A940B0
            D73A20A2FACEC03212EBC351DA5210FFBE6E46A4DB98ABF4802B9DBA90003F73
            FA941C8FBE26AA964E01C56FBEF966FAE6BF7E43FA9600505D2263AA024AA7D8
            8F648178CD828B24BFF9DA6BAF4BB7685C1BE907C006D196BD87E9B2A2BA5262
            0348E8DB4E62A863C6FC7FAB6B6C79A3BCB6FEE9E181BE5F48D7EEF7C4708D75
            B5944E58B3C220530B33105206C942D4580D0D0E09F4AAB4342DF9B0B28A0ADA
            FECCB3D2DE1A3E9623C58E0A6223E3915249612E2039801E282DABA00B2F9A2F
            4587C6B4248B74B7282BAA5D53A80A474B795F5787DB513ECBD2D5CD920BE4DF
            F7B10600840C61FB61C9F9289312C48D9F3D8358814F12AA5E1BB0E107589BE3
            5F300F3436B4088E45BB396858543C40CBC05C4567E2AFFDCBBF48990BF25240
            401C3B7A4CB4F5EC0B2E908D3D71ECA8E4E8162C5A4807D8C4EE629308840D6C
            28102178EE0307F6D3C2850B84290FEC3BA08B6255558599F1161625AE71DFCF
            F11A7FE4DE8F8A94977583E6174D3902B83DB755DC591A57729A23950FAA9356
            480A483F129C527EB1FE1DD7873F173AD28305EB52C79A08916A198258561A95
            F0C4E249F11AE172A89CE0887637F845446861FD6473B9083563824308C04D9C
            385180DBB83A1A0581B600B4C0EF354C930B794D91663A71EA946A7BEEA9D97A
            F089E7CC992D481668B47DBCA6425F96B24E6A6AABE52D2D3278AF32856070F6
            95B7DEDE3266FCAAEED327995E067E2A68FF97C27056AA9CD2497759AEEF8C84
            F7610FC3F9840D0EE2C3F44C4B9829250E34A04453A64F15334FFADECB782444
            0979A398E813FC19E05708877FFB9BDF14AC5FA02B9095F3ADA29226F06042CE
            513B065D5D63462E8551E7AD3082ED206883FCD4DA37DFA4336CFBA3472342C7
            5B7903A04501D2ADADAF655F7293688B6953A7484F91B7DE7A4BAE839EF9F04B
            D05A1BF7849F111C390D86E36B204A07890CD312D2180D4B6554544AD56C2107
            24C32C9A9B24D050D7502F0EBFEA93E1481F8F31AC85913BC2A4196891C3070F
            D3F36B9E13E2DAB06E3DBDFCF24BC214809B5DB26489347B85D5806002101B8A
            60756B03341712133F10ED9530818F73DA0C9AC089298095560B26418E44B7A3
            8A7B039DF333F9555F339ED927939AC1BA2378B479B382A099D440328EFE2139
            D170431A0902CD55D001B1849E63A7E6CE292B0285CAF817F403FF18427B22BF
            017C46C16912514F617A5B9028588BC3CC7012B89264784AFAD5A03EEEF1C79F
            1041805A4968383493EA39D34D133AA7F664F7EF4D0D0C67BDB2F2B2A1829BEF
            EEBC68E9EFB64F9EB56AA8BB8B856DE1173A8FE23D315C18585622EECCC9EA08
            DA9831AD11BC0A9B85AAE70ABF423402A4D992654BC504903278DE80C65A4568
            2058485623792191A731E1E6F43C2F634FCBA6EBB0B6981826CFA37D3B4FFB7B
            C67FB475A98CAF7DB980FF8ED148C0466EDFF68E1427C6658393D431BE43EE0D
            4E39EE7BFCF8096C869408821DCD63975F7DF559237B2FD70890C8A464CD04A2
            92F6747C8F175C305723E75538DB303EFEAD65299AE06B4964CF73A384739467
            644246D764341E02414F9F3E835AC7B64A6500AE09B3F83413D61969FDE60BC8
            39CB0201E530CB975F2DC20CA692D11EA69747DC76222080D162516326A9F50A
            23463473E83CDDD52A9950FD37D1035245431DC9A9A9CED714F977AA95A00AFF
            43C86CD9F4162D5ABC98F756AF9DA4047CBEC74454A52FA5341A630B46840F87
            7401049742F0C7757DE3B0FC1DF180CACA0A7661FA84D67AFA7AA4FD3B3422A2
            E3F009175EBC58826F478F1EE5BD1CC742EA15A14198A3E8CC0C0DF9E4934FCA
            E010CC9B983C7FF9AD6D332E3915C4639E6F27FAFBCE9C1962737638700B743E
            5EEF89E1D8F7A8B1FCEC1415952CA186C626556E810EBA4C366F6DDC2C101B3F
            F0E89995CF508E17F0EAAB578879B299FD39486240A6C68D1B2F3F03A308B3ED
            F1C71E63A9B8841EFEE1C3826050C58D56847830616D317BA44707289BCE4ADA
            467D10D17B4346E1BAE203E21A2D6D6D74DDF5D72993D25366E4F8891374E9BF
            0AB1276574911375CF428EC93EC7F7312544B66E0311083C6C0498ADC642A97A
            3E839A88B42E8832390273136CA74E40CBF57259D15065ECE8EFDCB9839E7B56
            7514864F07AD09CD8C7BC6FDC0C402930162065F10C06B1FB036A06D4245C809
            9849761855D2FF64857E78160386FA674B0B2FD57BC51B61445D9DAD6ACC12BA
            6ED18BDACB23B80A6B0115178758DB4F462B8A30AB2B0F9435E2C8308F980434
            2C0D70907EFF58FFA4EA4B03370542106B81BF21CF86EF4A3D5B52812AB0DD40
            A9804901FBC2BEEDDDB38F165CB440C0DA0271EBE9A5D7DE788356AC58C16B57
            225A12C5B5209D3113A7AD8D9557BFD850DBC06664860687953FE8F91E9DAFD7
            7B623896886D6E6EA85E4C15D612881EA1201426CEB7BFFD6DAA675369014B37
            48148FA51A7C999B3E74A3B49F5E76F91582A087EFB671FD3ADAC4C4826CFF34
            F6ADB0404B2E5B42CF3EFD0CEDDBBD472A06A4A788659F853889C4B110BB0245
            ABA69E7E34F34B188D7F467D1488E2B9C79F95D4C3B22B2E979EF9020F0B54B0
            0192560611D2C8AC004B12BEF659FD415C9D4A3041199912AA13EE0852A8C08A
            15E5FECC1451578235CAEF347D154DA44F55245B1221F37D574717A533AE3429
            1ACF4229D43D59A0F93D3E26C1FE90199D8B7B5BF9D44ABAF94337CB335BCC68
            F04510E1132185FB0AEDB38A3A8B5FBEEE43E94B6BBE302A3731CC31822EB184
            B154FA85A2F157925E71E2823C31B579854228EB6C988734944A0105286A6F57
            C2DADE0B5494355DA28E95196E8E0A8CC1244740CE6840F1FBF9E23009A58319
            3902B4301DDD80E18489EFB03686CF8DEB01FE75C9259708E41073E8E0222015
            85BAB8F6C9737E088B021D3C0787FBA3B4D2F97CBD27868B93D7CC122605BC19
            CC2410D457FEE66F69C575D7D2C73FF9099A34A953A4BE25CD7E54294E2289BA
            2CD60ECC68A891C3DFE1F75C7BFDF5AC1137890D7EF2F8718142DD78D30DB461
            C37A9AC9C7A12A1CC86D47974E90CE3D15E7C542C9D3E922511D9504E3616C11
            4CC8471F7E58060382005086D3C87E545697E8204A66E97C1848AD00DFC70EB4
            191B48350199663B3A546E4C5A491738AA44E8AC29A3A84490F9D6B9480808AC
            CA9876FAB818CC299D47C41A2A935935BA0151C23C04EAA4200CABB425C2EAD2
            744857102038010244D35A3314CFCC7DB354563F825119B44BF1E0114F8FE555
            7E9BAFDA389848AE3639FDC85C8FC93146E8851AD05C3C3D41349E40D42A69F3
            A64D0245138D1853303C3F7475A23B8826B642D8996ED96032CC6F7374B356F8
            91302955DB3B47981B42BEB7B747FEAEFA8B3AC260105037DE7493EC2F6A3211
            25AD66DF195D9BF1CCF0AFD7AC798115448C6A9B5A8F8D9D3AE30798982AFD70
            ED9FAFDFE4F9F5E1BC429B15A08ABA8AA5AC4B5FFFE7AFD28DB7DC2438365B8A
            3DBB256082EA6E0CE60B643E5826F2118C5F9371552399A5572C133CE50573E7
            D19FFCE11FD29F7CE94B12A183038CC8A24FAA7A9BC2911608B6D610D2601684
            64AB729750576703248DC824822237DC78235DB870A134DE893093514B07DD9B
            C30CA6400A02CD4D917495489C8DFEE3A2C1F4CE68C2D6280D4F359F954EBF60
            5CC7FE8952194717A8C25774E26A0C2FCEE14BF3572F5A0F0C13B13421036284
            BE9728FE840F6292DD4AD3A8C86BDC5689620807697DA047FF9A3A3AC7093498
            3B1EB5CA8BE606E8BE93D0B0722FA6BD846E426BB40DF25A96ACF348B171A0B5
            B45DD4C22190EB2A1720D41151743153330A547508CC445B7A87A80189684F8E
            BEA1E63C6A8AAB4FBD9E2A18052265242A6A29816DA91B29E8BAB901362DF36C
            4EB6B6B452E79429346972A7549A8B15E3ABE2E1C05233E0366EDAC87E5FAF94
            4A4D98B5E87F5555D49E72DD9CEC332A4432274FD1F91E56F6DE9026713B8DC5
            85F38A62BF3B3E72375DC07E863137607303C38607DBB97B176D7BFB6D32A36F
            8B9BDE18D02E709468F473FD8D37D0E5575C29793B987BDFFFB7EF4AF042C721
            C5DF31CE7C4180CD6194E3C2E2E772AA381551D295EC183FF9D8E374EB6D1F96
            8DC0744E94D8BCFEDA6B726F144196343AC5534D48B3BC7908EFBB7A80051014
            9288D790333D3E4B3196D6B2315B4503A11DA580128E3F0B0C10532FD205F9BC
            38F9C008A21857A1500A7C9D8C94854093C1F157C5B44ABB22FDF0CA8B2F4AF7
            63DC8B3291032D64D433AB5EFFC466F865E2E3292040219AB1202DEC244F3992
            AC97447448D1249A731B1849F326337C231C09A2F85A0B0B82857FCEE65407E6
            82FECC40C0F0194A8C106D0423A04A3CAA8AD7C124B80ED211DAB235EE32A1CD
            6B3F6A77001F1B7303D498E098F8D6F81B5ADB492A40F7CAC19A9D3C759ADE7C
            ED756A459B08348862F33BCE5A0C69835047B5D1F6FEC9279EA432365D1BDAC6
            BFDC3973FEDFE31E9289141F9B629A295505A8E1FB90E1AC209305C1AF5EB55A
            EAC3D00EDCD59DAA14CA5F358AC1A640CB9D39735A69A2221B394A5CB309836E
            51A6F51AFA301E3E7050FCC0BE817E7A8BCD1220583CCD60C55D664178922ED0
            0B0562C266BDC94E32A264F77DE60171AE1116C6B590BE38C0E7061390AE24C0
            7DC18C858F64A43A8E472E0D44EE19BFC52AEAF1E8D89119685ABEE1FB56114A
            45257055EFFA98AEBD3ABB664F09532479D59CB5115405080B11D5C6C6263201
            C4989EF4627C48E9E1CFC4759C197313FBA6305741EC603C080CD5F5CC89B498
            082B04A1A8A819AE665031C94D721B7BE88F0451E4FECC3A687F3AD4DAD6049B
            02ED0FDB1A6B291DC2786D2EB9EC520DD132032047E064AE6E8D2885C99AC948
            47754907562CDD2A3DD466B0009F730531F37352EF961564FF60DF805C0385AA
            52C92240059583C49AA182FBA5975E52B591E9F2FCFC65377D31198B67F3837D
            E46686E4EDF1BB9C7D638BACF3CA74EFAD4D9E1F248EB0B95059592ED368B048
            7082615F438DE772AA74BE8C370318373173200DD1B18AB54FC251FE1824157C
            1568008490517C38383448ED1D6359E3ADA47B3EF211818D6143E10F8944D492
            D024AB4DB98EA7AB93B10130C73EFE894F48E4D0E019B1F1D0BC0000237A3661
            C2443D4C420F00D14976834C2946AF238DA04A81EC485307DA2C33D5D17664AA
            A90004BE9F9491B729F14103E9B5196A1CA0FA3DAFDB86E37A601210B519F08E
            E33AD8EF1C8606443B784991E02AB99166AD39477C5CA96E20344C72A3F3AB88
            A12B3E998A10FAD16C0585D4098A3E2355E2538CA7946A7927EAC615055C6C92
            7515D3D61A29F711648B14F52A73113ED5B16327A4D35A05FB9786E90A02A172
            F5EC8218B94305A10B00D7C155F97C564C5CF8DB190D5050B584AA4D3D104BB0
            64000DC4DFA502812D87450B2F95C008F091102CE23387AAFF282C1BA04A4A4A
            D2545251DDDF97CDEFCFF0EFE13915DCAA6223860EBDEA6FE7C1A97B6F0C1773
            4A80284157275B97C9A89E2585B37086D217A2B95946E1A237615C0F968006B1
            3596111626306E52FE8E05E20D99316B363DBDEA19818A61AA275C734CDF5491
            BAE1B34654C90C82508DD28519F3FCCAE7A47E0B1D7B912394C24E4BF930B8EE
            D22B2E8FAA9F0DB305617096CF1535A28D24B30A40A8E3715D4FFE1E8F25E519
            808E904119E148AA402A861C5566A4B486AFFD3065BE15720A6B092817A2A429
            0D7902D3C22C866641DE0DF71CEA9A3461F440A160CCD00C308374D0F2FD68EE
            42A84D6D0107E8EAEDA856D06859DDF682A24A745BB5753785A23A08242DC161
            CE036A16579378601A3B1AF2954A291C2BEE27D0E072532A84BDECEFE98D0413
            FC284FB7AE8F3B6A1603727356A9A3661F2067470A56864009520052B796C94A
            3F4EDC0BDC14048AFAFBFA65EF3D2D2CA5BB185B4566969DED28C0F4101F5B48
            1668F1C517D3F677B6905D5AB77E3893EB41C4FC27FC35E039D9B42CC51A8850
            F8C59B98EF89E1F8666C689299132746512B999E9234F54F319D08F704C6F4EC
            33CFD2D8711DA22560664A6D9341C3B37970FCF8513A72E890302CA4573CEED3
            0D37DD283D45165F72293DF4CD6F4A252E163F88F246BAAC44CFA1C6B9E10B62
            620EFC366C88A77DA220A188008C07F3F4E1A79EA6FFF2F9074770953A512C84
            1B06513451CCC028AA184612D1B4E38B8541A4253D5F33A44E2CAB2A8550840C
            D84FBA0FEB025A0121FB41849691E47E42B569830F09ADFADACBAF50339B9429
            99D5AD849AE9DE0C6232806E94ADA0612BB4A5681D5D905A8CC6718DFFA9A22E
            7CAF45A3BEC80C2CD463796DBDAEE7F8B8607AA33D499747D9A19A111ED7CC69
            5A5D38664E5B458584F55DA9AE4633A7247931955AC9FABE3E9FAB520CCC5C12
            08D2833BC06C4093B8DA72894B7B73579038BE065CE0330001DAC78E95B4528E
            B523B4BCE95686BFA3B50234E11DB7DF4E5BB674767FFFA9D7FF5BE6E09100F3
            C07F8AC31431A204D04AE21194ED57E6C3B1140F77EFDAAD173988866C44ADC6
            B4DD9FD3983848A693274E44C4AA82130A3327D2DC95C968EC67A83E8230A1D0
            5AEFB11F3F4263D9BC9C32750AEDDEBD47984C1A7C16DC2868605A17E08DCDAD
            6DA867D351B5FFF675A0C11435E21E1B581242321E3A7040D5BB9930BAF14D20
            637592DDD2A06568277CBFA0A5BB0C6A445BEE6C46CC40930E106DA8EBBF20E1
            0DEA1F448B3542221FA623EA03CD7D1B21659814A67177B71A2288B039DA0142
            7B83087D5D9682EF232853E073EDDFBB478252105C784E5812B84783E4F774C5
            0398C80C2C89AAE7B5D96C18D108058D87969FCDBE2AB894ABD201A4FC654F8A
            34637ADD542419F7078D0E2003F2B0E3268C176652E908E5DB9AC097EAB4AC82
            660234D7D7C7B10896010EE7E90E6808A0004132C42E07B49FA3CB90E0C35EB4
            E0227115B21925CC116491D67A1A9A0657E2D8B1A3675E7F7DC3DDE1D0C0A694
            3740897CFF4F79F7453FE3B8B415FC024779BC470DC7C423F221A9FBC263D145
            EAC217C1908782093678022B6A696DD6DAAE106DB0A79BED80D0C7B5B72B580F
            DAA6E9E005DAAE8171DE7CFD35D658B7D1F7BFFB5DAAAEA916DF40B44358D475
            CA55BFC3279C04AD4BCA54CC31A1225C2F888E4C568818F8BA190016F3063634
            8F94B718D334A1E70D80F19436728BDA3B285F4AFC33A40E74694EA0678DA920
            4C3052D11DB5BEF3A3DA3AB96F54ACA391692AA193C57ED1882E159687D642C4
            4D5ADA4953A23CA5507950F04420C11742C94918E8AA08FECFF4E597A4AFADAA
            D1033D32580A3C35B3A8FF353838B0C9D6325C825D02E78ACB738B39A5D30D06
            8686730D0F0CA9885E3CAEBB62937C0F98549934AA8344188279F0C041891E4A
            FC93CF07869192AD5842CC3D2041209C1B1B1AE53B5E4641BB10C944358599DD
            2EC1A4841AE2810A0A3C9FCC87E03598387192DC1F0415D038783A044A44E3B3
            00DBB173C7DED75E7DE34EBF401B634141FBC2FF210C230556F8AB8F52FA6E21
            09C88EF496D0BE8299F905092D5A887F467816C430B6BD434C45109A391EC464
            605A43BCC807F6ED8BBA3C81F0860699793A2753F7E9EEC8377961F5737A328A
            72E2C19CA23990CF63E2019E6E07FB7C3199D5AD100BBEEBEA042D0991A2973D
            5A15A0D94DA8238CA03657C3796446B5445995B69166A3E8CBA8A7C548683F0C
            7454D516C254C11B5DA18DE7CF29A1833500DC0A66A269F2030123584EA026BC
            201AEF54D0B55D06970947DF60434355E22EC9F48C0095FB22244D4A46332924
            0798D3988A66AC93B9676845681484EC5D1DB4903C56FF80A42F709F0383AA72
            3F339489A6D988F95B545327C87EF6AD41E8780E09FEC0AC0E46CC30F54CCAFA
            E8EBEF8BAAC44D74527C58761F10DC824B827B93B609DA7C35DF87B307003398
            4F021A7125A02438C5BF1F3D7C9469AB5D9A0C85450129088E984EA66FD8B061
            DF33AB9EB9AEBBBB6FA3D27AD67FF81DEA7F45AB5B3FFD7DDE198E9C781592DC
            6010498EEA4250D2A17303DE35264BD7C913B477F7EEA21E17A6C8CF897E3E7C
            E448E49788BFC01B32668C6A69878A04C073F6EFDF2FF54B90DA18F407669276
            D660BABC72EAD548239D2F42404388D955C768D30CD75DF7C61B326B00F55362
            CAB1ED8FF32A1F4A4DE9C45B022A7ACC55542D6DABC183C53E8D214EC35C0654
            0DBF50FC0FB404F7F4A043DB2A222C77A47C860504343DDABA1F62FF35A52B0D
            80132C68130CE614B4043ECF6486A4AC69C2F87132B2C934788D6B0854147DD5
            66350407CC539C07DA056BA7085531BBA723BF103E465B8B96F094CF649ADEAA
            E1916AFF7C6D064B981E82A990D7F799555034045B8A1A17299AB044AB9BE6B2
            C2E47AB68029E895960C8EA3F37F2E954819956A1065EB804F5F5F0FDD7CCB4D
            91492EF93C525DDA206C40575BB7BEFD977CFCEEAAF2343F5B8ED229342EB2FE
            836F6672CB151004801E3FED7DDE4DCA74BAB4CE2F2B8B1C7F140B46C3D649F9
            4386981C5E44B42EDBB071BD92B8C0D4A5F4AC37FE8F4942F5EAE0BF8108CC10
            0F2C1EC64B6DDCB0517A6520F179DD8D37D25EF61DA7CF9AA9111423984A487F
            34FEC4B9A031815441823BA613AEAA559F324F600A637CD5B3AB9E9546AEFDD2
            7A41F749F194040D4D23D9B8CA01064C543136351D3D88DE98C42AFA568866A6
            C1B4361A4F92BAFC1DF828AE6EE59E8AA58A30A1BAAA3B509AD10CA544D4B692
            CD6908B4542ECDEB6689D088EBF6E432B953EAE3D4BCEE179E7B9EAEE335C6DA
            A133996AB8E3472D054DCB0724E611B07074125942E05A2B8916652670F99DD0
            26B524B5FD9132271531CC08265192D7088E81C8F52015F8956022B32E657C2F
            53A64E535DB25C2FEA638237B42A04297A5296979609324945B61553C31541CE
            4D503996AA14E9E57501581ED508C777EC9454D2C58B164B9D2122D46AB2524A
            4C70082D684436FD13FB0E7649057704BFFB19ACC470E8941CDFBBFBF0BF73D4
            47CFB30FC79C06A984E9A5625AC1DFB179D30A235DB18CE692F2F896266A3BD9
            AA085240B73935480333BC9209D10200BB8E4CA22131CB8674244A7A86B0D482
            6F82FE1EE51595D436B64D39E87A0A27821148B2C37F430906B4838B9A3C012F
            3B82B8C0CA8119105606E21EF7832ECB714D80066B2813370505A1A6AB484B07
            6D12A960830A0CE0BA664A8B611831AF9D509E0D1A00262C88D468F4286CAFA3
            A3A64D024533D36C6A1F372EEACF6891CA7BC975E57BAEE4A2644C2EE606E884
            3F227408D2C4E3AABBB1A42460925A8E301BFC1E083BD4F8395A48C167466259
            50277AAA0DEA1A8DD9EEEA89A42038E30E602D4A31A5463F9FD1F496068F0F0E
            F64B250026F5A0921F137AD0A734C33E15BA2F4B5B8DA1013A73A69BCDFA5ED1
            E8A9DA5A0187610D511A954E6724A99F601F37EDA614B42DA5D64ECC425EAF53
            27BB68C99225F2FC989AE36B781D02673031FB137D32B4E5F0B113E34EF6616D
            DCF7E875E9A9B0BFA0F4C07BAB16F068A038410C67381FE86080465498C00188
            01660F22958828A139AA67AA8CF57CB1144B25FC0D30A04B975E260C21C8153E
            17EAD84C8B3748F8CB99313148FEDE8FDF2B1ACE75D58C7083C73B7EF4989C6F
            DC04DD9B1F66A04869477252205E7CC730F2138F3C46777CE42ED96C63DAE118
            F846261822446786FAE956EAAE695BAEC736498D97A324BB34B3B1D52450570F
            1E0461496E086D230A2A2820E61D9B5E12E904DE309152935EF50826837A8096
            8EEB4118A8452B2D4D9ED53B05CF021F0C55F6A68990581BBED29E406608D48A
            8F95A2D864320ACE80D99C448C0A4379F1CB42DDAEA1B87FA6EDA8864AB69EC5
            1E68B350F69E94C64054121609A289F0F11AD2AA30D644646594951D93B545B4
            117B6CBA2D4BB7E8645A25F4053A98D0AD2B6294E667A21ED5250C8C87E4F6C1
            831B650026F2C0088AA00111AC023C172071F5F50D729FE891B3EF68CFEE9AC6
            CE9F4872FFAA5EEF2D0F1778A78C3632D34363DAA1366162D3DD36D028059939
            B66FBF344D352177F15F7C159D1B3F7E223DF3EC2A69A08AE3319E68EF9E3D34
            65DAB4686A26DE5870B45247E535BA358993CE66A9A727B2B4B33F83C009DA7B
            4BC0008D43EDB448D0BCAEE552A989BC8C7B7AE3F5D7E9F0C1433292C9041BCC
            CC6B10AA38E1794F497447E1E2B1F1A8440041002581EA8178424D13056816D1
            321000226540CD83804F302180293A274D12B819DAE1C1849E337B8E04700E1F
            3A2CA6EF9265CBE8B5575E91561593A74E614D3E565203D21F444731919FCA6A
            F0C010FB711327778AD5A09012095DC9A084017C4AFC8E7C9DF1ED0C22A62041
            9E3CF939D518D596567D9EF82CA6A709A2B1AADF88AE0F7455D7E78416304648
            E119C16CC0D7765456E900920233ABC00D5B354E5C091A16B2F009A56BB21EFF
            65F094793D3824E0E741947A78382B3E26D614793D308E34A4BAF55619F888EB
            227D02BE8750C1750F1D3A2066EFD677B60F8D9DBC6075EB98710263FBC0329C
            E5E6FAA556897D9FFD7BF7D262B6A55D1D3A47B1635C37833192160B861E1398
            7BA624956A1E63727890842D635A8520D0931083348E1F39226DF5962C5D2ACE
            37D20D207438D713268DA7A757AE9245BD60DE3C616640C2C0E07575B5D4C77E
            C18913C7A9B1B141B77B1B096B23AA0426C98A1964D3B4E9336403EBF8FE727A
            3AAB69B317E6C328257082FD84016970648BA98320100806585210F3B66DDB99
            690ED282850BA8914D9ABDBC2E48314C98385E206F38069FE3F8665E93567E5E
            5035B4C1B4F40C9DD8F584C037ACDF10CD2A809979EAF4295997EEEE33347BEE
            5C69547AFCE851319567CC9E29FE0ADAC5A13445F289B64A3F989A3F331E4B3A
            1DC712A275653A8DD6D2BE0E5EB8C6EFD3291DE05445D36AA691115D45BD464C
            798F0AA684A25D54C4554552DB5838622FD55C087E5C3B94E8EBFEFDFB54A415
            A6B00C9CAC11068705833DC1FDC0A7F3C5FC1F507858BEDF8E8E7102D182EBB0
            E8E28BE5DEF033F2819854847BC13AAF5CF9346DDEB481DEDE77E2C9AB662CDB
            7BBAA7EBE71E15FC2B6538DE87212B5443D9D7AF5B2F6539A57ABAA6A03674BF
            7F69478E01E69AA1F03BA4A030AD3D922C16880E13C1E2C5170BE204DD749F5B
            BD5AAAC25568B95F3092BEF1759890162D5C48CFAC5A25D20DD257D20E3AA800
            6DF3F20B2FD2CDB7DD4A719846BADD5E0C6887804D335DC90CED27EDF9DE7987
            89FA3435B7B6C8B41C444241C08884D636D6B356EAA475FC9C688AD3DCD42466
            310A17C7B2B66E6A68A06A66D6C9AC89FFF56B5FA32B962F974A66F4F3801FEA
            E9D9D668D966308AA2290A1522E9CD886198CFA231F97927B17F89FE2A2D2DAD
            22D9C7B68D91FBC73A9631613917DAB4FFE0411DA8C9498005FD5A6066857A08
            87E97EE5447D2A5DDD2D99A2EA73305956378C854F6E9A32C9E04984E0B54560
            7C194416433D8805D740B454F550C90BE615551E9D9361BEA9796DFBF7EE9339
            EB8055B9BC87062081922235E12729D7A9E2B5C439CDAC725816C5D34611F11C
            181C160184390E18C8084D893406C65495E8411D5BB66C163A59B9EA9981337D
            99673AE62CFA622E3B7816AAE603C97089F2C6BE6CF701D10818208F6EBBB7DC
            F661D10085C074E6B5CD36C9E222A8B18F35C92436A9102D2CE495632FFE8F46
            79A459BA3FCB4C04FB7EE6AC99D4D43246FC3A534B87B3157409101671D2E4C9
            B465D3266A6B6F970D92D6734CB468980A467CFBAD2D32E6D74862494B30D7C5
            30CA168483528E1079C0AC100B18F6CBFFDFFFA4CF3DF85F642412AE575E5AC1
            BE4D82A64C992252D7442821BD918895842E3F2F4C370808B4678336465EC920
            DFF19CAE0EAC98F1BBF8DDB40B30D149042E10D15421FC82A0E1131ACB28C4A8
            DB8E0FB1B407B3401B67B3C354555125C32E141E53E12C5DA90553F942300EA2
            82962EED517EAC428D48DA01881D00D0756E349428819AA5ED05230D73C564C5
            D82D9DA303B6B597F70709EE8D1B374A25C6A2458B249D63FAFA43E808481A9D
            94F9BB1064393D0C069A093D37A1CDA17DF13C79E93BA98421BA6D5594A93E26
            22B8793D505EB57CC50AA12B04C7606560322AF6E8D0A143FB1E7FFCB1BF8895
            D5BE3E7DF2FCDD4EA26404D2F64166B85C2118863484D976E182F9AC21B6CB84
            12A877C9FE6B09657254904620A8BE9E5EDD2B52D563896F86DE23B69AAE020D
            03A9B5FAD967E9B39FFB9C14170E6754BF0AD5C159CD0E031C0C9B89F02FD016
            5B376FA65634DE8163CE120FA1E39B6EBE99D6AD5D2B921D1B0AE297EB69C633
            BD26E19F5D72F162FAE10F7E400F6D7B4742CD681A8B8897B49B6386CCA07F06
            4651994A6F4BA16C542B839C683ECCB56B646D97D703DFA599693C268113F1AB
            740F159CCB0CA70438D63446C2BF32A0908F3FD5754ACEDDD939290234BBFCBC
            125060A104E603F25D9AAA26D3B20E95CC7418540F6D21010E7C4FCF781B4409
            0B13A6CCD2CE67E41E1C5DB4EAC317D383EAB159293DD986344614C12EAC399E
            1BDF97C1F4BAA21D7930B807EB376C10865B7AD96512393C71F284B81530FF51
            29600002C9A442032970B1C28762064042FBBF51CDA14EE39899ED7803418266
            49986B3E75EA6409C66CDFBA8DDE7AFB6D1672090C09ED3E7EE2D81DB99CBB31
            56D1A62D098FDE6FAFF718A50C87AA4ACB0256E3362427FC927FFE877FA44FDE
            FF29E5B8EAC6AD6AB6982D512420236AEAEA44F5F7483EA554A467E0922A3265
            89F8C2F36B440A2E63BF0D8C29895A19C6689CEC7E91CED2635E6B33EC0E4C0E
            043EAAD97F7334A3E33E50E9FDAD7FFD065D7ED595D21E4D242B728664E9F149
            AA592BCA4466CE9C258108341B92B21C68A840B526906AEE9842AD98E63981B9
            3FF87D61096D6586BBEAEAE51170564A6C005143BE12B0B3824A88231268502B
            2525719DF856B929081184D3B11E308D606EC9B1D0341AADEF69AD881C235225
            089FE3D813278EC9A8ABE6B61665AEFBA4B09B2CA4B0DE1046382FA2A2D04881
            C69502C76AEAFA003A876560205C69E9B4E58A598BE790E8B19B577D49E06FF7
            F5CBBEC06CBC907DE94F7CF213D2DF0638587C1F2890119A7125640F46159F50
            E07BE582953528164C5D225B4592C1E4082AA1261269100453803C42157C5555
            8D08874D6C426E64663FD69DA5B2B6B9BF9DA6868DA5499BD4E0C480DE8FAFF7
            56804A614F3A9DCA969755500F3BB1680274D965974AE75B6C0AA24988EA857A
            4CAE1A43544B732E9823844C9A58631A0FB761ED3AFAE6D7BE4ECD2D2D74FF67
            1E90C10BDBB76D539BC0C4005F011B20B027D60298710D3313096E38DFD2561B
            B9BB6C9E926995140E35CA0555E48F3EFC08BDCD9210521212DBD75154C96531
            213DFEE863AAE5031323EE1F264D56474641F4313DD7DB74A682C695025BED73
            607636B41E864218B40D7CA8BC00B4B3127184DF04ED64EBEED11038D0FC604E
            335C02847D9C4D2EDC27820B465B02CE95917E26718502D1BE15CC3910728199
            6A21FBB4070E1CD095EBF948A3C244857F859C97C1B0CA844FBE4F347D32536D
            48E706B19E327257D7A881B91B59A0E2BBD2A9F8649724A0BBD8CF45787F0B6B
            99299D9D74FFA7EF97740C9AFAC012C175D6AF5F27CFA4503119F91BF631994A
            2B1036E67A1745B493ECE327E32ACA2A23BA32C3C29C6890DBC516D4A5972D61
            C62F11C183E18BC05FB6B536939D6EE8AD6EBBE8B5F6D93751D5846B285D3D41
            023702DC0E82F3FE3EFF3E5C3A99092C374756508AE20C2CEEEC3973A40DDDC1
            7DFB6524159AB9B6B134C226A02870ED436BD9795EA45207CC1028BDC142BFC3
            1B0662046380512135113A5FF9D4D374F5B5B511F204C487818F52046AA98122
            D0523144D1D83C41581F9DBE66CD9A41ADCD2DC274600C98791FBDF71E199288
            09A268CA03823639A997D6AC11E98F8A846F7DEB5B74F73DF7E8A640AAFD784C
            579B4BA001514E5F956A43EBA95A395B08F3B26597E9DEFF216543C5909E6E9D
            671AC262F8BCA06F80C4D173BB0BAE27E90C24F9A16D2588C4CF03C297C114FC
            6F56175A063A0798CD0FF3FA1D91C81DAA9C2128E0CFC2FC36730554D321753D
            44FAC477D4406C24CC3B3A3A6418C6F193C765703DD609793494BB9455948916
            A9C0C41A69C9AEDA20C085C07868351678988E1E3F4693264C60F3FD2699FD07
            4D2B1A3B5473C1C1EC3837D21E27F97B661F53FC9C307FC51A420AA2A06A0A61
            CE466E8B6E98B47DDB7629C2BDF7631F13662D2D5533FE704FCB962D63733E4D
            2DEDFD2F5F7DE3D2BDCADC47E9D24CDAFCF65A3AD9DD479535951F7C93D275C3
            9C6F87D0FF9427657660B3500408938C1D10999683681E10217B76EFA54DEBD6
            D3B8F11DB4A77F50A24980E05CC01A6FC5B52BF458A282AE3C7064C821FCB9E3
            478F4828BD447C434FCC1D84C0A11DA4B98FA3269C901E11E5F026ECDEB18316
            2F5EA4E678F3E7F003A1C5E06BBEFCE24BA24931C86FFE8205AA0E8DBF8F703A
            B426B4043A2A87BA71694A0738B2D2E35E301F14D7EDE140F8809BC147D9B76F
            9FE4D9D04416CC0BBFCD20ECE1BFA559A2C35C0AC3915E2E28701CD6E8191929
            8CA116404DF0B341739D3E754A342C5201D0B2088454841542B488F2416BA1C7
            A22F35711592EC8510436B8656362B439D7241C415CD7C3AD91C83D634A53382
            006A6D15D310846CCA70106D6E6A6A9663A5C5BCA326C1A260166DDDDF425F51
            3E46C2FE6C59AC5871B584E44DD98F6A11EF09CE33D0E0EB6E5824D2DFA487AA
            A1B9F53833303D0497EACAA582386032AC1B70A1D0A8A8675B71CDD5A295D1AA
            0330B0BC4E1161D6FA8433E3F826FB762078E4076ED4A86AEA94D9342E5F78D7
            39EA1F38861BCAE7F225969743BB3160E9D01F1075BAA19E0683FAA4C5172F16
            D30666D7DE5D7B69EE8573655E73336B9F0913274854CDD7487F483B30082260
            20540C08419F78D8E7A6A10DFA08B630432327A726953AA2CE03EDC4232788C1
            7B635A5A251C8D79D3F07DA4960D4CC31B84DCCDF4193368DFFE7DEC706FA517
            5F7C99AE5EB15CBA3C3DF5D44ABAF6FAEBA28EC256D1C8634B82070A02158641
            5460AB6060AA4500CC2C09B367731A409CD4DD975560C57355A323041D82848A
            4826F8990249A4677473A67854A00B820321A219AAD2B20521246830988E1052
            ED2C988C918F6B0CB275D0C7443D6EFC3889729AAEC515CCCCF3E7CF170B028C
            2BB3E374FB811636E303E912A6FAE74323C107B3E38EEC9F81A11D387490F6B2
            05D13E66AC30DA5816A630354329B951E53A98DB8D46B470A14E9F3E4313D952
            E93A7D4A1807811C29082D2FA3E3C74F883793D4515519F34543AA89906EF2BA
            79E3269AC17EF535D75E4BB5F5751AC09C56303CED072B5C659ABEF7C2FA0D07
            1FDB47C9738A4A01C6F86524043E71DBB2F3CB70FDD9DC505B45B29BA5FD845C
            21D89BF3C216C7CF970C0E2A9F07F841D32B1E84D1C4DA0AE162E9E88471C43A
            F2284E32A9DE19A1B6B7A1B962BA990C5202B0DDA7CE982600552CF674196BB5
            4B7C1E095183A9F5007598189833FDF08F7EA446D25EF07FD97B0F30BBAEEB3C
            749D727B9B5E3000668041230990282245526291284AA24A2C2524551C395294
            67D996FCF23EDBCA734BE258B6DE8BE2FE5E8A655BB12DCB712251162551242D
            8A45A24810240882441FB4C1F4B933B7D7D376F6BFF63E97A03FCAA65059E6F0
            C30770CABDF79CBDD75EED5FFFBF436D768D52C16645CFE6DA6BAF5348729927
            C2F08FC91C01611B2A7F383442A9642E6680ABC3B63B8D73142F42821BAE2AEA
            7CC3F715DD374F50B8210748D06114C3E7E5F0524F4CA01A899F2F554B9CCB44
            34DC0A9B13EFBD79CB16CD5AE5742A758A6CA8C587D8A60D1BD82B2217C2C105
            E14B680E3CB7EF398D6555B2C0B33294BBE3BDEF650399973FC393F97A46B0A3
            06247F16A13F42631838EEB5A119A031D00AE379ECB1EFF3B3058371D83BC47D
            811FD26072D62A176312ACFCA37AA2470F1EA2D5EBC6F89E32999CD2FC968706
            E76E966215C381899C91557AE4F399975EF480F4A26B46D772988EF531354112
            D6912316443CFCFC0C194124EAA5AA7FB0526F51D234E8D57E9D93C16512114F
            18E632C29196EBEDF6AC78976897DFE77881BC69B353E6C5E6FBD637EE6583C0
            A2A20A888D106726AF258DE457F346219D39F21C2C22C226C0BA1E7EF0BB1C96
            05DAA378010864AF64681724A26A7253C2FB7DFC131F67C817360168E3FEF48B
            7FC2E20E087391C3303E516F125C382DD1FFC381F0C3C71F67551DE48FA14E1B
            B4C1702004BAA810527C33399291949E4A8750F2E771D2438700F71712ECE019
            28DD7655118DEADC158068BC2E364F756951690148630542A2CE93EE190EFB8E
            1F3DCA55441C4C4070A0DC8FD704440A612C4E7D9EA868FA0C0C5892A1E75A19
            A261E3E33E721A8870F35B6FA49B6EBA990F1B66C8B2B53E83A314810C522812
            5093230F0BE9CB99AB46FE07C18B7BEEB98775FC6EBBEDB6CE00312A8ECD7A93
            ABD0AA6D20B48494E001DE3D4FEEA6A6F4EAD0CA86E7061BB26D2B7D37A6A7D0
            8512969696F70F4680471E79940FD49B6EBD95BD38282694E6B8A2D00048B9A5
            238096DFE4D73C757A56246C23D8D49B26C3A4D7A7C199A83219413E020DAF7A
            B5546DB9FBC672B9F705E11D9BAA947E4286766828FFF4CF7C8AFB40C659CA36
            58D8981E830F598CE12D108B2364C3298E19AF81D5C3BCD89C1FCAD00F3D3578
            22C81E01890E41F477C88D80502834A6A1E121BAF3EE7F46CF3DF73CDD29C34C
            35F8E8688A7399DBC89F2948EFF42619FA2EE5F3CC8901CC223651D8E08DC885
            8541F3A0ACDC7CB8D726887FE40669720F2B42713D6500A3D8B3FB291694C77B
            84615153B72E7C4D1DE0C9D75C5EAE7774BB6B959A3A64A497C201C49843F939
            417E8B0671420B02E279F5CB1C261C7B01920539304AFE5546E1D4795013288F
            6999C30156F6D69BDE4A3D6E1F13A3326E52534374A8DB05690E1293EF259952
            EF15223C42F1F9A7F7EEE543E7E73FF3193E58E049D1DBC3E4C1727159792D0B
            1C9160C142F33ACE3928D4475175C650704EE65AA6C66A56510C22EA50A7A335
            039A44F0DEDCF19E3B7852E20519EE43DC1EC5361C62A40757118E622DD0DFC4
            67AB96AB728DEAF9FFE343B7E5393A21F1FA34B8920C1DB3865F02655DE0B5EC
            8AEBEFC6289EDC50F26054FC83D884E097FC6777DEC9C6E468DE4620459080F3
            69CD7C873E25B8011B30550272A583879E977F0E294F2917BFB054E090687C7C
            1D63F2A0C586D3F9131FFF381758D4784A4BE7033657E7AEDABA4DFE4C9ABEFC
            977F413FF9B18F7169DECEA9111D7C1FC581FBBE7D1F1B35AA6C21CD363C01C2
            25F48B84AEAA61A724445CA1FD35489B59B740EDE69BECA5305387F92E1E2191
            9B21C42582DA1D5E185E36643243D886DC0A3D271E5A65962E358317E68698ED
            5B92AFB7666C940B22880A10DEA18F06951FAEE4C9DF436B04DE626C7C3D7B65
            C0BBC0368DA20772B1AE6C4E631655C532C4B0B270492CA2A63022116D6CD499
            00A96A9EFECD9B36313F3FDA3C0025C083E3190BF95A2864B49A6A6017BD3E3C
            ABD9A91936EEE111358EC5A4C0F23040FBA289CFE1289145C0EF10AAFED917BF
            48D75EF766FAF827FF2575CB8304BD457CA6EEEE6E9583CAFC3E840D727149E6
            6D5823EE857A2D3A355BF8DBC71E385C4CC4ECCB66449FFAE86D17D7E008D406
            6D513181EA370DE9D1134F37DDF6D1A8615C81878987F23FBFF23F3849875618
            B8E28163B435B51A1E24428B70DE6C512E2E88B280C13B78F020375291E823B9
            47D97BE7CE1DF4D413BB59DF0B86856AD926568E49724E459C904795528DAE02
            0252846982211996FCC597FE9C7EF6D33FC7B962B861B0609393A7E98E3BEEE0
            662AF2252C28AA62F046DCA46D3595E42CEA936D573168C9D7562194A28523D1
            E29236AE99996936167C2EDC3B2A8EF05EA1E755D31531CE377D5D6C08E7F358
            4050232A507845C8C87C2550FEE98ABF84D10B450966693654CBA1576E4E8483
            305C4C633CFAF023CC5C8C4D1B0EBBBA5A73DDD043BB908BC2C181CF837B0CB4
            06018F54E969023C976D9AC8077919F3CD30B3B43C60AA0A84C04A3FF2BD5191
            7CE2874F7018082227AE30CA35C4E1854A21D60D0526D05E00CB8A94A129EFFB
            5FC84393FB7C5A960C396E8E8D54B13373235E430579B25CA8B947544917A5C1
            9E3A3DF9785091C61EB1E8B5709D93C165E3681A1B533E9F54F14CDB80EA37DD
            2FCFBB2B50C878F03BF7F3C6B8F56DB7727881100BB83B276873893D94454279
            1A0FCF96A142A952E2EA159AC3E809E11443050D9B06DE0D14083044E66994BF
            3FC248F454879807317E42533EF84EA0C6F6E5C6BEF3C31FA6EF3DF0204DC89C
            08554A6C10181E54543EF5733FC7A5F5A5C545A5E5C6398E3C049C97621CB977
            A8FFF89A7C16405E1825C3BEE4EB814372EACC148DAC1E614D341813E74D9AEB
            045E00A15BBDAE4652F07CB0E938A7D3B921363FB093A03FC77D605A428181D5
            8C1A722434BF93FA10407C8B7B4EF25481C79F0715D3EDBB7652153D2B881BEA
            0214F25580021C46AC28438B6A0D3E850F7D9108179E1D6345783F6EAC6BA191
            4028E0789BB1948A4FB4AFAF9FC358CC21628A1E9E1C18471C382CD0190865AC
            AEC2A0A292B92C7F2F2DF35034CC31CD8F7562DD6FB99EE101A1088489F3F7CE
            6C5F583C0207A934CAE3278FD3A6F56B9B5B366D2083E8F56B7026DCB925F290
            A2929B21EB376B44E9EE2F5956EB53B3B3D329F485DE2273084662302747AB33
            6FA578FC3D8EB6B98CCE880E852B445E36373741C7268EB3D1711919A194F474
            6BC7C7E881FBEEE7F23F3C1D7A304A2F5B7151399AFB10A7693CA604339ACD32
            EDDDFB347BD98989A3F487BFF7FBF4D95FF9657AE6A9A7E81BF77C9DFECDAFFD
            2A8769BC61B557037206DE27C92D0AC52B89CF8A7011553C3E7931FEAF41CC86
            0EC9B0318E1F9D90E1D1B55CE607CE10A280C847D3FA6008F5C9F107F71486BF
            DD32C41C1D5DCB4D5D4C4C4F1D9F50140473F3320F1AE643079E0161EE08FA92
            6C48860224CBFBC598D272597AE4468B73D5C3870E734E3BC220629FC37884E0
            26F37A8602988ACB24544125CD4519CEB8F1C4BCAFC66394E680EAAFA15A0CF9
            5F3C03182D28E5A1740400B9BC317E7EC8EB98978427FE15753C42CF79F9BB28
            DA40FDD5D3B0373C538521950731C0CBDC188F538FCC635174F3EB017B6F2C02
            F691A527ED51092F152BD535E35B4EA564E82CFCE0F56B703024C33366925C2A
            1731A62D772207175DEF3BDD99CC5D80DD585C956C71D9DEEBD08D7B9D9C814F
            74ED41CA72D303603B3F3F47F3D2DB20CC44E5AD4F8650869659C2802697A8E7
            1768870C31E109EBB5063FFC90D2011EC4D37CF708C7601C037D03F4E0830F76
            F2B2DFFEDCE77883FED4273EA19887057528169456B45267856726EE91D5F824
            C7862D169BDAD3C455EBC0B69878141B0C1B7CE2C851B9116A7C02E3421E05A3
            60821E4FF1B4A826BEC3DE03AF0D0FC5F46FF2F042A1E4983436A03DF03BBE9E
            FCE6888001D3BA82A80D04467B547AEE62B9C43D428CB5A0020A2A77CC295E77
            FD9B95C784C42FAA7C98B14B65F41483E87061629D3A1A6CF29EE0DD42981769
            943F3C34DE179F1FE44B902443410418D931E9A5E0A5B13E211B9BA92929F0BA
            D3A7CFB0510F8C0C330800AC64807CE1F32015507C2456A71503FD3B1441F836
            C33C9A146970C897C391831139154B654F1BF21E0D5BBC7E0DCE16905B328AC2
            B2034B3E559BE58E6448E39A5FEE49D05D8CC2679A3AF9004178A3F92AD15302
            BA3DD083A9300EAE36C9587E461ADBE143473937509B3A464303834A684F6E18
            C0BA48E787CC1DA94765425A364520EB715121EC81815303C58BD175A3F4DDBF
            7B88DB130DF95EA86A622363D1158BB01A61E995C6864D076F863051F5D01CF6
            58CA60223237A96AEA0897A154191DCEE13446A1E3F0E1C3AC8D807BC0A181F0
            0F21E2D93A06CC30258D87795AE209355D203D063E0F7F668001D022E8CA315E
            117371C893B8442EFF3B233DE7D163C758D812A73E0A2E509FE546327265F9CC
            0E1E38C8E05FCCEDCD4ACF82F05C9108191DEE16B4E242525D440430367CAE96
            EEF5E17EF15AA6C63B220CCC94D374FDF537D043F21003DBF1EDEF7E273DF6E8
            A3DCD640F10846182AE3E0777078C028FB878714BD3D29FDED1EF979D1C609E9
            27C2FC1A0707C0F0ACC3A0479C42863366C6D6F85C5F1E5AA61D3B48B6D1E608
            E9F51C5202FFE606D672C2B0962BE5626CA0CF343CAF25023BF5DDC9B9C5DD6B
            06E97A20BC5FE4E95723F42834C03320BE6FB6C13EA5CAD05333D332A7DA4F95
            5A95AB92E843BDEB5DEF64540A42148835A2A285DCE1FFFED55FA1FCE2023D29
            137484AD407884E5729CF8F8F98372D3EF7FE105869415B4701F3636571BE5DF
            0F7EEF7B2CA305FAF411B91161BCA81C02B9808200127784B7CBCBA7B9A7A5C4
            DE531D36317C0D13E67DBD7DDCDB0B74388AF0387FE2387B5F6CBC82F4106827
            80B8078DDAA20610A352C80A3767E9ABCDCAF091C95D750F1363470EC872E4D7
            6BEBD6F1BDE154477319611D72343089A14083B09B2B9BD2208047C46B833408
            681534B911DA0246C5EAAB814282B027894635D3153C5B5255FEB4F643487AE4
            E8D9351C3AF0BAF859D0B023946EC8CF7BEFBDF7F2FD56676A5CC93CBB921B12
            2E75F5742BB52318BB3470800CAEBBEEBA0E524521890068AE93623551DE2AF0
            82CE670C3D3DC88340A00B30B627E28FC4ADC4AB86AFE4E255292DF4E1AC9261
            C7A7A3112B516A942229D37792A9AED67439F80F8DCAC4BDC3C3435154F62C2D
            D7844708A10437EA6B6CA2C2E8E154C70221EF43F888DC096886CD9B37D1BCDC
            6C80062D1794C6D83B6FBF9D766CDFCE9BF977BFF03B1C8A80F7039B19D8C287
            1EFE1E7BB20307554B212DC312185394A59014E0191B0D3F8B3FFBF63FCF3911
            0A2718A4851804160F06CEAC592C26A1D88543CE0E3572845E58177BB5228CAF
            52E610160689CDEDEB1C88A91C584BADDD194109FB604A5052FEED29E6B150BE
            9799CDE04DC0892F7F64399F678C24363B3699A9511E3934E6392C8FB09E3833
            90496F1892BECE4E4D53B95062AD3C05834A716E0A2E92900A3D147134753817
            D19252E1E78477E78A3266D8A471435865727292D2F235EB4E8BBEF6B5AF71F1
            02C5191E5ECDBE4860A426B555812BAD2BCEEAD055858F3E8E26A25A38D2E2EA
            32AA910859B94521FFC3F48062467338E2C17A0CC9B014F7542C56EA9ED1F8BE
            9087784842FBBA35B86A4B2EB425023F6A9D0A3CE78A54A62793CA742DB74B79
            797AD58F1F9D3CEC5DB96573B4A159A6CE16C588697A6CCBB01977871071DDBA
            F58C3088C7933420136A3456B1798AA52293D230A1CEA64D4C06CB8871B9C8FF
            F2A7FF15DDFFAD6F535777173DF8C083F4375FFD2A4D4D4EF1098B296124DECC
            C7811C84290C2C45CD67BF38BE8FA200085767E664387BE408F39A409513C585
            419993C1A890BF219741D80B0F850B7C8BBD32A9470F0FED87BAA629C086E292
            75A1485D7DBD1D1CA8A12B6FAC51AD0B47D8E4E1E06D383BC8A571CDCE2C4829
            A6723E89F93518B1DC8896F68A0A5E15E530CDD7D0B5F0E7143A4330870CF23A
            2EBAE0B9FB2AD4161AD5C3C50AD7E5D789484FC80A462CB8186822DD40CB4607
            4A6A4CBE27F252FCCEBE67F7B1B161D611072AFA6A10A6B46256073C00D0328C
            249D355FA24C04034538E9EAF7E2BA007256A624B4F890EC089D00D665F92CFC
            194B2679AEB124D7E4C4E4F4B341AC7FC2F15AAF16BA928B67706D4F9E3A188F
            0FFCD3CD566D6B9765CABC3A4DB12E19ABF75F7BEAFBF3A7FEECFB8F3EF6F3B7
            BDEBDD9C0F055AE71A271D5A0431538DE93B4DB918D2E0D2E96C67EA19493F10
            1EC8DB90BFE0C1833201280E409A5A4C0B176584FAE8FA31FAB7BFFAEB74F4C4
            84C82F158DFEFEDE209D4C19BEE7198EA63F0F59C4F0FE91E045492AEE174612
            9DC4BEA88D0A0608DE12A018329934E597F25C1153DC903E7B002C7E497A0F9C
            C81C026A51134FE612E8A3E1A009D98161647CEA9B66472823C46532C2462BCD
            045A3619CA36314DE187FFEF9586CF39A9EA4AF3CF2B9D36961D51043D9AE094
            9F1FF72503CD78BDC0154D6E504BAF86593300CD11CAF3D02966F462518D0545
            3EEC72AE1A322BFB8EDF61555E909E161EF89AEDD7D057BEF21536306EE9446D
            E565353D62483F88CF9C5FC8F31AB91AE0A080DA75DAB56307F7577160A17042
            9ADD99B5CC7D457CC484C29A73D4D63D3AE4A9A0BE0323C063CF1EFE8A99CA05
            AF0634D7BFFED87B2EAEC10502421172C1638913C88D66CE9C8A95CA15E9157A
            E4E9D5EDBFED3D77FFF9CCA1C77EE6078F3D1AD9B67D079FA821F856E87112E6
            2244850E02F29A608747F101A9E2C9E0B69231D263F75BB76D65802D0C0823FC
            5FFCE27FA3471EFE2E45E406EAC97589783462C890C9941B452034E270C4179D
            1047A9DA989D4980505C8301BCF07E1AE1818545D3764186ADF0424071587A40
            33A42987E860C893D1E1F2E7428DDC74F2B56A65D56BC3E112CE87898EC2A8D2
            3F3374EE82B0D0D0AAA7F8062BEE688A8110D789FBC7BC9F221D223589AE0B09
            A118247B3C60356D250986FBC7CF61CE0ED319A86AE2DE2CED4D01C0B6F51479
            C8CBCFBD2E4D7C1BCA2F2B4E1215A520BA989B9E91CF26CF79A36A2FA87C4D09
            3A2AB93984BC30A69EBE1E55DD958759487388F6C05B6EB841D117A2B7195105
            169B2926EA5CB461B66B57554D439A05849975F9FDA9C9D374E0D09143436BD6
            FCB552397D0DB9B77335B8F0842D37DBA77BBBBB83B66B244CB9EF5A951A350C
            66773ADEDDD33F79EAF8C48607BEFD6DA6288FE5723A8976B90CCD15312E1018
            9AF750B50AE0DDB051E11912B138ABAB80FA8E4319F9E041B1F69FBEF0797AF2
            FB8FD1EA812C75F7A43C3768527C70E4B9B6E389527E7E170A1538D98148577D
            25FF455223F07D58EAE40CE5A87CDDF066A3C149ACC95C5F02B70A49513B5AD8
            6AA9439AF040538AE3739B72C300CED5DD1F7B316C0A49643D78D8368741A1F2
            8CA19BCFCCFEEC283A78531B37BC625DBE1672E146BDA9F087429DFE28004575
            ABC0504962279F01D8F991871EA23BDEFF3E7EFFB02D1309E58F11026B39AD76
            BBADD58E145F0B363B4F936B3895E7785C4CEA91EB303533C378D1A4C65D5A86
            124554CF51E6A332349D387A8CC3C9AD3BB62B4A7A1D4A22EAB8EBCE3B69C7AE
            9D3C908AA67A5B178A5C9015C9B502553B87DBC83779DCA9D969C863526078D5
            08BDE52DD7FFDEA9E999AA6D29E0FBEBDEE0EC701E4C581569404136994CF48E
            8ECBCDD4940F09735BD14A7776FDB3778E8E6C78EAA93DF4ECD3CFD0F65DDBE5
            C3EC62B8941AABB73AE55E54074398101E1F307540DF03B1809C0E73740821F7
            3EFB347DE13F7E9E8EEEDD4BAB7271CAC57C918CB63C3F9E79FE96BB7FFE27A4
            9F28BDB0F707EF3D7978FFBFAAE6A7DE253D9A61EB3096553E1126619ECDB03A
            A8796CD090D539082577D9903C0E994887A3D6598214AC39EE2B4D3BB243093F
            FBC51C05643D18AD01070A00DD96D6C3F68556B13558D19469EB74C804EF8536
            018C0D392B4E7DB45A586C1221ABE60151A28FE082F179860D61765C234FC2B1
            26D582F198C4079317A1AC584237A3ADB3F2A930140D3D70A0C7937CA69C6874
            989F71E04853A519E9B9B890A4435BFEBECE2991839F9898E00AEA9A7563FC9C
            021DF4A1CD01BDB88F7CE4C35CBD651A3F570DEB2A79E6187BB6905429D0BC2A
            A1D03D879BAC66D4985FCE2F7C3361C2B37BF45ABBCE11BCBC280D2B2517D272
            A3F1943F579ECFF80B715E98C4F06AB9996488108BCCD48B4B74C55557F126FA
            CEB7BEC38B0EBE46B027339241731EB266B33444FC6D6BFA374FC3A7E00D91C3
            1D9B3842BFFD9BFF8E4EBD708046FBC04368519CB9ED7DBFEFCAB7FEBFF1FE55
            F369F999D65596EF191A1EBD67FACCA9779C38B2FB17BD76E3DD50C861EF2248
            57E2CC0E03B1826BF9D4064FA29E55F3B8A0E2335316BECF5F47E06608DEACD8
            7C115D18F8FB9C87BE3E9903AD21C0BC903A773CFB69ABC346A9AA22EF5ACA2F
            F1EF2074626F01AFCFF46FEAB3A29084F756CA9D3693AAC2D3551918AD66EDAC
            B3EE0DAF0DC3AB942A0A6CADC54EC2EBEC9018C5233F384B5C447E0D871D9ACF
            882E7038A28D829C1A6D984452ADB52A04D94A5E58AEE5C963C798A333CE4452
            9E0E7FB57C95FC2C80728593218E86BAC1AB73314BFEBBD15087052BD01A4A73
            2EF4603870517D9521E563D56231AFC2497A6318DC7FFF8BDFA24CF7206D5E3B
            5AB86974D03E7DE299FEB9FDBB29291FFCF0402FB565A8B065EDEAA36FDBF126
            AE00022377F7473E44FB9E7996F6488FC7656AB9281B376DEA4C0C2B9E7AE242
            05363C864F31B5ACC63302FADC6FFC3BE9D99EA3D57D58242164EE17B0A65B62
            F4AF4E945ADF9ABDFF6FCC77BCF58E806596E4D70787573FD414577D6FEAC481
            4F1A4EEBDFDB81B9DA8078484291982AB13E9FBD489C45310295FBA0DA6629FE
            10F0203AAC75A7B4ED40708BCAA36D862AA751A55DC013E84A94DED6B95915C3
            92C5126B8D0BADA18D374688D8D6A2F0A1AE1E87A238D9ED28FF9C815509DCBC
            EB3947CACDD669339D2BA6D3D913E434AD643A7E67D072AFB0DA5E7744FEA01A
            7122CDD7293A82F208D1003F430B05D54BF06A9A9A0F26F46C425353A0DF15CE
            24C2F0B89F5958A6B56B7730BAE3F8C4313A70E0A0AA20FB0A09E26A610DC0BB
            D0979C9E9CE4923D0C1E784954720DA6F8F3F967314E049C29A8380C0D64AFD4
            1A4AED06DE8C735DD5DC56FA08AAFDC1DC96382C3219FEFF42A9F84D4C799F1D
            71BCEE0DCE940F7CB99CA7D333C1D2DBAF586775A5538355F960710283EB1E9B
            B550ABBD90EBED0DEA18D9C186909BECCA6D5B69DBF66B18ECFAC31F3C4E8F7F
            FF0774C38D6F61AA3494C05BF23F8FA9DDDAEC15D17742F1E24B7FF6C7F4C2E3
            4FD250065C20428D84C858D688A7264566E08F2AAD823C489B343973888C964B
            7123214396368B558B58FC4FCB89E8DF65BDD6E78D66E32ECB30A31088C0A96A
            6368B4D5D20665F3D794442FEE20E0DE0FE9768621D4B495233D7143DE2B173F
            10EE45D4EFB1E73494AC14F2161428D0800E496C9BBAF87136852017712C5584
            0172C2335B735EE07CBBD672EEAD38CE7EC7F1A66B6D9F7A335DD4DD9523B361
            526C55F71FF966B09A1AED1DCD7C6397BCDF6B5289D83B13AE1F53CCC63E1F1E
            517D80954A45FAE3FFFADF68D7CE9DF49EF7BF9F9BD4FD7DFDFCDE6A2AC0602C
            2B1BBE508AA930248002329ABB047411188655ECCDC4633DAE86EB95968B54A9
            9679AA1F8768B15C64A38A7B09F911D5FDE3E00270006D16F44C55B127A025E9
            2D792E32A6B836436D4184ACE8152AAE9714879300304C4F9F995F5C5EFA2E4F
            6F04C11BC7E0A481F129B5B6275B6C375AD55C3AD1D7162D3E4177ECDCC689AF
            6D582DD7757C19CE98A74F9E642F02CF35D0D747D7ECDC4137DEF4569A3836C1
            9CFD7F77FF033C663F2E3DDE1858944DC5DD31333DC51EF2B9DD8FC98D22377E
            04450448590546D06AC7576FDAF0F5C8EA9E43A6F490AE57A31F3E771FADEF1D
            A78D83DB510A086337F20DE34C66B4E79FF7D9F49FF3A74BBF1A34FCF7A553AA
            D10EA488CD4DEE36857C335EA04219475373A3711E0E922A7A6E551D0C4CBF63
            40AC4C6B2A7DF3B856B6C11475589985571346584D54747908530126AE3B9563
            5EA2F507896EF39BED626BA6DD90DE89F5F35451827D63E0873913DE7AD28A45
            278D94F8C6725DE6393DD96B1B85C21A69FA6F8F99E627E5078F332D9FF4E84B
            D2FBFC930F7C80B6C9D01E05A707BEF31D06036FBBE66ADABCE50A197216B9A2
            A90651158CEEC4C471FE1A3CE3B1C347788C0983B1C8B978723BA272F899D393
            0CC01E1A19518CD098C0AF35389C44088976C174B1C873741FF8C04F707B22AC
            5686EC610825D980A0A2049A3C4C44588A3E9141D2D2F8F13C31797EE0C889CF
            9D59A8E4EDD7A8773B67837BDFF56A8A3A025E8A98E1A693B1A165195FA31891
            4B137567D19F4AC4E483B1306601502BF834583E561A2B4E321406209E088CDF
            864D1B79A4FE85E79FE7CDB52C1F2E93A1D6EACCD48413539A3835A5778B9906
            1A1266241B3BB16EE7FAFF5F1EFAB458210EF7D09F43BEF1F72F36065F50BA3F
            F36433F0DE5F986F7EB0552B7DA6CB49BF1D0D721EED8929492494E905C0B286
            D1A97FB1A2A7CECD3AE5772EB22849A540CFAD8124D5D3F949086F0A9BD2D8A4
            2CF714F2E6B3769BF498CDCA5F2C7BCB9FCDC5D3798645054C9EFE8F12867258
            18A89680F4C04F37899E962EF8EB2532BFBE2A9BFE68DC696F2F96DC5DA83642
            17E103D2E870C0A0E13C357986391FA7A6CED00F1E7D540190C7C6983F64F713
            4FB2C7C7C4380E1734A1C10D83D1A8E9D95956DCC1FD01F98FB0B14B0F8A0A2D
            3D0C232BB54ACC2FB36BD74E7A6ACF1EFACCA73F2DFFBD8BB1A5C09E72355551
            23AB7123B9D6081D7110618690455B306C2B3F07B84DC09F79E8D0A1DFCA2F2E
            FC97AE549CC830DE5806576D5515DA1C9B268896E491BBB904E62D6970930B53
            B4D488D070CFDAB5AB72E3A6AB79F859AC1D5302F2240395B7127388326C071B
            130BBE6EDD18E703901FDEB7EF592E984463F6E332565D2BF7F25AA725377354
            98899C393D76DDD68FC493C9D966EB95F332055A0F2D88C7FEB6D6AE7E23309B
            1FEBF1BB3E67B5E26BAD88AA6072499EF33485FAB0B450238C8EF18F985E40C8
            06A962AD311EA2EE594E576309B17918C06BB1FE3287ACAC6D108A4EB24E71F5
            8F0BE5C2CF8A843C2E84715E2D2543DD20C93CF5E1A1E1E18707BABAE2C7A7A7
            DF6F46A39F7CE1E0F337CCCFCF650182460B62C3A64DBAE1EF3265207A7578EE
            C853A1FD80AFE367707F3810C1A972ECF871A5CEBAB8C8F73EB6619C2B9B4A90
            D2ED80092046897CF6CDD75DC761E14F7DEC6374FBEDEFE00335F46EA4794CDA
            6E5B6B727B0A2F293D1C6BCAC930143929E05FC82F1F79E4D1FF6B7929FF8799
            8442D6BC96AF7332B8A9F9B20EBD649E33D435E3B7FCDBDB6D0335F446517A9B
            9A63D0F8F0E0D5908D3D234F27F4D0C0BCDC9446A9E8B25D8D6E50C682E6AEAF
            D11108D140208BD2F1A99327E7826CF4CEC4EA915BEA874EFCCFA8B496A66DEE
            5DB365FC93D99EDCFE73554581FE99892D9EF6FFB224F23F8C8AE8AFE7AC9EF7
            C4ECCC000F58CAF02F968AB201C083C0B3214C228D1A09DF178D7BD600F71461
            52C0C511A323F00123C6E673A1DAA3D118681570412668FC49B35EFB59C38A80
            B0EE822EAAA62368E5BA7BBE9AC965BF5A6B14B6CAAF7E5BBEFF68A8B1807E28
            708C8C93F45593195EA7D22CF37A399AEC15070D30940042CF4C4E3206B64B46
            2D4DDD327059E35B73A5688ED0B08208CC23D8DA9838480FE1229CC5E743A10C
            5314C159E44CC069EE911E11A358D2F00FF5F4743F2373F1478E1F3FF6E77DBD
            AA60E30BF1C633B87CB1A60DCEA78CB99C4F387E3A664412F2886CCC16650C6F
            B6CCF7DD3478A392E2F5595E96C95BD1ECF65F8400E124C380238A1360FA4598
            36A5B18BA8521AF1C89FD79AEE829DEDFE5FC98D6B03DB6F658419BDC788C52B
            4170FE8C83F02A4EE09FC8AD6A7FC26D1736144F373EDF95CEDD8512B41A6B55
            DC1F3022CC84090EA32D0E755838241657E5EAA662460E7B53613889D033ECF3
            310D9C862DB9667B7F999C5FB05209811CA6DD2A5EF0850D35D68786FA69E7C8
            55075A8EBBB7D56A8EAABED6591B0053D94235965B9AAC16C687B6049C090EC8
            D03301B296C1B88FCCABF13C806945A10C4001440686E6BA44BE8735C4A4BEAF
            A9D901FC469B218AC902E8F955CB0CFB5BBD7A8D0C4DB36CA4FFE53FFF3E7DEB
            BEFBE9861BDFF47CF760DF2DFB0FEE2BAD97393D2A97AF71C7769EE3398ED0A8
            0D0398C3A5683426AACB5561C9858A77F5D3FA9191ABC657ADB91E0939E8B2CB
            C58202C302F1808DA8259270D2F6F4F4729105E565008579285103691D8B9E43
            850CA43C91EEEEAF91DFA656A57EC1F496B95AC837624927E51F9F5C9CBEBB19
            343FD997EEFE6DCB880CB2EA8FDEBCAA82A6B04B6888235F097C35C889A24A08
            888E76E8CFE32A42B4806C89B1178047F1845376EDD64F53D0AE09C0C46C99EF
            52EC82DE93C3C28E51DA38BC8EC1D8AC5167994D64868C95B4EC4ED33D1CFC0C
            7BA238FCCE66570BEF1DF0AC3AAAB9F51A1F24C8EDE0BD49F7FDDA1C5E3639A7
            FBEC677F491760CA7AAC46F17132757CA84167DADC12502D096262A4BBEFBE9B
            060757D1A999E77FE7D499FDA56C62808B32AFA7EBDC26BEF58C1496AC20C454
            D2F5B275E16F944EEBA9D5D938EDDA3CFEB60CD43E1A752E07C759C442015A61
            5421331534A959BDC6528D597841D0E41D3A7C880223283B89C4331E0A131919
            E7979A1D81BE8B71618E1AA775A559FDB3C0F09EC8A57BFE3F6A88DBE289A40A
            2D31308B5012A574C0B7D0B7026A05B9199FF038D9650E17B3F8440E3D9D8B76
            89087B5F8296CAC55F29B54A7BC25C8453375F6E7C8A93918B9EF3E70F8762E1
            41378E6FA4ED5BAF523ADC816AF0F764BB9308735B4DB4405415969BF89A2D1B
            1EB9EED73BDED1D3B0368862C0CB810A1ED5C204C667606C96D53146D1096389
            7EF1177E81B66CD9CC645000A2238F634559F9734F3CF16475CDC8C8D2F0F02A
            0E6D6767670AD55A35B83976D30024A2B76DBD9A76EF79E2DFD7DBD52F3B8B4D
            CA8E0ED0EBED3A278373EAA58EC1D5C86CD7523D115BF8EF6CCF2EEC19B9EE1A
            B17DCBA6F721DC04D60F458486F44A08A9307786100AAD80A41677E789622C18
            165C1AE8C4C409A6EC3692D67D56C23F093E5E0C5556EA51999CB72EFA03E15E
            9A108797C87D6F5AF89F4F57DC5F40918031928C4251468793D7E9787A55850C
            1BDB36FFFD22709A730FC851D52AF715CBE5FF0AAC97FF1230B83CC4CA82B2FD
            E29CC84C5521C2A01BDE74358D8DACA60D63A3503D27175032442484E6B61B09
            874A1534CF6483E4F937F937C23C182B066FD1ECEE206102D2C3AF01E3277962
            5C6B40F07BEB820DF2311447C03783509165B60089331554AB582C941F79E4BB
            1F0D0CFFC9ABAEB866CBE9C9D374F0E481E964DA14F9D2CC75BD5D831B9FDBBF
            EF487E79F1DE443AD6C199AE181C2FB0D9298DB95E50450E63349D8FCE4F4CDE
            373EB2EECAF1B51B6EAB576A4A84B158E21C0E154AA01E30BE024032A8E2E27A
            EE89A145F2A43D766C82A7B5999C271ABDB757E3E800067612316A542F4DC2AC
            3021F2808ED02F76A5CD03AD62E3F70D279A4B24543B009E0474022818605B40
            A79B11FFD1E84B2A8DB6F68ACC50E6B94EBE52F8CD40C0B3BC7433717BA02EF3
            9C0554657FBC8D86F01155D3775C7F2DEDD8B2890F845AABAC3DAAEE2B4ACFDB
            74EAAEE77629CFC6D8474DC024DD6F4428CA0A1649043A0454073A22C1818921
            61A072CCB8A1800232FC04F1512215673635A11BD9A04247C8CA0AB78ED230C0
            B4FBD34FEF797AF79E3D9FF284BF2F6A9B18287E72A9B8A4FA8AF260582E2F4C
            2F2F17697AEEB40CD7B3F46AD576BB6C06D7DBE3BF180E79C14265AE22AA6E75
            F6EAB76DE97BF6F13D7FB2F3AA9DE6061922804601713BCAFD1879393339C9B9
            0237C1C1A3C1153EC10936BE7FF0C0015A5A5CA678CA984C0E78DF0DB41F300C
            8FC6E2696A49CF5A6BB42ED9C3E1DC231BFBEF895C7BA270AAF697954A7C5D4C
            868CAE16E9B09944C861140DA323B4861D989179B76B0D6D6CAC6A50FD52B43F
            B1272E923FEADD9490A28786FD2B03E536E5A6DE383A44D7EEB8827A7359CAE7
            E75EF6E75CCF415878CA5E1561E03380C48067319206530261533D5039360C0F
            55C8802B9A4AD0B1D16A748A1E3054542D511C496B5554F50CB474742CC9E4B5
            DFFBDE43D3B55AF5D88913C73E556FB68E8793162F7A5943B55E2C440F11551C
            799D5FE76470B96EBFE3E10CDFA8CCCCB8D5E5C5F955BFF69B9FDA32DE736DEC
            77BEF005FAF4673E4DEBA5D1A1D78642088A22E8AF418609D84A28D6006654A9
            2855CD90E90A620F76CEF96A2C1614CF3EE8AC8449ABC6D234B750E6D3F6528D
            D5B34A6ACE7C3CBBD1BDAD78B2FD07F57AEC9F44A371C53CE6A94203842F2296
            CB2172A556D194043EA5B2692EAD4B23FABEC818BFEC59FFB8F7424EF54A2A72
            D8E45BC6D7D0BBAFBB8E12D2FBB75DEF1FB807F0628B5368EA371A2D0622A0EF
            85896D1ED0C57F81EAA301209C0843475F55982B32874BC693F26C0C4A41B369
            CBFB4EA3E881B19D92A3843830ED7DEFBDDF0648E184EFB9074F9F3EF3D8DE67
            9FFEEB67F73F3B7FC5864D144B2568E53A47838B2592DAC301816F3A86E5D57A
            32031BC6FB76FE3F575DB5CDF84FBFF7BBB467F76EFADBAFFF2DBDF38E77D1F8
            F8064EBC11520235804A16589E30E0E8B1C74BCA647E9A89824CDB6F6706625F
            C161F7126E18B909D78CC5F9BD4DC7A7782EC91540E11229E42372958B638440
            7A4512D6A9DCA8F8A05F377FB29D0F3E5BA994B799288EE0BDE5C69C931B53DA
            53D0DBDB5D9F9BCF0742048566B3DA2D37F18144DCFCC940D86556D87905C58F
            57626CEBBA7BE9D6ABB6C9FB6F53B9D9F80785E379FADA9B7D666464D4CDE6B2
            9124F81EB57E9C13388C968933BC4BCDFD21ACF40D8521456E86273C36B6B634
            B27EDD7B0E1C3B5ED831BE66F3C993FBAE2D950A59CF16553FE62E51D26A1F9C
            3C7064FFEF3FBDEFBA5DD7946A3585E94CD8D1CE2CE2CA75AE55CA426FC708E4
            C918F7FD4ADC306C3B99ECB2912C8395EBA65B6E9161974D7FFD575FA19B6FB9
            956E7FE7EDCC4781F004CD548424980440720CF13E6026592AD78AEEC9E713CF
            FFA8F7B6AC3479D2D0968A82F205C150AAA41B03728BFCC0665A006E465FE8C6
            8DA2B00C52DD992FF7A4D2DFAA2E557E73766AF9E79B2D47E6692EDFC735576D
            F98C0CA5BEBB66B466BCF9AA4D4B3F78F4C1AE48263B3BBFB4DCAE4AC3A0F3AC
            70A3E90B459A757DBD74E3E83AE938EBE434FFF17C87794C3C67A251AFCD4522
            D1B53C286A98BA05A06066615535D46CB359DFDBE30A23B7090CA3918AC48FAE
            195953185E357234A0D96F1E3D51A6563490D1874FADB6A0B4D945153D501A89
            28A110C33056ACEC7C0D6EED7046D99B0C4B2AC5DAEABC617595AB151EE9409C
            1FD2845FFFD61B69607890C3AF3FFDE32F72BFEA7AA89372854BF05434127078
            B618D3C2B5C5A62DEBFF3099EA0E7E9C160013EF90F274C807EA40BF5FA44EA9
            502C53A5BE91C1FF736A395FAF2D567E3922DFD34E460A15D3FD9B8C11145371
            D5EE88462345F10ABDD63FEA65E5FBA6A4815CB56E5C7AB71E0AD04AE1EAE42B
            00F21AA072F00A966D4CFA9EBF160065C5FB1F556AAF0C49B319C0AD424B8594
            094BFDF813B523E591A155CEAA556B64EE586263E4DB62FD7A83FF04A132CFCA
            75610DEE647E3F076F76C4A403BBCF7CC86A7499576ED9CCE3FE9830B6358C09
            438CE8AD61162BFAE1BBE9993D4FB35EDC9B64DE313F3BCB4066204D30B67F6A
            6292AC94FBBD767AEEEBBEB12C2DE8DC3629A8B53D7F4CE654EB2E6231457048
            16EFB67F65389D7AAA5E6CBDBF582BCC5412B162B35AA0115ADF9986BE50EF87
            C3EDFA5DD7D0C68DE39C3B328EF5C7780D000964E8B9B06E6C13864A45AD5633
            D400AC2FA4D733027D44B96A6447C83050A95A0925346958A254770B75623D39
            F4F222F45AE31379CD1ADC62695995B21D3F7B64EFE47B87067CDABE7D2B6322
            93F2F4058F22463AC6D68EB2D0E1228B655874F7873E44EF79EF7BE9C0C103F4
            D453BB59538DC733AC08CF643999EA6FEDFFE1A220C7E00AE8B9C67E11739646
            4681A8B8B8552FD8536E20F18D48CEFC46E9648902B7493519E6B9F111322EA0
            870521ECDAA17E02D2E6C0F3FBCFED351C47C429F2E8D59BAFBE1393F5D24B0B
            441EA8344A831241A0545343F634C77504EB9B2B9083E19333DDA6BA08D0A48F
            D814892648ACD8DB256A0BF476CB13CEA4A5F9CAE6583C333ABE713D2F14B401
            9E79662FF349DE74D34D343830C84688BC0DA87334B631160214F8CE5DBBE885
            4387A956AB52D2447854F94EE3B4F721E144D6CA93F5CBE7734B0DD1A453C5EF
            5372648D1AD7BF884ACFD880C2E3E211E78D86615DD0FCD17503EAEF3665FE0B
            30748DE2E7589DB5A45712B1CA0CBC15A20E64DF329736002AD0140CA2D56818
            F0DCCC71895640ADCEA3528948DC28D5978E3EFCCC6986C1B105CA90534491EF
            3557ACE8621B9C2B3D900B4A4527B1E32DD75F6F255371268EF9EA57EFA1FCF2
            32FD9B5FFA25DABC69B316026CB1D20D0B30CA1C017F403D809CADBFBF97BC96
            4BF680FB3FD269FBA3F5DDEEB0B4BD01719EFB1564704C86B330474157F63521
            45FB72179AC83DB924BDFDAD1BA41134A85E0FCED99611862E17E74E371BB556
            36D71557AA54BE08D9BC54351203F251062B405FAEE9F250AE11180212BFC7D1
            DC3784D72922B1E89F58C9D92EBAC125C0EF6102499FBA91E271D6A546C27DE2
            D469FAA97FFE93343C3CCCA44098674BA414677D0884E5096CF9A7BFBF8FDE76
            D3ADF4C043F72FD5D253BF068C835C7B69213477216E0C89BF780D27F021B5DD
            07EFBA8576EEB882DACEF98DF0A0729B8CA55A89541C0DCFB8A5F23461AB66B3
            010039F2B84AA9CCF91D10352888C87535141992282B82A2973ED38811931185
            CF93EB2BD74532B8AABB00B219A330171BED8D4568BE55A783323C041B575797
            227945B334945C8A6870B2CC1944A01BBB408A77F7741BE94CF2B76BB5D82900
            98235187DA0D8FF924DFC857480674D7876FA6EDBBD650A55938FFD7049EB2D9
            AE7CFD9E7B9AEF7FFF07323D3D3D7EC4F30CD7F5A4D1D9862973BA52B16840A4
            64D5C8AAC0755CE3C8C4319A3C71CA96A6E4F7F75ACBF18C492F9561130CE2F6
            028BE60A72AD6B2B0675510C0E340096308D83878E4623CE2C6A1EA2522EC944
            DB13D56A9DC393742605DEF9A05AAD1AD56AC590E15100481742CCF9F979B176
            746DA451AFE57D47FC4DD61FE64A585F5F8C66A667DEF08BD26EBB74F5355BE8
            F65B6FE6C32B635D98EA84655985B9F9FAC26FFCDABF1D7CFB3BDF61DE7CCB2D
            816118725D52A2ED3806C2FCAEAE2E914AA70DB46C0E3EFF4284C58F2868FBA6
            3C55E336AA277FCF905564399248D07C5BA610CB2B4675C10DAE52C7C4B611A4
            BBA2070BA7CA37CA045A462C429E90CBA25C2E71C511100C005FE1D94A8582C0
            5C1B12F12777EF16A3A3A362F3E6CD9163C78F7F5D7E7F1E7AD308FF723DDDAC
            2706562EC33C4FA2181168DEFED758DEE67A343CD8473FF7331FA69EDE6E3DA7
            76213C3E13C87A777DE47DCD5B6FAE8ABDCFEEF19F7DF6597AE0FEFB2380DE8D
            AE1DF3376EDEE83FF2F0C376B95442CB40AC5EBBC6C92F17A29333278B328F58
            0C0CB94E2F83E287D101043D382EC3D608382957CA9717D4E052C91873756CDE
            3EF887A7DBED0FCECF2DF6F1B0972007E4408C83957111C40FD1008E44EC00F4
            68A7CFE40D24EA9B376FB2A6A7A7F38BF9C53F026B70388A811CA17770804509
            CF1F0E24379834DAF66B6C41F02CAEBF791D4D2F1EA453672E2CF5820B36D966
            EAC8CE2B6E7EF3073FF84F5B509DDDB469B3313D3D65A220124F26C5FAF1F120
            9BCD8AC3870F07E02169375B71979A271C41F37EDDF8075B010C4C1E12546CCF
            505CAC5AB1AE0B6570715B214D06867207839DCBEF196824EF7AFED1E39FF03C
            B72FBF5C6C48AFE50701D078140045DE72DA229F5F10478F1E3546C7C6446F6F
            6F64666646AEB2791CBC1767A313D66F1C2793CEBFACC894747273EC3D79824E
            37CAAF91AA6420F3DA0CD9E9284DCD2F5ED029705CACF53DB5EF7F5DB3F9863B
            CBE566E0794E80890728C4FA7E201AB5BA71CD35D780A4D63871E2389D3E3D29
            D383B661A51B5FB3BD8427BCE015F9DABA989311508A538F95EB42E470BACE8E
            A2A31D174F6FD832F07422E7FDF591A7667E5D04EEBB014FAF952B81E3792224
            8CA9D71B01C223DF7144A9504C4C4D4F3DE007BE13FDFB23F4481A8C0BC057C2
            11A54D83B92C9DAA175F138B8102D3BAF1616974BDE4B42F3C6FBE87D11CB77E
            C013EDF9683491755DC72B160B02ED8746B321ED5B18207A02AEF5E0A1430698
            D7EBEDC5BD6BAF4CFD65CC8A6ABEC157165D88448128D690BF125FB1B2F335B8
            976C120F9ACD1E8D6DEA7FEEE65B767DE2AA815D4F4A3B1BB122E436EBF51011
            19202758BF7E1DA51249AB52AFCD1D3A78F8AF144BF0C58BF72DC3A35434C6C3
            AFE2553ED4A84440E2B4666D9ADAF5F2C5A193C05C9E5B9F2D94F3139BC6B6BE
            C9F73D170D6FCC22B61B4D516F360D14B46438693CFCF063463C9688F56F15FF
            31D2132F7B9C97BD728FE5591EA5D74B8F3867AD2052CED7E0C2504730396A94
            D60F0DD1407F379AA435CF6DA3C43F2873B0B6E3011E24FD985CADB1B131F44F
            2179146DB7DBF95C2EBB80A9828B0D76453F69C97368C99D7B552F847C4E3434
            94A584CC8F1D2F78E5CEE4C7F3FB326C75BCC9A9890303B9353B9AED760B9E2D
            3C1117171785E6A0347DCF4F267A8347FBFB73DF1475F39CC2DB442C41760FE6
            AC9024D8CC92F64637BE7332B8AD5BD6BF6870B60DAFA5552B7DD1F42AC53367
            26BDAEEE740BC6661A4600AD36849558D7C15543E6627EF1C0DCDC4231244DBD
            A84508C8E446E2D4A028BD9AC1B628128DAE1F9621B745FE455461027B75B1BA
            7CC48ED8CD66A1DEC480AC3C1103E8F261295AAD96C82F2E9AD168C4185A9FF8
            52773AE96298F6DCEC1B60D306D59D396A7B72ABA5AA1431BADED098E773F370
            514F9F973211279F7B6BEA2906D49BB12ABE1B349B2DA7994A2464526EFB106D
            48A7D318B911BE0C3FA7CE9CD92B6446615997C208047525E2D4B633E405AFCE
            9AA52A96A46860A41BB86DA2A879119F86F45611319B88C56AC964B2897138F4
            4F1DC715283447A351C8C8DAC94C743E481A7B16CAD5970E02FFF84E555E6586
            8205F180B2096970BEB162703FCE55AB382FFF0D8CF2E7ECC29AD5ABEB3DFDDD
            D57C3E2F1616E683783C862513728185158D78F9FCD2311EE8BC44FD1AF8DE1E
            A39B1A4641FEABFE2A3438976EB8E11ADA75F5366E7A5FDCC28C473DDDB952A1
            5828CB74A0D5D5D5E557EB3584FDA87589583C26E2D178C24EB59F8BDA411E73
            6EE2FC1E3E69F64FB26448597316C97041B46BAD18DC2BBDBAE22FDF63F17C07
            BD9CC566BB5969B5E2551926F97D7DFD416F6F6F8050A5BFBF2F88C955765DB7
            444C227AE94E3A5B442961A4A5C1155E550B8041CE55C3FD74EDB5574271888C
            E8C57D26418025F78B56D42A44AC68D06A363D4CDFA433694CE28B6C261B4422
            5127964A4ED900755DE0DA0DE8F12BC614D9B1ECF979CE3792C1C5122F3F6766
            8107D1F20B513B52923165459E9E5E3697452819F4F47433136AB3D506DF4729
            9E8CD1A554B104E62F4259B27D0818B65E350B806AE4A66D23B4DCC853BBE85E
            FCF7931EAE2B5BAB5F3DE6164CD336FD20700D21649067F8A9544A98A611789E
            174FC6CD45139C311738BA85971311799FA906BFB678835551CE0D69924DBF7C
            B812785018ADC623F1422C11AB663219CF925E0E319D69593E2BA6B45A688C2F
            8396E05293CBD8864D633D63B45C9B6064FC65373699BB6573691A5B3F44CD46
            4BD38F5FDC8BD5515DB72937FA3205BCFE8E6D477CD36CFB9665411C59FE8817
            B3A3F6522411A58B360410275ABFAD9B0AD3D53754E5F29C0C6E767EFA65BFEE
            786DCAC5070A83FDFE92EBB5AA966D8149C693B99B4C11BC003CFA8D46A322A4
            A3CB74A52FCB0D67CC24CD544B545CBEFCE8134C5BBF79FB56D6BE76DBEE25E9
            14C2A3442CBB6518C1BC659949C7F1E5BF4D3F1A8DFAB852A9B4343E1354784B
            ADA67171C33E79DEE686D2DAE08C1583FB911BC579F9630F3CFA8EE3959AB5E6
            62344DF56824E64723364A237EB3D5F463B158B0BC54F0D3D968D64ABACDCBE1
            64D086B861FB7AAA370B54A82FD0E56270E3CA6457966E78F356F25B2E0F7C5E
            92FB675A3FE10481372F0D2D27BD5BCBB46D4F1A9F27D7C86B366B7E3C16978F
            A5296DB2C5BDB38B58CD223302FEA13219EEC08AC1FDA86BA0A7FFE50DCE7728
            1AB5EA0BF385C5D5EB7A9A64B57D4F981EA613D11E6835DB7E5F6F8F458BCD81
            17268F2C44ACCBA38C02D59755AB53E44E27A85CAF5E1EEFE6B4E91D6FBF9136
            8E6F25708C5CDA0BF22126AA478E34BAB6F47AAE0CFD3DDFF3836834E6CABCCE
            100DA715CD79D21A2EFE89D49206E780221DC61DA8410F3E8B85D9A1647FBD78
            C073DAF199E0E54BBA9EB02965586EB9DD5AAA379DE652F98CD79B1DF30D61A1
            F3E247EC4860251D1A181C14C5A2633881232E17AD5A36695126D5434F3DF7CC
            254FDCD9BB7567E9EAEBC6285F99622A854B666AE8C4999629EFB91A047ECBF1
            9C763C1AF36418E9A532696FE3C68D7E572623F24EB5DE6CBA5CD0372EC1E311
            C63245D74803130E879A20912D1B9038EE911F007DDF802CC3BE4C103D43BE6B
            C00C6697C5E0966A8B2FBF91A487CB64BB5A2645960C37D6AEB4967DF921FD55
            3D5B7D2768F9F89F92374BAB32A3AD63DE0459C2BD6C3C8658C35C3442B96496
            BCA0281FC4A5F3B6285C5CB96D359839696EF11203AB0334B76346E0BB155489
            93F1A4832A89DCE0F26024AF52A9803B23B0658819CB3AA62503CB4BB5C5D556
            50984DD66310C769DFE23419BE4976314E514A5E966297103E754587A93FBE91
            FF7DC90D2E967E790F670532208F79CD6C36B5DC769A7EAD3CE9A787729E08C0
            9F61076DBF18D41B2D5A9DDEE8F5F5E40C19698ACB491C8A2AE95BAEDE4E4716
            9EA3E5C54B135AC2BBF5F6A569D386015A9A5B529250C6A5DB44A0C34BC7D3D2
            EE9C8A3CFF82B6DB74E15064E81694CB653F1AB5FD68DC1476351A587E4E896D
            5C9E2391158918B6203F435B46016DAA5C964FE24BC710B77BB8B574BEB1C839
            195C3291FB91A7A7E33ACEA66DEB2B27268F05B9E4905F6A2D041B8612C172A1
            284EE6F78BFEDC1AE955BA82A1C1F5E045B9EC4CBDAB862294EA4ED37DB3DFA6
            4B01F28377DBB6758CB2D91CB96DEF92935E09CCDC2473C2F11BF5E5EAA41FB1
            229EE719811501E635867A8A4874C963A040A2C7EE1120E435DEE08063849369
            337DF9424A8ABDFC998785092CC33F59DC57CB655753D44B07339517C421EB71
            11B89E3851DA237E62DDBFA6E59972502B3A8273A7CBCEACE5516F748C360FEF
            A489BD0F512C19BD78C626BDDB607F96AE583F4856DB85A2CDA53FAD65809832
            6C516D141B32950B32F2F09B2BCC0470B35B56EF12D1B410B9B5115A3C9312D5
            C5965861C123A60CB173D2B7258CF346DE9C9B878BBFBCF410F82E5CB72D2AB5
            5A63A4BBD75EAA2E898333FB82A1BE119AADEFA7C1A1011188163523B3A27F75
            4220E7335E05D527CB36E8CD375E4DCF3F7F909696CB14BD483393D05FDB72E5
            1A32E2116A38DE653A5E0441BCD9B01C67EFC4EEA037B34A747767C5B1A9E3B4
            76709D982D9EA6BEA11EB1900DA8662859AB37FAC5D26817E8319C93C159A9C6
            8FFE5EDCA754D408961B53DE4469AFB0BADAA2549BA3C5FA14E5CC3E3A70E631
            E1D835AA9A4D2E8D1BAF066959571E5E5D31DA79C338DD77EF3317C9B3084AF4
            D824062A74A878E4B2419AF0BEF3EE8CA8EECF7BE36BB68889C9E7A9AFDD271A
            66957E78F41E3A327742E6E25199763B34309A66F1C437BA84002AA3091153DA
            D097C3E0CA4EE91F58D08022664E4C959F0E0E961F8114040D4686E94CF13825
            97A5A1A55C109292639443D6EC5747D8E098B4766B927A1E4F91EB0417D4EF0A
            5D0418BED2A4222D92D7F22F086FCBB9E523F27C69D76974F568B05C2DD07C63
            8E168A4BC2CCA23020BF1734C932A3FA64577F8C37BCC15DB833E71C394D623F
            F27B18F8145640BB4F3E1158D180B2A92E4AC8106AB1314F3D14A755B9318212
            A7B0059393BE5A2E175C9BF269446478E9B42EB0D8954E55B36B8872831605EE
            E53B695000B0ACAC2839937466F18422E8F50D999E58DCE7328C9510F2625E86
            58219C58B956AE4B76AD1C672BD7CAB562702BD7CAB562702BD7CAB572AD18DC
            CAB572AD18DCCAB572AD5C2B06B772AD5C2B06B772AD5C2B06B772AD5C2BD785
            BFFEB70003001489275AB734BFD10000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Version = '6.1.0.6'
        end
      end
    end
    object PageSheet14: TPageSheet
      Left = 0
      Top = 0
      Width = 953
      Height = 352
      Caption = 'Tabela de Pre'#231'os'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 8
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pficha10: TPanel
        Left = 0
        Top = 0
        Width = 953
        Height = 352
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label96: TLabel
          Left = 85
          Top = 30
          Width = 55
          Height = 16
          Caption = 'Atacado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label103: TLabel
          Left = 360
          Top = 30
          Width = 43
          Height = 16
          Caption = 'Varejo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label104: TLabel
          Left = 688
          Top = 31
          Width = 125
          Height = 13
          Caption = 'Usar Tabela de Pre'#231'o?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FlatPanel9: TFlatPanel
          Left = 85
          Top = 57
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Atacado 1:  '
          ParentColor = True
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 0
          object Image5: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel17: TFlatPanel
          Left = 85
          Top = 83
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Atacado 2:  '
          ParentColor = True
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 1
          object Image7: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel20: TFlatPanel
          Left = 85
          Top = 109
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Atacado 3:  '
          ParentColor = True
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 2
          object Image8: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel22: TFlatPanel
          Left = 85
          Top = 135
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Atacado 4:  '
          ParentColor = True
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 3
          object Image9: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel24: TFlatPanel
          Left = 85
          Top = 160
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Atacado 5:  '
          ParentColor = True
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 4
          object Image10: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel30: TFlatPanel
          Left = 360
          Top = 57
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Varejo 1:  '
          Color = 14540253
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 5
          object Image15: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel29: TFlatPanel
          Left = 360
          Top = 83
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Varejo 2:  '
          Color = 14540253
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 6
          object Image14: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel28: TFlatPanel
          Left = 360
          Top = 109
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Varejo 3:  '
          Color = 14540253
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 7
          object Image13: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel27: TFlatPanel
          Left = 360
          Top = 135
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Varejo 4:  '
          Color = 14540253
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 8
          object Image12: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel26: TFlatPanel
          Left = 360
          Top = 161
          Width = 121
          Height = 25
          Caption = 'Pre'#231'o Varejo 5:  '
          Color = 14540253
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 9
          object Image11: TImage
            Left = 8
            Top = 5
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000065CB98046CCC9E4170D3A3456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCFA0456DCF
              A0456DCFA0456DCFA0456DCFA0456DCFA04570D3A3456DCFA04065CB98040000
              00000000000000000000000000005CC9A11264CD9DF96EDCA9FF6BD7A4FF6BD7
              A4FF6BD7A4FF6BD6A4FF6BD7A4FF6EDAA8FF6CD9A7FF6CD8A6FF6EDAA8FF6BD7
              A4FF6BD6A4FF6BD7A4FF6BD7A4FF6BD7A4FF6EDCA9FF65CC9CF863C69B110000
              000000000000000000000000000063C69B1164CC9CED68D1A0FF65CC9CFF65CC
              9CFF65CC9CFF65CC9CFF68CF9FFF53BB88FF42AA74FF46AC77FF51BA87FF68CF
              9FFF65CC9CFF65CC9CFF65CC9CFF65CC9CFF68D1A0FF65CC9CEC69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD68CE9FFD50B884FD399C66FD90C9AAFD96CCB0FD3FA06BFD4FB7
              84FD68CE9FFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CC9CFD64CB9BFD38A16AFD46A472FD6DB991FD9CD1B5FD75BC96FD309D
              64FD64CB9BFD65CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD66CC9CFD62C898FD38A069FD369D66FD8AC8A7FD96CDB0FD3DA06BFD379F
              68FD62C898FD66CC9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9CFD67CE9EFD3EA871FD4EA777FDABD8C0FD82C3A1FD43A16EFD40A9
              73FD67CE9EFD65CB9CFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              000000000000000000000000000063C69B1165CC9CEC68D09FFD65CB9BFD65CB
              9BFD65CB9BFD66CD9DFD60C796FD3DA56FFD6AB68EFD7FC19DFD45AA75FD5FC6
              95FD66CD9DFD65CB9BFD65CB9BFD65CB9BFD68D09FFD65CC9BEB69C396100000
              00000000000000000000000000005CC9A11264CD9DF76AD3A3FD67CE9FFD67CE
              9FFD67CE9FFD67CE9EFD69D0A1FD68CE9FFD54BF8CFD52BE8BFD67CE9EFD6AD0
              A1FD67CE9EFD67CE9FFD67CE9FFD67CE9FFD6AD3A3FD65CD9CF663C69B110000
              000000000000000000000000000061C49C0C63C998C262D39BFF5BC592FF5AC1
              90FF5AC290FF5AC290FF5AC290FF5BC291FF5DC493FF5DC493FF5BC291FF5AC2
              90FF5AC290FF5AC290FF5AC190FF5BC592FF62D29BFF63C998C161C4890C0000
              00000000000000000000000000000000000034865C123AA26A7E379861DF3AA2
              67FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D64FF399D
              64FF399D64FF399D64FF3AA267FF389862DE3AA26A7E378D5411000000000000
              0000000000000000000000000000000000000000000000000000368554293894
              5C47358A5447358A5447358A5447358A5447358A5447358A5447358A5447358A
              5447358A5447358A544738945C47378857280000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
            Transparent = True
          end
        end
        object FlatPanel10: TFlatPanel
          Left = 207
          Top = 57
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 10
          object RzDBNumericEdit2: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOATACADO1'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit2KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel19: TFlatPanel
          Left = 207
          Top = 83
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 11
          object RzDBNumericEdit3: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOATACADO2'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit3KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel21: TFlatPanel
          Left = 207
          Top = 109
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 12
          object RzDBNumericEdit5: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOATACADO3'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit5KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel23: TFlatPanel
          Left = 207
          Top = 135
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 13
          object RzDBNumericEdit6: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOATACADO4'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit6KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel25: TFlatPanel
          Left = 207
          Top = 161
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 14
          object RzDBNumericEdit7: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOATACADO5'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit7KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel31: TFlatPanel
          Left = 481
          Top = 161
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 15
          object RzDBNumericEdit12: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOVENDA5'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit12KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel32: TFlatPanel
          Left = 481
          Top = 135
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 16
          object RzDBNumericEdit11: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOVENDA4'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit11KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel33: TFlatPanel
          Left = 481
          Top = 109
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 17
          object RzDBNumericEdit10: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOVENDA3'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit10KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel34: TFlatPanel
          Left = 481
          Top = 83
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 18
          object RzDBNumericEdit9: TRzDBNumericEdit
            Left = 3
            Top = 3
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOVENDA2'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit9KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object FlatPanel35: TFlatPanel
          Left = 481
          Top = 57
          Width = 121
          Height = 25
          Color = clWindow
          ColorHighLight = 10776320
          ColorShadow = 10776320
          Alignment = taRightJustify
          TabOrder = 19
          object RzDBNumericEdit8: TRzDBNumericEdit
            Left = 3
            Top = 2
            Width = 116
            Height = 21
            DataSource = dsproduto2
            DataField = 'PRECOVENDA1'
            Alignment = taLeftJustify
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            FocusColor = 11075583
            ParentFont = False
            TabOrder = 0
            OnEnter = RzDBNumericEdit2Enter
            OnExit = RzDBNumericEdit2Exit
            OnKeyPress = RzDBNumericEdit8KeyPress
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00'
          end
        end
        object DBComboBox2: TDBComboBox
          Left = 688
          Top = 56
          Width = 128
          Height = 21
          Style = csDropDownList
          Color = 15916445
          DataField = 'USA_TB_PC'
          DataSource = dsproduto2
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 20
        end
      end
    end
  end
  object pficha3: TPanel
    Left = 163
    Top = 0
    Width = 953
    Height = 199
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 10
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 135
      Top = 12
      Width = 58
      Height = 13
      Caption = 'C'#243'd.Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label58: TLabel
      Left = 384
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Classifica'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 726
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 42
      Width = 65
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 708
      Top = 42
      Width = 48
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Unidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 0
      Top = 66
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 0
      Top = 90
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Subgrupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 0
      Top = 114
      Width = 77
      Height = 12
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
    object label7: TLabel
      Left = 0
      Top = 138
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 267
      Top = 168
      Width = 79
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque M'#237'nimo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ACBrBarCode1: TACBrBarCode
      Left = 941
      Top = 158
      Width = 216
      Height = 29
      Modul = 2
      Ratio = 2.000000000000000000
      Typ = bcCodeEAN13
      ShowTextFont.Charset = DEFAULT_CHARSET
      ShowTextFont.Color = clWindowText
      ShowTextFont.Height = -11
      ShowTextFont.Name = 'MS Sans Serif'
      ShowTextFont.Style = []
      Visible = False
    end
    object Label105: TLabel
      Left = 0
      Top = 168
      Width = 77
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Origem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 8
      Width = 57
      Height = 21
      Color = clWhite
      DataField = 'CODIGO'
      DataSource = dsproduto2
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object combo_tipo: TwwDBComboBox
      Left = 455
      Top = 8
      Width = 233
      Height = 21
      ShowButton = True
      Style = csDropDownList
      MapList = False
      AllowClearKey = False
      Color = clWhite
      DataField = 'TIPO'
      DataSource = dsproduto2
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        '00 - Mercadoria para Revenda'
        '01 - Materia-Prima'
        '02 - Embalagem'
        '03 - Produto em Processo'
        '04 - Produto Acabado'
        '05 - Subproduto'
        '06 - Produto Intermediario'
        '07 - Material de Uso e Consumo'
        '08 - Ativo Imobilizado'
        '10 - Outros Insumos'
        '99 - Outras')
      ItemIndex = 0
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
      OnEnter = combo_tipoEnter
      OnExit = combo_tipoExit
      OnKeyPress = combo_tipoKeyPress
    end
    object edata_cadastro: TJvDBDateEdit
      Left = 757
      Top = 8
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'DATA_CADASTRO'
      DataSource = dsproduto2
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
      OnEnter = edata_cadastroEnter
      OnExit = Edit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 38
      Width = 608
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'PRODUTO'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 937
      Top = 21
      Width = 41
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnEnter = DBEdit1Enter
      OnExit = DBEdit7Exit
      OnKeyPress = DBEdit7KeyPress
    end
    object egrupo: TRzDBButtonEdit
      Left = 80
      Top = 62
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODGRUPO'
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 7
      OnKeyPress = egrupoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = egrupoButtonClick
    end
    object DBEdit30: TDBEdit
      Left = 152
      Top = 62
      Width = 270
      Height = 21
      Color = clWhite
      DataField = 'grupo'
      DataSource = dsproduto2
      TabOrder = 8
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object esubgrupo: TRzDBButtonEdit
      Left = 80
      Top = 86
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODSUBGRUPO'
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 9
      OnEnter = esubgrupoEnter
      OnKeyPress = esubgrupoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = esubgrupoButtonClick
    end
    object DBEdit8: TDBEdit
      Left = 152
      Top = 86
      Width = 270
      Height = 21
      Color = clWhite
      DataField = 'subgrupo'
      DataSource = dsproduto2
      TabOrder = 10
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object efornecedor: TRzDBButtonEdit
      Left = 80
      Top = 110
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODFORNECEDOR'
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 11
      OnKeyPress = efornecedorKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = efornecedorButtonClick
    end
    object DBEdit9: TDBEdit
      Left = 152
      Top = 110
      Width = 270
      Height = 21
      Color = clWhite
      DataField = 'fornecedor'
      DataSource = dsproduto2
      TabOrder = 12
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object emarca: TRzDBButtonEdit
      Left = 80
      Top = 134
      Width = 69
      Height = 21
      DataSource = dsproduto2
      DataField = 'CODMARCA'
      Color = clWhite
      FocusColor = 10550008
      TabOrder = 13
      OnKeyPress = emarcaKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = emarcaButtonClick
    end
    object DBEdit63: TDBEdit
      Left = 152
      Top = 134
      Width = 270
      Height = 21
      Color = clWhite
      DataField = 'marca'
      DataSource = dsproduto2
      TabOrder = 14
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object GroupBox7: TGroupBox
      Left = 427
      Top = 62
      Width = 149
      Height = 94
      Caption = 'Pre'#231'os'
      TabOrder = 16
      object Label71: TLabel
        Left = 3
        Top = 26
        Width = 36
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 3
        Top = 59
        Width = 36
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ecusto: TRzDBNumericEdit
        Left = 41
        Top = 22
        Width = 61
        Height = 21
        DataSource = dsproduto2
        DataField = 'PRECOCUSTO'
        Alignment = taLeftJustify
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 0
        OnEnter = ecustoEnter
        OnExit = ecustoExit
        OnKeyPress = DBEdit1KeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00000'
      end
      object evenda: TRzDBNumericEdit
        Left = 41
        Top = 56
        Width = 61
        Height = 21
        DataSource = dsproduto2
        DataField = 'PRECOVENDA'
        Alignment = taLeftJustify
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 1
        OnEnter = evendaEnter
        OnExit = evendaExit
        OnKeyPress = DBEdit1KeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00000'
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 103
        Top = 21
        Width = 32
        Height = 56
        Caption = 'F7'
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
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000001974455874536F6674776172650041646F626520496D616765526561
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
          702E6969643A4531364445383142303532353131453539423332463334353036
          4241334139412220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A453136444538314330353235313145353942333246333435303642413341
          3941223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A4531364445383139303532353131
          453539423332463334353036424133413941222073745265663A646F63756D65
          6E7449443D22786D702E6469643A453136444538314130353235313145353942
          3332463334353036424133413941222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3ED4094A19000001F64944415478DAA495
          4D28445114C7DF68A24663A446333B2CC64793186964AC34642129918D05928D
          AD85B212C95AC9020B65E76B2162458C99EC7C2456234D528CC64764619EFF1D
          E7E59A9977EF1B73EAF7E6DE7BCEF99FFBEEDC7B9FA2AAAA22C0063AC02AB853
          7F2D0A76401F708A34F41CB9605CFD6BAFE0029C5301DE1680DD68010F8931BB
          04BD5430392E07B48043AE50BBAC402B17DC23593E9E4610A3BC11BD026E6E29
          9C1988F3CB7A461ADDE90A3C93D3FE0F719E7BD2B1F105A669B0D3808059E22F
          25AD23AD401E0DDC0892F2C10C088347B00EBC82F815D27428B4CFD3EE00C2C1
          BD76B27974729CE49F679D2DEAE8CD668813F4031FF77F1D08F23EC11B6B7C80
          27416001680635DC9876AA0382BC6D6DD6CC4E0DEE102F9D64CD7C82D8C4C631
          2B3F1657E4560742D4BE05C3202088FF620F56007B497128C62C0CDE411B8848
          625DEC61C25B04F1DBC0DA92040B7053FBC4C064A2A090ADD520AD67AD81F5D7
          AC52126BA5B84DD629A24E5092540FE2844B123B419AD5DAC09A8199E5D0CCAC
          1271ED6688F07791850663595E748C7D6DF6C9B7691739425988CF91C6A4DE07
          6794BBF8CA33102E06BB94BB28FB64F673BB65165408844BC018173F951C634A
          5449B532B00C7CD467876B0F5CD109657E3FB093FF1A0C80E31425C9AB578125
          F090E6AA7E011BA049A4F12DC00078362DC326251D8E0000000049454E44AE42
          6082}
        Transparent = True
        TabOrder = 2
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
    end
    object GroupBox2: TGroupBox
      Left = 578
      Top = 62
      Width = 273
      Height = 94
      Caption = 'Tributa'#231#227'o'
      TabOrder = 18
      object Label30: TLabel
        Left = 10
        Top = 44
        Width = 38
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label73: TLabel
        Left = 12
        Top = 20
        Width = 36
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CST:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label93: TLabel
        Left = 101
        Top = 20
        Width = 24
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ST:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label95: TLabel
        Left = 2
        Top = 69
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CSOSN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label106: TLabel
        Left = 88
        Top = 44
        Width = 38
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MVA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label108: TLabel
        Left = 89
        Top = 68
        Width = 38
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IRBC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label109: TLabel
        Left = 160
        Top = 25
        Width = 58
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CST Cofins'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label110: TLabel
        Left = 180
        Top = 47
        Width = 41
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CST Pis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label111: TLabel
        Left = 181
        Top = 70
        Width = 41
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CREDSN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ealiq: TJvDBCalcEdit
        Left = 51
        Top = 41
        Width = 45
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Color = clWhite
        DecimalPlaces = 15
        DisplayFormat = '#0.00'
        NumGlyphs = 2
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
        OnEnter = DBEdit1Enter
        OnExit = ealiqExit
        OnKeyPress = ealiqKeyPress
        DataField = 'ALIQUOTA'
        DataSource = dsproduto2
      end
      object dbedit13: TRzDBButtonEdit
        Left = 51
        Top = 17
        Width = 46
        Height = 21
        DataSource = dsproduto2
        DataField = 'CST'
        Color = clWhite
        FocusColor = 10550008
        TabOrder = 0
        OnEnter = edata_cadastroEnter
        OnExit = dbedit13Exit
        OnKeyPress = DBEdit13KeyPress
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = dbedit13ButtonClick
      end
      object wwDBComboBox2: TwwDBComboBox
        Left = 129
        Top = 17
        Width = 32
        Height = 21
        Hint = 
          'T=Tributado, I=Isento, N=N'#227'o Tributado, F=Substitui'#231#227'o Tributari' +
          'a'
        ShowButton = True
        Style = csDropDownList
        MapList = False
        AllowClearKey = False
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'SITUACAO_TRIBUTARIA'
        DataSource = dsproduto2
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'T'
          'I'
          'N'
          'F')
        ItemIndex = 0
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
        OnEnter = combo_tipoEnter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object RxDBCalcEdit2: TJvDBCalcEdit
        Left = 129
        Top = 41
        Width = 45
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Color = clWhite
        DecimalPlaces = 15
        DisplayFormat = '#0.00'
        NumGlyphs = 2
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = RxDBCalcEdit2KeyPress
        DataField = 'MARGEM_AGREGADA'
        DataSource = dsproduto2
      end
      object ecsosn: TRzDBButtonEdit
        Left = 44
        Top = 65
        Width = 53
        Height = 21
        DataSource = dsproduto2
        DataField = 'CSOSN'
        Color = clWhite
        FocusColor = 10550008
        TabOrder = 4
        OnKeyPress = ecsosnKeyPress
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = ecsosnButtonClick
      end
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 130
        Top = 65
        Width = 45
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Color = clWhite
        DecimalPlaces = 15
        DisplayFormat = '#0.00'
        NumGlyphs = 2
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
        OnKeyPress = JvDBCalcEdit1KeyPress
        DataField = 'REDUCAO'
        DataSource = dsproduto2
      end
      object RzDBButtonEdit7: TRzDBButtonEdit
        Left = 224
        Top = 17
        Width = 46
        Height = 21
        DataSource = dsproduto2
        DataField = 'CST_COFINS'
        Color = clWhite
        FocusColor = 10550008
        TabOrder = 6
        OnKeyPress = RzDBButtonEdit7KeyPress
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzDBButtonEdit7ButtonClick
      end
      object RzDBButtonEdit8: TRzDBButtonEdit
        Left = 224
        Top = 44
        Width = 46
        Height = 21
        DataSource = dsproduto2
        DataField = 'CST_PIS'
        Color = clWhite
        FocusColor = 10550008
        TabOrder = 7
        OnKeyPress = RzDBButtonEdit8KeyPress
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzDBButtonEdit8ButtonClick
      end
      object JvDBCalcEdit2: TJvDBCalcEdit
        Left = 225
        Top = 67
        Width = 45
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        Color = clWhite
        DecimalPlaces = 15
        DisplayFormat = '#0.00'
        NumGlyphs = 2
        ShowButton = False
        TabOrder = 8
        DecimalPlacesAlwaysShown = False
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        DataField = 'ALIQUITA_CREDSN'
        DataSource = dsproduto2
      end
    end
    object GroupBox8: TGroupBox
      Left = 458
      Top = 156
      Width = 233
      Height = 32
      Caption = #218'ltima Compra'
      TabOrder = 19
      object Label74: TLabel
        Left = 6
        Top = 14
        Width = 35
        Height = 12
        AutoSize = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 126
        Top = 14
        Width = 43
        Height = 12
        AutoSize = False
        Caption = 'N.Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ldata_compra: TLabel
        Left = 38
        Top = 14
        Width = 83
        Height = 12
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lnf: TLabel
        Left = 170
        Top = 14
        Width = 54
        Height = 12
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 727
      Top = 156
      Width = 103
      Height = 32
      Caption = #218'ltima Venda'
      TabOrder = 20
      object ldata_venda: TLabel
        Left = 4
        Top = 14
        Width = 77
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBEdit11: TDBEdit
      Left = 354
      Top = 166
      Width = 69
      Height = 21
      Color = clWhite
      DataField = 'ESTOQUEMINIMO'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit11KeyPress
    end
    object DBEdit16: TDBEdit
      Left = 656
      Top = 8
      Width = 10
      Height = 21
      DataField = 'CODBARRA'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      Visible = False
      OnEnter = DBEdit1Enter
      OnKeyPress = DBEdit1KeyPress
    end
    object gestoque: TGroupBox
      Left = 428
      Top = 153
      Width = 423
      Height = 35
      TabOrder = 17
      Visible = False
      object Label11: TLabel
        Left = 6
        Top = 12
        Width = 83
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estoque Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object eestoque: TRzDBNumericEdit
        Left = 98
        Top = 9
        Width = 79
        Height = 21
        DataSource = dsproduto2
        DataField = 'ESTOQUE'
        Alignment = taLeftJustify
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 11075583
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = eestoqueKeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.000'
      end
    end
    object fdados_codbarra: TFlatPanel
      Left = 969
      Top = 33
      Width = 209
      Height = 164
      ParentColor = True
      Visible = False
      TabOrder = 22
      object Bevel5: TBevel
        Left = 1
        Top = 116
        Width = 207
        Height = 3
        Align = alTop
      end
      object grid_barra: TwwDBGrid
        Left = 1
        Top = 1
        Width = 207
        Height = 115
        Selected.Strings = (
          'CODBARRA'#9'24'#9'C'#211'DIGO DE BARRAS')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dscodbarra
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        PaintOptions.AlternatingRowColor = 14540253
      end
      object bexclui_barra: TAdvGlowButton
        Left = 27
        Top = 122
        Width = 97
        Height = 40
        Caption = 'F11 | Excluir'
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
          786D702E6969643A343135373937413132434639313145344131464238373045
          42434346363742382220786D704D4D3A446F63756D656E7449443D22786D702E
          6469643A34313537393741323243463931314534413146423837304542434346
          36374238223E203C786D704D4D3A4465726976656446726F6D2073745265663A
          696E7374616E636549443D22786D702E6969643A303639423546343832434639
          3131453441314642383730454243434636374238222073745265663A646F6375
          6D656E7449443D22786D702E6469643A34313537393741303243463931314534
          41314642383730454243434636374238222F3E203C2F7264663A446573637269
          7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C
          3F787061636B657420656E643D2272223F3E63719F0C000002174944415478DA
          EC57B14E1B41109DD93B6330181340800441111D0A42A240A489022515A246A2
          E30B100DD4D0843F884447950FA0A2A449D2D1F001202184516CC786B3777798
          3D1BCB3EAFCDE1E352F99DD6B7737BBBEFCDCEDC688D4404063F7EEF814001C8
          970D6E42C0F5D53F383FB9114AD299E3E00A35BFF2CB2BAAF52F9B936A697D1C
          CA8FCABA0EF1A549C3CEF2F7EABA81F14100746D136545C3EC421AD6B6A73317
          3F6FBFF13A49446C1C5FFDB83C3437FFF5C39DF4343FB13BC21224FF14EB8EBD
          7410C516DF0E35A9917653BD928699CF03B8F169B68F746059023799127F5010
          49A5ADF4E4F3E05FE63AE0EE699380B22C1D17BC872916D0417D4DACE040055F
          E147F9220D13759A491C6627934E8E1EB708C87BD921A9CA80D899DC8782AEA1
          B4F4B95A42C0038AB706E28671D070BDD88D8C2EFC3FB836D2AC4966D21CC7D7
          92A05BEF3909387FF2DCCDB50A4058AC3CA94CE1E1E992ADE1983C2FA447FB17
          13FD8E4500418E8B8D1C9948513CFE57AB10A74096EF456BDC797B5CFF23A0B8
          32D05FBB895358AB05C4B6032D10A1275204BB034209C8DD97FCD6AD1DEA7B6C
          EBBC26A878BA56EFAB6E85B679AE29DB910454AB57343B7208E2444F404F404F
          404F40A84A183CE9BED58E24C0D4F24452D40F9406A16D81EFB30399F154243B
          B200C088F61B92D04C7562CC3927282F28A0DC78648E01B91A47DB109863CC2E
          B7236E63EF4C6EFE77ECD738EA78166000FA4ED4E37002B2EF0000000049454E
          44AE426082}
        Transparent = True
        TabOrder = 1
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
      object bgrava_barra: TAdvGlowButton
        Left = 106
        Top = 122
        Width = 97
        Height = 40
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
        TabOrder = 2
        OnClick = bgrava_barraClick
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
      end
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 846
      Top = 12
      Width = 53
      Height = 15
      DataField = 'SITUACAO'
      DataSource = dsproduto2
      ValueChecked = '1'
      ValueUnchecked = '0'
      Caption = 'Inativo'
      TabOrder = 4
      Transparent = True
    end
    object pexporta: TFlatPanel
      Left = 335
      Top = 31
      Width = 353
      Height = 25
      Caption = 'Exportando produto...'
      ParentColor = True
      Visible = False
      ColorHighLight = clRed
      ColorShadow = clRed
      TabOrder = 23
    end
    object COMBOCODBARRA: TDBEdit
      Left = 202
      Top = 8
      Width = 169
      Height = 21
      Color = clWhite
      DataField = 'CODBARRA'
      DataSource = dsproduto2
      TabOrder = 1
      OnEnter = combocodbarraEnter
      OnExit = combocodbarraExit
      OnKeyPress = combocodbarraKeyPress
    end
    object pbarra: TFlatPanel
      Left = 330
      Top = 11
      Width = 19
      Height = 15
      Hint = 'O d'#237'gito verificador deste c'#243'digo de barras est'#225' incorreto!'
      Color = clWindow
      Visible = False
      ColorHighLight = clWindow
      ColorShadow = clWindow
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
      object INIMAGE: TImage
        Left = 1
        Top = 0
        Width = 16
        Height = 16
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
        Transparent = True
      end
    end
    object DBComboBox1: TDBComboBox
      Left = 757
      Top = 38
      Width = 73
      Height = 21
      Style = csDropDownList
      Color = clWhite
      DataField = 'UNIDADE'
      DataSource = dsproduto2
      Items.Strings = (
        'UN'
        'MT'
        'ML'
        'KG'
        'LT'
        'CX')
      TabOrder = 6
      OnKeyPress = DBComboBox1KeyPress
    end
    object cb_Origem: TComboBox
      Left = 78
      Top = 166
      Width = 183
      Height = 21
      Color = clWhite
      TabOrder = 26
      Text = 'CB_Origem'
      Items.Strings = (
        '0 - Nacional'
        '1 - Estrangeira - Importa'#231#227'o direta'
        '2 - Estrangeira - Adquirida no mercado interno'
        
          '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
          'ior a 40%'
        
          '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
          ' os processos produtivos b'#225'sicos de que tratam as legisla'#231#245'es ci' +
          'tadas nos Ajustes'
        
          '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
          'ior ou igual a 40%'
        '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional.'
        
          '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
          'onal.'
        '8 - Nacional Conteudo Importacao Superior 70%')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 528
    Width = 1099
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 11
    object bincluir: TAdvGlowButton
      Left = 135
      Top = 6
      Width = 78
      Height = 54
      Caption = 'Incluir'
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
      Layout = blGlyphTop
    end
    object balterar: TAdvGlowButton
      Left = 215
      Top = 6
      Width = 78
      Height = 54
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
      TabOrder = 1
      OnClick = balterarClick
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
      Layout = blGlyphTop
    end
    object bexcluir: TAdvGlowButton
      Left = 295
      Top = 6
      Width = 78
      Height = 54
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
      TabOrder = 2
      OnClick = bexcluirClick
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
      Layout = blGlyphTop
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 5
      Top = 6
      Width = 62
      Height = 47
      Hint = 'Prior record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
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
        1F90000005F94944415478DAC4975B6C1D571586BFB567CE9C737C89633B8D6B
        BBB61B431A1A478D026D78485C0548A008A13E70895011A4458AF200484588A7
        3C200802840AA8426A8D844028951011CA431215A1205A5C45428424AD9A86C8
        E482EBC4761C27F6F1B9CC99D97B2F1E8E13C73E7692F292258D341ACDEC7FAF
        F5AFF5EF7F4455791061784011DEBA913B1EB65EBC417E3A61EDF9985CB98A75
        111897F7CAA0819D08EB80CEF9D7C7512E79386E84617C50098384B821CBB50D
        392AED1137FBDB6EAFAD4B81570A1140F463C0378DF059A0A3FE2530F035E075
        447F25C2BFFEFF520BA8D2E19C3988F893C09E654117A203D883F893CE9983AA
        742C2AE3FD00AB40E364FC84B17AC2AB3CF741F9F32ACF19AB271A27E32754EE
        019C9F4DC8CF2618A7648B6CEA3A5D3C19C6AE7FB9AD8940215162AB18597ED5
        3076FD5DA78B27B3453619A7B7D7BFBDC6AD717AFA37E71081AA0DBA9C337FC1
        C8C0422B2C34A053B8117B3EDA11514C3CE325472E107425BEBC9E0D02FFE96C
        E8AEAAC2DFBFF1F8E28CBD0B70CE80E700500F2A907AB85A743CDD93E5B567DB
        D9BDB18999D8B3B21228C0009E03CE19BC0BEA4B9DD82CD534DA6AC53CBFB4BC
        46A0922AD315C70B9B9B78E59936720D219F7FBC998FB44714AAFEAE5D64C53C
        5F4DA3AD89CDD6CFB137698B087B9752660466AB4AEC94179F5AC5B7B6361366
        33D8AAE5D8DB5798293BB29908EE92B700046EAF57771E985D94B1AA3C05EC5A
        5ADEEB654FC6C04F77ACE6C56DAB08B311133763F6BE7686EF1EB94CEC0CF950
        EEA7D977CD632C512E71CF80E9BDB54305264B8ECEA6809F7DB295C175794A15
        CFD1B3637CFFCF17F8F74C4867772F73D6309BA48B109C8755596155CEE01658
        E8AD61707CB17279BF0523F35255CB74E39A889776AE66E3DA882451DEBE5AE0
        D0A971D6753EC4F62D1DA873A8D6F39B0D84D18265B460C90672ABA4358CBA8C
        8D69B9053A53F57CEEB1467EBC6335CD91325D74A8C2636B9B38B8670BB98C01
        E756E6350AF9F53F66D8FFE60C7D2DE16DDEC498963A604516144E04572DA3B6
        01F27920593A226082BB9F3D6296192EA9EF6A75291264400CADF98023E7AE73
        F6C2FBBCB27B8081DE569238E5E4FB057EF1B74BCC94AA3CD410AED8C7119609
        56D3D9D20AD879E1F7A84B9719276B2B62328801F59EAEB5ED5C9854BEF2BB77
        78F90B1BD831F0309BBB9BF9E2E60E0EBC31C1F1314B5B634014D4E8BB33AC15
        DA560BEDAD601770F1D656EA805D5C1A09A268BB48807A0FAAF4747630311DF1
        C21FDEE3079FA9F0D5EDFDECFE780F9F18E8E287C3B31C19A9D09A1372A1E075
        F11CAAB3D834AD712B82E2707169A44EB95C3C77D455E3C93BB971D6F2707B2B
        615B0FDF39F65F7E72EC3D5CEA58DB24FC7C47233F1A6C248BA35449F0365DB8
        D2A4B6F9F966450CAE1A4FBA78EE681DB077E9A9B43C7B863B3F407136A5ADB9
        918EEE3E5E7A6B8AEFFDE95D2A654B269F63D78772346794BB292622E03D6979
        F68C77E9A93AE040B8AC95B9A1B45CC0048B8D897396865C444FDF3A7EFB4E89
        AFFFFE3471A9C2E1D3939C9B2CD1925BD9C89820242D17D0CADC50205CAE6FAE
        C8A1AA8793E2D47090C90D9A6C0E7576415F9C230C0CFD8FF6F2D6C404CF0EFD
        9324D34C7B4B7BAD73964B3608717185A43835ECB3EEB088D49F4E41A94818CF
        115EBBBEDF8E8E261E8F2CC95CBDC7A0F47477F19F641593364F3E6358CE224B
        10E2F1D8D1D124BC767D7F18CF11948AF546A0E5EC1808B85C8EA677AF7EA9FB
        AF97FF28EBD713E41BF0CE2E9E190191A0369B4B4145304188AB94D19111AE7C
        EAD12F1737751D0AE2181466071E595CEAC2FC0380284E0E95CE4FEE93C2F8AB
        F9B495B0A9A5A654AAF3408A7A77A70D45645EE7D593166E50A9DC441FC9EF4B
        3EBCE650A97FCDFD993D010A4FF60DD98C6C8BA7AF5C2C4F8D91166FE26DB526
        7C62902053BBC4008AB755D2E24DCA5363C4D3572EDA8C6C2B3CD93724F732F4
        4B1D8B2A48604E9063BD8F8BDF8EE3D23E13663698288B981099D76AF50EF516
        9F54F1363D2FE8ABE4785902E3E78BF3018017E7EF4D20BFF4C8907A3768CBC5
        9D82AEF3AA9D358722E38A5C12638E4B20C3062A9E7B1B0379503F6DFF1B00C3
        71DA68E6AB3AA60000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
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
      Layout = blGlyphTop
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 70
      Top = 6
      Width = 62
      Height = 47
      Hint = 'Next record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
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
        1F90000005E94944415478DAC4976D885C5719C77FCFB97766EEECDBEC4BB26B
        B2DDBCAC8D4D9B90224D2B1A37586C4A2C9682600B16B45509114A2128825005
        A17E10514445BB1FB42029D886980FB6886984D2C47C284936D62C3506372166
        B33BDD6E7677765EEEDC7BCF79FC30B3BB999D59B7F54B1EB8CCCCE5707EE779
        CEFFF99F33A2AADC8930DCA1F097BEC86D2F7B266E919D8DE8BF1C1294AB2436
        0DC6669D3262E01184EDC0A6FAF02994AB0E4E19E134CEABF85E44D896E1FD7B
        022A7D69E6867B97E7D6D5E0B54204107D0078CE085F00069A078181AF027F46
        F457229CFFFF4B2DA0CA80B5E628E2CE01CFB484AEC400F00CE2CE596B8EAA32
        D050C60F035681F67CB8C7247AD6A93CFD51F7CFA93C6D123DDB9E0FF7A8AC03
        CE2E446417228C553245766F1E2B9EF3433BDC6A6946204C9442A4B5AD6831AB
        1FDAE1CD63C5739922BB8DD5E5F9970BBAD44EFB7FFB1E22504DBCCDD69A9318
        D9B52285861D20B4CAA6768F8EB4E1423EA2373078B2C668A7E39EE71ECDF8F6
        A62ABCFD8D7B1B3376D6C35A038E178196D02555CE878EA7EEEBE09527FAD83F
        94E166D1123B5A64AF00BB70BC68ADC159AFB9D45192A11AA71F4AC43CFBBFBA
        BB5075ECEC4BF3F8BD9D046D3EBF39D8CBD7EFEF60B662A9C48A91E6B227629E
        ADC6E987A224D30C7626CEE1D943B28E7032298FF972C81B7FFF0F49D5D1D69E
        E687FB731C79B08BC55859A836C305C0B3879C89734D6055791038B09E62B3BE
        105AC377FE748D43AF5C647A2EC4CFA439B2AF8B1F7FAE9B94810FCAAE95E80E
        D4198D60117B10D8B2F4DB33508A1C538B96F74B2BCFF462CC6262486FDCC2CB
        97221EFEE53BBCFACE0D4A15E5A93D1DFCFA602F1BDB0DF9925DED885BEA8C55
        CEE5DC2731B2AC9072AC0CF7A4D8D2E553B52DF42A06F9C44E26A7F31CBB30C5
        504FC0DEA11C23DB027EF7C53EBE7D6A9E7F7E10B3B1CD2C95B4C668F26A6372
        B7D767BA6879EE814E0E7DAA1BA2646D7BF37A086347B19A50082D5285FB36A4
        78ED4BFD7CEFAD794EFEBB442E6340A4C6580D56A4D9E1C4D486AC7B86ADAA88
        E7A349055B2D37F498DE465801DB18F1527598B22917707C6C92BF8D8D13AD71
        960830534EE86ECF70E4E1EDEC1DEA221DA418BF3EC7B75E1D6722EA64706003
        CE3A5087DAB819EC92A42226B5C4A5CD87AB73C2F979C1F7A5E9C48A2CDC2A59
        76F7A7F9E66706B87FB0937490E2ADF1699E3F7E9959936370A00F75AE76E0B8
        1AA3096CC3D2152F9DFEAC8887AA92C431DDB92E7A7A7B6BC258E5D373A1F295
        4F67F9FE488EFE0E0F108E9E99E0077FB98AEBFC18437D3DD8245ED20F8AC586
        A52B2DC08BAFDB4CF631930A06A0E67FEA1CEAA2866C2B89D29632FC68A49327
        77664965051B5B7E72F25FFCEC4C9EEEFE217ABB3AB049D2A0155B0DF3365C7C
        BDD9B96C7C212E2F5CC4B534DDE5A83AE84C29073E1E90CA0654CA09DF3D7E89
        9F9E996160702BBD9DEDF54C75655F9C232E2F5C7436BED004F6846B5A591C8D
        CB058CB7F6C52417F8BC972F71622C4F58AAF0B5DF8FF1F2BB2586B66EA72D48
        636D63EB19CF272E17D0CAE2A8275C6B1657DAA2AA27A2E2CC692F158C984C80
        DA16FDAB8EBE5C077F7877963F9EBFCE3F8A5986B70D62049CB58D22F47C6C58
        212ACE9C76197B42A4453B79A522188729945F4816F54D7FC7DD69E3F94D7055
        259BF2C88759AA913034B811B51675DA04753892EBD723BF32FB82EBB2E04CF3
        4520377E03046C10D071E9E69707FF7AED35D9B1032FDB86B34983B26B5B2720
        0655DBE81F2218CFC756CAE8952B4C7E7EDB93C5DD9B8F7961080A0BBBEE6ACC
        B8507F01900EA363A5CBF9C352987A291BF7E077E4C078A04A6DA1F54FB535F1
        88D417526BD8B8708B4A650EBD2B7B38BA7BC3B1D2F0860F77D913A0B077EB68
        92927DE1ECE44479E60671710E97546BC62706F152B5A7EE382EA91217E728CF
        DC209C9D9C4852B2AFB077EBA8AC77A15F6DBDAA209E394BC00E17169F0FC3D2
        61E3A7EE31E90C627CC47875AD59D425B8A88A4BE2CB82BE44C02FC433AE5E9C
        8F006ECCDF194F7EEE905175762429171F1174BB53DD5473329952E4AA18734A
        3C396DA0E290F567BD537FDAFE3B008FBFCCE1F19531F60000000049454E44AE
        426082}
      Transparent = True
      TabOrder = 4
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
      Layout = blGlyphTop
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 375
      Top = 6
      Width = 78
      Height = 54
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
      TabOrder = 5
      OnClick = BitBtn5Click
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
      Layout = blGlyphTop
    end
    object LMDButton1: TAdvGlowMenuButton
      Left = 537
      Top = 6
      Width = 78
      Height = 54
      Caption = 'Outros'
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
      TabOrder = 6
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
      Layout = blGlyphTop
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = popmenu1
    end
    object blocalizar: TAdvGlowButton
      Left = 456
      Top = 6
      Width = 78
      Height = 54
      Caption = 'Localizar'
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
      TabOrder = 7
      OnClick = blocalizarClick
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
      Layout = blGlyphTop
    end
    object bfornecedor_codigo: TAdvGlowButton
      Left = 63
      Top = 497
      Width = 97
      Height = 61
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
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        87000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA8640000001974455874536F667477
        617265005061696E742E4E45542076332E352E343E8DCC760000039C49444154
        6843DD5ACF675C51141E420861BAEBB6BB6C47AA21BBC82A6415BA0AC3104A09
        ADAE8608C92A64D3124AE92695AE4AFF85EE42B55209A59450BAEAA6215A4A99
        7E5FE6BEE6CC99777FBEDB9979BD1CDEBBF79EEF7CE7BE77CEBB3F5EA391B9F4
        7ABD16E436640372CF08AF59D7CA6CAE3A1C48CD41B620C790D0C2BED499ABCE
        20010186A7210F209F42193BFA118358330954E25560A803F9E220F4016DEF21
        CF21CF8CF09A756CB3156276E219056A007CC142E09B21BB1208D540FF15A343
        5D5DE8E4422856503F00AE437E2A4B1CB1BB41008E4EC42879A2B4D5AE8A7DA5
        0FA03D45FC07EE37B2800B106242882DCB5EB21DA04C415E29C053DCDF4906F5
        28121B72A26C92C354B4CD92913F8A06495480EDA34A4FC2BCF3126327914BB2
        1A8CEF2827D683C0980154C08E6CE43541F52418D8EEEC840EFC407D169E9F06
        79FD0F3B810BE3AE28E4366D3587C6AEE8CC8C502960A17F0372D3253EDF4D60
        CBECD42DD541C726E442389023C7EBF758BDD657B70F039CE0B7A228E4D81CD2
        51A37FE6030D6907E69B32C6AAEE7120D699D01B7C0A6860CE97F39B551B28FA
        DD32C448CE27DF031C609F02A7E5B0BB2AB0C8F5FADB809B65D9E81A11F45B0A
        2095DAC599AED5202FFFE5898603617177821DD8153C9F4807E4FB657D8C5418
        F313E0AAAE28FD38C5DDACA8BCF405D4381D307C2F05DF593AB0282A8E6BE080
        5CBA2ED201CEF58BF2B2060EBC107CDB746053541CD4C001997036E9809C3E78
        17101310037281D5FD2F1CA8FD2B54FB20AE7D1A6D8A2C7451832C24A7FCFD69
        351CA8CB54821BC7835309E3401D2773D7DF2CB83429D3E98E67262CD72C03D3
        E9E0058D9891725D90553CE4ED0B1A438AFBF5C3EF972FAA47D4AEE2746BC82C
        3A301B655DD4E7F20DBCFC8B7AF314F4B6CA7C2E12A938203F0FF16FAB1807F4
        C6D649AAE15C7A202F377BDD1B5BC6096E2DFE12F170988B4C2C0E381C0A1EE4
        1476F0818E6DA1C8CBED58E355FBD3A6E21077E001E57D0530B24D5ED8D5DBEB
        FBD10302107E1B5E2B2778505769BFD493EB19B0EF944D72883FE030F14027CA
        8E989C5FCCE8D1EACFC778FA3974C4944C5E9230E065877C6B296415F61AF0F5
        B12D0336EF203103403EAAC7CBDBAF109E03A71CB3525717DA08CB3629A30770
        9E26DA0EBA7FA38D71F216C243EEA74678CD3AB6B14F592166F6D3CF521F6168
        06F208726E2113534D0C628DE65703ED110C173F7B7084430B9FC4F87EF6B0BD
        7A20C5ACC50D58C60B7FB5B96F84D7AC635B5A4AB418FD031C6EE35DFB2E2FB1
        0000000049454E44AE426082}
      TabOrder = 9
      Visible = False
      OnClick = bfornecedor_codigoClick
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
    object pgravar: TFlatPanel
      Left = 643
      Top = 0
      Width = 486
      Height = 67
      ParentColor = True
      Visible = False
      ColorHighLight = 3355443
      ColorShadow = 3355443
      TabOrder = 8
      object bgravar: TAdvGlowButton
        Left = 8
        Top = 6
        Width = 78
        Height = 54
        Caption = 'Gravar'
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
          1F90000002754944415478DAC497314B1C4114C77F6F569354827042BC08769E
          B781408C972241B92A4D0AD1DCA58A1FC426AD5F43B0947858A4499AE3B44B38
          6C2CD2046CAE3AAE10E450B333296676A3B7E7EDEEDD061F0C2C3B33FF1FEFCD
          BC9937628CE1216C0AE0FDE187E887521A00AD95FD16034610AD56B4176C8891
          75A0E81A4007E818312D15784746E9763827D2707AA17DDDFA62C109B609EC1A
          A54B626458FF12B02446AA46E9CFC02F6007688C125523FA168116460E815286
          2896DC9C96D3C804AE2AA57F026B132CE39AD3A8A6055705BE01851CF650C169
          5593C08BC08181E9BC76AFD33A180CBB02505E609BD2FB39791AF35C29BD1F72
          063DDE9C704D23F394E2F1542C61D61CE31F58020F8CECE603153EBEF6D97EFB
          8227D3037023BB1278773C5EC99832F742EB95E7949E1658989D61E365299E6A
          9665C1DA0B36F2822ECFDB2D72D1BFE2FBD9EFD8B89065436D8FC15CA17B27A7
          F42EFBB1B1212B0C757112682D25F4362B11BC303BC3D6AB329E8A9FD34A84DA
          AA4F393D34628DBC249ECDCEF0E98DDD9D8FA63C0E7E9C11681341EB159F7271
          2E0B347672758675F6AF6FB8FE63137E79BE406DD54789584FC7877612C1BDCB
          3E7B27A75CF4AF002817E7A8557C6A151F7F4C4FEF808D98D67DA306E17E716E
          1268C4B26775E01D8D1A3C081F177A9B1586BAED2A8754F071A18ED18E76B5B1
          37C68EAB1C12E1E1776613B36386DC4E0DE038696EEFB23F1ED46A37EEA4930E
          3CDBB4DA06BAFFE13EEE6AADB643CEB00AE41CA80BDCE445745A75A73DB2E66A
          1A789793E75DA7D54C5B6536B556AB69D67CD49A3A8D66D6BAFA1C5847CC5652
          AAC552C6CE591F0C6FEC0993600DA091E909932AB31EE8D1F677002FBD397636
          4708BE0000000049454E44AE426082}
        Transparent = True
        TabOrder = 0
        OnClick = bgravarClick
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
        Layout = blGlyphTop
      end
      object bcancelar: TAdvGlowButton
        Left = 89
        Top = 6
        Width = 78
        Height = 54
        Caption = 'Cancelar'
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
        TabOrder = 1
        OnClick = bcancelarClick
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
        Layout = blGlyphTop
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 163
    Height = 528
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 13
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 7
      Top = 44
      Width = 147
      Height = 30
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Estoque'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 0
      Version = '2.1.1.5'
      OnClick = cySpeedButton1Click
      TMSStyle = 23
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 7
      Top = 222
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'C'#225'lculo de Pre'#231'os'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 1
      Version = '2.1.1.5'
      OnClick = cySpeedButton2Click
      TMSStyle = 23
    end
    object AdvSmoothButton3: TAdvSmoothButton
      Left = 7
      Top = 78
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Grade'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 2
      Version = '2.1.1.5'
      OnClick = cySpeedButton3Click
      TMSStyle = 23
    end
    object AdvSmoothButton4: TAdvSmoothButton
      Left = 7
      Top = 258
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Seriais'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 3
      Version = '2.1.1.5'
      OnClick = cySpeedButton4Click
      TMSStyle = 23
    end
    object AdvSmoothButton5: TAdvSmoothButton
      Left = 7
      Top = 114
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Composi'#231#227'o'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 4
      Version = '2.1.1.5'
      OnClick = cySpeedButton5Click
      TMSStyle = 23
    end
    object AdvSmoothButton6: TAdvSmoothButton
      Left = 7
      Top = 294
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Inf. Nutricionais'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 5
      Version = '2.1.1.5'
      OnClick = cySpeedButton6Click
      TMSStyle = 23
    end
    object AdvSmoothButton7: TAdvSmoothButton
      Left = 7
      Top = 438
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Foto'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 6
      Version = '2.1.1.5'
      OnClick = cySpeedButton7Click
      TMSStyle = 23
    end
    object AdvSmoothButton8: TAdvSmoothButton
      Left = 7
      Top = 330
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Rentabilidade'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 7
      Version = '2.1.1.5'
      OnClick = cySpeedButton8Click
      TMSStyle = 23
    end
    object AdvSmoothButton9: TAdvSmoothButton
      Left = 7
      Top = 150
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Tabela de Pre'#231'os'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 8
      Version = '2.1.1.5'
      OnClick = cySpeedButton9Click
      TMSStyle = 23
    end
    object AdvSmoothButton10: TAdvSmoothButton
      Left = 7
      Top = 366
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'CFOPs'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 9
      Version = '2.1.1.5'
      OnClick = cySpeedButton13Click
      TMSStyle = 23
    end
    object AdvSmoothButton11: TAdvSmoothButton
      Left = 7
      Top = 186
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Entradas'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 10
      Version = '2.1.1.5'
      OnClick = cySpeedButton12Click
      TMSStyle = 23
    end
    object AdvSmoothButton12: TAdvSmoothButton
      Left = 7
      Top = 402
      Width = 147
      Height = 32
      Appearance.PictureAlignment = taLeftJustify
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = clWhite
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.SimpleLayout = True
      Appearance.Rounding = 0
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      Caption = 'Sa'#237'das'
      Color = 3684661
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000B1200000B1201D2DD7EFC0000010149444154484B631805
        A3608480EFD19A4EEFE3F5E5A15CEA832F612A1B7E86293D7A9AEAC30915A23E
        F811AA78E45B98F26E281737F857E29EF6AFC46DFBBF22D77DFF0A89C4C5AE3B
        FF16B81EFB9FA0F1FF73B0D2C2FF35358C50E350C1BF62B78E7FA5AEBFFF1538
        CFFD97EF3089685CE0D8F337D77EF9FF78F5FF9F4394A762B5E07F5D08F7BF7C
        A79FFF0ADD82A04224811F210A67BF852AAD837231C1BF620BD17F790E1F80AE
        D1820A110D3E87A96CFB19AE7CEDFFCA954C50214CF02FD75AE47F9EC3FB7F05
        4E865021A2C1D7686D9317C9E662502E76F02FCF5CEC7F81D3FF7F854EA65021
        EA02604AE0FA57E05AF3AFD445122A340A46C1C8000C0C00E5569101905D2032
        0000000049454E44AE426082}
      TabOrder = 11
      Version = '2.1.1.5'
      OnClick = cySpeedButton11Click
      TMSStyle = 23
    end
  end
  object Pop1: TPopupMenu
    Left = 1188
    Top = 656
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Servicos1: TMenuItem
      Caption = 'Servi'#231'os'
      ShortCut = 115
      OnClick = Servicos1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = BitBtn5Click
    end
    object Regies1: TMenuItem
      Caption = 'Tabelas'
      ShortCut = 119
      OnClick = Regies1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 1240
    Top = 632
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object F31: TMenuItem
      Caption = 'Criar C'#225'lculo de Pre'#231'o'
      ShortCut = 116
      OnClick = BitBtn7Click
    end
    object ClculodePreo1: TMenuItem
      Caption = 'C'#225'lculo de Pre'#231'o'
      ShortCut = 118
      OnClick = AdvGlowButton1Click
    end
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto
    OnDataChange = dsproduto2DataChange
    Left = 1228
    Top = 648
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    OnDataChange = dsprodutoDataChange
    Left = 1216
    Top = 664
  end
  object dspreco: TDataSource
    DataSet = qrpreco
    OnDataChange = dsprecoDataChange
    Left = 1228
    Top = 648
  end
  object dsgrade_produto: TDataSource
    DataSet = frmmodulo.qrgrade_produto
    Left = 1176
    Top = 640
  end
  object dsserial_produto: TDataSource
    DataSet = frmmodulo.qrserial_produto
    Left = 1260
    Top = 656
  end
  object dscomposicao_produto: TDataSource
    DataSet = qrcomposicao_produto
    Left = 1240
    Top = 648
  end
  object qrcomposicao_produto: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrcomposicao_produtoBeforeInsert
    BeforeEdit = qrcomposicao_produtoBeforeEdit
    BeforePost = qrcomposicao_produtoBeforePost
    SQL.Strings = (
      'select * from c000027')
    Params = <>
    Left = 1232
    Top = 656
    object qrcomposicao_produtoprod: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'prod'
      LookupDataSet = qrproduto_loc
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 80
      Lookup = True
    end
    object qrcomposicao_produtoCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcomposicao_produtoCODPRODUTO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrcomposicao_produtoQTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrcomposicao_produtoPRODUTO: TWideStringField
      DisplayWidth = 6
      FieldName = 'PRODUTO'
      Size = 6
    end
  end
  object qrproduto_loc: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1204
    Top = 696
  end
  object qrinfnutricional_produto: TDataSource
    DataSet = frmmodulo.qrinfnutricional_produto
    Left = 1316
    Top = 672
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 1244
    Top = 600
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1232
    Top = 696
  end
  object qradic: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1300
    Top = 672
  end
  object dsadic: TDataSource
    DataSet = qradic
    Left = 1276
    Top = 136
  end
  object qrcodbarra: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrcodbarraBeforePost
    SQL.Strings = (
      'select * from c000055')
    Params = <>
    Left = 1224
    Top = 672
  end
  object dscodbarra: TDataSource
    DataSet = qrcodbarra
    Left = 1244
    Top = 696
  end
  object qrbarra: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1212
    Top = 656
  end
  object pop_barra: TPopupMenu
    Left = 1216
    Top = 720
    object excluircodigodebarra1: TMenuItem
      Caption = 'excluir codigo de barra'
      ShortCut = 122
    end
    object gravarcodigodebarra1: TMenuItem
      Caption = 'gravar codigo de barra'
      ShortCut = 27
      OnClick = GravarCodigodeBarra1Click
    end
  end
  object qrentrada: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1232
    Top = 704
  end
  object qrsaida: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1188
    Top = 728
  end
  object qrmov_entrada: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_entradaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1216
    Top = 648
    object qrmov_entradacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrmov_entradaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrmov_entradaCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrmov_entradaCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrmov_entradaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrmov_entradaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrmov_entradaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrmov_entradaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrmov_entradaCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object CDSos_entradaDATA: TDateField
      FieldName = 'DATA'
    end
    object qrmov_entradaNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrmov_entradaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrmov_entradaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrmov_entradaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrmov_entradaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrmov_entradaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrmov_entradaCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrmov_entradaSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrmov_entradaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrmov_entradaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrmov_entradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrmov_entradaICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrmov_entradaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrmov_entradaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrmov_entradaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrmov_entradaECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrmov_entradaECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrmov_entradaCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrmov_entradaCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrmov_entradaCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrmov_entradaCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrmov_entradaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrmov_entradaCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrmov_entradaLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrmov_entradaMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrmov_entradaLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object CDSos_entradaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrmov_entradaCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrmov_entradaMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrmov_entradaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrmov_entradaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrmov_entradaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrmov_entradaLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrmov_entradaCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrmov_entradaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrmov_entradaCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrmov_entradaORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrmov_entradaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrmov_entradaPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrmov_entradaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
    object qrmov_entradaMOV: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Size = 50
      Calculated = True
    end
  end
  object dsmov_entrada: TDataSource
    DataSet = qrmov_entrada
    Left = 1208
    Top = 688
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrproduto_movBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1276
    Top = 768
  end
  object qrmov_saida: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_saidaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1176
    Top = 672
    object StringField14: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrmov_saidaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrmov_saidaCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrmov_saidaCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrmov_saidaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrmov_saidaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrmov_saidaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrmov_saidaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrmov_saidaCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object CDSos_saidaDATA: TDateField
      FieldName = 'DATA'
    end
    object qrmov_saidaNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrmov_saidaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrmov_saidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrmov_saidaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrmov_saidaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrmov_saidaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrmov_saidaCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrmov_saidaSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrmov_saidaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrmov_saidaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrmov_saidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrmov_saidaICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrmov_saidaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrmov_saidaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrmov_saidaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrmov_saidaECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrmov_saidaECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrmov_saidaCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrmov_saidaCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrmov_saidaCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrmov_saidaCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrmov_saidaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrmov_saidaCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrmov_saidaLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrmov_saidaMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrmov_saidaLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object CDSos_saidaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrmov_saidaCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrmov_saidaMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrmov_saidaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrmov_saidaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrmov_saidaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrmov_saidaLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrmov_saidaCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrmov_saidaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrmov_saidaCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrmov_saidaORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrmov_saidaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrmov_saidaPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrmov_saidaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
    object qrmov_saidaMOV: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Size = 50
      Calculated = True
    end
  end
  object dsmov_saida: TDataSource
    DataSet = qrmov_saida
    Left = 1216
    Top = 672
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 1260
    Top = 632
  end
  object dsrentabilidade: TDataSource
    DataSet = QRRENTABILIDADE
    Left = 1224
    Top = 720
  end
  object QRRENTABILIDADE: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = QRRENTABILIDADEBeforeInsert
    BeforeEdit = QRRENTABILIDADEBeforeEdit
    BeforeDelete = QRRENTABILIDADEBeforeDelete
    SQL.Strings = (
      'select * from c000078')
    Params = <>
    Left = 1228
    Top = 648
    object QRRENTABILIDADECODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'd.Produto'
      DisplayWidth = 13
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object QRRENTABILIDADEPRODUTO: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 54
      FieldName = 'PRODUTO'
      Size = 40
    end
    object QRRENTABILIDADERENDIMENTO: TFloatField
      DisplayLabel = 'Rentabilidade %'
      DisplayWidth = 10
      FieldName = 'RENDIMENTO'
    end
    object QRRENTABILIDADERENTABILIDADE: TWideStringField
      FieldName = 'RENTABILIDADE'
      Required = True
      Visible = False
      Size = 6
    end
    object QRRENTABILIDADEQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Visible = False
    end
    object QRRENTABILIDADEVALOR: TFloatField
      FieldName = 'VALOR'
      Visible = False
    end
    object QRRENTABILIDADECODIGO: TWideStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
  end
  object popmenu1: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.6.2.1'
    Left = 1068
    Top = 400
    object Inventrio1: TMenuItem
      Caption = 'Invent'#225'rio'
      OnClick = Inventrio1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Movimentar Estoque'
      OnClick = MovimentarEstoque1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GrupoSubgrupo1: TMenuItem
      Caption = 'Grupo / Subgrupo'
      OnClick = GrupoSubgrupo1Click
    end
    object Fornecedor1: TMenuItem
      Caption = 'Fornecedor'
      OnClick = Fornecedor1Click
    end
    object MarcaFabricanteLaboratrio1: TMenuItem
      Caption = 'Marca / Fabricante / Laborat'#243'rio'
      OnClick = MarcaFabricanteLaboratrio1Click
    end
    object NaturezadeOperaoCFOP1: TMenuItem
      Caption = 'Natureza de Opera'#231#227'o - CFOP'
      OnClick = NaturezadeOperaoCFOP1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object otalizarestoque1: TMenuItem
      Caption = 'Totalizar estoque'
      OnClick = otalizarestoque1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AtualizaodePreos1: TMenuItem
      Caption = 'Atualiza'#231#227'o de Pre'#231'os'
      OnClick = AtualizaodePreos1Click
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Silver
    Background.Position = bpCenter
    Background.Color = 16448250
    Background.ColorTo = 16448250
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15724527
    IconBar.ColorTo = 15724527
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.ColorTo = 16249843
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 8816262
    Left = 1264
    Top = 552
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrprodutoBeforeInsert
    AfterInsert = qrprodutoAfterInsert
    BeforeEdit = qrprodutoBeforeEdit
    AfterEdit = qrprodutoAfterEdit
    BeforePost = qrprodutoBeforePost
    AfterPost = qrprodutoAfterPost
    AfterCancel = qrprodutoAfterCancel
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1208
    Top = 544
    object qrprodutogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'codgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 80
      Lookup = True
    end
    object qrprodutomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 80
      Lookup = True
    end
    object qrprodutoreceitas: TStringField
      FieldKind = fkLookup
      FieldName = 'receitas'
      LookupDataSet = frmmodulo.qrreceita
      LookupKeyFields = 'codigo'
      LookupResultField = 'RECEITA'
      KeyFields = 'CODRECEITA'
      Size = 100
      Lookup = True
    end
    object qrprodutocfopvendadentro: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopvendadentro'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_VENDA_DENTRO'
      Size = 200
      Lookup = True
    end
    object qrprodutocfopvendafora: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopvendafora'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_VENDA_FORA'
      Size = 200
      Lookup = True
    end
    object qrprodutocfopdevdentro: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopdevdentro'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 200
      Lookup = True
    end
    object qrprodutocfopdevfora: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopdevfora'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 200
      Lookup = True
    end
    object qrprodutocfopgarantiadentro: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopgarantiadentro'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 200
      Lookup = True
    end
    object qrprodutocfopgarantiafora: TStringField
      FieldKind = fkLookup
      FieldName = 'cfopgarantiafora'
      LookupDataSet = frmmodulo.qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'IND_CFOP_GARANTIA_FORA'
      Size = 200
      Lookup = True
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodutoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrprodutoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object qrprodutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object qrprodutoALIQUITA_CREDSN: TFloatField
      FieldName = 'ALIQUITA_CREDSN'
    end
    object qrprodutoCST_PIS: TWideStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object qrprodutoCST_COFINS: TWideStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
  end
  object qrpreco: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrprecoBeforeInsert
    BeforeEdit = qrprecoBeforeEdit
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 1368
    Top = 776
    object qrprecoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprecoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprecoDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoCP_VPRECOCOMPRA: TSingleField
      FieldName = 'CP_VPRECOCOMPRA'
    end
    object qrprecoCP_PIPI: TSingleField
      FieldName = 'CP_PIPI'
    end
    object qrprecoCP_VIPI: TSingleField
      FieldName = 'CP_VIPI'
    end
    object qrprecoCP_PRETENCAO: TSingleField
      FieldName = 'CP_PRETENCAO'
    end
    object qrprecoCP_VRETENCAO: TSingleField
      FieldName = 'CP_VRETENCAO'
    end
    object qrprecoCP_PFRETE: TSingleField
      FieldName = 'CP_PFRETE'
    end
    object qrprecoCP_VFRETE: TSingleField
      FieldName = 'CP_VFRETE'
    end
    object qrprecoCP_PICMS: TSingleField
      FieldName = 'CP_PICMS'
    end
    object qrprecoCP_VICMS: TSingleField
      FieldName = 'CP_VICMS'
    end
    object qrprecoCP_PREDUCAO: TSingleField
      FieldName = 'CP_PREDUCAO'
    end
    object qrprecoCP_VREDUCAO: TSingleField
      FieldName = 'CP_VREDUCAO'
    end
    object qrprecoCP_PPIS: TSingleField
      FieldName = 'CP_PPIS'
    end
    object qrprecoCP_VPIS: TSingleField
      FieldName = 'CP_VPIS'
    end
    object qrprecoCP_PCOFINS: TSingleField
      FieldName = 'CP_PCOFINS'
    end
    object qrprecoCP_VCOFINS: TSingleField
      FieldName = 'CP_VCOFINS'
    end
    object qrprecoCP_PSEGURO: TSingleField
      FieldName = 'CP_PSEGURO'
    end
    object qrprecoCP_VSEGURO: TSingleField
      FieldName = 'CP_VSEGURO'
    end
    object qrprecoCP_POUTROS: TSingleField
      FieldName = 'CP_POUTROS'
    end
    object qrprecoCP_VOUTROS: TSingleField
      FieldName = 'CP_VOUTROS'
    end
    object qrprecoVD_PICMS: TSingleField
      FieldName = 'VD_PICMS'
    end
    object qrprecoVD_VICMS: TSingleField
      FieldName = 'VD_VICMS'
    end
    object qrprecoVD_PREDUCAO: TSingleField
      FieldName = 'VD_PREDUCAO'
    end
    object qrprecoVD_VREDUCAO: TSingleField
      FieldName = 'VD_VREDUCAO'
    end
    object qrprecoVD_PSIMPLES: TSingleField
      FieldName = 'VD_PSIMPLES'
    end
    object qrprecoVD_VSIMPLES: TSingleField
      FieldName = 'VD_VSIMPLES'
    end
    object qrprecoVD_PPIS: TSingleField
      FieldName = 'VD_PPIS'
    end
    object qrprecoVD_VPIS: TSingleField
      FieldName = 'VD_VPIS'
    end
    object qrprecoVD_PCOFINS: TSingleField
      FieldName = 'VD_PCOFINS'
    end
    object qrprecoVD_VCOFINS: TSingleField
      FieldName = 'VD_VCOFINS'
    end
    object qrprecoVD_PIRPJ: TSingleField
      FieldName = 'VD_PIRPJ'
    end
    object qrprecoVD_VIRPJ: TSingleField
      FieldName = 'VD_VIRPJ'
    end
    object qrprecoVD_PCONTSOCIAL: TSingleField
      FieldName = 'VD_PCONTSOCIAL'
    end
    object qrprecoVD_VCONTSOCIAL: TSingleField
      FieldName = 'VD_VCONTSOCIAL'
    end
    object qrprecoVD_PDFIXA: TSingleField
      FieldName = 'VD_PDFIXA'
    end
    object qrprecoVD_VDFIXA: TSingleField
      FieldName = 'VD_VDFIXA'
    end
    object qrprecoVD_PCOMISSAO: TSingleField
      FieldName = 'VD_PCOMISSAO'
    end
    object qrprecoVD_VCOMISSAO: TSingleField
      FieldName = 'VD_VCOMISSAO'
    end
    object qrprecoVD_PDESCMAX: TSingleField
      FieldName = 'VD_PDESCMAX'
    end
    object qrprecoVD_VDESCMAX: TSingleField
      FieldName = 'VD_VDESCMAX'
    end
    object qrprecoPCUSTO_COMPRA: TSingleField
      FieldName = 'PCUSTO_COMPRA'
    end
    object qrprecoVCUSTO_COMPRA: TSingleField
      FieldName = 'VCUSTO_COMPRA'
    end
    object qrprecoPCUSTO_VENDA: TSingleField
      FieldName = 'PCUSTO_VENDA'
    end
    object qrprecoVCUSTO_VENDA: TSingleField
      FieldName = 'VCUSTO_VENDA'
    end
    object qrprecoPRECO_LIQUIDO: TSingleField
      FieldName = 'PRECO_LIQUIDO'
    end
    object qrprecoPRECO_UNITARIO: TSingleField
      FieldName = 'PRECO_UNITARIO'
    end
    object qrprecoFRACAO: TSingleField
      FieldName = 'FRACAO'
    end
    object qrprecoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprecoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprecoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprecoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprecoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprecoPRECOVAREJO1: TSingleField
      FieldName = 'PRECOVAREJO1'
    end
    object qrprecoPRECOVAREJO2: TSingleField
      FieldName = 'PRECOVAREJO2'
    end
    object qrprecoPRECOVAREJO3: TSingleField
      FieldName = 'PRECOVAREJO3'
    end
    object qrprecoPRECOVAREJO4: TSingleField
      FieldName = 'PRECOVAREJO4'
    end
    object qrprecoPRECOVAREJO5: TSingleField
      FieldName = 'PRECOVAREJO5'
    end
    object qrprecoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprecoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprecoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprecoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprecoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprecoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprecoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprecoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprecoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprecoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprecoTIPO_REGIME: TIntegerField
      FieldName = 'TIPO_REGIME'
    end
    object qrprecoTIPO_CALCULO: TIntegerField
      FieldName = 'TIPO_CALCULO'
    end
    object qrprecoVCUSTO_COMPRA_ANT: TSingleField
      FieldName = 'VCUSTO_COMPRA_ANT'
    end
    object qrprecoPRECOVAREJO1_ANT: TSingleField
      FieldName = 'PRECOVAREJO1_ANT'
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
    end
    object qrprecoPIS_ENTRADA_P: TFloatField
      FieldName = 'PIS_ENTRADA_P'
    end
    object qrprecoPIS_ENTRADA: TFloatField
      FieldName = 'PIS_ENTRADA'
    end
    object qrprecoCOFINS_ENTRADA_P: TFloatField
      FieldName = 'COFINS_ENTRADA_P'
    end
    object qrprecoCOFINS_ENTRADA: TFloatField
      FieldName = 'COFINS_ENTRADA'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
    end
    object qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1268
    Top = 216
  end
  object QUERY1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1280
    Top = 808
  end
  object qrvenda_mes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(qtde) sum_0, '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032)  '
      ' from c000032')
    Params = <>
    Left = 1268
    Top = 760
    object qrvenda_mesSUM_0: TExtendedField
      FieldName = 'SUM_0'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM: TExtendedField
      FieldName = 'SUM'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_1: TExtendedField
      FieldName = 'SUM_1'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_2: TExtendedField
      FieldName = 'SUM_2'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_3: TExtendedField
      FieldName = 'SUM_3'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_4: TExtendedField
      FieldName = 'SUM_4'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_5: TExtendedField
      FieldName = 'SUM_5'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_6: TExtendedField
      FieldName = 'SUM_6'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_7: TExtendedField
      FieldName = 'SUM_7'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_8: TExtendedField
      FieldName = 'SUM_8'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_9: TExtendedField
      FieldName = 'SUM_9'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_10: TExtendedField
      FieldName = 'SUM_10'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesCOLUMN_0: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_0'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_1: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_1'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_2: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_2'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_3: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_3'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_4: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_4'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_5: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_5'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_6: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_6'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_7: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_7'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_8: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_8'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_9: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_9'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesCOLUMN_10: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_10'
      Size = 30
      Calculated = True
    end
    object qrvenda_mesColumn: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column'
      Size = 30
      Calculated = True
    end
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1256
    Top = 784
  end
  object qrcondicional: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select mov.*, cli.nome from c000032 mov,'
      'c000007 cli'
      'where mov.codcliente = cli.codigo'
      'order by vencimento')
    Params = <>
    Left = 1228
    Top = 816
  end
  object dscondicional: TDataSource
    DataSet = qrcondicional
    Left = 1272
    Top = 720
  end
  object IdSocksInfo1: TIdSocksInfo
    Left = 1224
    Top = 616
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Produto'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1168
    Top = 808
  end
end
