object frmproduto_entrada: Tfrmproduto_entrada
  Left = 320
  Top = 214
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTA DE ENTRADA | Simplificada'
  ClientHeight = 474
  ClientWidth = 788
  Color = clBtnFace
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
  object Bevel1: TBevel
    Left = 0
    Top = 417
    Width = 788
    Height = 3
    Align = alBottom
    ExplicitWidth = 770
  end
  object panel99: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 417
    Align = alClient
    TabOrder = 1
    object pficha: TFlatPanel
      Left = 0
      Top = 0
      Width = 766
      Height = 405
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
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
      object Label2: TLabel
        Left = 158
        Top = 12
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 616
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
      object Label4: TLabel
        Left = 278
        Top = 12
        Width = 31
        Height = 13
        Caption = 'CFOP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 44
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 555
        Top = 81
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOT.PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 555
        Top = 105
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DESCONTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 555
        Top = 129
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL DA NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 8
        Width = 73
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsentrada_produto2
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object edata_cadastro: TJvDBDateEdit
        Left = 656
        Top = 8
        Width = 97
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATA'
        DataSource = dsentrada_produto2
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
        ButtonWidth = 18
        ShowNullDate = False
        TabOrder = 3
        OnEnter = edata_cadastroEnter
        OnExit = edata_cadastroExit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 216
        Top = 8
        Width = 57
        Height = 21
        DataField = 'NUMERO'
        DataSource = dsentrada_produto2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object ecfop: TDBEdit
        Left = 320
        Top = 8
        Width = 47
        Height = 21
        DataField = 'CFOP'
        DataSource = dsentrada_produto2
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = ecfopExit
        OnKeyPress = DBEdit1KeyPress
      end
      object bloccfop: TBitBtn
        Left = 368
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
        TabOrder = 8
        OnClick = bloccfopClick
      end
      object DBEdit21: TDBEdit
        Left = 393
        Top = 8
        Width = 209
        Height = 21
        Color = clBtnFace
        DataField = 'natureza'
        DataSource = dsentrada_produto2
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object efornecedor: TDBEdit
        Left = 80
        Top = 40
        Width = 64
        Height = 21
        DataField = 'CODFORNECEDOR'
        DataSource = dsentrada_produto2
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = efornecedorExit
        OnKeyPress = DBEdit1KeyPress
      end
      object blocfornecedor: TBitBtn
        Left = 144
        Top = 40
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
        TabOrder = 10
        OnClick = blocfornecedorClick
      end
      object DBEdit23: TDBEdit
        Left = 169
        Top = 40
        Width = 432
        Height = 21
        Color = clBtnFace
        DataField = 'fornecedor'
        DataSource = dsentrada_produto2
        TabOrder = 11
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 675
        Top = 76
        Width = 85
        Height = 21
        DataField = 'VALOR_PRODUTOS'
        DataSource = dsentrada_produto2
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit11Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 675
        Top = 100
        Width = 85
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dsentrada_produto2
        TabOrder = 7
        OnEnter = DBEdit1Enter
        OnExit = DBEdit12Exit
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 675
        Top = 124
        Width = 85
        Height = 21
        DataField = 'TOTAL_NOTA'
        DataSource = dsentrada_produto2
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 67
        Width = 566
        Height = 82
        Caption = 'Resumo da Nota / Confer'#234'ncia'
        TabOrder = 5
        object Label3: TLabel
          Left = 7
          Top = 17
          Width = 57
          Height = 24
          Caption = 'BASE DE '#13#10'C'#193'LCULO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 155
          Top = 17
          Width = 53
          Height = 24
          Caption = 'VALOR'#13#10'DO ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 295
          Top = 17
          Width = 42
          Height = 24
          Caption = 'BASE'#13#10'SUBST.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 427
          Top = 17
          Width = 42
          Height = 24
          Caption = 'ICMS'#13#10'SUBST.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 7
          Top = 54
          Width = 38
          Height = 12
          Caption = 'FRETE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 155
          Top = 54
          Width = 50
          Height = 12
          Caption = 'SEGURO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 295
          Top = 46
          Width = 46
          Height = 24
          Caption = 'OUTRAS'#13#10'DESP.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 427
          Top = 46
          Width = 46
          Height = 24
          Caption = 'VALOR'#13#10'TOT.IPI:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 67
          Top = 20
          Width = 77
          Height = 21
          DataField = 'BASE_CALCULO'
          DataSource = dsentrada_produto2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 215
          Top = 20
          Width = 77
          Height = 21
          DataField = 'VALOR_ICMS'
          DataSource = dsentrada_produto2
          TabOrder = 1
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 347
          Top = 20
          Width = 77
          Height = 21
          DataField = 'BASE_SUB'
          DataSource = dsentrada_produto2
          TabOrder = 2
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 479
          Top = 20
          Width = 77
          Height = 21
          DataField = 'ICMS_SUB'
          DataSource = dsentrada_produto2
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 67
          Top = 49
          Width = 77
          Height = 21
          DataField = 'FRETE'
          DataSource = dsentrada_produto2
          TabOrder = 4
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 215
          Top = 49
          Width = 77
          Height = 21
          DataField = 'SEGURO'
          DataSource = dsentrada_produto2
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 347
          Top = 49
          Width = 77
          Height = 21
          DataField = 'OUTRAS_DESPESAS'
          DataSource = dsentrada_produto2
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 479
          Top = 49
          Width = 77
          Height = 21
          DataField = 'VALOR_TOTAL_IPI'
          DataSource = dsentrada_produto2
          TabOrder = 7
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
      end
    end
    object panel22: TPanel
      Left = 1
      Top = 164
      Width = 786
      Height = 252
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 786
        Height = 249
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        OnChange = PageView1Change
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 786
          Height = 229
          Caption = 'Itens da Nota'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 786
            Height = 229
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 191
              Width = 764
              Height = 33
              BevelOuter = bvNone
              TabOrder = 3
              object bincluir_item: TAdvGlowButton
                Left = 2
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F5 | Incluir'
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
                  650041646F626520496D616765526561647971C9653C000002134944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E000288A0013043F69CDBC8B0FFE2
                  56868F5FDF33FCFEF39BC126492DE9C8BC5BA7010208A701C84EDD767215C385
                  E77B18ECAD4D1964845419F65FDDC0F08DF571BA79B6E41780006222643BC8A0
                  8DC797321868E833FC65FACBA02FE9CAF097F1378385AE15483A1B208098F039
                  1B46BFFAF09C81959187C14F33172C56EC3C8B41594C0FC4E40008206403FE63
                  3304843F7FFBC870F5D931868EDD8960F18E5D890C775F5D02317F000410283D
                  8334FE03C6F177108DCD35E10E290C272E1D6360636061D87C791A031B230BC3
                  910B07415253010288119A9D65A1D919A797F4A244B339045842800EE2026AF9
                  F6E7FBBF8567E7BDC8020830001BDD194BE2EFEAED0000000049454E44AE4260
                  82}
                TabOrder = 0
                OnClick = bincluir_itemClick
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
              object balterar_item: TAdvGlowButton
                Left = 106
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F7 | Alterar'
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
                  650041646F626520496D616765526561647971C9653C0000026A4944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208018A12E30036A3EFEF3E74F26201B6E385023C3BF7FFF187EFDFA
                  C5202C2CCCF0E2E606862F17D63030F3E8327C7D739081F1C7D3788000626184
                  EA00524CCCCCCC0C4C4C4C604D200062432D60F8FE623303F3CBD30C12BA310C
                  FC8A860C1FEEAB33DCD835A70B208058903D08D200A34186800C0419F0EFFD3E
                  86DF7F6F3208A95A33BCBB7B9D818DF117032F9F04038FB01C3F4000611800F3
                  0288FDF7EF5F867F1F4F30B0FDBECAC0AFE4CEF0F3F90A06362E468687176E30
                  FCF8F6F3E3D7AF9FCD010208C50064FF83D8BFDE1E65F8F7613F03BF8A1FC38F
                  A7331898D8FE30B0F2C83370FF7FC23065E3A59CA9DBEEDE020820265CF1F5F2
                  C66686AFCF7641354F676062FDCDF0EB9302C3EB231719849D9B19409A41EA00
                  0208AB012F6F6E63F8F4EC388398B637C3AF17731898D9FE33FCFC240FD47C8E
                  41D47F3203BBB8065C2D4000B1A06BBE7D7C25C3BFCF5719FE304A313CBF3C99
                  41508C8DE1C73B59860F676F3048064F6360E69544510F1040182EB87C6C1E83
                  964D1A03FBE3230CB7361E65B8B0F31DC3AD7D1718C43CDB3134830040006118
                  70FBDE6B865F57B73028EADB327073AB33BCBC7C97413DA487815D44091C33B0
                  A886018000C2F0C2D53BAF1826CC9ACE60AAA9C8C0ABACC7E09C329F814B481A
                  67E6000820640340998271D1CE270C44807FD07CF41F2080409902A4F11F30D1
                  7C874910D20C54FB0D48FF0571000208969964A1D99989813800D2FC0AA8F731
                  40800100C0FB079BECFEDE790000000049454E44AE426082}
                TabOrder = 1
                OnClick = balterar_itemClick
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
              object bexcluir_item: TAdvGlowButton
                Left = 210
                Top = 3
                Width = 100
                Height = 24
                Caption = 'Del | Excluir'
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
                  650041646F626520496D616765526561647971C9653C0000021B4944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E00028889810800D2FC7CCB4C868B
                  D9260CC77CF9198EC629334C35678A07C90104104E17203BF5D9E6190C9F4EAE
                  66300849666057D466F87E691703E7E1DD193BB9AFDF040820822E0019F470DD
                  440615FB00068EBB07181817463270DD5BCFA0282FCC044C4A050001C482CFD9
                  D07CC2F0EBF943060E09450606AF2244E035483230FF63540008206403FE4313
                  1546B4B28849327CBBB095817B5316C3CFEF2F18BE01C53E7F6266F8CBCCF00C
                  208040E919A4F11F308EBF83686CAE910FC865B876F228C3F31F9C0C9F985919
                  DEBF6364B8FD94F11F50E334800062843A53169A9D7186C93C37F178D1BF6F02
                  39FF334AFC60FCFFFAC32F8605D187FE94030418000F8C1BB2E02B3552000000
                  0049454E44AE426082}
                TabOrder = 2
                OnClick = bexcluir_itemClick
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
              object BitBtn6: TAdvGlowButton
                Left = 314
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F11 | Finalizar'
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
                  650041646F626520496D616765526561647971C9653C000002014944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E000288A00130438A0EA531FCFEF5
                  87E1D7AFDF0CBF7FFC86CB010410132E4DB08402C33F819AEC151C191C959D18
                  BE7FFB09570710404C846C87F9F9E7F79F0C3FFFFC64F8FEE70703072307837A
                  80B20E481C208058F0391BA479C2A94E86EBCFAF3088728A31FCF8F38BE1D7DF
                  5F0CA282E20CA2FA42D3F93479C3000208D905FFB119926756CAC0C5C0CBF0E3
                  07D005BF7F80F18B572F18BE7EFEFEE2E7B79F7E0001C408CD8D26C0D4761018
                  651CB8BC95B93899E1FBFF6FE04064F8C2F86F55C97A33A0DEB3000104334016
                  9A9DF1868951B1DEBCDFDF7FFDB93CED4632286B03F53E06083000A9CF31C38A
                  3034D80000000049454E44AE426082}
                TabOrder = 3
                OnClick = BitBtn6Click
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
            object FlatPanel3: TFlatPanel
              Left = 664
              Top = 196
              Width = 89
              Height = 24
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 0
              object Label17: TLabel
                Left = 7
                Top = 5
                Width = 29
                Height = 13
                Caption = 'Itens:'
              end
              object DBText1: TDBText
                Left = 45
                Top = 5
                Width = 29
                Height = 13
                Alignment = taCenter
                DataField = 'ITENS'
                DataSource = dsentrada_produto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object grid1: TwwDBGrid
              Left = 0
              Top = 0
              Width = 786
              Height = 191
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F')
              Selected.Strings = (
                'CODPRODUTO'#9'9'#9'C'#243'digo'#9#9
                'produto'#9'45'#9'Produto'#9#9
                'QTDE'#9'11'#9'Qtde.'#9#9
                'UNITARIO'#9'14'#9'Unit'#225'rio'#9#9
                'TOTAL'#9'12'#9'Total'#9#9
                'ICMS'#9'9'#9'ICMS'#9#9
                'IPI'#9'7'#9'IPI'#9'F'#9
                'CFOP'#9'8'#9'CFOP'#9#9
                'MOVIMENTO_ESTOQUE'#9'10'#9'MOVIMENTO_ESTOQUE'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsentrada_item
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnKeyPress = grid1KeyPress
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clBlack
            end
            object panel_item: TFlatPanel
              Left = 4
              Top = 192
              Width = 605
              Height = 29
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 2
            end
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 786
          Height = 229
          Caption = 'Faturamento'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 786
            Height = 229
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnClick = Panel1Click
            object wwDBGrid1: TwwDBGrid
              Left = 0
              Top = 0
              Width = 786
              Height = 229
              ControlType.Strings = (
                'FILTRO;CheckBox;1;0'
                'SITUACAO;ImageIndex;Original Size'
                'situacao2;ImageIndex;Original Size')
              Selected.Strings = (
                'DATA_VENCIMENTO'#9'12'#9'VENCIMENTO'#9#9
                'DOCUMENTO'#9'12'#9'DOCUMENTO'#9#9
                'ESPECIE'#9'10'#9'ESP'#201'CIE'#9#9
                'VALOR'#9'11'#9'VALOR-R$'#9#9
                'DESCONTO'#9'10'#9'DESCONTO'#9#9
                'ACRESCIMO'#9'10'#9'ACR'#201'SCIMO'#9#9
                'VALORPAGO'#9'9'#9'VLR.PAGO'#9#9
                'DATA_PAGAMENTO'#9'13'#9'DT.PAGTO.'#9#9
                'LIQUIDO'#9'10'#9'LIQUIDO'#9#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dscontaspagar
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
          end
        end
      end
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 420
    Width = 788
    Height = 54
    AdaptiveColors = True
    Align = alBottom
    BorderStyle = bsNone
    Color = clBtnFace
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 0
    ParentColor = False
    object bfechar: TAdvGlowButton
      Left = 705
      Top = 2
      Width = 77
      Height = 48
      Caption = 'ESC | Sair'
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
      TabOrder = 11
      OnClick = bfecharClick
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
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 566
      Top = 2
      Width = 43
      Height = 48
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3841334346444537453238323131453241303338433143424444
        3034363345372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A384133434644453845323832313145324130333843314342444430343633
        4537223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3841334346444535453238323131
        453241303338433143424444303436334537222073745265663A646F63756D65
        6E7449443D22786D702E6469643A384133434644453645323832313145324130
        3338433143424444303436334537222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB28C4A590000045C4944415478DABC99
        7B6856651CC7CFFB5A536BD331A7B9E698FF04669B82358BB270102A93794BFD
        C3896D828817C226614520188B225D4514D11FEAD489CE0B9B5DC4047173CD34
        F21AC950E765CA26E6445D2DB5B6BE3FFB1EFAF178CE79CF79CFD9BEF0E17D9E
        7379DFDF79CEF3FC2ECF1BB36ACF5B2134063C05B2412648E1F1BFC03570159C
        061792FD814792B8670428019341A18FEB3BC101500B76B0EF5BB10023F81C78
        83C6C51DCEDF07771F7CA7653DC64F53374115F8045C8ED2C0CF689CD645B007
        FC028E821B7CB5B68159E025300ECC04E9EADE6EB0127C1AD64019B58DE01975
        6C3B47616F80372506CF066560A23AFE2D5808AE27636011F84EF58F81251CAD
        309AC3579CCDBE8CFC78D0E27471DCE54BE619C6AD01CF46609CC585222B7F13
        FB43C04990EFD74031A45AF51780D556B4EA02AF838FD84F054D604022036522
        D7ABFE6B60B3D57B7A1B5428231B1219B8153CCEF63B60B7D5FB7A0FD4B15D00
        DE755B24AF82FD6A7515FBFC8147E903C34AA2CD48B69F046DE608AE37E69D5F
        0D06FBE8179B143F82491EF7F52844A5EA5CA53982AFA8B95749271A442F73D5
        A7399C5B06BE7431F07F3BFED3CFF4BD161D7DBB3D824B95874F66C51EE2023B
        E870EE0B735E79A8DCF0970F5EF140305DF9A8CE24E7503793872A877315C614
        F27AD0736C97D806162AFF733082C95ECAD86DAA8C8B2F91EA5498CD881B71B6
        3E22D7B102CC07FF18C7A7321AA57BDCFB1B3FFB8109920FE6F08004EC33EAC2
        7E9CA8C9E83EA3512E78DFF01605CA0827FDAADAD96260063BEDC685C3416BC8
        9174BBDFEBC1CF30AFEC2F06C61962447F3C94E984578E4742E216D1244EDFB1
        1F246EF823373FD5DB8AB9FC6E4F5CB995548710D657D28B49EC18C4769BCCC1
        DF55FCD3EA603A144B72343B58E9BD19B038CB53D561ABDC78851D592C63993C
        8A6E331D0AA36A7A03536F818F5DEE795AB5AFC49541764C8D42A35813CF7358
        6C73C15A8F7BF395AB6A8C337AD82B785204C64D00271CA64C170BA61D09EE9F
        C5CFC3F216C5C0BF410D0F4A0E382C8471B3184FFB3BF8C3313E22551137062C
        3B93B7FDCF574681948CA4E2DBE512BAF25412E0A50F55BB561B28F1B199EDC5
        EA29FC48E2EA372E39DF1E1A77DBC7F714ABF9F7B5ED5D74CAFF3CF889EDC600
        0B268BC5F76595FAC7D8DE9920A3B695C2147F087DA27CDE722ADCB7D879188B
        EBF23E72D40D6A4096E82967C6C94574B0161D6C691F1857A98CAB37D6C34306
        8A2B7841F537F4F228AEE74058F49B13FDEC2C9CE5DE9FAD75AC2B5222342C8B
        9B4F6576CCE54E98EFBD991F3892F7545125AB7C5A04C62DA7CB99A2064456FA
        A520068A8E80D12C052D16D5752CEE8B5D4A4C370DE74A97B0FA39B7E3EC222D
        4FCDFBC0FB83B656810F8C0792A4F27B6ECB1DE708DCE135698CC7123D5EE4AE
        854E1AA4BC900DD16D891345FF5BC0B9AA18CAF4F06D5E997833331C99D77FFA
        CB6483EFF2CBEB912DDD19740F4F24B8BE85F1B986231E30D50EF737C45096AD
        39248B057C2BF34C79EDA71CEA1DDFFA578001007948F747DB27E77300000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 10
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 522
      Top = 2
      Width = 43
      Height = 48
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3730373643394131453238323131453238424631414239324639
        3531323732392220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A373037364339413245323832313145323842463141423932463935313237
        3239223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3730373643393946453238323131
        453238424631414239324639353132373239222073745265663A646F63756D65
        6E7449443D22786D702E6469643A373037364339413045323832313145323842
        4631414239324639353132373239222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E85C699DD000004694944415478DABC99
        7D6855651CC7CFBD5397F992D82A6F6BE83F41D636415BBE4DD9302C16B39AD5
        1F2DDA1688CC22D4105F10054551D0A58822FEA1992ECA556CAB940AC5AD65A5
        942EC531342DA76C922FB8ADE6FBFCFEC6F7C08F67E7DC7BEE3967FBC287FB3C
        E7EDFEEE739EE7F7F2DC8855FD971540D9E069900ED2C0201EBF092E834BE024
        38EFF70B06F8B8E729500C5E02F91EAEEF04874035A862DFB322498CE0F3E043
        1A1775387F07DCEA79A6653DCC4F53D7C16EF031B810A6819B699CD6DFA016FC
        0E8E82AB7CB5B6813130158C07AF8311EADEFBE023B029A881326A9F80E7D4B1
        2F380A0792785362F01BA00CE4A9E3DF82F7C0BF7E0C2C00DFA9FE1FA09CA315
        446FF215A7B32F23FF0238E77471D4E5216F1BC6AD02134230CEE2429195FF29
        FB8F824690E5D54031A452F5DF052BAD70D5054AC07AF6878223E0A14406CA44
        AE53FDD9608FD5775A02D62823EB1319F81918C2F652F0B5D5F75A0E6AD8CE01
        CBDC16C98BE047B5BA0A3D7EC140FAC0A092683386ED2741AB39823B8D79E755
        8F80EFE9178F287E063393784EA96A579823385DCDBD0A3AD164348DAB7E98C3
        B9F7C1368FCF3946DF6BD1D1B7D923384F79783F2BF6272EB0C30EE7B69AF32A
        8E161AFEB2E7150F06AF2A1FD5E9730EDD67F2B0DBE1DC1A630AC5FBA167D92E
        B60DCC57FEE7700893BD94B1DB5419175F22D5A8303B326AC4D9BA905CC77CF0
        0EB8671C7F85D168449C7B4FF33305E44A3E98C10312B09BD485299CA87E7487
        D16834586D788B1C1A3119FCE370EF29D54E170347B2D3665C380AB4041C49B7
        FB631C8C19E017E35C13F3CA543130CA1023FAAF57A6135C19711292C1F497E5
        C63512A73BEC1F2227BA5D1ED06DF58F4A8CC1D0DFDB1D556E65A84308EB6B49
        CA35C9584C62C770B65B650E5E51F14FEB1AD3A188CFD1BCC64A6F814B71268B
        6785C3F14C551DB6C88D17D991C5328EC9A3A89DE9501055D21B985A0436B8DC
        3356B52F0E5006D931B5318457F70C38E8F056446F3162B9294BB9AA8628A387
        BD826786605C2E38E1605C170BA6AA04F717F153DC4FBB187817ECE341C9011F
        0F605C11E369AA833FCCF610A90AB83160D999BCED7FB61B05921F893FFBCA25
        7465AA24209ED6A976B53650E26333DB73D5AFF02289ABDFB8E47CB534AEDDC3
        730AD5FCDB617B179DF24F04BFB2DDC005E3453116DF1754EA1F61FBCB24CA86
        5696A0F7F879C3A970DF6BE7612CAE17F65334A9570352AEA79C1927E7D0C15A
        74B0A5FD605C8532AECE580FBD0CEC62E8B1B5AB8F47712707C2E25E629E979D
        8533DCFBB3B59175C5A0100D8B71F3A9CC8EB9DC09F3BC37F30347F2B62AAA64
        95CF0AC1B80FE8725E560392E992BCBA1A28FA0D3CCB52D062515DC3E2BED0A5
        C474D328AE7409A35BB81D671769996ADE27BD3F686B31586BFC20492AF7735B
        EE3847A083D70C633C96E83185BB163A6990F24236443F0FBA81A9355A154369
        7192DC78997833331C99D7FF7BF9D2888F5D7E793DB2A5FB1ADDC31309AE3FC7
        F8BC8F239E942201FF86788C656B0689B1806F619E29AFFD4F877AC7B31E0830
        00629EF941A5EB70210000000049454E44AE426082}
      Transparent = True
      TabOrder = 9
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 477
      Top = 2
      Width = 43
      Height = 48
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3636444446363933453238323131453241363446383544464531
        4143424143432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A363644444636393445323832313145324136344638354446453141434241
        4343223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3636444446363931453238323131
        453241363446383544464531414342414343222073745265663A646F63756D65
        6E7449443D22786D702E6469643A363644444636393245323832313145324136
        3446383544464531414342414343222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA5EAF8040000046C4944415478DABC99
        798C4D571CC7EF7BF30683D1D86267340493D61A5B53662248282AB65882B47F
        8890A0B5A682109922B14DAC91D8D24108B58E25922176D52694204288655A86
        4CEC2586EF8FEF955F4FEE7DEFDE77EFCC2FF9E49D7BDEBDE7FDEE39BFF35BCE
        8B58BB6F5A01A41268091A81FAA00188824270975C018F92FD815892CFF50643
        4017F065827BFF0527C06EF03B78E9E787223E66B022980C46806671EE7BFF71
        5C672902BF8165E04E980A0E05B9A0A6EA7B078E82D3E012B8069E811290CE65
        6F03DA72C6D3D5B372CF2F60615005CBF18D07AB3E516639C807FF789C7D512E
        1B4C00DD55FF1F6018B8998C82D5C059D094D7623BD3C10A2B98F4E30B66F0FA
        0DE80ACE39DD1C75194496E7B252EE1068128272227B69C3ABD42AC944F4F4A3
        E0295087ED0DA0175D475822B3369E9BCE96C36A42E22A780CD4637B29F8D12A
        3D59027E50D7329369F1141C0BB2D816DFF5B355FAB2911361DBFD3AB74DF205
        780C52F8294BFCD6E38F0C02A9F48116DB0DC17A1FA62113F22DDB9DEC4DA323
        C9222A6771DADF7AF2A39F22443F87EFF683953E66721843A3C826D05C2F710D
        3086EDBFC13E0F0356E14E77526E1CE80B8A7D28780FAC655B767907AD607F75
        E30C0F8335A172990EDF0D04AB93B4C7D9C67EF8ACE048F516F90906C9623469
        60F4FFC7E46157800DF350AD9E2423B12897AA333B130D3E986E28CDE87F005A
        839321ECEA232A95CB8E72E7A42AFB73932960BB43E6B2857EF35A486EE7846A
        B78A31D1B4E5AACB43F3C02C877EC968EE8369F4617E25C297CC014FD977113C
        E178F563CA96DED0F04D912D3F2A4EC23B3584595BA314B44D4614AC11533157
        6E78AE6E4A614CEE5806D1C4F4B9B61E95A346F61B31EC6B935536E2968147A2
        2A14A51BBBB384FEEC1BF0CA658012E5FD83C87B8762ECE34CC668E422E5410B
        70DEB8F90CFBCF287330ED478CBC96F2067EC5CCCC6BF3F3895650E42B07052D
        163899F451ED8D6C681EBFCF0B69B95BA8DAE76E94CEF51D3B32E33C58CCF878
        C0E84F51955A1892A5DA57A2F43917D8F1BD8701FA30CB36652273BBA092CDCF
        D7A0C08EC5792A09E8E26110C9B2673AF48F9641E3941289A4B2AA20F7C8E6B4
        07DA61A4E15E24877585D30C147B7C5153E6AA975B6566D45B59A0DB3F72DCE3
        A0528DCD317C595D709DA710451EC7A94A73B3E8BA1A9A0AD6618811B90D1A87
        604FA93ECA867DB46F911E3CB5F89FAD142ABBCA602A1F76087393194AB983B6
        724E555D0E8F23EC1D3DBF0CC2DC00F02BDB2FC0F04475715715AC65461794A2
        7292C9EF347C607122055F33FEDA4A4E67D29016B272B26337AB6BD9507F7A3D
        FA90CCBA15EB638BF9E00DE3942B59E940457481F41D3373CF673322B71817F7
        F3BA1E53FE022A5CD1A76272BEB38D05795B3B9431B6E7073DC09C04161B2F24
        B62247BA7F31B12DE4119DA44E154075CE563BD6CE19C698B90C8F810E30B588
        E3FC89E1ACAA4B4E672B58DE25F52A6158CD55F13F3405CD7829C57E375E2792
        021EAFE5B1F6F6916A07FB1B42A2CDD7B4CF5A5C5ABB002B62AE7983857E52F2
        418001005E72FB79D2DD375A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 8
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 433
      Top = 2
      Width = 43
      Height = 48
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
        702E6969643A3931343245463331453238323131453241463535413234313741
        3446453836432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A393134324546333245323832313145324146353541323431374134464538
        3643223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3931343245463246453238323131
        453241463535413234313741344645383643222073745265663A646F63756D65
        6E7449443D22786D702E6469643A393134324546333045323832313145324146
        3535413234313741344645383643222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E6D15A350000004654944415478DABC99
        7F68565518C7EF7BF7CE39DB14733297BF6618BAA1AE268E12DD86A8A02D956C
        E29414FD2324C14C33A5A0486459623F863F0952C36924EA4C5B2AC29295E44F
        F0C7683116C9CA952E1956560B67DF47BFB79E0EF7BEEFBDEF7BB7073EECDCF3
        9EF7BCCF3DE739CF8FB38855D36C25210F80316028180406031BB48216D2006E
        24FA03D104BF371DCC0113C1C371C6FE0CEA410D38086E07F9A1488015EC0556
        82F960448C7177EFCDEB2E6D6037780F5C0D53C1B9A00AF4577D77C009700A5C
        028DE057D00932B9ED8F8142AE78A6FAAE8C7905BC95AC823DF8C6E5AA4F9479
        1FD4829F7CAEBE28570A9681C9AAFF2CA800CD8928F820F81A3CC267B19DD560
        93959CCCE00BE6F2B9031483D36E836D8F49647BAE28E58E82E1212827F2296D
        788BDA255988A94114FC0AE4B0BD034CA3EB084B64D596F2D039724C2D484C05
        BF0003D97E172CB6BA4EDE018BD4B3AC647A2C05978012B6C577ADB0BA5E7672
        211CBBFFC0EB90F401BF8014FECDE156FC37D65B9E01A9F48116DB43C087014C
        43166402DB8F3B87464792B7A99CC565FFDB971FBD1F2166B87C76046C0EB092
        150C8D22BBC048BDC559E039B62F83C33E26ECCD93EEA6DCF3E029D01E40C11F
        C076B6E59417690567A9816B7C4C369CCAE5BB7C361B6C4DD01E5F33CEC3BF0A
        3EABDEA236CE24258C26838DFEBF983C1C48E2C05C57BB27C948D4E6563DC1CE
        789397D30DA51BFDD7C0A3E0CB104EF57195CA95DA3C39A9CAFEBCE425F0894B
        E6B2877EB33124B753AFDA0551269A8E7C13E38B1B5CFA24A3F911BC4C1F1654
        227CC94A708B7D17C14DCE3728AA6CA983861F34E15D15C2AA6D530A3A26230A
        66D92AE6CA80DFD4A014ABFBC4F4B98E1E19B6112122867D75977845A988AD42
        51A6713A3B7D4CDCA9BC7F3272D7A518BBB792511AB9481AC803673C266955E6
        60DA8F1879B6F20641C5CCCC07F0EF4DADA0C8A8180AE6D3478D33B2A1B52C80
        AA43DAEE3C55FBB4D874AE7794125ED2CEF8F899D19FA22AB530A444B51B6CFA
        9C73EC98E963823266D9A6BCC0DC2E5929E5DF3F419D138BAB551230D1C72492
        65BFEAD2BF50268D514AC4930C55411E027F3813ED33D2703F52C9BAC26D05DA
        7DBEA8296FA897DB6266D47B59A03B3F72D238FE5EBE4AAAB1D78DCF1F02DFF2
        16A2CDA7727D696E165DD71053C11C861891EFC1B010EC29D567666E31CD2A63
        7B0A6F2DFE672BADCAAE7299CA871DC2BC648D52EE734739B7AAAE92D711CE89
        5ED70D61EE69F026DBBF8379F1EAE26215AC6545D777A17292C9EF377C607B3C
        05C5FF8C574AAE6695951EB27272623F52CF72A0CEFBBDFA90CCBA80F5B1C802
        D064DC72252A45544417484F3233F77D3723F21DE3E2113E0F64CA5F47857B05
        544CEE773E66415EE88432C6F6DA44EF071D590E361A2F24B62257BA1778D9D4
        CA2B3AF19D3D413FAED658D6CEB9C69C550C8F711245FF57C0E2385F6438EBEB
        91D3390AA679A45E9D0CAB552AFE87A6A0192FA5D89FC4E77852C7EBB56AD6DE
        0152EDE4FE0D21D16634ED339B5BEB14606DCC359B58E82724FF08300078AEF5
        EED45F4D970000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object blocalizar: TAdvGlowButton
      Left = 341
      Top = 2
      Width = 90
      Height = 48
      Caption = 'F6 | Localizar'
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
        702E6969643A3137304439333634453238333131453241314245414242363331
        4535433039302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A313730443933363545323833313145324131424541424236333145354330
        3930223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3137304439333632453238333131
        453241314245414242363331453543303930222073745265663A646F63756D65
        6E7449443D22786D702E6469643A313730443933363345323833313145324131
        4245414242363331453543303930222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA23801B1000004DD4944415478DAB459
        7988555518BFEF3A5663D938E1DE8C8995D2E43A8E9AE08CDA188E51844D2989
        2B262A8626B8842286A4A248E21FE258B845A1B6992146B6A8998A8CB98D239A
        5A4E995B6E38EA34E6F6FBE477E4E374EF7BF7BCF7FAE0C73BE79EED3BE77CEB
        7931EFABE35E92D40AE809E4032D81E6440CF81BF80BF81338006C060E26B348
        8663FF4CE0756028501CA75F13A0ADF5ED17602DF0117036EA823187139C0ABC
        0D340D683B465C02EE0059402EF02C50C7EA5B037C00CC00AAD3C160376009D0
        497D3B037C0FAC0776032742C6CA95E701A5148767AC39C6039FA5C2A09CD842
        553F0FBCC713A84942A4443CA6011DD5B7A5C098B0017E9CC9665BCC09534F03
        8B9264CEE369C94DCC54DF46035FBA32B8883BF52853A59CE8B2971E9A0574A6
        960BF5A7A6476270146543E81AD03DDE0E53A03D3CCD4AD67B01CB12C9603ECD
        812111EAC38E0B3F07F4015AF00044197E00B6F0366CAA0BFC06E4B03E16280B
        63F028F014CB03814F1D182BA558E487B4CB42F3800F03DADAA8833066AADABE
        E2718AB9A58ECC7D027C6E31F72F50ABEA4F52D13605388823C090FB87E6792B
        ED13CCA47B7A981A5ACF81B955F42C86E47A3EE689DDA6C11E48D96EC03EDB80
        A280B9F603ED5996DF0A7382C3C89CD0BB0ECCBDA998BBC8494586B653F6CE51
        A6A7509E0FB16F2135D9A691AA3C419FE0165AFA7F8047793D51E80A509F65D1
        C87D09FA4BDF2A209BF5C6BC394DE5400165B0A14FC7DE938D2B1D98EBA5982B
        8BC09CC745E7A8FAD0803E8BD5664A84C1BEAA71BDC3F5BEA8CACB1CC6494473
        93E5B601ED3FABF24B3EE5416B53546AC4DF5BC0AF0EE3C47B9C66393B2432FA
        9DE5D6E68A3D0AF41F0E0BDD54DEA881630C6A44A336A4CF2EFE3695C91F572A
        7ECB61A17265B78A1DC615A90D9D0AE9631427DB575775C5D1A5AD53E5E90EE3
        26A9F28638CA2454CFE7092443B2CB15CA4BAC8830E61DA01FCB15F4D171E355
        5F1DE72349244D05AA3E9C2E2F3744A1DE07E6AA6F03E2CC6D78B99E418DEAC4
        FC21161271D8D499C6DDDED420BAB59DC0562A520F866CDA7DBE96204A7A8CBF
        9733548695C310A92A027362AB1E0A69AF43A67A04B4555006372558A38BC95B
        7CFA4D43AD130C2C6492643327E6A29D0A6EABE836E5FB49E01B7A8DF611987B
        82E1D73D9B98610D10AFF25D1CF31014965F63E657A9E242A18614990B8C6A5C
        025E43DFFAB4ECBB54741244FD2853768A70818A521930E63C15F0B6A3F28D55
        B7F2B559700D7FB318B86AEA0A6C0C98E81CE5F1B0973ECA53818B648035BE72
        F6C68BCC0DD9912691B10E1114CA95965B99E5FD2BAB56B96A7DE6C4867E0A70
        F65D1990A6934A28CB423F5219FF93349D51C1C30B7CDE107A0B7885C1C4C424
        DC62226AC28DD765BD9939009BC1DEE4DE3CF2E4C57977492755A8D8501EA9E6
        8725EE624626ABA7B6BD2AD3FB3F488CFA0EC5DC3ACD5CD8CBC202FA548F61D1
        EE10AF902AB56442D59D7579E07C35EADBCC60E6B0C6F46CB31427551A45F3D4
        4185F905AEAF5BA32DA6A6D120BFA184D995FAD2EDC9E61F54394A6158741DE5
        01F379C67A2D2C53F3055F130EF165D50B79779128E9655E9F7E17BCC1DCB72C
        D517568FA1D26C9E6A6640F45BCEF0FD2AC3B54C9A8E8E34194199DDD428863E
        E6F8CA2F8B8E60DCD7CEF17A6503AB79BD91B3C0580A7F43E4333716469B336A
        7E8011CC0D5EFB29A6911B19C4D6BA2E72578001003E1420BFB0E5E3D5000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = blocalizarClick
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 249
      Top = 2
      Width = 90
      Height = 48
      Caption = 'F4 | Cancelar'
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
        702E6969643A3039393945413941453238333131453238343743414236334536
        3745374338342220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A303939394541394245323833313145323834374341423633453637453743
        3834223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3039393945413938453238333131
        453238343743414236334536374537433834222073745265663A646F63756D65
        6E7449443D22786D702E6469643A303939394541393945323833313145323834
        3743414236334536374537433834222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E92C56603000005424944415478DAB459
        096C5645107EFDE9A140550C0A22281EA0B68AB55A3945A336206942288848A2
        522F30468518538F88423882311062D06A0236864304154AAAC12018AD28B14A
        3C209E512CD6563C38022DE5A8DF906FC964B2EFFDEFB53F937C79EFEDEEBF3B
        3B3B333B337F56B0EE97A08374317023500CF407FA1059C01EE00FA001F806D8
        027CD79145B2138E3F1DB81DB81BB825625C2FE04AD3F625B01A7803688EBB60
        5602095602D381DE9EBE6F814D945C3B7001308C4C7631635B80D78067810399
        607030F00A708D6A6B2243EB817AE0376024702DD00AAC04F6F1C80B80F15487
        2BCC1C8F026B3AC3A0486C91FAFE1B984309B4A8F6451C2B923C0BE80714023B
        CD7CA21E4F0345AAED55605A1803A908E6E61AE684A901C062C39CDBC8526010
        8F57689667CE353C89E754DB54E09DA40C2EE64E03EAD4784EB437624396E97F
        23C6CEA63A34F07B1C2D3D16830F5037840E02433D3B1429D5028D6A116D998D
        94E6E3C00C1EB9A5AF28CD1DFCBE89A710C960318FD2D175C036CFE49F03A540
        15F036DBB4B58A0F1C023CC1A3FE8912B3F40F99DCCDEF7BAD3E5A0657ABF73B
        80EF438EE83CEAD16CEA9FD0F9AAFF6A602D5DD219401EF04CC85C47805BD5F7
        CB40BE8FC187814B9565BD15A14387B9B0A663EA5DA4F95F44BFA51F80BB4E7A
        9620A8B60CCA0DB14029FBB4188EDB4ABFDD30739AE9FF2BCD7CCB792D0A9503
        57E945EE01BAF1FDF920F3243A791B0DAB06181E32EE3EF5FE986670129FADC6
        F7658AE4542EA20A950075BC592CD513421381DC142F7637B89A4A9B8EE43873
        4D5B9E0942B40A08632B80CB6860CE627DB4844F3194D132D128D5B93E82A947
        E82A0E928166A38BC78D7E9E637E7FD4BC87050A75EABD4C16BAC158938F36C8
        60E053A02719DCA7AC4EE6D0977A99E7D6C98F69D53F03BF52250666F3889D95
        FD1EF2A3323A5C67406D0C52DD4275667CADF94E1AAC6E2383BDB39583FD3A62
        57ED3420BDFB548205C565F44D307E0F9F3DB4AEEC4F6314DA0872E2049B8676
        2718EBE6EE9AA20E25A5233CE2CB5578752A282BA5C4D93DE68F52B4E40A7AFE
        5D948E040EE7668831C7CB2159EC4F7E14C694A6DCB31318AD94D0872E675B33
        C3B5F4A946349DCDE75EEDCFFAF2B876C538DE8F4CDBC7C093C07C866BDDD3DC
        48C7D3AC51E2F296147D9BA381113B3E1643324F31AC5AC8F4208CDA2252DE0B
        79E39CF089C2E007AA7354048371DDCA3C86FB2B23C6E49AE847D310F5BE31C5
        90DD45CDF7471C6B410225AF62349E17D29FA374DFD2432AE6AC71527993CF33
        19B85A7A1F189B8041A7C73D3D7D2E3059E7E92B50FD9201B63806972A1D9B1F
        221109402F89C9E0609573589AC1E70E4FDF3293599ED4AB032A57CD674E6C25
        E8F2853854CD54B5D5A3CB6369449646AB8D6D7671A1AD2C34A9E0A194E58D40
        05B5AB5834DADC4107FC0930C2E3077BD116725452D6E4CB2BEE54EF352A6271
        7A2A6D1F9AF6B83493CC957AFA3629E62A1D733E06B730977589D47695E9053C
        9EAD8CD7C624606E19C3B50A732A5D389F2BD5BD0BBC90AEB2F022C3F38085A0
        7AEEDCD1704AB29696561871674FA4342A783AD5AABF3F6B864355CC589EA4BA
        25B9F183C601EBE4BB94D62F658D43F4A50DBC218A94DF9434628A89B0E5BE7E
        49F9C93A26EF879396DFE618A676B26D95B91EC5775ECF4BFE28A39BF7B8C956
        73534DA7C5EA6AC6A4CE14306F065E37715F036B322B549A184683A8BBE5A62E
        D8C6DCB72A1325E0AEF48D53693C36FAFD8252DBCF3BB61B5D45914A336D0DA8
        3246E494A846EDFC9528FC64579A48408D540D09C77E8C1D5277E26F8862BA1A
        61B40F739B5C3AE136168F1A99468A3E7EE6338274F4BF000300DD60333ABE03
        1B2E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bcancelarClick
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
    object bexcluir: TAdvGlowButton
      Left = 167
      Top = 2
      Width = 80
      Height = 48
      Caption = 'Del | Excluir'
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
        702E6969643A4644343533433243453238323131453242344331443034363931
        3045383637372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A464434353343324445323832313145324234433144303436393130453836
        3737223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4644343533433241453238323131
        453242344331443034363931304538363737222073745265663A646F63756D65
        6E7449443D22786D702E6469643A464434353343324245323832313145324234
        4331443034363931304538363737222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2110B5B80000050D4944415478DABC59
        696C155514BE335D28962AC6052235A0C604A46AEA1F374CDCE3DE1F6A03C6A8
        7157143762503451A3311AF7251A445C7E10A88AC4041AA22422C1A2922A6E18
        431529B860C0584B8B7DBC19BFD37EB73DBDCEBC37336FF4245FEF9DFB66EE7C
        73CEB9F79E73EA99E55D26A31C09CC008E070E058E000E017C6007F003F013D0
        097C047C95E5255E4A826381EB810B813362EF0A8767D7F229F01EB008F8E5BF
        207807300F385831D90C321B8DE76F407F1306BA715D34555EA309C3E92630C7
        E10D4D189FAEE6F91B7812780CE8C983A0987101308DD7BD78EC75638A4BF0F4
        3AE3414D82C0F74C18D49920F04D5D4D3F0602532882B7A8D13B167F5A81AB81
        899CE737E0666059A997FB65C8DD03AC55E41E062683DCAD26AC05B903F1EEFA
        EB4C716F0872017EEB33BEDF6B068A45530843106F8176E5B98DC0FCA167CD9C
        C1FB8C9900BC033C9F55832F00B3D95F07CC1A34E1A008975A68073003CDC62B
        E003FCBE21EF0BE981DE18603DAEBB479C7258F6055EA15645560017A421F822
        D52FF292EA5F3CB4503CD8AE48A255DB416EA743C22E8F09A37DD65401BB8177
        793D9F5611791F38DB25521D41EE6E45E811E03E6E1F1F8C983AA477F8CEB24D
        2C9F001771FE9D54C259007CDB5C554A8347035FB22F0BE3066E2D3D311F5389
        FC0A4CA2196E039EE1F84C6069DC2259C1B693E40CF7BCBCC919AEE619EC3F0B
        B4B1BF186888D2E01CDE28D2086C5713EDCF6D618FE363716D58A61D071CC039
        77296589A5EA8157816B35C15AFA823CF828706FC4175F0634F1256189F3C344
        9E2323638235C0AA88DF2F01DE62FF70E0474B50CCF932FDA186AD2B5D7C280F
        1172E7C4FCD64D0B8A356FB73E7825DB4531E444B65440C8D5EECF25EE7D9CED
        E5B22DF9DC424EE4E073095F388FD14BA71A135F6AE64ED0AFC6E51499C25329
        89BC465F171F3D55089EA7549B34245ACE704AFBD156E00BE06BE02F35BE9ABF
        2D4D3837CE7AB39EFD162178B20A87924A6384E9C638278695C079268958454D
        B326360C2ED34A7FCCAA0D23C6BD14F36E603BC9572B734B0ECE1F25C50CF36E
        B27BB0CF03BDDCCA4A16FC4613CF4270806D833EF1830A359827C15101EBEF2A
        34CACBC49512B4677F9FAF7C6F7206324199A32DCE32E57CD7AE8B1D42709B33
        F87F4839773AC1EECD42F0335E3467D0A09740835E060DDA2CB04B08AE5489F8
        6129BF3A0DA9A404ABD5D1BB52086E06BEE1C04D2927F51390F2539AB8954995
        2461EDF6E137D9DE58E1A69C87896D502171E11E4B70A1DD1855AA9996A097C2
        37C31245822695060CAB7F1723691B72D5279CB426A306E36489CA8D3E77FDE3
        01E6AC7E82D0C80609B5311BB2F6B13AB6BB9DFA8C2B4F30CB332A611B457080
        89B9C8F9C0FD251CBB18B1778E8D20A5C3AC6A27E67317C65DECCF5509DBBFD2
        C9552C79DC023CC4AC6B813D76D47D0B199C5EEA105946ADEEA7C65B8037D4D6
        E16AFE4C65B10F59F92A5BFA90BDF15CF6EF049E064E6121320F3909E860BD67
        31C7BE038E010A49AA5B9206B4B3FF1435B696E533490DF6668C7EFE606AD9C1
        4569C97D4BD285B4F54121760DFBDB5896E8E42291B0FE20FA5B35AFABF8D136
        770EE8DB7F32EFDE87E5E2B7D576D24E3728642D605EC16AD7385E77B08ED296
        527BA7B106D3A2C6E6BA3E97B5043C9155AED9CEAA5EC362932439DF339B0BF9
        3153188034D17C0DEA59F9B807695A9307412B47D10F5B69AAB4FED7C663F5E3
        E4E764B67F4388AF9DCE953E955B8C68793C4F8E1E46EA5BA9D9D52C50F6A67D
        D13F020C00A5DD5A0B7D7954480000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = bexcluirClick
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
    object balterar: TAdvGlowButton
      Left = 85
      Top = 2
      Width = 80
      Height = 48
      Caption = 'F3 | Alterar'
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
        702E6969643A3642383743374531453238333131453239303732384137383943
        3137333842442220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A364238374337453245323833313145323930373238413738394331373338
        4244223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3642383743374446453238333131
        453239303732384137383943313733384244222073745265663A646F63756D65
        6E7449443D22786D702E6469643A364238374337453045323833313145323930
        3732384137383943313733384244222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E1034B6250000047A4944415478DABC99
        7768145110C6F78EC46E2C88150D2A362CD8221A4B0C0AD1288868C48A15BB88
        8A0A8A151BFA8F8AC4A020626F68EC2562D758C0AEB1F758A2B18BDDF80D7C0B
        C372656F7793811F79BB77F776F6BDA92F3E23FDA1E1428A8326A035A806CA00
        3FF8085E830BE01278E7F401510E7E5314F400CD412B10077C21BE7F079CA6A2
        FBC1CB481EE68B60052B82816008A81DE0F31FE037C803D17C11ABBC005BC16A
        70D74B0553C0525059DD7B05B24026B80C9E800FE00FB7BA2A680CE2413D505D
        FDF60B9809D2F8628E159407AD023DD5BD1B603938061ED95CFD0AA02D180B12
        D4FDF3A02F78EC44C1BA601B68C86B31F419DCA20F0E6DBE30E80266AB79DF80
        5EE054A01FF8834C241EB95B4D7298CE90E64239919F6027B77DAD5ADDBD8C04
        B61414DBC9508E20069D4C1BF34ABE82C1602AAF63E8E1CDEC28B8522927B636
        1CFC33F2471683091C97029B4189500A8EA58D18DCE2F146FECB522A2A520B2C
        0AE624B1F4D0920CA6627FEF8D8293B3B44D91F6E0A47505A7533983CBEEA572
        352D3134900C037F399E65DDE28A4C5F2207195EBC10512A95E9EE0AE81FE2BB
        5974489144D3D44C054783B21CAFF170E5BA8251CCF9E5C17A6E5F3059A6762E
        592BD8446589BD1E285696797B1357504BFB3085C5258E3B8A67CB9B55022D79
        F30483A91B290DF6B1D26901C630DF4E64D6D864C3599218EA5A4671F5CAA937
        7023120976A91D19CD9A713003FD55702FCC1C875848886E6DA2543A932AE496
        0BE5C4D1F6804696FBB2D539608ACD796E72A5AB8893F93930EB39A7E9AC168B
        D246013ECBE696DB95EFC00CCE45A36833229F1D1602CDB97295027CF6809E7C
        37C23973B58266B99EE740B9A64C8981947BC45071DFC1BCA62E3EB3C1319845
        622298248E1548E5207694E8503943C5E41F7E765F663354CDE60462F8C7E918
        563907DA81670E952BA4DA836F7EBEADC146A7A1CD493A307C5845E268379745
        6D5DB52B6FFD6C78CCF452C7E6245296A55BEE1D009DDDF4C094242E96C81951
        F039B8C81B09617ADC12DC3EF1F8EE2C300DF6295DC2756836A50DFF4AC8CB34
        73F135E5955DC378ADD4690B793D14F4A14D7A21B14C8F06DB8E5C534169863E
        29070826F13487387A9A04D52D1EE46F53C629C73B62ADA837807E1C77664EB4
        4A79E6C81CA6462FA506ABA9623CD39162234F57D4F3C12F8E570439BAC8613B
        E0B572E6338B713CCF0CD67E4B453B5795E8A905D88F4CE6AE896CD4B9DBDAD5
        CD67D2171904E61480727D55572755CCA4707DF1701E0C19ACCB16E5A3720368
        FB064FC652A8644805EF305364F37A2AE35D690F15F373B7D6A9B8DB4FED5ED8
        B3992C06E217BCEECD93A81ECC956E03F151304D95797278B43D92C32383CD4B
        BCD940330DEEE04152775571D83DD5EAC48C739A958EC86D8EB7BB39C094B837
        022CB09463F7F8800CF61A4F59BAE53125CA215403A6CF66966A5BBEB384CE91
        EBE600538B745923B9DDD602F517B3CA67A5A0C4B42296EF7D649191AADA4BC3
        2B05F5D96132CFF312B852E1CAF793AC1365B5AF47F2309FCB7F435465835D9F
        C767D1AA43FCC29E24C346AB1954FE0B3000BD1B0776D96B9729000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = balterarClick
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
    object bincluir: TAdvGlowButton
      Left = 3
      Top = 2
      Width = 80
      Height = 48
      Caption = 'F2 | Incluir'
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
        702E6969643A4342304246463045453238323131453242383546434630383142
        4335303344322220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A434230424646304645323832313145324238354643463038314243353033
        4432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4342304246463043453238323131
        453242383546434630383142433530334432222073745265663A646F63756D65
        6E7449443D22786D702E6469643A434230424646304445323832313145324238
        3546434630383142433530334432222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E08842097000003F24944415478DACC99
        79884D7114C7EF3CCF3EC89691C11031D610118322658929EBC4107FA094B590
        ADA628D4D88A923F2C19593396063519EB64198A88923F64DFF7A5193CDF337D
        6F1DD7DCFDBD9E539FE6BCFBEEFBDD737FBFF33BBF73CEA418850F8D10521774
        03AD413A680922E039784CEE82D7411F100DF8BB116002C8026D5DEE7D092E82
        4270147CF3F3A0141F3358072C0293410787FB6295E3562D6FC05EB0093C8AA7
        8193C016D0545DFB058A4129B80DEE83CF343095CBDE03F4E48CD753BFFD0D96
        8175610DAC010AC038754D8CD90C8AC00B8FB32FC60D0673C15075FD3AC8010F
        8318D8085C01EDF9597C6731D86A8493D17CC10C7E2EA72F5FABEAE688CD20B2
        3C779471A741BB381827729C3EBC4DADD25530CC8F81974173EA3BC170868E78
        89CCDA1C6E3A53CEA8097134F01C68417D239861244E3680E9EAB3B8546D2703
        678341D425762D34122FBB3811A6DFEFB0DB240DC05B508D7F65892B7C3CA833
        4F1291EFE0BC4F4365420650EF4BBFFCEB24594FE30C4E7B85CF07E481B12A46
        FA3DA57278349AB39AA997B80998495D76EF89004BF556E94F03FCFE09D84EBD
        23E8A30DCC56372E09E84B31CB49114456297D96363057BD4591913C79054E52
        9F286E2206D607FD78F188917C39A352B9C111EE9CEACAFF922D1795DE3DC244
        D3947B2106FEA8F48A10E3DC02EFA8A74755EC2A7799C17E9CF65815DFFD049D
        2CD9CB1097DC508ED31F36DF3D63D06E125567EE27F0C5C1C0530CE65E248DB9
        A293B47348B34C3B5223EA0D632E03BE8FB3AFFDF29250475496529F69BD9D34
        8CB381D55C8AB1CA998CAAA85F9311FCBA43A1946A1384CB99CC8E5485D214DE
        1BF92749763F6DD2F8F75DD472631707034B5D6664A432F093071FB4934EAAF6
        792C6F7749F943E7104BA63750F510E30C52FADD08634E192F8CF90F02B569A0
        84A012D33F0AD4D6CF4AA271E2E3E3A91F93BCD234F090BA293F8906E6A94DB5
        4D673352DF1EA0DE1B0C0C30788A8DEE551AAA124312D70BD69A6481D2770778
        409AA56CF52B7B943EA3AAE69104ECE5600D8BEA424B22EB26F94C95626C81F8
        91A560943A528B9D3A0BD7B8CC22ABC1CA04FB9DD43187A97F6576F5C1A92E1E
        A80EEB15606D028DCB55C69921E6835BE12EF1A7BFEAE32DA14FD64EC08ED57E
        276DBD1B5E5B1FD2C1EAA62AB5A9E0818A5161A40F0D59653926F7F9E9CD18CC
        D532551123ED9083E02C0DAEE3D330E9EFEC6741DED33CCAE8EF4541DA6F5AE6
        7397EA17125F9196EE4D66C7CFE916B28B6B81C69CAD5E6CB96558C69486E83C
        F7E0EABD05DC8AB1729A4D6E185306D6B44918E4BBBD34AECC5BF4F7DFE537CF
        CB6CD61D753DFCA68431B280B5B78FE329DCBF21DA80AEF4CF665C5A33817DC3
        5CF301375D20F923C000A422DEAC6EFE30D60000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bincluirClick
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
    object pgravar: TFlatPanel
      Left = 1080
      Top = 3
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
      object bgravar: TAdvGlowButton
        Left = 272
        Top = 4
        Width = 107
        Height = 24
        Caption = 'F2 | Gravar'
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
          650041646F626520496D616765526561647971C9653C000003274944415478DA
          62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
          EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
          FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
          8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
          8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
          108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
          C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
          10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
          609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
          EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
          1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
          009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
          7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
          5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
          030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
          93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
          E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
          ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
          00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
          95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
          F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
          32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
          52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
          F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
          CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
          00B9755E16835EC02B0000000049454E44AE426082}
        TabOrder = 0
        OnClick = bgravarClick
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
      object bcancelar: TAdvGlowButton
        Left = 397
        Top = 4
        Width = 108
        Height = 24
        Caption = 'ESC | Cancelar'
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
          650041646F626520496D616765526561647971C9653C000002E74944415478DA
          62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
          FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
          5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
          6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
          2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
          721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
          1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
          0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
          4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
          3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
          3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
          9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
          7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
          DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
          865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
          9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
          68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
          73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
          8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
          2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
          0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
          01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
          9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
          008C5756165E6F8C750000000049454E44AE426082}
        TabOrder = 1
        OnClick = bcancelarClick
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
    object bimportar: TAdvGlowButton
      Left = 611
      Top = 3
      Width = 91
      Height = 48
      Caption = 'F9 | Importar'
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
      TabOrder = 12
      OnClick = bimportarClick
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
    object plocalizar1: TFlatPanel
      Left = 1064
      Top = 19
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 1
      object LOC: TEdit
        Left = 208
        Top = 9
        Width = 265
        Height = 21
        TabOrder = 0
        OnKeyPress = LOCKeyPress
      end
      object FlatPanel1: TFlatPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 32
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 1
        object rnome: TRadioButton
          Left = 4
          Top = 1
          Width = 69
          Height = 17
          Caption = 'N'#250'mero'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnKeyPress = rnomeKeyPress
        end
        object rcodigo: TRadioButton
          Left = 4
          Top = 17
          Width = 64
          Height = 17
          Caption = 'Data'
          TabOrder = 1
          OnKeyPress = rcodigoKeyPress
        end
        object rapelido: TRadioButton
          Left = 76
          Top = 1
          Width = 117
          Height = 17
          Caption = 'Fornecedor'
          TabOrder = 2
          OnClick = rapelidoClick
          OnKeyPress = rnomeKeyPress
        end
      end
      object bloc: TAdvGlowButton
        Left = 480
        Top = 6
        Width = 91
        Height = 24
        Caption = 'Localizar'
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
          650041646F626520496D616765526561647971C9653C000002514944415478DA
          62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
          EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
          EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
          F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
          FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
          843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
          83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
          865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
          06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
          F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
          B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
          F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
          971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
          EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
          611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
          1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
          37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
          D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
          030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
        TabOrder = 2
        OnClick = BLOCClick
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
  end
  object plocalizar2: THeaderView
    Left = 752
    Top = 8
    Width = 766
    Height = 418
    AdaptiveColors = True
    BorderStyle = bsNone
    Caption = 'Rela'#231#227'o de Registros'
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 15
    ParentColor = False
    Visible = False
    object DBGrid1: TDBGrid
      Left = 0
      Top = 15
      Width = 766
      Height = 403
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsentrada_produto
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#218'MERO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fornecedor'
          Title.Caption = 'FORNECEDOR'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_NOTA'
          Title.Caption = 'VALOR TOTAL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end>
    end
  end
  object Pop1: TPopupMenu
    Left = 760
    Top = 240
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
    end
    object ImportarNF1: TMenuItem
      Caption = 'Importar NF'
      ShortCut = 120
      OnClick = bimportarClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 792
    Top = 240
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
    object N1: TMenuItem
      Caption = '-'
    end
    object Incluiritem1: TMenuItem
      Caption = 'Incluir item'
      ShortCut = 116
      OnClick = bincluir_itemClick
    end
    object Excluiritem1: TMenuItem
      Caption = 'Excluir item'
      ShortCut = 46
      OnClick = bexcluir_itemClick
    end
    object AlterarItem1: TMenuItem
      Caption = 'Alterar Item'
      ShortCut = 118
      OnClick = balterar_itemClick
    end
    object Finalizar1: TMenuItem
      Caption = 'Finalizar'
      ShortCut = 122
      OnClick = BitBtn6Click
    end
  end
  object dsentrada_produto2: TDataSource
    DataSet = frmmodulo.qrentrada_produto
    Left = 880
    Top = 240
  end
  object qrentrada_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 864
    Top = 240
    object qrentrada_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrentrada_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrentrada_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrentrada_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrinventario_produtoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrentrada_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrentrada_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrentrada_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrentrada_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrentrada_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrentrada_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrentrada_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrentrada_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrentrada_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrentrada_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrentrada_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrentrada_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrentrada_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrentrada_produtoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrentrada_produtoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrentrada_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrentrada_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrentrada_produtoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrentrada_produtoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrentrada_produtoVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrentrada_produtoALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrentrada_produtoSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object dsentrada_produto: TDataSource
    DataSet = qrentrada_produto
    Left = 728
    Top = 240
  end
  object POP3: TPopupMenu
    Left = 832
    Top = 240
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
      OnClick = FecharLocalizao1Click
    end
  end
  object qrentrada_item: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrentrada_itemBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 464
    Top = 288
    object qrentrada_itemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrentrada_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrentrada_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 30
    end
    object qrentrada_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
    end
    object qrentrada_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrentrada_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrentrada_itemICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrentrada_itemIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrentrada_itemCFOP: TWideStringField
      FieldName = 'CFOP'
    end
    object qrinventario_itemDATA: TDateField
      FieldName = 'DATA'
    end
    object qrentrada_itemNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrentrada_itemCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
    end
    object qrentrada_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrentrada_itemACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrentrada_itemMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrentrada_itemCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
    end
    object qrentrada_itemCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
    end
    object qrentrada_itemSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrentrada_itemUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrentrada_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrentrada_itemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrentrada_itemICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrentrada_itemBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrentrada_itemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrentrada_itemSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrentrada_itemECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Size = 30
    end
    object qrentrada_itemECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrentrada_itemCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 10
    end
    object qrentrada_itemCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrentrada_itemCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
    end
    object qrentrada_itemCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
    end
    object qrentrada_itemALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrentrada_itemCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrentrada_itemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 30
    end
    object qrentrada_itemMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrentrada_itemLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrinventario_itemVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qrentrada_itemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 40
    end
    object qrentrada_itemMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrentrada_itemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrentrada_itemPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrentrada_itemCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrentrada_itemLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 30
    end
    object qrentrada_itemCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
    end
    object qrentrada_itemTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrentrada_itemCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 10
    end
    object qrentrada_itemORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 80
    end
    object qrentrada_itemDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 80
    end
    object qrentrada_itemCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
    end
  end
  object dsentrada_item: TDataSource
    DataSet = qrentrada_item
    Left = 496
    Top = 288
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 224
    Top = 200
    object qrnfCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnfNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnfCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrinventarioDATA: TDateField
      FieldName = 'DATA'
    end
    object qrnfCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrnfVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrnfTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnfBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnfBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnfICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnfFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnfSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnfOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrnfVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrnfITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnfDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnfMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrnfSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnfALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrnfSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnfMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnfSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrnfVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrnfALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnfSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 616
    Top = 256
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 296
    Top = 216
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 264
    Top = 208
  end
  object qrcontaspagar: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 464
    Top = 208
    object qrcontaspagarCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrinventarioDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrinventarioDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrinventarioDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontaspagarCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 10
    end
    object qrcontaspagarCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrcontaspagarVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcontaspagarVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
    object qrcontaspagarLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrcontaspagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrcontaspagarACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrcontaspagarDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object qrcontaspagarNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 30
    end
    object qrcontaspagarHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object qrcontaspagarC: TWideStringField
      FieldName = 'C'
      Size = 10
    end
    object qrcontaspagarE: TWideStringField
      FieldName = 'E'
      Size = 10
    end
    object qrcontaspagarFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontaspagarESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object qrcontaspagarSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontaspagarCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrcontaspagarCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 432
    Top = 208
    Bitmap = {
      494C01010500090014000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
end
