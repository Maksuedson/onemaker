object frmbaixa_estoque: Tfrmbaixa_estoque
  Left = 137
  Top = 35
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | Baixa no Estoque'
  ClientHeight = 556
  ClientWidth = 783
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = popnormal
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object comboproduto: TwwDBLookupCombo
    Left = 176
    Top = 120
    Width = 305
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'PRODUTO'#9'60'#9'Produto'#9'F'
      'CODIGO'#9'6'#9'C'#243'digo'#9'F'
      'UNIDADE'#9'2'#9'Un.'#9'F'
      'ESTOQUE_ATUAL'#9'10'#9'Estoque'#9'F'
      'PRECOVENDA'#9'10'#9'Pre'#231'o'#9'F')
    DataField = 'PRODUTO'
    DataSource = dsorcamento_produto
    LookupTable = qrproduto
    LookupField = 'PRODUTO'
    Options = [loColLines, loTitles]
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = comboprodutoExit
  end
  object eunitario: TwwDBEdit
    Left = 176
    Top = 168
    Width = 121
    Height = 21
    DataField = 'UNITARIO'
    DataSource = dsorcamento_produto
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = eunitarioExit
  end
  object pficha: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 492
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 2
    object ViewSplit2: TViewSplit
      Left = 0
      Top = 0
      Width = 784
      Height = 0
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 63
      ExplicitWidth = 774
    end
    object ViewSplit4: TViewSplit
      Left = 0
      Top = 0
      Width = 784
      Height = 0
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 63
      ExplicitWidth = 774
    end
    object FlatPanel1: TFlatPanel
      Left = 4
      Top = 1
      Width = 784
      Height = 63
      Color = clWhite
      ColorHighLight = clWhite
      ColorShadow = clWhite
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 10
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
      object Label2: TLabel
        Left = 136
        Top = 9
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
      object Label3: TLabel
        Left = 15
        Top = 39
        Width = 37
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 422
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Vend.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 276
        Top = 9
        Width = 24
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 69
        Top = 6
        Width = 57
        Height = 21
        Color = clWhite
        DataField = 'CODIGO'
        DataSource = dsorcamento
        Enabled = False
        TabOrder = 0
        OnChange = DBEdit1Change
      end
      object DBDateEdit1: TJvDBDateEdit
        Left = 173
        Top = 6
        Width = 97
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'DATA'
        DataSource = dsorcamento
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
        TabOrder = 1
        OnEnter = DBDateEdit1Enter
        OnExit = DBDateEdit1Exit
        OnKeyPress = DBDateEdit1KeyPress
      end
      object ecliente: TDBEdit
        Left = 141
        Top = 36
        Width = 47
        Height = 21
        DataField = 'CODCLIENTE'
        DataSource = dsorcamento
        TabOrder = 3
        OnEnter = eclienteEnter
        OnExit = eclienteExit
        OnKeyPress = DBDateEdit1KeyPress
      end
      object bloccliente: TBitBtn
        Left = 118
        Top = 36
        Width = 25
        Height = 22
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
        TabOrder = 4
        OnClick = blocclienteClick
      end
      object enomecliente: TDBEdit
        Left = 215
        Top = 36
        Width = 274
        Height = 21
        DataField = 'cliente'
        DataSource = dsorcamento
        TabOrder = 5
      end
      object evendedor: TDBEdit
        Left = 463
        Top = 36
        Width = 49
        Height = 21
        Color = clWhite
        DataField = 'CODVENDEDOR'
        DataSource = dsorcamento
        TabOrder = 6
        OnEnter = evendedorEnter
        OnExit = evendedorExit
        OnKeyPress = evendedorKeyPress
      end
      object blocvendedor: TBitBtn
        Left = 512
        Top = 36
        Width = 25
        Height = 22
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
        TabOrder = 7
        OnClick = blocvendedorClick
      end
      object DBEdit5: TDBEdit
        Left = 537
        Top = 36
        Width = 153
        Height = 21
        Color = clWhite
        DataField = 'vendedor'
        DataSource = dsorcamento
        TabOrder = 8
      end
      object wwdbComboBox1: TComboBox
        Left = 304
        Top = 6
        Width = 145
        Height = 21
        Style = csDropDownList
        Color = clWhite
        ItemIndex = 0
        TabOrder = 2
        Text = 'INSTALACAO'
        OnExit = wwdbComboBox1Exit
        OnKeyPress = wwdbComboBox1KeyPress
        Items.Strings = (
          'INSTALACAO'
          'GARANTIA DE SERVI'#199'O'
          'SAIDA PARA OFICINA'
          'DOA'#199#195'O'
          'TRANSFERENCIA')
      end
      object dbedtempresa: TDBEdit
        Left = 143
        Top = 36
        Width = 274
        Height = 21
        Color = clWhite
        DataField = 'filial'
        DataSource = dsorcamento
        TabOrder = 9
      end
      object dbedtfilial: TDBEdit
        Left = 69
        Top = 36
        Width = 47
        Height = 21
        Color = clWhite
        DataField = 'CODCLIENTE'
        DataSource = dsorcamento
        TabOrder = 10
        OnEnter = dbedtfilialEnter
        OnExit = dbedtfilialExit
        OnKeyPress = dbedtfilialKeyPress
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 371
      Width = 784
      Height = 122
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Bevel3: TBevel
        Left = 521
        Top = 0
        Width = 3
        Height = 122
        Align = alLeft
      end
      object Label5: TLabel
        Left = 625
        Top = 36
        Width = 49
        Height = 23
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 556
        Top = 26
        Width = 210
        Height = 80
        BevelOuter = bvNone
        Color = clWhite
        Enabled = False
        ParentBackground = False
        TabOrder = 0
        object Label8: TLabel
          Left = 525
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object rtotal: TJvDBCalcEdit
          Left = 24
          Top = 28
          Width = 153
          Height = 31
          Margins.Left = 2
          Margins.Top = 1
          DecimalPlaces = 15
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          DataField = 'TOTAL'
          DataSource = dsorcamento
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 122
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label10: TLabel
          Left = 8
          Top = 8
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object DBEdit2: TDBEdit
          Left = 8
          Top = 24
          Width = 503
          Height = 21
          Color = clWhite
          DataField = 'OBS1'
          DataSource = dsorcamento
          TabOrder = 0
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 48
          Width = 503
          Height = 21
          Color = clWhite
          DataField = 'OBS2'
          DataSource = dsorcamento
          TabOrder = 1
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 72
          Width = 503
          Height = 21
          Color = clWhite
          DataField = 'OBS3'
          DataSource = dsorcamento
          TabOrder = 2
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 96
          Width = 503
          Height = 21
          Color = clWhite
          DataField = 'OBS4'
          DataSource = dsorcamento
          TabOrder = 3
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
          OnKeyPress = DBEdit6KeyPress
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 63
      Width = 784
      Height = 307
      TabOrder = 2
      object Bevel2: TBevel
        Left = 1
        Top = 303
        Width = 782
        Height = 3
        Align = alBottom
        ExplicitTop = 279
        ExplicitWidth = 772
      end
      object etotal: TwwDBEdit
        Left = 272
        Top = 156
        Width = 121
        Height = 21
        DataField = 'TOTAL'
        DataSource = dsorcamento_produto
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object eacrescimo: TwwDBEdit
        Left = 272
        Top = 128
        Width = 121
        Height = 21
        DataField = 'ACRESCIMO'
        DataSource = dsorcamento_produto
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = eacrescimoExit
      end
      object edesconto: TwwDBEdit
        Left = 272
        Top = 104
        Width = 121
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dsorcamento_produto
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = edescontoExit
      end
      object eqtde: TwwDBEdit
        Left = 272
        Top = 80
        Width = 121
        Height = 21
        DataField = 'QTDE'
        DataSource = dsorcamento_produto
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = eqtdeExit
      end
      object eproduto: TwwDBEdit
        Left = 271
        Top = 56
        Width = 121
        Height = 21
        DataField = 'CODPRODUTO'
        DataSource = dsorcamento_produto
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = eprodutoExit
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 3
        Width = 782
        Height = 236
        ControlType.Strings = (
          'CODPRODUTO;CustomEdit;eproduto;F'
          'PRODUTO;CustomEdit;comboproduto;F'
          'QTDE;CustomEdit;eqtde;F'
          'UNITARIO;CustomEdit;eunitario;F'
          'DESCONTO;CustomEdit;edesconto;F'
          'ACRESCIMO;CustomEdit;eacrescimo;F'
          'TOTAL;CustomEdit;etotal;F'
          'CODIGO;CustomEdit;ecodigo;F')
        PictureMasks.Strings = (
          'QTDE'#9'###,###,##0.00'#9'T'#9'T'
          'UNITARIO'#9'###,###,##0.00'#9'T'#9'T'
          'DESCONTO'#9'###,###,##0.00'#9'T'#9'T'
          'ACRESCIMO'#9'###,###,##0.00'#9'T'#9'T'
          'TOTAL'#9'###,###,##0.00'#9'T'#9'T')
        Selected.Strings = (
          'CODPRODUTO'#9'7'#9'C'#243'digo'#9#9
          'PRODUTO'#9'55'#9'Produto'#9#9
          'UNIDADE'#9'3'#9'Un.'#9#9
          'QTDE'#9'9'#9'Quantidade'#9#9
          'UNITARIO'#9'9'#9'Unit'#225'rio'#9#9
          'DESCONTO'#9'9'#9'Desconto'#9#9
          'ACRESCIMO'#9'11'#9'Acr'#233'scimo'#9#9
          'TOTAL'#9'12'#9'Total'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsorcamento_produto
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
        OnEnter = wwDBGrid1Enter
        OnExit = wwDBGrid1Exit
        PaintOptions.AlternatingRowColor = 14540253
      end
      object Panel4: TPanel
        Left = 1
        Top = 249
        Width = 782
        Height = 54
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 6
        object bitbtn2: TAdvGlowButton
          Left = 8
          Top = 2
          Width = 168
          Height = 47
          Caption = 'Del | Excluir Produto'
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
          TabOrder = 0
          OnClick = BitBtn2Click
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
        object bitbtn1: TAdvGlowButton
          Left = 186
          Top = 2
          Width = 168
          Height = 47
          Caption = 'F5 | Finalizar Edi'#231#227'o'
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
      object ListBox1: TListBox
        Left = 661
        Top = 80
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 7
        Visible = False
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 492
    Width = 783
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 491
    ExplicitWidth = 1369
    object bincluir: TAdvGlowButton
      Left = 118
      Top = 5
      Width = 76
      Height = 55
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
    end
    object bexcluir: TAdvGlowButton
      Left = 274
      Top = 5
      Width = 76
      Height = 55
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
      TabOrder = 1
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
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 6
      Top = 6
      Width = 54
      Height = 47
      Hint = 'First record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
      TabOrder = 2
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsorcamento
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 62
      Top = 6
      Width = 54
      Height = 47
      Hint = 'Prior record'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
      TabOrder = 3
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsorcamento
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 571
      Top = 0
      Width = 43
      Height = 32
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        9D95316C1C451486BFDFDE14108843040574A188852141B72E90A04A4CE18029
        7623E82890104208E936148982935896035128C89E8410424808D101BA2D4820
        0509F4843D113941A4802E1408241B42C3D93FC5CD1ECBE5EE1C31CDEEBC79F3
        BFF7BF79F38F6C336A349AED078167251DB03D23E9BEE0FF2B704DD225DB9F76
        5AE94FA330342C40A3D9DE2DE9B4ED148824C9B6AB6F7F736FFE37D09674ACCC
        939FB70C1067C5F3C03BC00E6013F81A2880CBC02FC1ED7E60164881FDC004B0
        0EBC5AE6C9C72303C45971CCF6A990DC37B60F775AE9F7A3E807B68F026725ED
        B7BD091CEFB4D2D3B7046834DB2F48FA20CCCF483A51E6C9C638F05A9049492B
        B68FD2CBEEC5324F3EEC0788B3620FF01D7017F06699278BB7033C38E2AC3805
        BC0EDC0466CB3CB91E01D83E036C97F495ED9323B2B4246A872C49DBCA3CE956
        3E61EF63929E0C98891ACDF6B4EDD5B0615F9927D7C694C240BD2B046CEBB4D2
        6ECD6746D29590C8236A34DB278165E07C99270B5B95A162F26FD296A4A87E5E
        71567C011C049622602E446B6F050ED069A5AA98A817C9B6BB71564C9679B219
        DC3EB33D0FCC45C0DE60FC7630CBAADCD57FDD36306C7BA3D16C479D56BA51C3
        DA1B013BC3E4C6ED301835C225EF8696ADB076465586FF0350F56FCD7E471D33
        02D66C4FD1BBFEBF053FD3EB907E4B0ED8866993807BCA3CB91967C5EE605E8B
        80AB929EA0A72DAB009D563A312EFB70467D06E17CA6CA3C590F2EB3617D3502
        2EDA7E9C9E707DB45569AA0E0AA095D4EC28F3E48F9ADBA1C0EC921ACDF68CED
        2BF4DAEEE1324FAE6F055E330998EAB4D2F59ACF1E49576D0BD85769D1E7C002
        F025B050EBE7C1B2F4E781C1DD659EFC59D9E2AC10700E780A3857E6C9339516
        1D050E489AB7BD08ACD4C1E3ACB813B8B7020E63ADAE43616D113828E9AFBEB2
        D6E4FA6549EF064D5F96F4C63026234A372169D1F6123021E995324FDEFB4F80
        90E93270224C2F0087CB3CF9711C789C15D3C059603E9856CA3C59AAD66F7932
        1BCDF64BC0DB92B6DBEE02172415B62F4BBA11FC1F0062498782E64C86B2BCD6
        69A5EFD7F1463DFAD392DEB2FD74A03CEED1DF00CE4B3A328CEDD00035FA33C0
        73C01CF010B02B2CFD0EFC005C043E19F786FC03BD8CC929AE4BAB2900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsorcamento
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 616
      Top = 0
      Width = 43
      Height = 32
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        8D9541881C451486BF7FB62F12D12078D05B3CECE2620CD38B087A4AD6C34673
        B0266830E041101111A7938321EE26216C34C443B646444404118912956E0F06
        8398E83DB196C83A620E7A4B0EA210215E4CE67998AAB1333B339B7769AAEBD5
        FFBFFF55D55F3233C645B35D3E003C23698799CD4ABA37E6FF0174259D37B32F
        563BADDFC661681441B35D6E9174DCCC5A4026496666E93B58DC1FFF0B94920E
        06EF7EDF90202FAAE7817781BB801EF03D50011781AB31ED3E600E6801DB8106
        F037F06AF0EE93B10479511D34B363B1B81FCC6CDF6AA775699CFCA8761BB022
        69BB99F580A5D54EEBF83A8266BB7C41D287717C42D2A1E0DDCD49E035922949
        CB6676807E752F06EF3E1A10E445350DFC08DC09BC15BC5BBC1DE0E1C88BEA18
        F006701D980BDE5DCE00CCEC04B049D2776676B8569949226DEC6AA7D5A8033E
        B2FF2B03B870F2690104EF969AEDF251494F444CA766BB9C31B3B5BE323D1CBC
        EB0EC93760B05175926182983F2BE9A758D44319B04752069C19068F804A4A62
        1B7AC1BBC6705E2DBF9B17D5B79276027B32603EB2951316292991A466BBEC0D
        B76B28BE34B305603E03B6C69F17D2ECB6D7CAE7462CDADB10A7D2A0D92E7BD9
        D4588E84B5350336C7C19534DB109FC6CD257D638CF795FF891B9212D6E60C20
        F577A3504CD4840592EEA86366C03533BB9BFEF5FF13A067EC25555DBBE90DEC
        D4AD7EB49E2878773D2FAA2D31E55A06FC2CE971FADEB20670E99DD66723A40F
        4E922405EF948EE988988B2AD732E09C993D46DFB83E1E959D4E50DC1305EF36
        EAE9EEA8F27C069C06168127F3A29A0EDE5D1E055E6BC144F066BB9C8E77A007
        9CCE8277DDBCA8BE0176013E2FAA5DC1BB5E024FFB7A3BE0009256E8BF215F07
        EFBAC98B0E003B242D98D922B00CFD0B3609AC6E11B1A02560A7A47F06CE5AB3
        EB9725BD173DFDA8A43793928D229EFD45333B023424BD12BC7BFF160280BCA8
        8E0287E2F02CB02F78F7EB24F0BCA86680156021FE5A0EDE1D49F3EB9ECC66BB
        7C093829699399DD00CE4AAACCECA2A42B31FF7E2097B43B7ACE546CCBFED54E
        EB833ADEB8477F46D2DB66F654943CE9D1BF099C91F4FA28B523096AF2678167
        8179E041E09E38F517F00B700EF87C94CDA7F80FC741A7152023101900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 5
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsorcamento
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn7: TAdvGlowButton
      Left = 430
      Top = 5
      Width = 76
      Height = 55
      Caption = 'Imprimir'
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
      TabOrder = 6
      OnClick = BitBtn7Click
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
    end
    object blocalizar: TAdvGlowButton
      Left = 352
      Top = 5
      Width = 76
      Height = 55
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
    end
    object balterar: TAdvGlowButton
      Left = 196
      Top = 5
      Width = 76
      Height = 55
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
      TabOrder = 9
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
    end
    object pgravar: TFlatPanel
      Left = 552
      Top = -1
      Width = 289
      Height = 66
      ParentColor = True
      Visible = False
      ColorHighLight = 3355443
      ColorShadow = 3355443
      TabOrder = 8
      object bgravar: TAdvGlowButton
        Left = 5
        Top = 6
        Width = 78
        Height = 55
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
      end
      object bcancelar: TAdvGlowButton
        Left = 86
        Top = 6
        Width = 80
        Height = 55
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
      end
    end
  end
  object dsorcamento: TDataSource
    DataSet = frmmodulo.qrbaixa_produtos
    OnDataChange = dsorcamentoDataChange
    Left = 704
    Top = 632
  end
  object dsorcamento_produto: TDataSource
    DataSet = qritem_baixa_produtos
    Left = 672
    Top = 632
  end
  object popnormal: TPopupMenu
    Left = 608
    Top = 632
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
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
      OnClick = BitBtn7Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object popedicao: TPopupMenu
    Left = 640
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
    object N1: TMenuItem
      Caption = '-'
    end
    object FinalizarEdio1: TMenuItem
      Caption = 'Finalizar Edi'#231#227'o'
      Enabled = False
      ShortCut = 116
      OnClick = BitBtn1Click
    end
    object ExcluirProduto1: TMenuItem
      Caption = 'Excluir Produto'
      Enabled = False
      ShortCut = 46
      OnClick = BitBtn2Click
    end
  end
  object qritem_baixa_produtos: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qritem_baixa_produtosBeforeInsert
    BeforeEdit = qritem_baixa_produtosBeforeEdit
    BeforePost = qritem_baixa_produtosBeforePost
    BeforeDelete = qritem_baixa_produtosBeforeDelete
    Active = True
    SQL.Strings = (
      'select * from c000097')
    Params = <>
    Left = 1024
    Top = 736
    object qritem_baixa_produtosCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritem_baixa_produtosPRODUTO: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 55
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qritem_baixa_produtosUNIDADE: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qritem_baixa_produtosQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 9
      FieldName = 'QTDE'
    end
    object qritem_baixa_produtosUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
    end
    object qritem_baixa_produtosDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 9
      FieldName = 'DESCONTO'
    end
    object qritem_baixa_produtosACRESCIMO: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      DisplayWidth = 11
      FieldName = 'ACRESCIMO'
    end
    object qritem_baixa_produtosTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 12
      FieldName = 'TOTAL'
    end
    object qritem_baixa_produtosCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Visible = False
      Size = 6
    end
    object qritem_baixa_produtosVENDA: TFloatField
      FieldName = 'VENDA'
      Visible = False
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select pro.*, est.estoque_atual from'
      'c000025 pro,'
      'c000100 est'
      'where'
      'pro.codigo = est.codproduto'
      'order by produto')
    Params = <>
    Left = 1096
    Top = 679
  end
  object fxorcamento: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39209.833059294000000000
    ReportOptions.LastChange = 41365.713440810200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 808
    Top = 768
    Datasets = <
      item
        DataSet = fsbaixa_produtos
        DataSetName = 'fsbaixa_produtos'
      end
      item
        DataSet = FSEMPRESA
        DataSetName = 'FSEMPRESA'
      end
      item
        DataSet = fsitembaixa_produtos
        DataSetName = 'fsitembaixa_produtos'
      end
      item
        DataSet = fsorcamento
        DataSetName = 'fsorcamento'
      end
      item
        DataSet = fsorcamento_cliente
        DataSetName = 'fsorcamento_cliente'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 300.803340000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 207.874150000000000000
          Top = 6.000000000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 207.874150000000000000
          Top = 32.456710000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            
              '[fxemitente."BAIRRO"] - [fxemitente."CIDADE"] ([fxemitente."UF"]' +
              ') CEP [fxemitente."CEP"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 207.874150000000000000
          Top = 21.118120000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[fxemitente."ENDERECO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Top = 43.795300000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ: [fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 207.874150000000000000
          Top = 55.133890000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual: [fxemitente."IE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 207.874150000000000000
          Top = 66.472480000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone: [fxemitente."TELEFONE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 207.874150000000000000
          Top = 81.590600000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[fxemitente."EMAIL"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 207.874150000000000000
          Top = 96.708720000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[fxemitente."HOMEPAGE"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 510.236550000000000000
          Top = 21.118120000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
        end
        object Shape2: TfrxShapeView
          Left = 510.236550000000000000
          Top = 47.574830000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
        end
        object Shape3: TfrxShapeView
          Left = 510.236550000000000000
          Top = 74.031540000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
        end
        object Memo10: TfrxMemoView
          Left = 514.016080000000000000
          Top = 28.677180000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'BAIXA N'#186':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 514.016080000000000000
          Top = 55.133890000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'EMISS'#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 81.590600000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            'RESPONS'#193'VEL:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 597.165740000000000000
          Top = 25.677180000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."CODIGO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 555.590910000000000000
          Top = 53.354360000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."DATA"]  [Time]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Top = 78.590600000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'vendedor'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsorcamento."vendedor"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 119.385900000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DA FILIAL')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 3.779530000000000000
          Top = 142.842610000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
        end
        object Memo17: TfrxMemoView
          Left = 16.897650000000000000
          Top = 142.842610000000000000
          Width = 34.015770000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.622140000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsorcamento."CODFILIAL"]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 68.031540000000000000
          Top = 143.063080000000000000
          Width = 642.520100000000000000
          Height = 26.456710000000000000
        end
        object Memo19: TfrxMemoView
          Left = 71.811070000000000000
          Top = 143.063080000000000000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 151.842610000000000000
          Width = 631.181510000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsorcamento."filial"]')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 3.779530000000000000
          Top = 172.299320000000000000
          Width = 706.772110000000000000
          Height = 26.456710000000000000
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 172.299320000000000000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 181.078850000000000000
          Width = 695.433520000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."ENDERECO"] [FSEMPRESA."BAIRRO"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 3.779530000000000000
          Top = 202.535560000000000000
          Width = 253.228510000000000000
          Height = 26.456710000000000000
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 202.535560000000000000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 7.559060000000000000
          Top = 211.315090000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."CIDADE"]')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Left = 260.787570000000000000
          Top = 202.535560000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
        end
        object Memo25: TfrxMemoView
          Left = 264.567100000000000000
          Top = 202.535560000000000000
          Width = 15.118120000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 264.567100000000000000
          Top = 211.315090000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."UF"]')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 298.582870000000000000
          Top = 202.535560000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
        end
        object Memo27: TfrxMemoView
          Left = 302.362400000000000000
          Top = 202.535560000000000000
          Width = 18.897650000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 302.362400000000000000
          Top = 211.315090000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."CEP"]')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Left = 385.512060000000000000
          Top = 202.535560000000000000
          Width = 325.039580000000000000
          Height = 26.456710000000000000
        end
        object Memo29: TfrxMemoView
          Left = 389.291590000000000000
          Top = 202.535560000000000000
          Width = 64.252010000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'COMPLEMENTO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 389.291590000000000000
          Top = 211.315090000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."COMPLEMENTO"]')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 3.779530000000000000
          Top = 232.771800000000000000
          Width = 291.023810000000000000
          Height = 26.456710000000000000
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 232.771800000000000000
          Width = 52.913420000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'TELEFONES:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 241.551330000000000000
          Width = 279.685220000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."TELEFONE"]  [FSEMPRESA."FAX"]')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 298.582870000000000000
          Top = 232.771800000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
        end
        object Memo33: TfrxMemoView
          Left = 302.362400000000000000
          Top = 232.771800000000000000
          Width = 41.574830000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 302.362400000000000000
          Top = 241.551330000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[FSEMPRESA."CNPJ"]')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          Left = 517.795610000000000000
          Top = 232.771800000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
        end
        object Memo35: TfrxMemoView
          Left = 521.575140000000000000
          Top = 232.771800000000000000
          Width = 181.417440000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'RG/IE:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 521.575140000000000000
          Top = 241.551330000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'RG'
          DataSet = fsorcamento_cliente
          DataSetName = 'fsorcamento_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_cliente."RG"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 266.787570000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'DISCRIMINA'#199#195'O DOS PRODUTOS')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 283.905690000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 49.133890000000000000
          Top = 283.905690000000000000
          Width = 294.803340000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 347.716760000000000000
          Top = 283.905690000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 283.905690000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 423.307360000000000000
          Top = 283.905690000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 646.299630000000000000
          Top = 283.905690000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 283.685220000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 578.268090000000000000
          Top = 283.685220000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -3.779530000000000000
          Top = 297.023810000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Top = 2.220470000000000000
          Width = 200.315090000000000000
          Height = 117.165430000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 600.000000000000000000
          Top = 3.102350000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'iCloud 1.5')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        DataSet = fsitembaixa_produtos
        DataSetName = 'fsitembaixa_produtos'
        RowCount = 0
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsitembaixa_produtos."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 49.133890000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsitembaixa_produtos."PRODUTO"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'UNIDADE'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsitembaixa_produtos."UNIDADE"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 377.953000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsitembaixa_produtos."QTDE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 442.205010000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsitembaixa_produtos."UNITARIO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 642.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsitembaixa_produtos."TOTAL"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 514.016080000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsitembaixa_produtos."UNITARIO"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 578.268090000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fsitembaixa_produtos
          DataSetName = 'fsitembaixa_produtos'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsitembaixa_produtos."UNITARIO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 83.929190000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Shape14: TfrxShapeView
          Top = 4.559059999999990000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Fill.BackColor = clBtnFace
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Shape17: TfrxShapeView
          Left = 585.827150000000000000
          Top = 36.795300000000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo55: TfrxMemoView
          Left = 423.307360000000000000
          Top = 38.015770000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA BAIXA - R$:')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 8.338590000000000000
          Top = 11.338590000000000000
          Width = 408.189240000000000000
          Height = 61.228346460000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677180000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'OBS1'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento."OBS1"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'OBS2'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento."OBS2"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'OBS3'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento."OBS3"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692950000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'OBS4'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento."OBS4"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 589.606680000000000000
          Top = 35.795300000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Top = 3.779530000000020000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURAS')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Top = 21.677180000000000000
          Width = 714.331170000000000000
          Height = 56.692950000000000000
        end
        object Memo71: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.456710000000000000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'RESPONS'#193'VEL ')
          ParentFont = False
        end
      end
    end
  end
  object fsorcamento: TfrxDBDataset
    UserName = 'fsorcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cliente=cliente'
      'vendedor=vendedor'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'CODCLIENTE=CODCLIENTE'
      'CODVENDEDOR=CODVENDEDOR'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TOTAL=TOTAL'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'TIPO=TIPO'
      'FINALIZADO=FINALIZADO'
      'CODFILIAL=CODFILIAL'
      'filial=filial')
    DataSet = frmmodulo.qrbaixa_produtos
    BCDToCurrency = False
    Left = 808
    Top = 720
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
    Left = 800
    Top = 672
  end
  object fsitembaixa_produtos: TfrxDBDataset
    UserName = 'fsitembaixa_produtos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TOTAL=TOTAL'
      'CODORCAMENTO=CODORCAMENTO')
    DataSet = qritem_baixa_produtos
    BCDToCurrency = False
    Left = 904
    Top = 720
  end
  object fsorcamento_cliente: TfrxDBDataset
    UserName = 'fsorcamento_cliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'regiao=regiao'
      'vendedor=vendedor'
      'CODCONVENIO=CODCONVENIO'
      'convenio=convenio'
      'CODUSUARIO=CODUSUARIO'
      'USUARIO=USUARIO')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 664
    Top = 720
  end
  object qrapoio: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1096
    Top = 735
  end
  object fsbaixa_produtos: TfrxDBDataset
    UserName = 'fsbaixa_produtos'
    CloseDataSource = False
    DataSet = qrproduto
    BCDToCurrency = False
    Left = 936
    Top = 672
  end
  object qrempresa: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from C000004')
    Params = <>
    Left = 1024
    Top = 680
  end
  object FSEMPRESA: TfrxDBDataset
    UserName = 'FSEMPRESA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'FILIAL=FILIAL'
      'NOTAFISCAL=NOTAFISCAL'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'CNPJ=CNPJ'
      'IE=IE'
      'SEQNF=SEQNF'
      'FAX=FAX'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CONTRIBUINTE_IPI=CONTRIBUINTE_IPI'
      'SUBSTITUTO_TRIBUTARIO=SUBSTITUTO_TRIBUTARIO'
      'EMPRESA_ESTADUAL=EMPRESA_ESTADUAL'
      'OPTANTE_SIMPLES=OPTANTE_SIMPLES'
      'OPTANTE_SUPER_SIMPLES=OPTANTE_SUPER_SIMPLES'
      'ECF=ECF'
      'TIPO=TIPO'
      'IPI=IPI'
      'ISS=ISS'
      'NUMERO=NUMERO'
      'RESPONSAVEL=RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'FARMACIA_RESP_TECNICO=FARMACIA_RESP_TECNICO'
      'FARMACIA_CRF=FARMACIA_CRF'
      'FARMACIA_CPF=FARMACIA_CPF'
      'FARMCIA_DATA=FARMCIA_DATA'
      'FARMACIA_UF=FARMACIA_UF'
      'FARMACIA_SENHA=FARMACIA_SENHA'
      'FARMACIA_EMAIL=FARMACIA_EMAIL'
      'FARMACIA_LOGIN=FARMACIA_LOGIN'
      'FARMACIA_ENVIO=FARMACIA_ENVIO'
      'CONHECIMENTO=CONHECIMENTO'
      'INDUSTRIA=INDUSTRIA'
      'FARMACIA_NUMEROLICENCA=FARMACIA_NUMEROLICENCA'
      'COD_MUNICIPIO_IBGE=COD_MUNICIPIO_IBGE'
      'IBGE=IBGE'
      'PIS=PIS'
      'COFINS=COFINS'
      'EMAIL=EMAIL'
      'ATIVIDADE=ATIVIDADE'
      'CONTADOR_COD_MUNICIPIO_IBGE=CONTADOR_COD_MUNICIPIO_IBGE'
      'CONTADOR_NOME=CONTADOR_NOME'
      'CONTADOR_CPF=CONTADOR_CPF'
      'CONTADOR_CRC=CONTADOR_CRC'
      'CONTADOR_CNPJ=CONTADOR_CNPJ'
      'CONTADOR_CEP=CONTADOR_CEP'
      'CONTADOR_ENDERECO=CONTADOR_ENDERECO'
      'CONTADOR_NUMERO=CONTADOR_NUMERO'
      'CONTADOR_COMPLEMENTO=CONTADOR_COMPLEMENTO'
      'CONTADOR_BAIRRO=CONTADOR_BAIRRO'
      'CONTADOR_FONE=CONTADOR_FONE'
      'CONTADOR_FAX=CONTADOR_FAX'
      'CONTADOR_EMAIL=CONTADOR_EMAIL'
      'INSC_MUNICIPAL=INSC_MUNICIPAL'
      'DATA_ABERTURA=DATA_ABERTURA'
      'CNAE=CNAE'
      'CRT=CRT'
      'CONTADOR_CIDADE=CONTADOR_CIDADE'
      'CONTADOR_COD_MUNICIPIO=CONTADOR_COD_MUNICIPIO'
      'CONTADOR_UF=CONTADOR_UF'
      'PERMITE_CREDITO=PERMITE_CREDITO'
      'FANTASIA=FANTASIA'
      'DFIXAS=DFIXAS'
      'TIPOCALCULO=TIPOCALCULO')
    DataSet = frmmodulo.qrempresa
    BCDToCurrency = False
    Left = 664
    Top = 672
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Baixa Estoque'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1104
    Top = 184
  end
end
