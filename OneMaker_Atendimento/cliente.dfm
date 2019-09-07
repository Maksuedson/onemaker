object frmcliente: Tfrmcliente
  Left = 5
  Top = 38
  AlphaBlendValue = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'CLIENTES'
  ClientHeight = 575
  ClientWidth = 987
  Color = 3390440
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 46
    Width = 987
    Height = -3
    Align = alTop
    ExplicitTop = 67
    ExplicitWidth = 971
  end
  object PageView1: TPageView
    Left = 128
    Top = 44
    Width = 862
    Height = 453
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = 13802044
    BackgroundKind = bkSolid
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 2
    Margin = 1
    Options = [pgBoldActiveTab]
    ParentFont = False
    ShowTabs = True
    Spacing = 1
    TabHeight = 14
    TabOrder = 0
    TabStyle = tsOneNote
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Informa'#231#245'es'
      Color = clBtnFace
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      ParentColor = False
      TabColor = clTeal
      TabWidth = 0
      TransparentColor = clNone
      object pficha: TFlatPanel
        Left = 0
        Top = 0
        Width = 860
        Height = 272
        Color = clSilver
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 456
          Top = 38
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
        object LAPELIDO: TLabel
          Left = 3
          Top = 38
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Apelido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 61
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 152
          Top = 85
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 472
          Top = 134
          Width = 23
          Height = 13
          Caption = 'CEP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 2
          Top = 108
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 824
          Top = 384
          Width = 3
          Height = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 191
          Top = 253
          Width = 32
          Height = 13
          Caption = 'E-mail:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 455
          Top = 9
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 134
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 374
          Top = 134
          Width = 30
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 3
          Top = 158
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Regi'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lnascimento: TLabel
          Left = 624
          Top = 162
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nascimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 3
          Top = 85
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 43
          Top = 10
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edata_cadastro: TJvDBDateEdit
          Left = 488
          Top = 34
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'DATA_CADASTRO'
          DataSource = dscliente2
          Color = 15916445
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
          TabOrder = 1
          OnEnter = edata_cadastroEnter
          OnExit = Edit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 34
          Width = 366
          Height = 21
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'APELIDO'
          DataSource = dscliente2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 80
          Top = 57
          Width = 497
          Height = 21
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'ENDERECO'
          DataSource = dscliente2
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit4Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 208
          Top = 81
          Width = 369
          Height = 21
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'BAIRRO'
          DataSource = dscliente2
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 118
          Top = 130
          Width = 259
          Height = 21
          Color = 15916445
          DataField = 'CIDADE'
          DataSource = dscliente2
          ReadOnly = True
          TabOrder = 7
          OnEnter = DBEdit1Enter
          OnExit = DBEdit6Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 504
          Top = 130
          Width = 73
          Height = 21
          Color = 15916445
          DataField = 'CEP'
          DataSource = dscliente2
          MaxLength = 8
          TabOrder = 9
          OnEnter = DBEdit1Enter
          OnExit = DBEdit8Exit
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 80
          Top = 105
          Width = 497
          Height = 21
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'COMPLEMENTO'
          DataSource = dscliente2
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 224
          Top = 249
          Width = 586
          Height = 21
          CharCase = ecLowerCase
          Color = 15916445
          DataField = 'EMAIL'
          DataSource = dscliente2
          TabOrder = 16
          OnEnter = DBEdit1Enter
          OnExit = DBEdit13Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit30: TDBEdit
          Left = 147
          Top = 154
          Width = 430
          Height = 21
          TabStop = False
          Color = 15916445
          DataField = 'regiao'
          DataSource = dscliente2
          TabOrder = 17
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object Edit1: TEdit
          Left = 952
          Top = 336
          Width = 121
          Height = 21
          TabOrder = 18
          Text = 'Edit1'
          Visible = False
          OnExit = Edit1Exit
        end
        object DBEdit16: TDBEdit
          Left = 503
          Top = 5
          Width = 49
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'CODUSUARIO'
          DataSource = dscliente2
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 558
          Top = 5
          Width = 86
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'USUARIO'
          DataSource = dscliente2
          Enabled = False
          ParentCtl3D = False
          TabOrder = 19
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object euf: TwwDBComboBox
          Left = 407
          Top = 130
          Width = 49
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'UF'
          DataSource = dscliente2
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'EX'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RR'
            'RO'
            'RJ'
            'RN'
            'RS'
            'SC'
            'SP'
            'SE'
            'TO')
          ItemIndex = 11
          Sorted = False
          TabOrder = 8
          UnboundDataType = wwDefault
          OnEnter = eufEnter
          OnExit = eufExit
          OnKeyPress = DBEdit1KeyPress
        end
        object dbedit28: TRzDBButtonEdit
          Left = 79
          Top = 154
          Width = 66
          Height = 21
          DataSource = dscliente2
          DataField = 'CODREGIAO'
          Color = 15916445
          FocusColor = 10550008
          TabOrder = 10
          OnExit = DBEdit28Exit
          OnKeyPress = dbedit28KeyPress
          AltBtnWidth = 15
          ButtonWidth = 15
          OnButtonClick = dbedit28ButtonClick
        end
        object pcad: TGroupBox
          Left = 624
          Top = 56
          Width = 187
          Height = 98
          Caption = '         Informa'#231#245'es Cadastrais'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object Label28: TLabel
            Left = 48
            Top = 52
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
          object Label29: TLabel
            Left = 7
            Top = 75
            Width = 73
            Height = 13
            Caption = #218'ltima Compra:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLIMITE: TJvDBCalcEdit
            Left = 88
            Top = 46
            Width = 89
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Color = 15916445
            DecimalPlaces = 15
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = RLIMITEKeyPress
            DataField = 'LIMITE'
            DataSource = dscliente2
          end
          object DBDateEdit3: TJvDBDateEdit
            Left = 88
            Top = 71
            Width = 89
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DataField = 'DATA_ULTIMACOMPRA'
            DataSource = dscliente2
            Color = 15916445
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ShowNullDate = False
            TabOrder = 2
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 8
            Top = 20
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            Color = 15916445
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'CADASTRO APROVADO'
              'CADASTRO EM OBSERVA'#199#195'O'
              'CADASTRO BLOQUEADO'
              'INATIVO'
              'SPC')
            ItemIndex = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnChange = wwDBComboBox1Change
            OnEnter = wwDBComboBox1Enter
            OnExit = wwDBComboBox1Exit
            OnKeyPress = wwDBComboBox1KeyPress
          end
        end
        object GroupBox7: TGroupBox
          Left = 4
          Top = 179
          Width = 168
          Height = 89
          Caption = 'Telefones'
          Color = clSilver
          ParentBackground = False
          ParentColor = False
          TabOrder = 13
          object ltelefone1: TLabel
            Left = 6
            Top = 16
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Residencial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ltelefone2: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Comercial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 6
            Top = 64
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Celular:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 74
            Top = 12
            Width = 86
            Height = 21
            Color = 15916445
            DataField = 'TELEFONE1'
            DataSource = dscliente2
            MaxLength = 15
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit10Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 74
            Top = 36
            Width = 86
            Height = 21
            Color = 15916445
            DataField = 'TELEFONE2'
            DataSource = dscliente2
            MaxLength = 15
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit11Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 74
            Top = 60
            Width = 86
            Height = 21
            Color = 15916445
            DataField = 'CELULAR'
            DataSource = dscliente2
            MaxLength = 15
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit12Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object GroupBox8: TGroupBox
          Left = 191
          Top = 179
          Width = 322
          Height = 65
          Caption = 'Documenta'#231#227'o'
          TabOrder = 14
          object LRG: TLabel
            Left = 8
            Top = 17
            Width = 23
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RG:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LCPF: TLabel
            Left = 2
            Top = 41
            Width = 29
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit14: TDBEdit
            Left = 33
            Top = 14
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'RG'
            DataSource = dscliente2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit14Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 33
            Top = 38
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'CPF'
            DataSource = dscliente2
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit15KeyPress
          end
          object bitbtn8: TAdvGlowButton
            Left = 143
            Top = 35
            Width = 28
            Height = 25
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
            Visible = False
            OnClick = BitBtn8Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
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
          object rrg: TRzPanel
            Left = 177
            Top = 7
            Width = 135
            Height = 54
            BorderOuter = fsNone
            Color = clSilver
            TabOrder = 3
            object Label27: TLabel
              Left = -21
              Top = 10
              Width = 40
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Org'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 70
              Top = 10
              Width = 23
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 0
              Top = 35
              Width = 31
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Emiss:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object wwDBComboBox5: TwwDBComboBox
              Left = 20
              Top = 7
              Width = 55
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'RG_ORGAO'
              DataSource = dscliente2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'SSP'
                'PMMG'
                'PCMG'
                'CNT'
                'DIC'
                'CTPS'
                'FGTS'
                'IFP'
                'IPF'
                'IML'
                'MTE'
                'MMA'
                'MAE'
                'MEX'
                'POF'
                'POM'
                'SES'
                'SSP'
                'SJS'
                'SJTS'
                'COREN'
                'CRA'
                'CRAS'
                'CRB'
                'CRC'
                'CRE'
                'CREA'
                'CRECI'
                'CREFIT'
                'CRF'
                'CRM'
                'CRN'
                'CRO'
                'CRP'
                'CRPRE'
                'CRQ'
                'CRRC'
                'CRMV'
                'DPF'
                'EST'
                'ICLA'
                'OAB'
                'OMB'
                'IFP'
                'OUT')
              ItemIndex = 0
              Sorted = False
              TabOrder = 0
              UnboundDataType = wwDefault
              OnEnter = eufEnter
              OnExit = eufExit
              OnKeyPress = DBEdit1KeyPress
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 94
              Top = 7
              Width = 37
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'RG_ESTADO'
              DataSource = dscliente2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'SP'
                'MG'
                'RJ'
                'RS'
                'SC'
                'PR'
                'ES'
                'DF'
                'MT'
                'MS'
                'GO'
                'TO'
                'BA'
                'SE'
                'AL'
                'PB'
                'PE'
                'MA'
                'RN'
                'CE'
                'PI'
                'PA'
                'AM'
                'AP'
                'FN'
                'AC'
                'RR'
                'RO')
              ItemIndex = 0
              Sorted = False
              TabOrder = 1
              UnboundDataType = wwDefault
              OnEnter = eufEnter
              OnExit = eufExit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBDateEdit2: TJvDBDateEdit
              Left = 34
              Top = 32
              Width = 97
              Height = 21
              Margins.Left = 4
              Margins.Top = 1
              DataField = 'RG_EMISSAO'
              DataSource = dscliente2
              Color = 15916445
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
              TabOrder = 2
              OnEnter = edata_cadastroEnter
              OnExit = Edit1Exit
              OnKeyPress = DBDateEdit2KeyPress
            end
          end
        end
        object GroupBox9: TGroupBox
          Left = 519
          Top = 179
          Width = 292
          Height = 65
          Caption = 'Informa'#231#245'es Profissionais'
          TabOrder = 15
          object lprofissao: TLabel
            Left = 3
            Top = 19
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Profiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lempresa: TLabel
            Left = 3
            Top = 42
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Empresa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lrenda: TLabel
            Left = 164
            Top = 19
            Width = 42
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Renda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit18: TDBEdit
            Left = 59
            Top = 16
            Width = 106
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'PROFISSAO'
            DataSource = dscliente2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 59
            Top = 39
            Width = 225
            Height = 21
            CharCase = ecUpperCase
            Color = 15916445
            DataField = 'EMPRESA'
            DataSource = dscliente2
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object ERENDA: TJvDBCalcEdit
            Left = 211
            Top = 16
            Width = 72
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Color = 15916445
            DecimalPlaces = 15
            DisplayFormat = '###,###,##0.00'
            NumGlyphs = 2
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
            DataField = 'RENDA'
            DataSource = dscliente2
          end
        end
        object DateEdit1: TJvDateEdit
          Left = 701
          Top = 157
          Width = 110
          Height = 21
          Color = 15916445
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
          TabOrder = 12
          OnEnter = DBEdit1Enter
          OnExit = Edit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object bcad: TAdvGlowButton
          Left = 634
          Top = 51
          Width = 23
          Height = 23
          Hint = 'Liberar para edi'#231#227'o'
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
            89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
            0D0000001974455874536F6674776172650041646F626520496D616765526561
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
            702E6969643A3744393632344436303532363131453541383445383343363235
            3043443134372220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A374439363234443730353236313145354138344538334336323530434431
            3437223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3744393632344434303532363131
            453541383445383343363235304344313437222073745265663A646F63756D65
            6E7449443D22786D702E6469643A374439363234443530353236313145354138
            3445383343363235304344313437222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3EFCF29CB4000001B64944415478DA9494
            4D28445114C7DF4829112B0B2436A634A52C666931CA4ACF673E36366416A3D9
            D8A0A6642D938D85DD50A4A1D464E1A37C94524A0C654386EC882419433DFFAB
            FF6B6E6FCE1B39F59BEEB9E77FCEBC77EE7DC7B02CCB702100B6C18B95B55770
            084CB73C8FFA71981F6C8172900109700994B01E98A0843193DAAC39FE61824F
            9202BE3C4F5F0B92D4CEE831A9D8549E424E42CC9973166C6120222455834DB0
            07BC427C98B97D7AC1277022882BC01B3807474C945A9160CCA39C6E3A7E41B8
            CE53B5FD0DB02BE86A5823AC9C1D5E0DA947EA35A39A1F06672E5AB57F65B058
            CC45B4089E791FF7C1035F4FD2CE5A5C289B74115D58B9A68A960ADA7E152CB0
            AFA3916B11E0E33A098EB9AE02D382FEB7462178077582A0C951FC865F8CB266
            41DF68173C056D82E0535BB78347CD4F0BFA00B855EF3EC8DE34387A32A0F52D
            0D3E347F54B8AFCAC6ED8D2F9EA4B3D1F3C2A1C4055D8CB1627BA3971B2382B8
            152C8165D029C43B981B720E87280343FF180E267356A46963706A283B006579
            0A15F13354B6FAD780ED0171AE53600DDCD1AF045DC04B3F0816F20D589D20B8
            0619ED40BEC13D1873CBFB116000DE45FF17C3858A530000000049454E44AE42
            6082}
          Transparent = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = bcadClick
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
        object DBEdit7: TDBEdit
          Left = 320
          Top = 130
          Width = 57
          Height = 21
          Color = 15916445
          DataField = 'COD_MUNICIPIO_IBGE'
          DataSource = dscliente2
          TabOrder = 21
          Visible = False
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 80
          Top = 128
          Width = 35
          Height = 24
          Hint = 'Pesquisa o Municipio,IBGE'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
          OnClick = bibgeClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
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
        object DBEdit38: TDBEdit
          Left = 80
          Top = 81
          Width = 65
          Height = 21
          Color = 15916445
          DataField = 'NUMERO'
          DataSource = dscliente2
          MaxLength = 5
          TabOrder = 4
          OnEnter = DBEdit1Enter
          OnExit = DBEdit38Exit
          OnKeyPress = DBEdit38KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 7
          Width = 367
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          DataField = 'NOME'
          DataSource = dscliente2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnEnter = DBEdit1Enter
          OnExit = DBEdit2Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object pnlPnlCNPJ: TPanel
          Left = 51
          Top = 46
          Width = 626
          Height = 220
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 24
          Visible = False
          object lbl1: TLabel
            Left = 357
            Top = 59
            Width = 85
            Height = 16
            Caption = 'Digite o CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 357
            Top = 125
            Width = 96
            Height = 16
            Caption = 'Digite o Captcha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object btnButBuscar: TBitBtn
            Left = 500
            Top = 145
            Width = 121
            Height = 38
            Caption = 'Consultar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000120B0000120B00000000000000000000FFFFFFFDFDFD
              C1C1C1A7A7A7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D4D6C8C6C89F
              9F9FAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBECD4CBCEC9C7C89595
              95CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7E8D4CCCFBAB9B98D8D8D
              EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCDDD3CBCEAEAEAE949494FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D0D2CDC7C99A9A9AB4B4B4FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CCCEC6C0C2868686E3E3E3FFFFFF
              FBFBFBEDEDEDECECECF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7CFD1B6B3B3808081A2A2A2949496A3
              A3A49E9EA089898AABABABF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8B9B7B7B9E4E3E4FCFCFDFFFFFFFFFF
              FFFAFAFAD2D2D2838384E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF1F1F1ADADAFF3F3F3F9F9F9F8F8F8FAFAFAFAFAFAFAFAFA
              FBFBFBECECEC878788F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFAFAFB1ECEBEBF3F3F3F4F4F4F6F6F6F6F6F6F7F7F7F6F6F6F6F6F6F8
              F8F8D8D8D9AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
              BAB9BBF0F0F0EFEFEFF4F4F4F4F4F4F4F4F4F5F5F5F4F4F4F5F5F5F4F4F4F6F6
              F6929293DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEBC8C7C8ED
              EDEDEFEFEFF3F3F3F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F7F7F7B1B1B2
              C0C0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9BFBEBEEAEAEAEDED
              EDF0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F4F4F4B5B5B7C2C2C3FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F3ADACACE4E5E4E7E7E7E8E8E8
              E8E8E8E8E8E8EAEAEAEAEAEAECECECEEEEEEF2F2F2AFAFB0DBDBDCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B0B0CACACAF1F1F1EEEEEEEDEDEDEB
              EBEBECECECEEEEEEEFEFEFF2F2F2EBEAEBB1B1B2FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7969695DFDFDFF2F3F3EEEEEEEDEDEDEFEF
              EFEFEFEFF2F2F2F0F0F0B2B2B4F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFD6D6D69C9B9BCFCFCFE8E8E8EEEEEEF0F0F0ECECEC
              DDDDDDB3B3B4D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE9E9E9B0B0AFA4A3A3ACACABB0B0AFB0AFAFAEAEAFE5
              E5E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFAFAFAE6E6E6D9D8D8DADADAE4E3E4FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            TabOrder = 2
            TabStop = False
            OnClick = btnButBuscarClick
          end
          object edtCaptcha: TEdit
            Left = 357
            Top = 144
            Width = 137
            Height = 41
            TabStop = False
            CharCase = ecUpperCase
            Color = 12582911
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = edtCaptchaKeyPress
          end
          object medtEditCNPJ: TMaskEdit
            Left = 357
            Top = 78
            Width = 261
            Height = 41
            TabStop = False
            Color = 12582911
            EditMask = '00.000.000/0000-00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 18
            ParentFont = False
            TabOrder = 0
            Text = '  .   .   /    -  '
          end
          object pnl1: TPanel
            Left = 5
            Top = 58
            Width = 346
            Height = 127
            BevelOuter = bvLowered
            Color = clWhite
            ParentBackground = False
            TabOrder = 3
            object img1: TImage
              Left = 1
              Top = 1
              Width = 344
              Height = 106
              Align = alClient
              Center = True
              Proportional = True
              Stretch = True
              ExplicitLeft = 2
              ExplicitTop = 8
            end
            object lblLabAtualizarCaptcha: TLabel
              Left = 1
              Top = 107
              Width = 344
              Height = 19
              Cursor = crHandPoint
              Align = alBottom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Atualizar Captcha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = lblLabAtualizarCaptchaClick
              ExplicitLeft = 2
              ExplicitTop = 114
            end
          end
          object chkRemoverEspacosDuplos: TCheckBox
            Left = 6
            Top = 197
            Width = 368
            Height = 17
            TabStop = False
            Caption = 'Remover espa'#231'os duplos dos dados retornados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object advsmthxpndrpnl1: TAdvSmoothExpanderPanel
            Left = 2
            Top = 2
            Width = 622
            Height = 48
            Cursor = crDefault
            Caption.HTMLFont.Charset = DEFAULT_CHARSET
            Caption.HTMLFont.Color = clWindowText
            Caption.HTMLFont.Height = -11
            Caption.HTMLFont.Name = 'Tahoma'
            Caption.HTMLFont.Style = []
            Caption.Font.Charset = DEFAULT_CHARSET
            Caption.Font.Color = clWindowText
            Caption.Font.Height = -16
            Caption.Font.Name = 'Tahoma'
            Caption.Font.Style = []
            Caption.Line = False
            Fill.Color = clBlack
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
            Align = alTop
            TabOrder = 5
            ShowExpander = False
            ExpanderColor = 16445929
            ExpanderDownColor = 15587527
            ExpanderHoverColor = 11196927
            TMSStyle = 0
            OldHeight = 48.000000000000000000
            object lbl3: TLabel
              Left = 59
              Top = 14
              Width = 190
              Height = 23
              Caption = 'CONSULTA DE CNPJ'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btn1: TAdvMetroButton
              Left = -3
              Top = 0
              Width = 56
              Height = 48
              Appearance.PictureColor = clWhite
              Caption = ''
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
              OnClick = btn1Click
            end
          end
          object lblsituacaoCNPJ: TEdit
            Left = 536
            Top = 193
            Width = 121
            Height = 21
            TabStop = False
            BorderStyle = bsNone
            Color = cl3DDkShadow
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnChange = lblsituacaoCNPJChange
          end
        end
        object PNLcpf: TPanel
          Left = 241
          Top = 28
          Width = 631
          Height = 236
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 25
          Visible = False
          object Label54: TLabel
            Left = 361
            Top = 56
            Width = 78
            Height = 16
            Caption = 'Digite o CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 21
            Top = 183
            Width = 96
            Height = 16
            Caption = 'Digite o Captcha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 361
            Top = 122
            Width = 170
            Height = 16
            Caption = 'Digite a Data de Nascimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EditCaptcha: TEdit
            Left = 21
            Top = 202
            Width = 137
            Height = 41
            TabStop = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EditCNPJ: TEdit
            Left = 361
            Top = 75
            Width = 264
            Height = 41
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Panel5: TPanel
            Left = 9
            Top = 54
            Width = 346
            Height = 127
            BevelOuter = bvLowered
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object Image4: TImage
              Left = 1
              Top = 1
              Width = 344
              Height = 106
              Align = alClient
              Center = True
              Proportional = True
              Stretch = True
            end
            object LabAtualizarCaptcha: TLabel
              Left = 1
              Top = 107
              Width = 344
              Height = 19
              Cursor = crHandPoint
              Align = alBottom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Atualizar Captcha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = LabAtualizarCaptchaClick
            end
          end
          object btnConsultar: TButton
            Left = 164
            Top = 202
            Width = 120
            Height = 29
            Caption = 'Consultar'
            TabOrder = 3
            TabStop = False
            OnClick = btnConsultarClick
          end
          object EditDtNasc: TEdit
            Left = 361
            Top = 139
            Width = 264
            Height = 41
            TabStop = False
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EditSituacao: TEdit
            Left = 384
            Top = 195
            Width = 160
            Height = 24
            TabStop = False
            BorderStyle = bsNone
            Color = cl3DDkShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            OnChange = EditSituacaoChange
          end
          object advsmthxpndrpnl2: TAdvSmoothExpanderPanel
            Left = 2
            Top = 2
            Width = 627
            Height = 48
            Cursor = crDefault
            Caption.HTMLFont.Charset = DEFAULT_CHARSET
            Caption.HTMLFont.Color = clWindowText
            Caption.HTMLFont.Height = -11
            Caption.HTMLFont.Name = 'Tahoma'
            Caption.HTMLFont.Style = []
            Caption.Font.Charset = DEFAULT_CHARSET
            Caption.Font.Color = clWindowText
            Caption.Font.Height = -16
            Caption.Font.Name = 'Tahoma'
            Caption.Font.Style = []
            Caption.Line = False
            Fill.Color = clBlack
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
            Align = alTop
            TabOrder = 6
            ShowExpander = False
            ExpanderColor = 16445929
            ExpanderDownColor = 15587527
            ExpanderHoverColor = 11196927
            TMSStyle = 0
            OldHeight = 48.000000000000000000
            object lbl4: TLabel
              Left = 59
              Top = 14
              Width = 178
              Height = 23
              Caption = 'CONSULTA DE CPF'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btn2: TAdvMetroButton
              Left = -3
              Top = 0
              Width = 56
              Height = 48
              Appearance.PictureColor = clWhite
              Caption = ''
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
              OnClick = btn2Click
            end
          end
        end
        object DBEdit1: TDBEdit
          Left = 712
          Top = 2
          Width = 57
          Height = 21
          DataField = 'CODIGO'
          DataSource = dscliente2
          TabOrder = 26
          OnChange = DBEdit1Change
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object combo_pessoa: TComboBox
          Left = 730
          Top = 29
          Width = 81
          Height = 21
          Style = csDropDownList
          TabOrder = 27
          OnChange = combo_pessoaChange
          OnExit = combo_pessoaExit
          OnKeyPress = combo_pessoaKeyPress
          Items.Strings = (
            'FISICA'
            'JURIDICA')
        end
      end
      object pg_rodape: TPageView
        Left = 0
        Top = 272
        Width = 860
        Height = 161
        ActivePage = PageSheet7
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBackground
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 1
        TabStyle = tsOneNote
        TopIndent = 3
        OnChange = pg_rodapeChange
        object PageSheet7: TPageSheet
          Left = 0
          Top = 20
          Width = 860
          Height = 141
          Caption = '  Informa'#231#245'es Pessoais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clTeal
          TabWidth = 0
          TransparentColor = clNone
          object pficha2: TPanel
            Left = 0
            Top = 0
            Width = 860
            Height = 141
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object LFILIACAO: TLabel
              Left = 3
              Top = 13
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Filia'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lestadocivil: TLabel
              Left = 3
              Top = 37
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Estado Civil:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lconjuge: TLabel
              Left = 195
              Top = 37
              Width = 66
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#244'njuge:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 115
              Top = 61
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Refer'#234'ncias:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lsexo: TLabel
              Left = 3
              Top = 61
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Sexo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object EFILIACAO: TDBEdit
              Left = 80
              Top = 9
              Width = 506
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'FILIACAO'
              DataSource = dscliente2
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = EFILIACAOKeyPress
            end
            object ECIVIL: TDBComboBox
              Left = 80
              Top = 33
              Width = 113
              Height = 21
              Color = 15916445
              DataField = 'ESTADOCIVIL'
              DataSource = dscliente2
              Items.Strings = (
                'CASADO(A)'
                'SOLTEIRO(A)'
                'VIUVO(A)'
                'AMASIADO(A)'
                'DESQUITADO(A)')
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = ECIVILKeyPress
            end
            object ECONJUGE: TDBEdit
              Left = 272
              Top = 33
              Width = 314
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'CONJUGE'
              DataSource = dscliente2
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = ECONJUGEKeyPress
            end
            object DBEdit20: TDBEdit
              Left = 192
              Top = 58
              Width = 618
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'REF1'
              DataSource = dscliente2
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit21: TDBEdit
              Left = 192
              Top = 82
              Width = 618
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'REF2'
              DataSource = dscliente2
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit21KeyPress
            end
            object lconvenio: TGroupBox
              Left = 594
              Top = 4
              Width = 216
              Height = 51
              Caption = 'Conv'#234'nio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              object ecodconvenio: TRzDBButtonEdit
                Left = 9
                Top = 18
                Width = 61
                Height = 21
                DataSource = dscliente2
                DataField = 'CODCONVENIO'
                Color = 15916445
                FocusColor = 10550008
                TabOrder = 0
                OnExit = ECODCONVENIOExit
                OnKeyPress = ecodconvenioKeyPress
                AltBtnWidth = 15
                ButtonWidth = 15
                OnButtonClick = ecodconvenioButtonClick
              end
              object ECONVENIO: TDBEdit
                Left = 77
                Top = 18
                Width = 132
                Height = 21
                Color = 15916445
                DataField = 'convenio'
                DataSource = dscliente2
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
            end
            object combo_sexo: TDBComboBox
              Left = 80
              Top = 57
              Width = 41
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'SEXO'
              DataSource = dscliente2
              Items.Strings = (
                'M'
                'F')
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = combo_sexoKeyPress
            end
            object DBCheckBox1: TDBCheckBox
              Left = 81
              Top = 83
              Width = 97
              Height = 17
              Caption = 'Casa Pr'#243'pria'
              DataField = 'MORADIA'
              DataSource = dscliente2
              TabOrder = 4
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnKeyPress = DBCheckBox1KeyPress
            end
          end
        end
        object PageSheet10: TPageSheet
          Left = 0
          Top = 20
          Width = 860
          Height = 141
          Caption = 'Informa'#231#245'es Municipais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = 4227327
          TabWidth = 0
          TransparentColor = clNone
          object pficha4: TPanel
            Left = 0
            Top = 0
            Width = 860
            Height = 141
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object Label31: TLabel
              Left = 9
              Top = 12
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'd.Munic'#237'pio.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 7
              Top = 36
              Width = 84
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#243'd.IBGE.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 22
              Top = 60
              Width = 68
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CNAE:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object eibge: TDBEdit
              Left = 98
              Top = 32
              Width = 105
              Height = 21
              Color = 15916445
              DataField = 'IBGE'
              DataSource = dscliente2
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit15Exit
              OnKeyPress = DBEdit15KeyPress
            end
            object ecodmunicipio: TDBEdit
              Left = 98
              Top = 9
              Width = 105
              Height = 21
              Color = 15916445
              DataField = 'COD_MUNICIPIO_IBGE'
              DataSource = dscliente2
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit15Exit
              OnKeyPress = ecodmunicipioKeyPress
            end
            object bibge: TAdvGlowButton
              Left = 207
              Top = 10
              Width = 35
              Height = 39
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
                11000000097048597300000B1300000B1301009A9C180000000467414D410000
                B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
                75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
                3FC3400080006262182000104003663140000D98C500013460160304D080590C
                10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
                323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
                A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
                FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
                5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
                2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
                ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
                7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
                4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
                4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
                11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
                CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
                FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
                CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
                0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
                F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
                CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
                AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
                BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
                1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
                7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
                907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
                07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
                7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
                9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
                495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
                065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
                039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
                62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
                06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
                B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
                2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
                2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
                B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
                196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
                B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
                F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
                67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
                20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
                3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
                A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
                C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
                880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
                C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
                6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
                FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
                FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
                E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
                F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
                5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
                86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
                089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
                B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
                6D06AD16470000000049454E44AE426082}
              TabOrder = 3
              Visible = False
              OnClick = bibgeClick
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
            object ecnae: TDBEdit
              Left = 98
              Top = 56
              Width = 105
              Height = 21
              Color = 15916445
              DataField = 'CNAE'
              DataSource = dscliente2
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = ecnaeExit
              OnKeyPress = ecnaeKeyPress
            end
            object bcnae: TAdvGlowButton
              Left = 207
              Top = 54
              Width = 35
              Height = 26
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
                A2000000097048597300000B1300000B1301009A9C180000000467414D410000
                B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
                75300000EA6000003A980000176F925FC546000009824944415478DA62FCFFFF
                3FC340008000626218200010402C20E2E187930C4C8C2C0C1F7E3C61F8FBEF17
                0333231B8300A734030B3307C3D517DB1918987E30FC67F82FACC4EFF6EDE265
                468E4F9F7FCB08F0715DBE78E3A1C6E98B0F92CF5F7B142C21CA7B2731D8AED2
                C942FBEC8F9FBF199EBC7CC7F0FFFF3F0629312186976F3F30303232A2580C10
                402C986E6104C35F7FBE327CFCF15CE3F3DF7BBAAF9EB30ABCFAFC30F911BBC0
                BC0DEB988C94150496FEFDF3DF7BE5E6330B7FFCF92C6CA4237D918F53FCEB92
                4D47A7B0B03277D818AA6F0446A1042313E327A07DDFD02D050180006241B7F2
                DFFFBF228C4C4C6CAFBEDE7DF68FE9C3AB9B0F5FD6EDDAC5A0A3ACF99961D3DE
                4746CA32AAF1176F3C513872E2CEBCF8201B96D0705686E77F375F11FA691CF3
                EC9196CCFB8FDF025EBDFB28F6F5FB0FEDE7AF3F484B890A2EFAF3F71F1F2707
                EB6760728227288000825AFC1F18D4405FFEFD667CF4C98CC5BCECE22F247934
                4B3FFD7869BC7FABA4A0A0F45D86833B781914A4BEFE62E37B6C757AE79738D7
                A0272C76111B18EEFE7ACBF0EACB035F1171794F47B9F0ED3FBFAA2C7CFBE13B
                BB30BFC0ED955B4F16F07273EC7AFDEE9399001FCF25A0150F6016030410D8E2
                B75FEF333033B131BCFDF640FEC3CFA7CAEF7E3ED47CFFFBD6F17D5B6558BEFF
                E762FC7A4F84E1D32B66061EC367DCEBD6FECC710979C1E0E0F390E1C1FBEF0C
                40DF30C8F01AFEE4619560FEC3F488F71BEBE5CF6252729F5FBFE26578F1FA33
                CBB76FBFAD1465C4DF9FBD7ACF5C5B55E6C1AFDF7F40FE64000820B0C59F7FBD
                06FA98099418AE71B38A7CF8C9F45CECF64D36D69BE7C518E4D5BE311CDCC3CB
                6068FD89E1C23121061DC33F0C365EB719BE7E07A63906760616A6BFA028E2BB
                F3EED0E2175FAE5F03FAEABC10EFF57D1FBF186E60FCC7F1EAD0A93BD6BA9A52
                CB9EBE7AEFCDCECEBAF2CF9FBFA03865000820B0C5ECCCDC0CC2DC8A0C2FBFDC
                14FDF5EF13EFFF3FBC0C7BD628310808FF65B879899D41489895E1EB5B09866F
                9F3E32B8E7DD64F8F79791E1FF3F48826162646678FAE5223B0FAB18FBFB9F8F
                ACBEFC7E6DC5FA91235B8EE769838EB920EB875742B6728AEC7B8E9EFB26EB6E
                25CFCEC1F9FBA7BCDC4F0680006281C4F07FFE471FCFF8DE797F289391E507E7
                A5431A0C6F5F0831F0F3B032BC7CF295414D8391E1D9D31F0C56AEAF1978455E
                32FCF8C68C9A4299D819BEFF790F66B3327382B3D1E32F276A55AC98FFFFFEC9
                CEF4819D7DB599A7CC4B19055D295E810FF72504A518000208928F3F9EACBBF6
                6E7B1133330B031B30EFDEB820C42022C8CFF0FCC9170636CEDF0CBFFF7D65E0
                E4FEC76068F384E1CF2F6670FAC7C8848C4C48B98309983BFE33FF07C63F13DB
                57866F7FBF70734BBE54BAFBB76F82C26FAB0EB13F32270002086CF1ED8F077D
                5999B9185859812EBD2B0CF4252F8398E47B86C7CF7E33484871307C7AC3C9A0
                6C708F815FF81BC3F71FC4954C8C50C7FDFFC70C66FDFFCBC2F0E2CB2DBF375F
                1FB9F3B14985000410D8999C2C7C1FFFFDFFC3C0C8F49FE1CE1521A0AE9F40F6
                4F86EFDF18188424BE32FC63FCC6A0A9FF09E88BDF401318C92F268151F2EBDF
                67F657DF6E59010410D862455E9B42053EB3498CBF84DE3CBAC3CF202325C4F0
                E93D2B8388F85F0656463E86DF7F7E33088B7F03262A668ACAE7BF4087B331F3
                7E91E333D9041040608B9999FF1E9117D4C8D7E32E4FFCF246F883AEB226C3FF
                1F820C3C02FF187EFCFACE2024C8CDC0CBF70B588E935F93014B44061646B66F
                56D2A9B9E23C1A270002081CC7CF1EF1339C7E28C8F0FFFBBF87C202FC7FE5A4
                05193E7CF9C460ADADC5F0EEDD0F0666898B0CACECBF197EFEF98F35611102A0
                540E8A654BE9946C2D118F053FFF7E65000820B08FEF5ED263F8F5599AE1E9AB
                0F021C1CCC3C6C2C2C0C9FBF7D63D05556061712DA92360C7A627EE09A0BA9B8
                25CE527071CCF25B4BC8B3489A477FE13F86BFE0BC0F1040601F1727BA337073
                B2316C3E709EF5F6FD974C6CACCC0C6C6C2CFF4584787A7FFCFEE6A52461A0A5
                2AC4C670E6E91A863FC044C8CCC84A826FFF3270B189BC126097DDFCFCCBB5FF
                AFBFDE013B062080C016F72ED80A8C672686C7CFDF314888F033F27173317071
                B27D7BF1EEC3FE6FDF7F997DFDF98941893F8021487D22C3AEFB6D0CC0F29C68
                CB4196303230FF01E6736031FD8DE117C317B0384000812D7EF9EE2398F3E7DF
                DFBFD212020779B8D88F02CBDC7CA0CFBFB3B1B07E7BF4EC0D50968D4153D493
                E1D9E7CB0C879F4C0546350B51F10DF2B10087D4454541CB177F81A1C5008D2A
                8000025BEC6EAD0F6E21FCF8F9EBC5D5DB4F6E9FBE7A6F2F2B0B4BAA928CF877
                3121DE77B71E3C67F8FEF30F03273B0BC3176085028967462283FA3F838AA0FD
                222E56C1BFBFFF214A1F8000025B6CA6A3C4006A24FCFBC7F000582F9F7AF8FC
                CD571E2E8E4F9C6CAC2C3AEA3267272FDE1D75EAF23D067B13356099FC0998BA
                BF30B0B071C04B27ECC1CB080CC19F0C523CBAFB8015C8FE77DF1F80B3140C00
                04103855333131827DCCC4C4F0535D5172ADB79DC179417EAE870F9EBC51D454
                953AFCE7C7EFFF0B361C026B7052CE66B097CB05790568FC5F0C0B41A9F63F30
                487FFDFDC2C0CD227C5991DF3A1F28F0EEDBAFF70C3F7E7F8263800082D44ED0
                1C02F431033B2BEB279043EC4D35D73E78F65AD3D546679991BED2C905CBF65A
                488B0B303466853078AA6833707331331C7A301F983B99C08E0615B9C06CF38F
                8745F4BCA688C76660E2FBFCF2F39DBD40B75C013907B91201018000C268ECFD
                F9FB978119083DECF4D71C3C732D16E828C68460DB8EF3971F6CE898B699E1C8
                B9DB0CFAEA4A0C1F7FFE6710D117601012FFC2006CF83170B0F03D97E7B1A862
                67E15C29CDABFF9D9F5D8AE1DDD7C7600761030001C484A55A61F80BACCE80D1
                FBCEC95C7BFE87CFDF586C4CD437A6C538B53002B3DCC17D171926F56F6058B2
                E029C3B3FBD20CAC2CCCC032F817832497F636112EA50540877E07C52DB0FD86
                37110204100BD62A0D94D04071F89FE1D33F6071C7C3C9C1A0A32E5BEBEB6274
                F7D1934F49AC3CAF4D64756E726A9A3C64F8F5EB1F38663958059E029B4DC04A
                8013D8A2E1851693B8014000B110C8FD60F7821A747FFFFE62D0D3125B901AA3
                B2FD15FBFC334FBF5E93F9FF1758CDFDFDC920C6A9B95B8ED7B89F93951F58AC
                72010B171682452B4000B11093177F02E3D3DA9C87E11FEB1B060EB6779F3EBD
                E6AB61FAC75FF4EDEF7B3D4176D91B363269A5425C8A1F40D51EAC1DF6FDF707
                BC660204100B718500B012670636F058FE33FCFCFDEF3B378BF8423389B83DF7
                3E1E5DACC067D1C6C7217991019C7799E04D1F420020C000BFDECD22E08CF6B1
                0000000049454E44AE426082}
              TabOrder = 4
              OnClick = bcnaeClick
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
        end
        object PageSheet8: TPageSheet
          Left = 0
          Top = 20
          Width = 860
          Height = 141
          Caption = 'Refer'#234'ncias'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clTeal
          TabWidth = 0
          TransparentColor = clNone
          object pficha3: TPanel
            Left = 0
            Top = 0
            Width = 860
            Height = 141
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object DBEdit22: TDBEdit
              Left = 7
              Top = 8
              Width = 761
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'OBS1'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit23: TDBEdit
              Left = 7
              Top = 32
              Width = 761
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'OBS2'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit24: TDBEdit
              Left = 7
              Top = 56
              Width = 761
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'OBS3'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit25: TDBEdit
              Left = 7
              Top = 80
              Width = 761
              Height = 21
              CharCase = ecUpperCase
              Color = 15916445
              DataField = 'OBS4'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit25KeyPress
            end
          end
        end
        object tab_responsavel: TPageSheet
          Left = 0
          Top = 20
          Width = 860
          Height = 141
          Caption = 'Respons'#225'veis'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = 4227327
          TabWidth = 0
          TransparentColor = clNone
          object PG_RESP: TPageControl
            Left = 0
            Top = 0
            Width = 860
            Height = 141
            ActivePage = TabSheet1
            Align = alClient
            TabHeight = 15
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = '1'
              object Label33: TLabel
                Left = 263
                Top = 33
                Width = 42
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bairro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 410
                Top = 33
                Width = 46
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Cidade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 579
                Top = 33
                Width = 30
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 654
                Top = 33
                Width = 23
                Height = 13
                Caption = 'CEP:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = -20
                Top = 33
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Endere'#231'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = -20
                Top = 9
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 380
                Top = 10
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Estado Civil:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 587
                Top = 7
                Width = 56
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Profiss'#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 29
                Top = 55
                Width = 23
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'RG:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 276
                Top = 55
                Width = 29
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CPF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit26: TDBEdit
                Left = 57
                Top = 5
                Width = 313
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_NOME'
                DataSource = dscliente2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit27: TDBEdit
                Left = 57
                Top = 29
                Width = 209
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_ENDERECO'
                DataSource = dscliente2
                TabOrder = 3
                OnEnter = DBEdit1Enter
                OnExit = DBEdit4Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit32: TDBEdit
                Left = 310
                Top = 29
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_BAIRRO'
                DataSource = dscliente2
                TabOrder = 4
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit33: TDBEdit
                Left = 457
                Top = 29
                Width = 129
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_CIDADE'
                DataSource = dscliente2
                TabOrder = 5
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object wwDBComboBox6: TwwDBComboBox
                Left = 612
                Top = 29
                Width = 37
                Height = 21
                ShowButton = True
                Style = csDropDown
                MapList = False
                AllowClearKey = False
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_UF'
                DataSource = dscliente2
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'SP'
                  'MG'
                  'RJ'
                  'RS'
                  'SC'
                  'PR'
                  'ES'
                  'DF'
                  'MT'
                  'MS'
                  'GO'
                  'TO'
                  'BA'
                  'SE'
                  'AL'
                  'PB'
                  'PE'
                  'MA'
                  'RN'
                  'CE'
                  'PI'
                  'PA'
                  'AM'
                  'AP'
                  'FN'
                  'AC'
                  'RR'
                  'RO'
                  'EX')
                Sorted = False
                TabOrder = 6
                UnboundDataType = wwDefault
                OnEnter = eufEnter
                OnExit = wwDBComboBox6Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit34: TDBEdit
                Left = 681
                Top = 29
                Width = 73
                Height = 21
                Color = 15916445
                DataField = 'RESP1_CEP'
                DataSource = dscliente2
                MaxLength = 8
                TabOrder = 7
                OnEnter = DBEdit1Enter
                OnExit = DBEdit34Exit
                OnKeyPress = DBEdit34KeyPress
              end
              object DBComboBox1: TDBComboBox
                Left = 457
                Top = 6
                Width = 113
                Height = 21
                Color = 15916445
                DataField = 'RESP1_ESTADO_CIVIL'
                DataSource = dscliente2
                Items.Strings = (
                  'CASADO(A)'
                  'SOLTEIRO(A)'
                  'VIUVO(A)'
                  'AMASIADO(A)'
                  'DESQUITADO(A)')
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBComboBox1KeyPress
              end
              object DBEdit35: TDBEdit
                Left = 648
                Top = 5
                Width = 106
                Height = 21
                Color = 15916445
                DataField = 'RESP1_PROFISSAO'
                DataSource = dscliente2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit36: TDBEdit
                Left = 57
                Top = 52
                Width = 144
                Height = 21
                Color = 15916445
                DataField = 'RESP1_RG'
                DataSource = dscliente2
                TabOrder = 8
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit37: TDBEdit
                Left = 310
                Top = 52
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP1_CPF'
                DataSource = dscliente2
                TabOrder = 9
                OnEnter = DBEdit1Enter
                OnExit = DBEdit37Exit
                OnKeyPress = DBEdit37KeyPress
              end
            end
            object TabSheet2: TTabSheet
              Caption = '2'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label43: TLabel
                Left = 263
                Top = 33
                Width = 42
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bairro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 410
                Top = 33
                Width = 46
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Cidade:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label45: TLabel
                Left = 579
                Top = 33
                Width = 30
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 654
                Top = 33
                Width = 23
                Height = 13
                Caption = 'CEP:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label47: TLabel
                Left = -20
                Top = 33
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Endere'#231'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label48: TLabel
                Left = -20
                Top = 9
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label49: TLabel
                Left = 380
                Top = 10
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Estado Civil:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label50: TLabel
                Left = 587
                Top = 7
                Width = 56
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Profiss'#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label51: TLabel
                Left = 29
                Top = 55
                Width = 23
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'RG:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label52: TLabel
                Left = 276
                Top = 55
                Width = 29
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CPF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object ED_RESP2_NOME: TDBEdit
                Left = 57
                Top = 5
                Width = 313
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_NOME'
                DataSource = dscliente2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit39: TDBEdit
                Left = 57
                Top = 29
                Width = 209
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_ENDERECO'
                DataSource = dscliente2
                TabOrder = 3
                OnEnter = DBEdit1Enter
                OnExit = DBEdit4Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit40: TDBEdit
                Left = 310
                Top = 29
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_BAIRRO'
                DataSource = dscliente2
                TabOrder = 4
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit41: TDBEdit
                Left = 457
                Top = 29
                Width = 129
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_CIDADE'
                DataSource = dscliente2
                TabOrder = 5
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object wwDBComboBox7: TwwDBComboBox
                Left = 612
                Top = 29
                Width = 37
                Height = 21
                ShowButton = True
                Style = csDropDown
                MapList = False
                AllowClearKey = False
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_UF'
                DataSource = dscliente2
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'SP'
                  'MG'
                  'RJ'
                  'RS'
                  'SC'
                  'PR'
                  'ES'
                  'DF'
                  'MT'
                  'MS'
                  'GO'
                  'TO'
                  'BA'
                  'SE'
                  'AL'
                  'PB'
                  'PE'
                  'MA'
                  'RN'
                  'CE'
                  'PI'
                  'PA'
                  'AM'
                  'AP'
                  'FN'
                  'AC'
                  'RR'
                  'RO'
                  'EX')
                Sorted = False
                TabOrder = 6
                UnboundDataType = wwDefault
                OnEnter = eufEnter
                OnExit = wwDBComboBox6Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit42: TDBEdit
                Left = 681
                Top = 29
                Width = 73
                Height = 21
                Color = 15916445
                DataField = 'RESP2_CEP'
                DataSource = dscliente2
                MaxLength = 8
                TabOrder = 7
                OnEnter = DBEdit1Enter
                OnExit = DBEdit42Exit
                OnKeyPress = DBEdit34KeyPress
              end
              object DBComboBox2: TDBComboBox
                Left = 457
                Top = 6
                Width = 113
                Height = 21
                Color = 15916445
                DataField = 'RESP2_ESTADO_CIVIL'
                DataSource = dscliente2
                Items.Strings = (
                  'CASADO(A)'
                  'SOLTEIRO(A)'
                  'VIUVO(A)'
                  'AMASIADO(A)'
                  'DESQUITADO(A)')
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBComboBox1KeyPress
              end
              object DBEdit43: TDBEdit
                Left = 648
                Top = 5
                Width = 106
                Height = 21
                Color = 15916445
                DataField = 'RESP2_PROFISSAO'
                DataSource = dscliente2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit44: TDBEdit
                Left = 57
                Top = 52
                Width = 144
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_RG'
                DataSource = dscliente2
                TabOrder = 8
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit45: TDBEdit
                Left = 310
                Top = 52
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                Color = 15916445
                DataField = 'RESP2_CPF'
                DataSource = dscliente2
                TabOrder = 9
                OnEnter = DBEdit1Enter
                OnExit = DBEdit45Exit
                OnKeyPress = DBEdit45KeyPress
              end
            end
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Financeiro'
      Color = clSilver
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = 4227327
      TabWidth = 0
      TransparentColor = clNone
      object ViewSplit1: TViewSplit
        Left = 235
        Top = 0
        Height = 380
        ExplicitHeight = 351
      end
      object FlipView1: TFlipView
        Left = 0
        Top = 0
        Width = 235
        Height = 380
        Margins.Bottom = 4
        Margins.Left = 4
        Margins.Right = 4
        Margins.Top = 4
        AdaptiveColors = True
        Align = alLeft
        Caption = 'HIST'#211'RICO DE COMPRAS'
        CollapseGlyph.Data = {
          7A010000424D7A01000000000000360000002800000009000000090000000100
          2000000000004401000000000000000000000000000000000000604830406048
          30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
          90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
          30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
          A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
          C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
          30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
          F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
          A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
        Color = clGray
        ExpandGlyph.Data = {
          7A010000424D7A01000000000000360000002800000009000000090000000100
          2000000000004401000000000000000000000000000000000000604830406048
          30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
          90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
          30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
          A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
          C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
          30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
          30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
          FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
          A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
        FlipKind = fkHeaderAndButton
        HeaderColor = clBtnFace
        HeaderHeight = 18
        HeaderStyle = hsSolid
        HideGlyphs = False
        ParentColor = False
        TransparentButtons = False
        object ViewSplit2: TViewSplit
          Left = 4
          Top = 299
          Width = 227
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Label4: TLabel
          Left = 8
          Top = 312
          Width = 89
          Height = 13
          Caption = 'TOTAL/COMPRAS:'
        end
        object LTOTAL: TLabel
          Left = 111
          Top = 306
          Width = 113
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '1.000,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object wwDBGrid1: TwwDBGrid
          Left = 4
          Top = 22
          Width = 227
          Height = 277
          Selected.Strings = (
            'CODIGO'#9'8'#9'CODIGO'#9'F'#9
            'CODCAIXA'#9'5'#9'CAIXA'#9'F'#9
            'CODVENDEDOR'#9'5'#9'VENDEDOR'#9'F'#9
            'DATA'#9'15'#9'DATA'#9'F'#9
            'CODCLIENTE'#9'5'#9'CLIENTE'#9'F'#9
            'OBS'#9'50'#9'OBS'#9'F'#9
            'MEIO_DINHEIRO'#9'10'#9'MEIO DINHEIRO'#9'F'
            'MEIO_CHEQUEAV'#9'10'#9'MEIO_CHEQUEAV'#9'F'#9
            'MEIO_CHEQUEAP'#9'10'#9'MEIO_CHEQUEAP'#9'F'#9
            'MEIO_CARTAOCRED'#9'10'#9'MEIO_CARTAOCRED'#9'F'#9
            'MEIO_CARTAODEB'#9'10'#9'MEIO_CARTAODEB'#9'F'#9
            'MEIO_CREDIARIO'#9'10'#9'MEIO_CREDIARIO'#9'F'#9
            'SUBTOTAL'#9'10'#9'SUBTOTAL'#9'F'#9
            'DESCONTO'#9'10'#9'DESCONTO'#9'F'#9
            'ACRESCIMO'#9'10'#9'ACRESCIMO'#9'F'#9
            'TOTAL'#9'10'#9'TOTAL'#9#9
            'CUPOM_FISCAL'#9'10'#9'CUPOM_FISCAL'#9'F'#9
            'NUMERO_CUPOM_FISCAL'#9'10'#9'NUMERO_CUPOM_FISCAL'#9'F'#9
            'RETIRADO'#9'50'#9'RETIRADO'#9'F'#9
            'MEIO_CONVENIO'#9'10'#9'MEIO_CONVENIO'#9'F'#9
            'P5'#9'10'#9'P5'#9'F'#9
            'P3'#9'10'#9'P3'#9'F'#9
            'MEIO_FINANCEIRA'#9'10'#9'MEIO_FINANCEIRA'#9'F'#9
            'COD_FINANCEIRA'#9'10'#9'COD_FINANCEIRA'#9'F'#9
            'COD_FINANCEIRA_LANCTO'#9'10'#9'COD_FINANCEIRA_LANCTO'#9'F'#9
            'COD_FINANCEIRA_LACTO'#9'10'#9'COD_FINANCEIRA_LACTO'#9'F'#9
            'CODCONVENIO'#9'10'#9'CODCONVENIO'#9'F'#9
            'SITUACAO'#9'10'#9'SITUACAO'#9'F'#9
            'CODTRANSPORTADOR'#9'10'#9'CODTRANSPORTADOR'#9'F'#9
            'CODVEICULO'#9'10'#9'CODVEICULO'#9'F'#9
            'FRETE_VALOR'#9'10'#9'FRETE_VALOR'#9'F'#9
            'FRETE_OBS'#9'80'#9'FRETE_OBS'#9'F'#9
            'FRETE_LANCAR'#9'10'#9'FRETE_LANCAR'#9'F'#9
            'ECF_SERIAL'#9'30'#9'ECF_SERIAL'#9'F'#9
            'CODNFSAIDA'#9'10'#9'CODNFSAIDA'#9'F'#9
            'ATACADO_VAREJO'#9'10'#9'ATACADO_VAREJO'#9'F'#9
            'NRVENDA'#9'6'#9'NRVENDA'#9'F'#9
            'FILTRO'#9'10'#9'FILTRO'#9'F'#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clWindow
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          BorderStyle = bsNone
          Color = 15461355
          DataSource = dsvenda
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = wwDBGrid1DblClick
          FooterColor = clWindow
          FooterCellColor = clWindow
          PaintOptions.AlternatingRowColor = 15921906
          PaintOptions.ActiveRecordColor = clRed
        end
      end
      object GroupBox3: TGroupBox
        Left = 248
        Top = 5
        Width = 548
        Height = 168
        Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
        TabOrder = 1
        object wwDBGrid2: TwwDBGrid
          Left = 8
          Top = 14
          Width = 535
          Height = 148
          Selected.Strings = (
            'CODPRODUTO'#9'6'#9'C'#211'DIGO'#9#9
            'PRODUTO'#9'55'#9'PRODUTO'#9#9
            'UNIDADE'#9'5'#9'UN.'#9#9
            'QTDE'#9'9'#9'QTDE'#9#9
            'UNITARIO'#9'9'#9'PRE'#199'O'#9#9
            'TOTAL'#9'9'#9'TOTAL'#9#9
            'SERIAL'#9'14'#9'SERIAL'#9#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsproduto
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          PaintOptions.AlternatingRowColor = 15921906
          PaintOptions.ActiveRecordColor = clRed
        end
      end
      object GroupBox4: TGroupBox
        Left = 248
        Top = 173
        Width = 513
        Height = 159
        Caption = 'PRESTA'#199#213'ES'
        TabOrder = 2
        object PageView2: TPageView
          Left = 2
          Top = 15
          Width = 509
          Height = 142
          ActivePage = PageSheet4
          ActivePageIndex = 1
          AdaptiveColors = True
          Align = alClient
          BackgroundColor = clBtnFace
          BackgroundKind = bkInveseVertGradient
          Indent = 2
          Margin = 0
          Options = [pgBoldActiveTab]
          ShowTabs = True
          Spacing = 0
          TabHeight = 14
          TabOrder = 0
          TabStyle = tsWhidbey
          TopIndent = 0
          object PageSheet3: TPageSheet
            Left = 0
            Top = 15
            Width = 509
            Height = 127
            Caption = 'A RECEBER'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 0
            TabColor = 16240558
            TabWidth = 0
            TransparentColor = clNone
            object Label6: TLabel
              Left = 4
              Top = 109
              Width = 88
              Height = 13
              Caption = 'TOTAL ORIGINAL:'
            end
            object Label13: TLabel
              Left = 208
              Top = 109
              Width = 37
              Height = 13
              Caption = 'JUROS:'
            end
            object Label15: TLabel
              Left = 345
              Top = 109
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid4: TwwDBGrid
              Left = 0
              Top = 0
              Width = 509
              Height = 105
              ControlType.Strings = (
                'FILTRO;CheckBox;1;0'
                'SITUACAO;ImageIndex;Original Size'
                'situacao2;ImageIndex;Original Size')
              Selected.Strings = (
                'situacao2'#9'3'#9'?'#9#9
                'juros'#9'6'#9'JUROS'#9#9
                'CODIGO'#9'12'#9'CODIGO'#9'F'#9
                'CODVENDA'#9'10'#9'VENDA'#9'F'
                'CODVENDEDOR'#9'6'#9'VENDEDOR'#9'F'
                'CODCAIXA'#9'6'#9'CAIXA'#9'F'
                'CODCLIENTE'#9'6'#9'CLIENTE'#9'F'
                'DATA_EMISSAO'#9'18'#9'DATA EMISS'#195'O'#9'F'
                'DATA_VENCIMENTO'#9'18'#9'DATA VENCIMENTO'#9'F'
                'DATA_PAGAMENTO'#9'18'#9'DATA PAGAMENTO'#9'F'
                'VALOR_ORIGINAL'#9'10'#9'VALOR_ORIGINAL'#9#9
                'VALOR_PAGO'#9'10'#9'VALOR_PAGO'#9#9
                'VALOR_JUROS'#9'10'#9'VALOR_JUROS'#9'F'#9
                'VALOR_ATUAL'#9'10'#9'VALOR_ATUAL'#9#9
                'VALOR_DESCONTO'#9'10'#9'VALOR_DESCONTO'#9'F'#9
                'DOCUMENTO'#9'20'#9'DOCUMENTO'#9#9
                'TIPO'#9'20'#9'TIPO'#9'F'#9
                'SITUACAO'#9'10'#9'SITUACAO'#9'F'#9
                'FILTRO'#9'10'#9'FILTRO'#9'F'#9
                'NOSSONUMERO'#9'30'#9'NOSSONUMERO'#9'F'#9
                'CODREGIAO'#9'6'#9'CODREGIAO'#9'F'#9
                'CODCEDENTE'#9'6'#9'CODCEDENTE'#9'F'#9
                'P5'#9'10'#9'P5'#9'F'#9
                'P3'#9'10'#9'P3'#9'F'#9
                'NUMERO_CUPOM'#9'10'#9'NUMERO_CUPOM'#9'F'#9
                'VALOR_VENDA'#9'10'#9'VALOR_VENDA'#9'F'#9
                'COD_VENDA_ORIGINAL'#9'10'#9'COD_VENDA_ORIGINAL'#9'F'#9
                'VALOR_ATUAL_ANTERIOR'#9'10'#9'VALOR_ATUAL_ANTERIOR'#9'F'#9
                'EMAIL_ENVIADO'#9'10'#9'EMAIL_ENVIADO'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsreceber
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
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
              OnDblClick = wwDBGrid4DblClick
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
            object rvalor: TJvCalcEdit
              Left = 112
              Top = 106
              Width = 89
              Height = 20
              Margins.Left = 2
              Margins.Top = 1
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
            end
            object rjuro: TJvCalcEdit
              Left = 252
              Top = 106
              Width = 85
              Height = 20
              Margins.Left = 2
              Margins.Top = 1
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 2
              DecimalPlacesAlwaysShown = False
            end
            object rtotal: TJvCalcEdit
              Left = 392
              Top = 106
              Width = 96
              Height = 20
              Margins.Left = 2
              Margins.Top = 1
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 3
              DecimalPlacesAlwaysShown = False
            end
          end
          object PageSheet4: TPageSheet
            Left = 0
            Top = 15
            Width = 509
            Height = 127
            Caption = 'RECEBIDAS'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 1
            TabColor = 11184895
            TabWidth = 0
            TransparentColor = clNone
            object Label18: TLabel
              Left = 129
              Top = 126
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object Label9: TLabel
              Left = 132
              Top = 107
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid5: TwwDBGrid
              Left = 0
              Top = 0
              Width = 509
              Height = 101
              ControlType.Strings = (
                'FILTRO;CheckBox;1;0'
                'SITUACAO;ImageIndex;Original Size'
                'situacao2;ImageIndex;Original Size')
              Selected.Strings = (
                'CODIGO'#9'12'#9'CODIGO'#9'F'#9
                'CODVENDA'#9'10'#9'VENDA'#9'F'
                'CODVENDEDOR'#9'6'#9'VENDEDOR'#9'F'
                'DIAS'#9'4'#9'DIAS'#9'F'#9
                'RESTANTE'#9'8'#9'RESTANTE'#9'F'#9
                'CODCAIXA'#9'6'#9'CAIXA'#9'F'
                'CODCLIENTE'#9'6'#9'CLIENTE'#9'F'
                'DATA_EMISSAO'#9'18'#9'DATA EMISS'#195'O'#9'F'
                'DATA_VENCIMENTO'#9'18'#9'DATA VENCIMENTO'#9'F'
                'DATA_PAGAMENTO'#9'18'#9'DATA PAGAMENTO'#9'F'
                'VALOR_ORIGINAL'#9'10'#9'VALOR_ORIGINAL'#9#9
                'VALOR_PAGO'#9'10'#9'VALOR_PAGO'#9#9
                'VALOR_JUROS'#9'10'#9'VALOR_JUROS'#9'F'#9
                'VALOR_ATUAL'#9'10'#9'VALOR_ATUAL'#9'F'#9
                'VALOR_DESCONTO'#9'10'#9'VALOR_DESCONTO'#9'F'#9
                'DOCUMENTO'#9'20'#9'DOCUMENTO'#9#9
                'TIPO'#9'20'#9'TIPO'#9'F'#9
                'SITUACAO'#9'10'#9'SITUACAO'#9'F'#9
                'FILTRO'#9'10'#9'FILTRO'#9'F'#9
                'NOSSONUMERO'#9'30'#9'NOSSONUMERO'#9'F'#9
                'CODREGIAO'#9'6'#9'CODREGIAO'#9'F'#9
                'CODCEDENTE'#9'6'#9'CODCEDENTE'#9'F'#9
                'P5'#9'10'#9'P5'#9'F'#9
                'P3'#9'10'#9'P3'#9'F'#9
                'NUMERO_CUPOM'#9'10'#9'NUMERO_CUPOM'#9'F'#9
                'VALOR_VENDA'#9'10'#9'VALOR_VENDA'#9'F'#9
                'COD_VENDA_ORIGINAL'#9'10'#9'COD_VENDA_ORIGINAL'#9'F'#9
                'VALOR_ATUAL_ANTERIOR'#9'10'#9'VALOR_ATUAL_ANTERIOR'#9'F'#9
                'EMAIL_ENVIADO'#9'10'#9'EMAIL_ENVIADO'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsreceberpg
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
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
              OnDblClick = wwDBGrid4DblClick
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
            object rtotal_pago: TJvCalcEdit
              Left = 176
              Top = 105
              Width = 96
              Height = 20
              Margins.Left = 2
              Margins.Top = 1
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              ShowButton = False
              TabOrder = 1
              DecimalPlacesAlwaysShown = False
            end
          end
        end
        object FlatPanel2: TFlatPanel
          Left = 216
          Top = 9
          Width = 291
          Height = 17
          Caption = 'DUPLO CLIQUE - Verificar pagamentos'
          ParentColor = True
          TabOrder = 1
        end
      end
      object HeaderView2: THeaderView
        Left = 0
        Top = 380
        Width = 860
        Height = 53
        AdaptiveColors = False
        Align = alBottom
        BorderStyle = bsNone
        Caption = 'Movimento de Mensal de compras ('#218'ltimos 12 Meses)'
        Color = clBlack
        HeaderColor = clBlack
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -11
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        HeaderSize = 16
        ParentColor = False
        object wwDBGrid3: TwwDBGrid
          Left = 0
          Top = 16
          Width = 858
          Height = 35
          Selected.Strings = (
            'sum_0'#9'9'#9'janeiro'
            'sum'#9'8'#9'sum'
            'sum_1'#9'8'#9'sum_1'
            'sum_2'#9'8'#9'sum_2'
            'sum_3'#9'8'#9'sum_3'
            'sum_4'#9'8'#9'sum_4'
            'sum_5'#9'8'#9'sum_5'
            'sum_6'#9'8'#9'sum_6'
            'sum_7'#9'8'#9'sum_7'
            'sum_8'#9'9'#9'sum_8'
            'sum_9'#9'9'#9'sum_9'
            'sum_10'#9'9'#9'sum_10')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alClient
          DataSource = dsvenda_mes
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
      end
      object PPGTO: TFlatPanel
        Left = 559
        Top = 204
        Width = 201
        Height = 121
        Caption = 'PPGTO'
        ParentColor = True
        Visible = False
        TabOrder = 4
        object HeaderView4: THeaderView
          Left = 1
          Top = 1
          Width = 199
          Height = 24
          AdaptiveColors = False
          Align = alTop
          BorderStyle = bsNone
          Caption = 'PAGAMENTOS '
          Color = clBlack
          HeaderColor = clBlack
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindow
          HeaderFont.Height = -9
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          HeaderSize = 24
          ParentColor = False
          object SpeedButton1: TSpeedButton
            Left = 176
            Top = 1
            Width = 20
            Height = 20
            Caption = 'X'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton1Click
          end
        end
        object FlatPanel1: TFlatPanel
          Left = 1
          Top = 25
          Width = 199
          Height = 95
          ParentColor = True
          Enabled = False
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          Align = alClient
          TabOrder = 1
          object Memo1: TMemo
            Left = 9
            Top = 7
            Width = 183
            Height = 89
            BorderStyle = bsNone
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            Lines.Strings = (
              'DATA           VALOR - R$'
              '--------------------------'
              '01/01/2007 -->    1.000,00')
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object PageSheet5: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Adicionais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clTeal
      TabWidth = 0
      TransparentColor = clNone
      object pInfAdic: TPanel
        Left = 0
        Top = 0
        Width = 860
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 10
          Top = 13
          Width = 784
          Height = 247
          Caption = '|Pessoas autorizadas '#224' comprar na ficha deste cliente |'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object wwDBGrid6: TwwDBGrid
            Left = 7
            Top = 16
            Width = 770
            Height = 177
            ControlType.Strings = (
              'PARENTESCO;CustomEdit;wwDBComboBox2;F')
            Selected.Strings = (
              'NOME'#9'66'#9'NOME'
              'PARENTESCO'#9'10'#9'PARENTESCO'
              'TELEFONE'#9'19'#9'TELEFONE')
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dspessoas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
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
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 288
            Top = 112
            Width = 169
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            AutoSelect = False
            CharCase = ecUpperCase
            DataField = 'PARENTESCO'
            DataSource = dspessoas
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'AMIGO(A)'
              'AVO'
              'COLEGA TRABALHO'
              'CONJUGE'
              'CUNHADO(A)'
              'FILHO(A)'
              'IRMA(O)'
              'MAE'
              'NETO(A)'
              'PAI'
              'SOBRINHO(A)'
              'SOGRO(A)'
              'TIO(A)'
              'VIZINHO(A)')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
          end
          object sBitBtn11: TsBitBtn
            Left = 7
            Top = 198
            Width = 154
            Height = 42
            Caption = 'Excluir Autorizados'
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
              34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000050505141919
              196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000011111147292929AF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
              1760000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
              36E5171717600000000000000000000000000000000000000000000000000000
              0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF333333D71111114700000000000000000000000000000000000000000000
              00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
              0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
              00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
              1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
              00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
              0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
              1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
              0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
              1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
              0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
              00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
              00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
              0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
              000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
              00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
              0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
              00003A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF0F0F0F40000000000000000000000000000000000000
              0000000000000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF60000000000000000000000000000
              0000343434DE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
              000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF343434DE0000000000000000000000000000
              00002B2B2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
              00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB80000000000000000000000000000
              0000202020883C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
              1E7E00000000000000000000000000000000000000000F0F0F410F0F0F410000
              0000000000000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF202020880000000000000000000000000000
              00001212124E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF323232D30000
              0000000000000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF1E1E
              1E810000000000000000000000000000000000000000323232D33C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF1212124E0000000000000000000000000000
              00000303030E2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
              1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E810000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF2D2D2DC00303030E0000000000000000000000000000
              0000000000001919196C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF1919196C000000000000000000000000000000000000
              00000000000005050514292929AF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF323232D33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF292929AF05050514000000000000000000000000000000000000
              0000000000000000000011111147333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF333333D71111114700000000000000000000000000000000000000000000
              000000000000000000000000000017171760363636E53C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3636
              36E5171717600000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000017171760333333D73C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D71717
              1760000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000011111147292929AF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AF111111470000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000050505141919
              196C2D2D2DC03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
              3CFF3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC01919196C05050514000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000303030E1212124E202020882B2B2BB8343434DE3A3A3AF63A3A3AF63434
              34DE2B2B2BB8202020881212124E0303030E0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 2
            OnClick = btExcluiPessoasautorizadasClick
            SkinData.SkinSection = 'BUTTON'
          end
        end
      end
    end
    object PageSheet11: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Compra'
      Color = clSilver
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      ParentColor = False
      TabColor = 4227327
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox1: TGroupBox
        Left = 24
        Top = 24
        Width = 753
        Height = 121
        Enabled = False
        TabOrder = 0
        object Label22: TLabel
          Left = 16
          Top = 28
          Width = 55
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 29
          Top = 60
          Width = 125
          Height = 13
          Caption = 'Condi'#231#227'o de Pgto Padr'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 324
          Top = 27
          Width = 117
          Height = 13
          Caption = 'Previs'#227'o de Pagamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbedit29: TRzDBButtonEdit
          Left = 79
          Top = 24
          Width = 64
          Height = 21
          DataSource = dscliente2
          DataField = 'CODVENDEDOR'
          Color = 15916445
          FocusColor = 10550008
          TabOrder = 0
          OnExit = DBEdit29Exit
          OnKeyPress = dbedit29KeyPress
          AltBtnWidth = 15
          ButtonWidth = 15
          OnButtonClick = dbedit29ButtonClick
        end
        object DBEdit31: TDBEdit
          Left = 146
          Top = 24
          Width = 101
          Height = 21
          TabStop = False
          Color = 15916445
          DataField = 'vendedor'
          DataSource = dscliente2
          TabOrder = 1
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object combocond: TwwDBComboBox
          Left = 156
          Top = 58
          Width = 381
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          Color = 15916445
          DataField = 'CONDPGTO'
          DataSource = dscliente2
          DropDownCount = 8
          ItemHeight = 0
          Sorted = False
          TabOrder = 3
          UnboundDataType = wwDefault
          OnKeyPress = combocondKeyPress
        end
        object DBDateEdit1: TJvDBDateEdit
          Left = 448
          Top = 24
          Width = 89
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'PREVISAO'
          DataSource = dscliente2
          Color = 15916445
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
          TabOrder = 2
          OnEnter = edata_cadastroEnter
          OnExit = Edit1Exit
          OnKeyPress = DBDateEdit1KeyPress
        end
      end
    end
    object PageSheet6: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Serv. Per'#237'odicos'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      ParentColor = False
      TabColor = clTeal
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox6: TGroupBox
        Left = 8
        Top = 8
        Width = 785
        Height = 379
        Caption = 'Servi'#231'os Realizados Periodicamente'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object wwDBComboBox3: TwwDBComboBox
          Left = 288
          Top = 112
          Width = 169
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          AutoSelect = False
          DataField = 'PARENTESCO'
          DataSource = dspessoas
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'AMIGO(A)'
            'AV'#212'('#211')'
            'COLEGA TRABALHO'
            'CUNHADO(A)'
            'FILHO(A)'
            'IRM'#195'O('#195')'
            'M'#195'E'
            'NETO(A)'
            'PAI'
            'SOBRINHO(A)'
            'SOGRO(A)'
            'TIO(A)'
            'VIZINHO(A)')
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBGrid7: TwwDBGrid
          Left = 14
          Top = 15
          Width = 757
          Height = 306
          Selected.Strings = (
            'STATUS'#9'2'#9'ST'
            'CODSERVICO'#9'6'#9'C'#211'D'
            'servico'#9'23'#9'SERVI'#199'O'
            'MARCA'#9'15'#9'MARCA'
            'MODELO'#9'17'#9'MODELO'
            'SERIE'#9'16'#9'S'#201'RIE'
            'ULTIMA_MANUTENCAO'#9'10'#9#218'LTIMA'
            'proxima_manutencao'#9'10'#9'PROXIMA'
            'tecnico'#9'40'#9'T'#201'CNICO')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alCustom
          DataSource = dsservicos_periodicos
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
        object sBitBtn12: TsBitBtn
          Left = 302
          Top = 330
          Width = 225
          Height = 41
          Caption = 'Imprimir'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000011111148363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF363636E7111111480000000000000000000000000000
            0000363636E43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E40000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF00000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF00000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000363636E73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF363636E70000000000000000000000000000
            00000F0F0F3F2F2F2FC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF2F2F2FC90F0F0F3F0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 2
          OnClick = btImprimirServicosClick
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object PageSheet9: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Hist'#243'rico'
      Color = clSilver
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      ParentColor = False
      TabColor = 4227327
      TabWidth = 0
      TransparentColor = clNone
      object DBMemo1: TDBMemo
        Left = 32
        Top = 70
        Width = 786
        Height = 332
        Color = 15916445
        DataField = 'HISTORICO'
        DataSource = dscliente2
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object AdvPanel1: TAdvPanel
        Left = 0
        Top = 0
        Width = 860
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Color = 12566463
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.4.2.0'
        BorderColor = 7171437
        Caption.Color = 12566463
        Caption.ColorTo = 9539985
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = 14145494
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.ShadeLight = 255
        CollapsColor = clNone
        CollapsDelay = 0
        ColorTo = 9539985
        DoubleBuffered = True
        ShadowColor = clBlack
        ShadowOffset = 0
        StatusBar.BorderColor = 12566463
        StatusBar.BorderStyle = bsSingle
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = 14145494
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        StatusBar.Color = 12566463
        StatusBar.ColorTo = 9539985
        StatusBar.GradientDirection = gdVertical
        Text = ''
        FullHeight = 200
      end
    end
    object PageSheet12: TPageSheet
      Left = 1
      Top = 19
      Width = 860
      Height = 433
      Caption = 'Foto'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 6
      TabColor = clTeal
      TabWidth = 0
      TransparentColor = clNone
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 860
        Height = 433
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object RzPanel9: TRzPanel
          Left = 41
          Top = 19
          Width = 218
          Height = 187
          BorderOuter = fsNone
          BorderColor = clGradientActiveCaption
          BorderWidth = 1
          Color = 16235068
          TabOrder = 0
          object Image2: TImage
            Left = 5
            Top = 6
            Width = 204
            Height = 132
            Stretch = True
          end
          object btn101: TAdvGlowButton
            Left = 7
            Top = 150
            Width = 38
            Height = 28
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F8000000097048597300000EC400000EC401952B0E1B00000495494441544889
              8D9541681C5518C77FF3EDEE6C9664B1D280295259D2E4620A7B686AA5568D60
              52D29620146DE8314205BD08E38829EDA197A6E5650EA1810A626FF19046EC41
              A234189A066D608385B52011AC4831AD761B6A52936E76E61B0F9949B79BA6FA
              5DE6CD7BF37DFFF7FFFFBFF7C60AC390A785EBBACD9665F50641B0AF5C2EBF00
              58B66DFF914AA5668220B8383838F8D3D3F2ADCD005CD7DDA1AA97809DBEEFD3
              DEDE4E3E9F4744989B9BE3EAD5ABD8B68DAADE020E7B9E57F8DF00AEEB7E000C
              038461886DDB9C3E7D9A7BF7EE01B075EB564E9C38C1CACA0A2212A79D35C67C
              F29F008EE37C0418114155359A96FBF7EFAB6559A2AA6A5916D96C96542A25D1
              37968858AAFA99E779C73605705D7797AACE026194A0E57299868606D9BB77AF
              6EDFBE5D4444E7E7E7B976ED1A0B0B0B924EA715404424DACFDB9EE78DC53593
              358CBE8B285B00CBCBCBD2DDDD4D4F4F0F40AC85E4F379BABBBB999C9C647474
              54B2D92C1108C0C538FF31068EE3BC25225FC5B294CB65E9E9E9D1AEAE2E00F1
              7D5F8BC5A2A8AAB6B5B591C96400647676562F5CB8407D7D7D2C9788C887C698
              A15A06EFC6832008686A6A222ACE8D1B37181E1E269BCDB2B8B8886559F4F6F6
              D2D1D1417B7B3B333333DCBC7913CB5ADFF831E0710011E98AB55C5D5DA5B3B3
              13401E3C78C0E0E020E7CE9D936C36CBF9F3E7656E6E8E91911172B91CB95C4E
              F6EFDFCFD0D010994C2696F1C50D1EA8AA1D778EEFFBB4B6B60AA057AE5C219D
              4EC7664A3A9DD6300CC964324C4E4E4A5F5F9FB6B4B41004412C112222AEEB3E
              678CF93309D0DFDF6FD7988D6DAF4D2D2D2D914EA73979F2245BB66CE1F6EDDB
              A45229CBF7FD70797979CDC847D25447669DC1C0C0C0AAE338EB2B9665512A95
              686868A0A5A585E9E9692A950AA55289542A0510FABE4F737333C0BA2F717AF4
              BC5BEBC1AFC00E1191542A45A1502097CBC9EEDDBB999898607E7E5ED2E93480
              542A15B2D92C070E1C009042A1403299441E1DEB5563CC3FB51E7C29221FABAA
              269349A6A6A6E4D0A1439AC964387EFCB88C8D8DE9F5EBD74555359FCF73F4E8
              51583B1B3A3E3E8E6DDBD56D7A699D4E7C0E5CD77D165888178220A0BEBE9E53
              A74E55DF371BE2CC9933DCB97327962E8EBC31A6F8184004F2B9AAF6012A2252
              A95454443872E488ECD9B347E31D03148B45464646E4E1C3871ACB1335D194E7
              791D1B18C4E138CE5DA0316ED9300CA9542A02686363A35896A5A552892008A8
              ABAB5B07AC0248789E175F921BEE2244A419F80BA88B4D4B24128461288B8B8B
              0062DB7675D74855EE36638C56D77BDA0F675A55F74589A8AA46BB8C0BC45734
              C0CF22B2B3B6F86612BD0F943CCF1B751CE7156040445E55D518A89A6D5155FB
              3DCF1B775DF765557DDDF3BCB39B02B8AE7B19E88C5EBF060E1B6356A3B53CB0
              034800BF196366ABF23E05DE8B5EBF37C6ECDB00E038CE8488BC59F387029815
              912F54F50711B9A5AA21B00D784944DE51D537AA655C1BCAB431E6B57500D775
              3B55F572B504D17805F851447E51D5DF1389C4521886A1AA3600CF8B48ABAAEE
              029E79426E97E77913C9686267C4E8AE887C0B8C03DF789EF777AD694F0AD775
              EB806E1139081C049A44A40D98F817F5A74781F29E73F60000000049454E44AE
              426082}
            Transparent = True
            TabOrder = 0
            OnClick = btn101Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
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
          object btn125: TAdvGlowButton
            Left = 81
            Top = 150
            Width = 38
            Height = 28
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F8000000097048597300000EC400000EC401952B0E1B00000205494441544889
              B596CB8E12611085BFA29B668066C844401DE7E6254E1CC7E8C2C4C47859BA19
              37AE7D89F6557C07F7BAF005DC181363C82C3419C8984CBC0D01B934C8B5CB55
              23D0AD0481B3AABFBAFEFFD439558B16C771AA409AE5A086E3385AAFD775D168
              341AEA388E9A00A9546AE1ADDBB60D80E92754554544545501C2E2D11C832EEE
              D14BE996F22A9118F1CD87B2B2755F411011F1DF35F92F28D5F7CFE9950EF1F9
              FAD5225EB74EE2CAC158E590C0671D650F8B45447A9502BDD261A0A6557C2D89
              4B8FC0B08204B35834689751D5408DD76FA9F67F2186359F45E6EA36123140BD
              B1BC91CC21517B7E8B4CFB1C89CB07B40AAFFED4444C527B4F45224638C1AC5B
              94DC7D827566573AA7791523C6CA85BB62D8E7D5B76E2E8B7C58D97DA299EBBE
              C2E146852A58160233F054C5530F11C190C8506DD88C26CF93DFC6085E7C7C43
              ADD3A43B1810112165C5D94A65D8CF6C924DA403168C9E47E2E1CC0204DF9BD5
              E1E58142A5ED5269BBE44B9FB998CE716FE31A99F8EA5877A30DFB02FFAA0008
              EB084428567F705C2B7133BBCD9DF5AB244C6B7605D3A0281F4E8FF9F4F30BB7
              723BDCC8EC60476353EF8D1184481E8B458476BFC7DBAF47BCFB56603DB9C659
              7B6D94489ABD0E000F36F682046116F9F1E4903DE0A451E6A4510E58044828C1
              3230B34553EAFFBD45CB8009E0BA2ECF6E3F5EE8C3AEEB02204BFE6D717F03D5
              DD511CC03EA2820000000049454E44AE426082}
            Transparent = True
            TabOrder = 1
            OnClick = btn125Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
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
          object btn1987: TAdvGlowButton
            Left = 164
            Top = 150
            Width = 38
            Height = 28
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F8000000097048597300000EC400000EC401952B0E1B00000221494441544889
              AD95BF6B14511485BF234350C14034460423DA0611E14D67E18F340676453188
              682158692F18B0D0426D4410B4B393586AE1A4898BF80FBCB149AA3416169A80
              286214B43816D95926EB4C361BF736EFCDE5DDFBDD73DFCC1DD9A6CE62238C03
              D392266D1F91B4DB6B015F8005492DDB2FD3B9FC535D0E550162231C9074CFF6
              256048926CBB583BC16BCFBF80E792EE842C2EF704E4CDF43CF00CD8532BADDA
              3E03574316DFD402F2667AC3F613605BB9DA1E0ACA677E03D7D2B9FCC53F80D8
              086725BDB2BDAD26783300037F249D09597CD701E4CD741FB000ECEDB32D75F6
              11381AB2F82D01B07D171895444545FD2A40D2B8ED196046B111C66C7F00766C
              10D02F40B6BF028713E09CA49DE5A08DF6655F8FF323C054029C2E93DB2DF300
              141838950013DD3714B2A8F67D1455D3CEDFF195FDC53E6FA6EB0A00261260B4
              1B0018507BA5B42FFBE83E5331154613C0E5DED9AEECF766EEA0E29C1360C5F6
              FEC2D9965A21AAB715AF79E90E56126051D2B12D65AC8694152C2640CBF695C2
              39C0EFC0402B015E03DF81E141A968DB32D02A66D143E0E68001B743161F14B3
              E83E7051D2C101B568C9F663583FAE4F489AB73DF49F805549274316F3750080
              BC995E006681ED5B6CCB0F603A6471BE5344F7D7171BE138302BE9509F0A966C
              5F4EE7F2F7E57C753FFD6149B76C5F07467A005680A7921E852CFEECCE550928
              2C6FA6BB80296092B5A138C6DAEC59061681B7C07CC8E26A5D8EBFA2EAC6A760
              55FAF50000000049454E44AE426082}
            Transparent = True
            TabOrder = 2
            OnClick = btn1987Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
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
  object Panel2: TPanel
    Left = 129
    Top = 496
    Width = 780
    Height = 84
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 1
    object bincluir: TAdvGlowButton
      Left = 2
      Top = 6
      Width = 74
      Height = 56
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008114944415478DAC4996B6C93E715C78F5475D22A4D9AC6A47EDB56
        50271589065448207142B817125FE25C80006D40A0B5ABD0A441C7C23A41416C
        48D3BE4C95360DA9ADB8A4B939972A0112B29CC749C6AA96EE46E25B204460BF
        EF6BBF6F9CC431F12597FF3ED8E4E2C4C44E53EDC34FB22C3D8F7E7ACE73CE79
        7C4CE71834970F19749E41A5AC52296B54CE4364642F1DE0009958A352F65311
        FBC8C8CA6B46A1BC6712CAC745C2FB37A3501E1B851288214B66E1ED3209EF75
        A3504E9B58596F622F15B1970CAC52190F53190F5309AB54CA2AE959A1333C41
        97125CCE318852152CE7312AE2A15545C25769125EBB5128788661CEE767E885
        3CEF7B93F00E988472C9C0EA4FF6F308EDE7916F2E58C61A1D663F19D8F76289
        D02E1B8577C420E40532E96010CA4491F0FDA584875795B2B67CC13256A99487
        A85C0CE90B84FC402F2418BFA1DCACA40CBD90FD25C25751CADAF3053F8C4B3D
        13BB18A79C87A8502817629BAE8C58A2646C5FEF474656E82C4FD1E5392ECFA0
        F371B1F37304CF31A854F8AEEF159E45EFD74A52286418847CE73447E922837E
        9B0055306638CEA0631CA562A1DC48E7AEE9594161027A4E57D6633DCCE37494
        41871974240E9D66D069069D61D0FB0C3209FF85DDE249CA1B1759156CEF90A1
        6B93A06B8F91D326615B870C73972FE57DF60A370C42ABFA25832AE32EEFC74E
        30406F73804E70908E89917C8390520EAB8115E4DF91F169FF28FEED1FC75D39
        88BB7210FF1A0AA1A67F183BDBDD3074A9A94742785021FC1527788C2A384015
        1C203AC2213ACA212AE3A72FEC161ED5206498D2086DD66D09FF51C70100989E
        8C01E0911AC0EBD536ECE99050DC93AAA48CDDC28D121E5B75944374844344C7
        394A3FE7093A24462EEF13EEB4EE8D9E1564B749604F10C02482E31104C72300
        A6F0B51CC0BAAA5E64D6DA61603965C902E146B9F0579FE4497A9727898E7184
        CA39F4DD02214FA45B4E96125C5F63C7C61A1B741647CA9226A1A0504830F0F0
        5A130788DE62950E08F5AC7E19B52E15C1AC7A07B2EBEC69491A8404B3F0FD79
        3F0F13195826BD90DDCBA961A90AE636381324B554F61F35B3EF4532B1B67AB9
        45361DC1859229DC49560D6414DE5FA45284F58B50D019CBE2CE4504EFC901AC
        ABB663639D03D91627B22D4EE4589CC8AAB5614BBD03059D324CDDEA12F7D17B
        858A84F7BAE1394538FF8E8C2DB73DC86E9316B0F9B684D5CD6EDC7E32962038
        8D2F3CA378F993FBF8F1B55EBC7AA36F869FDEE8C39AABF7B1E65A2F36DF74C3
        DCA32E5AD60C42419150049985D7BA5882E845AC437CDA3F827FF8C6C19EE002
        3ADD41DC7E3C8627A3218423D119C170240A653484D6877EDC1AF0A3EDD1F002
        3A07FD687069305B15ECB3FA92087A5D6414CAA20952C80AB6B449700EC58B30
        269332158922F034322318781A46341C8DAF9B4E02301D8E6047930B5BDBDCC9
        124723A350C69309EADA25DC9583C0F46CF8560A4C4E421A1947BEC5818C6A5B
        B2C409FEDF057734B9B0AEAA37597607C920143979883DB0FB43F1504D25611A
        939128024FC3F3421C0947E78473B175C054248A9D4D2E64D4D89395203F9508
        DFDF174D1256B0AD43464DBF1F7D6A00FF94C7F0B51C58C0179E5128A32184C2
        B349120A47A18D85F19514C03D29B0E83A9BF614DD8F47B0BDC985376A171673
        738F0F45C2FB90CCC25B9DEC716AEEF26167BB07199FD9F07A551F36D4DAB1BE
        669675D576BCFCC97DB43EF403989E5707BF94025873BD0F6B3FB3CD5B33970D
        B576E4363891172FE47325F52CA3B447EB21A350CE3CB72F76A9D8D32121B336
        D6F8B3EA1D336CAC73E047577B716B607881E03D2980D7AA6CD810EF268964D6
        39E67599DC44C906270A3BA4AB64626DED522DA7B847858165E82CB1C63FB391
        C589576FF4A1EDD142C1C55A5DAAE4353A915D6F477EA3EB2099D94746A168E9
        4AE6357E7B82F1B047F39BFB5FA2FDEC27B350FF601012D295CC6EF89604EB1D
        D035BAAA725B1F10E9D94F05ECFF61618A4FFDE21E6D4632ABD6B6E282790D2E
        6CB1D89073CB9199DBEE223ACE117A872374400C5D2948F1C9FFEC24B7D43BB0
        E6EA7F575430ABAE0FBB9B07DB2BAC1A1DB66A44277882DEE5092AE7D0F7DE14
        5224D5DFC3C53D2A0A3A65ACBED60BEBA03FDEAE27630070694164D4D8919986
        A0CEE2C4A6FAFB286D1B7CE59D4E858EDE9189CA78984A79980EF1281D14DA01
        7D1AD30453B78ACD37DD687069180D45208D86208D8C231089A2EBC90836D4D8
        B1390DC1CDB536EC6975571677FB482F24D20B89E8144FD0299EA05FF1049DE2
        29328BA12BFB8427E557B5B95B85D9AA60579313F916077634BBB0ABD985ED4D
        AEB4429B596F435E93834F8A009DB28ED3498E416F316638C6A0431CA602F1A4
        23D5509B44EC3DB7B5CD8D8C6A1BD655F521A3C68E376AEDF33AC4526CAAB3DB
        4DED032FFCAC7B80DEE6075411872AE3A3864A069D65D0073C4D67384A25C2D7
        99CE49262BE64B915D6F478EC5D1F75E7BF0FBE744947E23A254C9911966C66D
        17197481419718F4BBF8F8AD40C8D7D3996EA523A96B7042677140D7E8B895D7
        ECFACE079D93F4C7AE98C35CA7E70E304B78880E8AA1E305428EEAD3C8EEC48E
        932897637120C7E2C0B6A687BFDEDD3A40799FBBE8F49D30FDDEBAFC11F02B25
        42FD7876F0B8BC93D4599CD0353890DFD8DFB8A7E5C1FA3DAD83B4ABE511E536
        3B972798384437B1B6A948F8FE64125E65A921BAB94785BE538E85B2DE81BC06
        6740D7E0BC92DFE2DAB6F7D62015B60ED0AE9601DAD932B03282097F43BC6464
        456F14CA4726A174C4A7FEBED9BF2114CD241457498F662DECF0FC5567711ED8
        DAE4FC415E938BF26FF6D39B371FD1BE96872909FE6F008F83EB725A3ED50800
        00000049454E44AE426082}
      TabOrder = 0
      OnClick = bincluirClick
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
    object balterar: TAdvGlowButton
      Left = 82
      Top = 6
      Width = 74
      Height = 56
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000080B4944415478DACCD97D6C13E71D07F09F5475121D952A5A69FFAC
        D3289D265835A125B109797142C8DDD94E020DB4B0499B52606BA5ADDBA4B132
        A4556AB796A24E9BAA092DB11D423A12C0F6DDD971DEB0EF9CB3F3421A62DFD9
        0E792D813681F212C668422821C0777FD87971088C12A3ED8FEF1F7792ED8F7E
        CFFD9EE7B9C7648042F3938B20196EFB89D30432F679881D70934915A864A081
        8A232E2A39554F464D244EE557731AFF4B5613AAD888E067557E8455F97156E5
        C7D930FF0513155A594DA8E1547E37A7896B8D9A40A68848C5AA48E65E0F15F5
        7AC81C13C974AA8E8C61810C37A4F86F2FF0D0C302370D355249C4B5C21415F7
        729AD0CFAA3C66137622E95AE5C1869C60C373D79C269CE134E1FD6255FCAEB9
        AF9E8AFBEA5300ECF7103B5847665578D2D4E3DE6F54F96BCC6298870CA33AC1
        85F969362A5614F7D43D6BEE7191A9770940535F3D3103EE6263B7E334137282
        7944583292071376820D39AF7231A1CCDCEB79303007CA6CB2A150365AC90085
        D89848A690F06EFC0B970EBB27E138D6A80A07385520C32D3F65A395B2E77972
        A010E5DF519262B81324C3949FD88850C37539929EA3C7926E07D89053CA9B94
        C87027788F87760C2BB3F9C5676DB46D58A202D559FBB8404C220BEF6F083B82
        5B3FF5D2EB9FB72599A8683240E644364FB6D2A698E75DA6F358CA61C6308F8D
        1A8F1F0CD991DEE78069C1C8309FD851A2BA8EBC3C1E24F36490CC93012A9A0C
        10157DE68967B4810A46EAF20AC20E70E1D4E372634EBC346447D5D166FC5EF2
        E0C5E1633086797033D35098C7C690031BCEBACB8A461B665D543AECA5D23312
        BDD2D7F484A9C33EC6849D60B514E25401B99A1DABFA6B61713601BF3E819BEF
        04B1ED1311DF3F6D4F42322A0F63C7316CE96D7C76CB59894A87BD44259764DA
        7459216EC8B39FE9B2A7B672AA80DCB01DAB066B61B33701BF6AC1B57D41E08F
        ADF8EA9D20B6758A5873DA0E5358981BEA2E3B98C1BA639B2EB5D0A64B32D1AB
        917A7A55F32C3386F8E9422DF5B817BBAA50712E0A0C4F60E2BD202EEF6EC2C5
        0F03B8FB761078BB0DBF531A90363837F9331A0FF6A4035B55F79A6DD17AA22D
        BD8D648EBAF716861D29C399540772C34EAC8CCAA8383B088C7D852BD33731FA
        C518C6DE5770717723A6FFDC0EECE9C09BF65AAC39550B738F7BF6F38561274C
        51B17C4B6F2351912612A70AA34CCA2AE7408EE6C10BAA07555D1F00572630F6
        6F60F4FC059CBB3D8991F397817D9DC05B4194B90F6345EB47D07B2D60424E98
        6373484E15BE2CD2C427C918115E60538C5BD9D381EAF6B700D70A4CB5EFC4E7
        5781D1ABC0C8B98B980270F7F435BC565385E5ED1F41275B917EBC1C19BE38D2
        944032AA139C269410A709BF792CB8A63598F66663D2FD6D8CB7EDC4C8D5BBB8
        3901DC1D9BC0CF340F962B7F85CE67815EB24227DB90B60892D3041B7111B166
        A9CBD9BDB8D5B8E5CDC2B8AF00D77DF9B8E17E1E38F173E05F17F0D32E1F9EAE
        FB003AC91AC7CD4BBAB7228174C01C7381D58400B15131C8869C4B6A8838AE7D
        1637EDCDC6B86F03AEFBF231EEDB08F87440D32A94491F627973353216C1CD22
        672AD9ED80F954DD10B12A7F6EE9954BE01A17E20AE2385F067649EFC571BE8A
        FBE2663233DC8521C7156255FE466A8775212E1DBBA47D784A72252A6779206E
        3E522759AF3F127031DCE2958BE39649AE459FB9FF960C9FE53AB161FEC2D759
        7B1FA5728F824BE42A313D6207DBED4C5143CCE1764AFBF04D49FC5AC39A1C0B
        7472E530B151F1D8C374F1C33744BC72719CED117171A05EB6B513A70A7BFED7
        0DB1E8F32759B14EB6FE938C1171CDFF43432C06CCF457FE988C9A40ACCA5FB9
        1F70A32A6275A405D5ED7B1E77432CCC2DBDDFF61495F6369029EAFACBFDB65B
        2FC55AF0B7CE3F01F5DFC3B4370B1389E52BB50DB1707AB1422F5B8F64B65412
        6D0DBBA934243EC79D74C6378BF37085AA801F6A3EF485DF0094745C6BCA7D4C
        0D313F366448E558EF2FD765B758898ACE1DA7E2F33E62FADD36E664F2963F5F
        75214BF5E074E40D2062C64D85C1974D06C09791D286485A8B7DE558277FECCB
        0F8894A7F0449BCFCBB4F9BC422F7F7AFC69AED33135FFEC255BF5A05015705B
        DD0EC4F2811E33D096061C4FC38E143644F2F01E40764BF5CADC80937294A344
        A57D2EDAD2E7A2D2C13A6207C4ED05A1B9D7CE2CD583ADEA510C7495A1ABB30C
        8D5DBFC5D1136FE235793F9EF139528E4BF75520D35FBB373FE02483524B06E5
        0891695C8E6742A6E289162A8AD559D9C4DB1DA30A2889F2C8E9A8C1F38D87F0
        ADE6C378CE6BC777A45A644A96940D6B7C5A29875EAA500C8A87F2142F199426
        32284D443BCE0467F3FA483BFD64C8471B4FDA6536F1BECA6802F2A30DC8EAA8
        C5DAE672A4FB52875A50BDFE6CFFC1273604AAC8A054CE860AA794B9DC0AD086
        A900E55D97888D082DECC9F8E111A70930F7B861E8A8415A737CAF963A5C0574
        92A537C7DFF08C41F19341F19141F1CE86B2A02C482BE522406C8F48A66EA186
        09C7CF05E7237FD4FC8F14222B9AF592F51B86163FE52B9D6450DA9272FF03CC
        8848E6DE7A62FADDBBB86EC72D26E404AB0930C7968ECC902CD04916AC93ABFE
        B04E3E483AA982725ABC94A7B491415192F2E013D6FE7A6287EAC81C16561A63
        AEAA9943C7A5212DD04B95AE4CB972ED7A7F35E9E5434B00F6D5133B9838E51F
        6AA4624DCC3046C4BF7311F1E20C32EDBEC87BEE8DEB24AB2D53B6E667F93FA6
        F5721565FA0F915EAE4A1170A0818A23E2CCDF10CB8C9A506CEEA93B90DB7158
        4EF759FA7592F5720231AE93AC57F4926D482FD9827AD96AD5C9B6ED3AC9B642
        2F592953B65196BF9A32E5830F05FCCF00AAD5CA2D4DE4BAAB0000000049454E
        44AE426082}
      TabOrder = 1
      OnClick = balterarClick
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
    object bexcluir: TAdvGlowButton
      Left = 162
      Top = 6
      Width = 74
      Height = 56
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000009AC4944415478DABC99FB6F5BE519C71F093189494813EC0F80FD30
        0DD05426B631DAAE491B274DDDE6E6E3737C5CE79E1CDB8993A6494ADB946449
        53CA65FB6597A24D306063058198D46DD286C6B81746D7D116145AFB388993C6
        3EBE9DF31EDBC7CED549BFFBC169523769D2A6B01F3E3F1CEB7DE58F9FC7CFF3
        3E7E4DE8EFA73C068FD2425F1F31DE49C6DE364AD67988092ECAD47552426C25
        436C279D7793C64B0F68BCD3C304E74B4C70BEABF1D284C64BC6226126BA3E62
        82F3A4C63B0FE8BCF361C6BB48E7DDC4C4164AD5B693B1B79D747B2BA5440F31
        CE49D9C33D842707E97A1FBA59C1C9866E4A889E7B74C1DDC378A757E3255C45
        B536E3DA678D97A072CDD0ACCBCF8C7706182F1D67B696FB8CBA7D9476ECFB0A
        041D6D94AC6F2326B8EF4CDA5B9FD104673227B352E8665073FBB2BAE8FA5DCA
        DE76AFEEF0DC6E04DB2959EB298B73CD232AD7B461B195D16D826A6DD6D95E77
        BD616F27C6B9D6103CDA9FCFF141C2403FE9363731CE35A8F11234EB5723964F
        2E13CCEA3AC178172D3CD14B78FAD80A1F425F7F3E034769E1482F319BF364DC
        D298F73DFA3A588CE6BFB2078F10060757F8106AFA7354F713EA9EA46C6D0FA9
        42E3AB5FA7D46AC4F9860F676B0E12EA8FE75C16BD08DD03391E3F4A38708C0C
        5BDBD158453DFEDF82B1CA7A24B996D7D03948383448E8EE27740F1019CE2E32
        9C5D94F63C4E29574761DC7A0B69159CD00409ACA00AEC2766B02D65391E3543
        373BC01C9E9B97B44A88730D484A6DF586E7E09217CD361EA259A987A66A0EDC
        112B6F54556BD3F2269B0BAAD901B558805A625BC9760EAA4940F4B99711FEF3
        DF1179E5CD1C7F790BCAFE3EC41F2901DB695F7D6FB10DEA4EFBF2075D2CC668
        790326ABBBEE9D958ED06CE321A2F9F65E9AEF1C20A3AEFD9958E575A9E59AC0
        EA3BC0A40360CDDD2B7178C01A3A1166498400288B44008CBEF1575CDE6C46C2
        F9F8EA7BA503604D5DD06D2EB0BC54372055EB797D7E7F3FCDB7F71219622719
        B6FD776956299BD7E72C8D508BAC303E3D8FC9F97964D2532B3116999C417A6A
        16996B4867A6914AA69136A656DD3B959D47321845886B845E560B76358ABC84
        38D78494B0EF4143EC224A3B3A2921B4F4C4AF4D2D2F41AB6A805A50897454C3
        34B02633D905CCCC6431333B8F99D9794CCF64310360668D3D590053002E950A
        B8BCAD1C297BCB92A46A6D822EB87F9BDEDB49C4ECADC4046770C529C1354133
        3B907CEE0F489DBD003D330D3D3D053D95B96D1273F3601786107DF975C83B79
        7CF95829826535482E4AAAD66630C19962F6D63B89D95CDFB96165896E683F28
        429C97105475047503C170FCF68831285700B9B1034377DF07B9C8025FB11517
        0B2B102CBF4ED2E62A2726B83AD63A6359A91D5A751B94893042E96928516D89
        489C41896A082D3E87630CE158FE6B57D75C259C4C4361290C3BDCF06E2A846C
        E2209B38F88A2CF992B9EA7E8198E83AB9E6595B590F56568BF0B92184B20B79
        6FB611C2D373080D8F432EB5C1F7D8AE25C13CC9B21A24C516E8A2EB0362A2EB
        43955B43906B02DBC121F2F6E95C2B896A8869098C4D4471E6FC250C8F2988B3
        2494A8860B5F0EE3FCD03094A886384B623810C299CF2E62784C414CCBAD0967
        AF2074E122E4C20AF8B6EEC9135C92DC5E81E09E6A188E563F69BC145ABBC337
        831554217AEA9F7982A3E3617CF0E9E7904783D0120694A886FF5CF0E2CCB94B
        50A21AB48401DFC804DEFFE43CE4D120D445C10880E0E9B3F03D5A02B9A06285
        E0B264258265351A69BC34B5DE31C4369721FAEAA93CC1C0E5083E3E3B047F20
        04554F41896AF8EC0B19FFFDDC0725AA41D553904783387DE60BF80321C4AF11
        9CF8C77BF06D2A84BCA36A55C1AB92DE1D55999B13DC5286D8AF7E9F138CB1DB
        16BCFCC6DFE07D682BE422CB0D0517C990669522EB0A1654217EE4698466B250
        D4C46D0B8EBFF81ABCDF7D743D39C8264E27DDEEFE64CD22E125B0222BD48E3E
        28893414DDD8B8608C21022070FC97EB0AFA4C160C9BF851D245D7EBEB0AEE14
        A14ADD50222A945466E3825A12E1B9798CB41DCEA5784D410EC3C5D68F49135C
        87D6FD31B4DB01CDD18A70208850667AC382E1441AE1441AC3F5EDF03D5CB86E
        8AFDC5DC2BA48BEE07D71D26CB6BA1714D087F2923349BDDB8A0310925A2C1CF
        37C1F743D3FA112CB1DA4913DDA4F192B6A660550398B91A91B39F23B4808D0B
        CE6411F28D422EE1E1DB6C5E2F8273FE12EE9B64D8F7534270FF62C5B8B5EA69
        F21142D8B86004C0C4FBFFCE45AFB0F2C6723B2C904BACAF8D94D98812C23E4A
        F06DDF5EB75036EF41EC8F6FDEB6E0E5536FC1FBFD9FDEB049FB8BACB864AA84
        B7DCFA6399138966DA7A68767F2F256B3D2FC42A1BD616FCCD8B080188B32446
        C7C378FF930BF08D2C1F7567CE5DC2A79F5D5C3AEABCC31378F7F439F8468250
        592AD703FFF426BC0F6CBE6193BE545481F122C7DB5A590769E5ED440BEE23B4
        E0E9A3D9868377C72B1B67D51B4C366C6B39E2CF9E40E80A1051139850E2F00E
        5FC6782886A8AA43896AF00742F0074250A21AA2AA8EF160145E7F6E4D24AE23
        0260ECB9976FDC038B2C18329563BCB2FEFE68958722952E22BDA683F4EA0E4A
        3674915ED72AC6B9D5A3C8B65522DEFB2C942B80624C22924C43CD4C2392CC20
        A4A7A0240CC4D35388A7A7A0240C84F414A2A9CCD21A2561200A20F0F313AB0B
        1673B85458855091A3276E69A030574D614B0D51B6B33747771F2D74F553CAE6
        793E56B552929588509BBB11D29250E6E6114E666E8DF414A200469F780ADEEF
        3DB66A6ABDBB2CEF19E51D34653E4053E64E9A327712A1F6E8220384FAE334E7
        384C314BFD3B2B04ADCDD0050913CD5DF036EEC37063C7ADD1B41F235237E4DD
        76C8852BC72C6F41857794B7DF1170D7D348432D8D34E620F4F42F736480AEF4
        0E50F6600F319BF33DD5D298778BC07809BA4940E01113861EDA0AEFA642F836
        15C27B5314E4AA775B19E49DC2B25851157C26CBC54C61E7B7E676FC8CE64A8E
        D06C71CF128463FDCB0CF6139E1A240C1ECD5DBF59A493D7178D6E7321696FC1
        D82E3B2E1656DCCC44B2E6CCE72BB1BC259770DF982FEC256C7D96B06590B0E5
        D8126B5C60BAC8B0B753A2B6B539CE35CFE52E30AF9114DD1B96F41559E03359
        306A120E8F9A45F2957234537088B0ED4942417F1EEB5F0137B411135CF727C4
        9697AEFEA856F966E8361712A21B63E65B902CCA8D517E93706AD86C7B78AC54
        A440A948BE9D960D0AEE6DA3449D8798CD4D93F55D94105B7FA40BAE5F33DE19
        CD493A7392BB445CDC5EB1629EBB4E30259BB8176433BF7DCC5C4B813D7B2950
        6AA3D152DB572078EDDF10B676D279F75D1A2F9569BCF3846E73BD93B4B778C7
        CCF6B8774795219B384336719ADF64F5FB4DD60FE562EE797FB15594775AEF91
        4BACE4DF2DD098B9864677DB6F4AF07F0300CBC7E9D9495EFE5F000000004945
        4E44AE426082}
      TabOrder = 2
      OnClick = bexcluirClick
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
    object blocalizar: TAdvGlowButton
      Left = 242
      Top = 7
      Width = 74
      Height = 56
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F9000000A3A4944415478DAB4D95950545702C6F15395CA5465AAA66A2A999A
        D749661EB2CC4BAA9C444D46E5B6FBD20D74DFDBDDEC08888E884A40228A8AA0
        46C724337162C5252A1A40C505318AF402B48A02D20B8B224151147771EB6E50
        40F9CF43038A62EC18F3F03DD045DDFBEBEF9C7BEFB9A7052C1103932978982E
        7A9CB2E054A8E07484C0290B1AA3042E83A0DE28702A02A7FC7E8F5349C0A96C
        C6A594E0902FE290DD38643776F90A358623B8949C1EA792824BFE10A72C7A5C
        B2C061109C8AF01DBBD6E83B9E5D2BE8982F609978DA23FC02BA6441D35481CB
        F826354A1A4EE5340E99FED8750CF8DB2143B576E0E74EF91C4E79390EC3DB34
        440A1AC25E01B0214CD0182970C8AF531FB212877277508CBFB1CB6097BBA931
        AEA3CEF816752182932F0B74F537A8A62AF82CD5DA97870DD6EE09DD6D6A8DD1
        9C340A1C3F0B5CFA54960B58227AEA0C826A6D66FF3777FC06B1CBE0D0ADC529
        0BBA160AF8E2198FE0D1A2A79221E85C20A8D1E75019CCAF1A527F72420BD53A
        0BDE54C1A3CC673C82E688DE840B5AA204CD91028792FBD22774CAE0D2F9E2FC
        456D1EE64C84E042B4CFD2EB12B427F7669EA0234550AB2CE5B8E6970D935307
        4D81D0A2863381D018E4CB598DEFB3C6205E38558E07824397873B49D0FE79BF
        4BD012EF4B6B82E0C2F400EC3AFF86B5EF64CD1A38ABA1A9389CBD1BA7F3FD7F
        12F866E56CD6AC9ACDE66F1238B0259ECB65A13EE84F8150AD3CE7783ADFC573
        2E2E9AD6847E97A03946706E9AA021E235CAD537B1FB313476056A75D0A2A6A5
        2C94952BE6A08B59C418E31254CA7C54BA1454BA1446EBD3181B9281313E9DB5
        5FCFE24E951ECEAB7FA64D1D94ABE154F85B9C9F26688E1182EB89821B4982A6
        C8955406FAD75CAD165AD458F362098A5AC284D00C3421FF2228248EE973D248
        5EB09CCFD296119B908AC61043606822638D9984C6A7535F140117D4CF2FA132
        101A2376703D49703D51086A8C0297E10DAA75DD7E4D6AA70C17D498B74D4365
        C842179D8A5A896261E66ACA2B1D9CBB709996D66BB4B45EE3ECF9562C65E5CC
        4E5D825A894213B980C9E14BA9FB31022EAA7D2331D8F1ABB4E054FE4EAD51F4
        3E13F5697ECDBB6A055AD4341E8C647C5826DAA864828CB1EC3D60A6FD7E17E7
        5B6F603B5E4391B582432595949FA8E7F2F53BB8BD1DACDF9287461F8D267221
        869885B41DD14273F0E048BB0E6A94EF38152A044E83C0A1B4FA75C5D66BE154
        3029A9F39818964E90218683661B0007CCC75997BD97EC1D07C9D9554CCEAE62
        B66C3FC0BAEC026CC76B00D890BD03B512C5B8F065AC4C9F01F5E3A0DEF09CF3
        29F7701A5E17D4C87FF5FB96D2A2A63C379671A14BD1E863F87AED260076ED2F
        E5FB9C42F20B4BD8B9CF3A308556D66F2DC072D84E67770F0B96AE26282C015D
        CC629AB64F80FAF1501B32F8F95CB246F438F573FCC2B964680A62F5F2B98C35
        2C243C6E364DCD1770D69F65C3B682C171BDC92F2CE1BB2D7BB974ED36472BED
        A8F553191FB18C1FBE8A826343785811087583209DCA4681CB90E3D7FCABD382
        5326757E0A6374B358F1E55A6EDC76935F5842DE1ED373717DD9BAB308B3AD9A
        96D6AB24A62C669C318D2F96CC02DB27749846F0B042331069D781536F13D418
        0EFBB5526908C67BCCC88C39F319AB9DCE86ECED5CB971871FF20FB1A3C0F242
        E0F6BDBEFFB978E5262BBE5ACB78FD6C929253F09846F3B0E4533C8746D25D19
        08B5C6C74097D22470C897FC1AE286606E1F31322D713EE374F16CFE219F4BD7
        6EB17567113BF7BD18B8A3C04ADE1E33E75BAFF1EF6FD633513F8B84B9A9B415
        8D01DB083CC5A3701F1AE96BB2D6D8779F6C1338E40EBF802783E9AED2332739
        9531C13358B32E9BEBB7DCE4EE36F9D560EE6E13054587B974B58DF4AC2F1967
        48263D6D2E5D250174978EC26B9606227DC3EDF51F58A3837A2D198B3F63AC92
        4C525A16576FDCE65069155B771C24BFD0FAB317C9A69CFD38EACE70B2F12CA1
        B1898C0DCBE07F2BE2A16218ED1609AF591A88AC0C84BA10AFC0AEBBEAF7B2E8
        BC86AD6B6632DA9881C630158BED1837EF785997BDB77F8E0D86CBDD5DCCA69C
        FD3CE8869CFC4226E9A298129D45E9263D540DEDC73D83ACD0DC16D4198F71C2
        CFE57C5320574B42D1C72D22387C0EB109F3B875D7C34FCD9759BB790FDBF20F
        3D03DCB2FD00EBB7EEA3ED4E3B0D4DE7304627A0895C40FCECF9B45B241ED946
        3C03EC437A4D01CD821AC30EBFDF37ECBEE77049DE4C7471CB50EBE34859B89C
        DBF7BCDCB8E5A6B0B89CCDB93FB229773F9B72F7B339EF00A6B213B8DB3B6969
        BD42ECCC790487CE606CC44A8AD787F8DA33498302BD668976B3542E70289FFB
        BF3095E14E30B6AD5A261853999992C964398619490BA9AC7671BDED2E97AFDF
        E1CCF92B9C6DB9CAD59B77B976E336E6D2A384C5CD461B369D3111ABF86AE94C
        A8184667E9483CCFC1794C121D56D536814BF9C02F9C4B86369923390A1F7CAC
        61F86885C9E10BD04F5F812E22118D7E2AF3335691BBAB90C2220BFB0E5AC8CE
        DBCD9CD40CA628D1E8A2921913BE8A658B13E939F24F7A8E7C8ADBA47A6E7B1E
        B3C403AB14227A9C8AC021B7F9833B9C2BF3EE3F64DE1FAAE76F43B46CC99AC0
        9E757104C6643121228B4921494C92E398A2C432458961A23C8D49A1F3181FB1
        1C5D5C0639FF8D86639FC0D14F70173F1FD79BAE76ABEAF7829321821A65F5A0
        8FBB279BEBC5BD3754E1ED2146D6674C8193C3A06A18B53B357CFB453CB39252
        31C42F26282683A0980CC2A6A7939492CCE62F63682E98085543E9B18D7821CE
        639268B7A8F2EE978EE95D6ED9953F71423BF82AF79ACCD13C9977873CC66D58
        3A19EA47D0659368370540C530A818C6BD6215753B341CCD9629CF9669DC3585
        0E6B00540E8563C369374B784C2F6C0E8F59A2AB44FAB8BB3440082ECD125C9E
        2B381DB191AAA796FCE7646C3932EF7DF42CAEDB1680BBF8C96F2CF1A86C041C
        1BDE0B1E0AE59FF0B074E40B414FC66D92E8B048666CA30465A384E0F20CC1E5
        04C199A97FE0786067FF50BB646895090B91117FD6F39721216CCCECC51D7E8C
        7BD5F19824BA4BA5771ED924F1A84C128286084143B86FF7EA74A4D1B72BD5F7
        4A2963FA5E66B814CCA6CC89503B724073AF3AF74C2A3AAD525A5F7BBE06DD49
        BE7892059ECF0435FA0DFD6F777619CEE8C13905CA3FE5BE75945F73E865E236
        4BB45BA4B23ED863E0B9C8C7B9182D680A1354055B1FAFA415386DE051851A77
        D1083CA680DFAABDD35DA5D26BD8463E05EC4C7B9CAE0582AE74813755E0524A
        A9EADD3C722A501742F77135EE43235F29D2E3CBA9EED2803FF6D806B6E70392
        F5443205AC1090E9DB7E3B119C336007A00FF9AA9A3449782DAA435E8BEA773D
        A5A304830307DBC05C247A5C8A6FF7B3213C8E2A6D17D5BDF7C95780EC7BFE76
        58A4F9F74B54C26B51894725BF14E894050DA1829FA20476F91DEA8C9BFB9BAC
        35FE2A64BB592AB86F557DF8C02A89FB5695F0BC34F05448EF26BA2238132D70
        193EC2A9ACC1A95C7B09A4DB6B96363EB006489D56493CB0AAC47DCBAB023A65
        5F93FD3F43C86FE054D4D4877CDB7D5C6DF598A5D35EB374A317E1F69AA5B676
        B3D4E4354B87BD166983D72219DB2DAA37BD169578600D109DBDCDF903FCFF00
        2ADC84EE2664A1DC0000000049454E44AE426082}
      TabOrder = 3
      OnClick = blocalizarClick
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
    object brelatorios: TAdvGlowButton
      Left = 322
      Top = 6
      Width = 74
      Height = 56
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000080A4944415478DABC995D6C5BE519805F0931894948136C12D2346D
        6C5743D38634600212D74E4B932671827DCEF14F12276E9A94262194B6406929
        B0C2184CEC629A9040303169EA10378801EB4F92529AB4244DE2738E93B64949
        491B5A5ADAD0A6A98F9DC471EC67174ED3E617A709B3F45CD8B23F3D7E7FBEEF
        F36B8117653A2F09133B2465A8C2F112A1372018AA70A24230BDC2515FFAB9A1
        FE3A6568B518DABB98DAA7E8EA19743582AE4608A9E7097B5B30B55D18DA5398
        DABD18AAA44C55D0BDC2F18070CC2F74F984633E49E96E6164ABC09F64A68F64
        2468AA42DF5AC1F4DD4158DB86A1F5A2AB4C115298F65C57A1D33DFD7543EDC7
        505F41F7FE829EF2F4DA4B16EC29154E940BBA7A2B47FDAFA16BC373CA2C8690
        9A20EC7B8B6EDF9D74FB9720684E45D049BBEB4B3ADD4B139B19DD4E65882E5F
        90637E49190B0AEE9CC12B022F4AAADB2B74BA774E7EEBE5939B1E4DD0D53752
        862A8C3F27F0EA2C1F21F9FC0CFE28C4B70BA66717475C2C39A5DF45871B42EE
        26A2CF08C99766F908FD8149CA84810AA1BF5CD0B57F7F6F519B3F9ACD9C0C08
        5F05D32E935E426CCB244F0B234F095DDA4E5A8BFEBF72BA0AADC5A02BEF11D9
        24C4B64E790903EBD39CAD13BE7ACC4E485920AD1E08B9A023777EDA73A1230F
        7405746D111154D2CD73AA2AC8D9BA292FA1BF5238552DF4046EE1B0F35B420A
        18F32DA480EE216506E6271C00B304F44740772F4E5257E0B0138E97DDC9E96A
        A1BF52848BF5C2E026A1AFFC358E142FBC409B8D64CF56A2A323C4623162D1E1
        598C8DC5181CB2B8ACBF009DF72D5EF248319C08BCCFC54DC2C57A11C23EC1F4
        DE46A792983F72D7041F26D9BB83C80458E360C567134FC2450B9ACD2B5C0A3D
        07FAEF17976E4385763718DA3D74F964F2C8F16CCB683B69CB26D9B30D2B0ED1
        D114D191F82CE2E349AE0C47F8DC3C47B339C490F102E88B8C644881B0F626C7
        4B4430BC82AE9DCDE883190A0E0D47E9348F71C838C7A1AE61868CE7417F0074
        D722D2AD5DC5F4DD2A84D55F665C1F19088E27525CBE62D172A48B96D61007DA
        07686A1FE47CEBB310B283E9C9BC1E4DB548528667E3720A8E8E25B86A8D72FA
        EC054E9FF986AFCE9EE7E4D731FACEC7891F7D1A3A1D990B1ADA3B82E9DD95F1
        719681A0151B23363ACE44122652309184640AE28065BECAC4FEDF40B73FB33A
        343C0785B0B779C19B4A4885B0024715D0B3A0EF59220B08CEC96882680AC6CC
        1D243EFE19E84E38EEFB6E4153EB1374F5EBF90F7215BE70C34937982A84D282
        D64D0AC6BB5E24F1F1CF1969C886EE02E857A173C1A6B924E8EAC8BC6F38E1E6
        CC012F1B37AF23B8A11AC5E7E4F5BFFD859B7DFCE39F6F51E45A4D455590CAEA
        72FAF678D292F30B46E71734551870B1637B25B7DF57CFFDCE1A7EFA8087B28D
        AF12B5225C1E1AE6C2C54B1931F8ED1031CB62F3CB6F72D7FD1EFE50FC387765
        3F4949702D09D3093DDE050443CA37739E20663ABD5B9F59C76FF36AC92F798C
        FCD21A0A7CD5389500858BC4E92EA3C057457E690DF9258F91ADD452545AC5E5
        8F1C102E9CBB7142EA90D0EDFB9C0EF7DC827D6E9EDF5E392558585643AEB78A
        ACC212B29D25643B4B33A484ACC212567BD6515896167CD85D8BB7B28AA1DD76
        3890C544FBA3D325430A989E7E21EC7D7FCE2E9E43708AD20D37C70D6B5C13BC
        B237070E6411D96B4B4B76F96E143C2CE8DAD6796B7096E07AF24B375010A89B
        A47611D4A525FDEB670B36DBB0F6ADC09A29A96BFF124CED9E4C050B4A6B58E3
        AB26D75546AEBB8C5C77206356BB4A59E3ADA260468AAF09461B1D5392C96B92
        A6E69794A109BA7A2923C1401D6BB44A725639C979C449CE234519E3C8C92757
        A9A0A0BC6E5EC129C97D3626DA1F1DA7DBFFC3F40822ACBD3EEBB89BECE26D5B
        2BF9DD5417A75394A706C9D382E4696B33470DB2C6573D558BD94A2DAE8A6A2E
        ED5E092DD705A34D395CDD6B23BACFFEDEF8C1DCC9EB5648FB311DEEE9577D53
        85532EB66C59C74F1E7C82156A2DD9EE1AB2953A6C5AFD4DF004D94A1DD9EE1A
        6C4A2DBF5AB591E2C07A463EB5933CB8629A60748F8D7863D603E34D59227CFD
        B870EE49A137F00EED33AEFC5FBA39F2819F02FF3A0AFDD52815CB4351D97A56
        FB36B0E7AD6268CBBA2ED7E820F2DF2C465AF31B3915144E9589706E8370AE4E
        38B9F6765A8BE3D3521D52E1A40A9D459CFBD0C1E0270EBEDDBD72C95CF86415
        B146077C9E9DAEBB6BF5D760C7FACF434C74F9EE4E0ED448B27F9D083D01A1A7
        2C3DBDEA2DF7A5A752D34613D0EB49EFF69F3D0C07B3A0C506CD4BA0C506076D
        C41A1D580DD7A37775B78DF8E1FC6D7428425BA1D0EA1421B2298DB545B0360B
        61CFDB73FEBAEBF23171A4186B6F7ACFBA312DCB41E4938718D9BFF233869E10
        86370B57EA852BF5229C2ABFCE99A0D0572AB4BBF6CFB9374E4A46BE07C9C847
        0FF6264CD72D5C582F9CAE100682C2405084F8B6EB8C6F17C67708D16704533B
        40BB6BB664B79FC4324A5A7B6C587B571C9F18ACFF516AEC0521B17D9A93C0CB
        37F092C09F0576A6C76F1DAE5D730E91BAFDCB12496B9F9D58837DAFD594F383
        546287C05F271DAE3B2D30C0D4D29B784F5915EDEEF159178A25A4DB6A481F69
        2307563F3B7A385FAC268724ADA72683B3D811F017154248BD9B6EDFBBB3E6D1
        37D3380D76629FAEFA70F450DEBDF1963C193D9C2F56A3FD2605A786E89AD017
        144CEFFD98DADF31B40BD324DB8A3289E4D568A3FD9DB1861C47FC50A18CB53B
        65EC60AE8C1E5AB30C82B3FE86D06EC3509D18DA1B18EA7EBAFDBD89B6A241AB
        C11E8936D823D146C7A558A3A32FDAE8688E3639DE8E36397CD126C71DD12687
        8C35AC94784B818CB6156424F8BF01009FA2A1EEC0ABEA0E0000000049454E44
        AE426082}
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
      Layout = blGlyphTop
    end
    object pgravar: TFlatPanel
      Left = 459
      Top = 0
      Width = 445
      Height = 82
      Color = 8421440
      Visible = False
      ColorHighLight = 5460819
      ColorShadow = 5460819
      TabOrder = 5
      object bgravar: TAdvGlowButton
        Left = 16
        Top = 5
        Width = 74
        Height = 56
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
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
          7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
          1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
          DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
          AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
          482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
          6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
          B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
          32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
          337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
          F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
          E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
          2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
          400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
          43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
          A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
          82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
          7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
          93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
          93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
          75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
          B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
          198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
          A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
          0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
          F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
          6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
          1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
          2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
          01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
          CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
          FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
          48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
          3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
          DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
          10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
          81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
          14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
          C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
          FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
          ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
          E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
          79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
          1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
          C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
          27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
          B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
          1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
          BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
          8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
          0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
          612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
          46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
          89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
          A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
          36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
          FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
          1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
          43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
          FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
          54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
          4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
          E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
          5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
          50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
          BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
          A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
          D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
          8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
          D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
          6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
        TabOrder = 0
        OnClick = bgravarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
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
      object bcancelar: TAdvGlowButton
        Left = 96
        Top = 6
        Width = 74
        Height = 56
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
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
          7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
          1F90000009564944415478DAB4996B6C5BE51DC6FF12621293264DB02FDB00D1
          7DD844B742B9AF6D1A9A9B9DA4F812DBE7E2A471EC243E766E6D9396B409C99C
          A494316DD2C6C404B41B1250AA6E6C65373469C03676D13498B6412EBEC44D5B
          484BE3738EEF766227E9B30FC776E2DA4E5C281F9E0FB6FCFAFDF9F9BFEFFBFC
          CF6B82CB45799A18A7D5D15192190745CDBD146EEB21997550BCAD9F427C3745
          F93E921927494CE7DD122B74CBACF0A2CC0A6F4B8CFD4389B14733BA2CF38EBF
          CAAC704A6485C33263DF2E330E0A324E92F92E8A58FA28DADC4741733745F81E
          928D022D1F1D223C3941D7F250B98009DB210AF13DB70659E790CC086E89B123
          2BD1D489F5AF25C60ED1D80969DDFB32239C9319FB7199EBBA2BDAB69F622DFB
          6F10A0B59764D67973D8DCFDB4C40A6105A610A81C89CAB8E520EF783E62EEBD
          2DD8D2F329019B7B296CE9D1048C9D7ED1D8F189C10ADDED8068EA0CCACD4E6B
          D4DC47B2D1B101E0B82B5FC72708632E0A724E928DC2B8C4D8F34A75E3A45442
          36399E951907AD3E3142F8EEB1021EC2A82B5F63E3B43A3C4232279C0A18DA21
          99EC9F015C819B6F2E0F0E1326260A7808AD2E45FB5C84B62769D9324422DBFE
          EA6709554C01C6F64EAA7590603DAEB064B80887C6143D3E4E387C8CA25CEFF8
          82CE5AFACB3E4DB93718BBA0B7226CEC3A8DFE09C29109C22117E1D018515418
          A0A83040B19EC729E238B027602A5156B31392C68240851662630B247357F960
          E58C35D91130DA10B6F75AA33D83392E4AB51FA1947D8892AD876F5AD0B68BA2
          A9A37030EF8458C340D2DB10F9F96F205B0F42ACD02A136F06773D634D9DB8A2
          B521B16FE0B6947D9852ED478856FA4668A57F8CA26D7D4F2FE8AD25263041AC
          D022FAAFFF620940CC7F01A28A8758A9DF18F2138C5DD0DB10B1F49C5939E8A2
          95BE11A228DF4F51EEE02D92C9BE5C70CEB102C4C61688554644DF7D1F4900F1
          A5652401C4CE7D08692348B31362B50962850ED1F73EC81FEBBF08A9B119929A
          87C4390A378CB1031176FFD6283F40146BE9A710DB351428565A9D15928A43CC
          7D4E9960318D786209F1645A799D85ACD0E6AF2BB31362B511E26E1DA2EFFE2F
          07174F2C219E48611140321C47D0D00E5963C926CCBAE8EC4090753E176BEE27
          92CDDD24B3C2474553A2A91D929A47E4B5DF2B935C456E922C64CC7F0162BD19
          E22E8D0299756EB77E9DEB991F96584262E52AD2003E7EE32DCC566A21EBAD08
          F18515905921229BBB6F2699737CADE41A6205484D3604EEAB45F88553480248
          603D644A819C3D0FA9DE0CF1D126886A5E296B9E73A93CB82BA7CF62EA8E7B30
          F9880AFE061E41CE5104B21332E7D092CC3A0E6C98B19C0392CE8AC0BDD508BF
          F08A0279B508E4DC4588155A04EEAD46F4DF1F143A975EC532802BAF9EC5E4ED
          F7C0B3B3113E358BE93D3AF8D5AC02C939AF75F124C9BCE3D4A687EF7AC8E75F
          C92F7772ADDCD177DF47E4CDBF153AB79C813BF54B4CDEB91DEE1D0DF0AA1978
          6B8DF0D61A31BD4787D96B214D76C89CF0179279C73BA2B18C74C8426EAF29EE
          6422854476092453796B4E71EE5798BAEB3EB81F51C3AB66737039C82A1DFC2A
          26576ED1D40999137C2431F6F9B213817340D2B521705F4D092753882FA67280
          6B70673175E7F69270EB9DBC06522289B127AF2B4F3390E2032A849EF929E2B1
          04E2E99535C08C12A96524928BB8FCFC4B98DA723F3C3B1A3684CB8354E720E3
          D70FC8D821357743DCAD43607B0D62B317D6CABA4E8B0062F31F637A5B25A6B6
          DC0FDF5EF3A670F94EB208728E384926FBC7D705973DE72AF588FEF33F0ADC62
          BA0030BEA8408627DD703FACC2F4D60AF8EAB9F221ABF4F0ABD92005CDCE7F94
          B549CA4888447A1589F46A6ED3C417D3480388F8E630F3601DA6EFDE015F4379
          909E1A03BC75C67314E41D67CA02DC2C21D2AB5804B00820B17215B1B8F27E0E
          D27B4E71F21BE5417A6A0CF0A999BF93C43A8E6CFA30946999364B884BCF9CC4
          87A34F2305289F59178B6900118F1FEE87324E6E526E4F8D017E15FB320579E7
          D6CDE1322DD37BEF974E88D36731F9E56FE283DBBE8E4B3F3A81740652715259
          97D972BB1FACC5F4D65D1B42BA6B0DB8A0E6CD24714E9218BB54328B1B5B2056
          E7B75BA512C2B3AB11DE2A3D26BFF22D5CFAE10B39C8DC39B96E4DBA1F5163E6
          815A78554C29C8F45C3DF7798A9A0F5288757EBF68BBA5B742AC630BDBAD8D12
          42C5C053A9C1E457B7613E0B79158865CA1D4BA4B00C20168CC053A9817B6743
          6179AB9AE0A9674ECF36351385D8FD14627ABF5474A318DA21AA7944CEFC3617
          6DB1F81212AB9B24848A8167B70693B76FCB73323B360D407CE36D782AF6C2B3
          5B930F586782FB513DCED7310F5F7CCC4CB4D43B44A9832314B6F49C5CD0DB4A
          B65BA19FBC84446622A5657A5DE94A4A254416729D934BD9B12FBFA68CDDB5B7
          A0C453953A5CD4B5FC31D9758092F65EA255E730ADF68C52CA36F88580BE3D55
          7011C43920E96D4A2773E2552C01B8F28BDF61EA8E7BE0D999DF951485ACD428
          6BF2D99F6105C09533BFC6E4EDDB8AC2796B8C98DCA5C105B675CBA5AE2E9AEF
          B013055B0F5070DF010ADB0628D8D6CD078CB622F92B40D2DB1054F1081C1EC7
          D48E06CC7C5B0D5F19D99A859CB9BF1AE7BB1E8767D75E78763616DD1C338FEA
          30DF641B0AB4F6D16556A0CBAC40B4DC3FA2E8D028AD0EB828C2F59C58682A01
          69EC845C6DC27C3D8F995A8372DA97135D2A06DE2A3DA6B755C253A929EAFA4C
          A50E9E3AC39FA307FB29797498920383943C344804CB78466304EB714AB71CA5
          0583F5AD52E7A2CC08089BBB704967C17495AE7CC84DE4AED4BBE74CCD37CDD9
          ADE46FDD477E8B22C2906B4DC3637475648C96078748E6843F050C1DC5215901
          1173F70D8174EF6982A7DA301DDF3FF0C5B4EB3B941E1EA6D4D0504E8463AE35
          4DB8084F4D1026C628C8394836D84F89251E07644640E4533AE9A936C0536BF8
          834F65FADCCA13A3841F7C4FB9E13A762CA792179841C64131732F852CDD9D01
          63675AB9C0BC314E7AAA9BE0A932E05C037B744ECB914F65A4A5C347094F3D79
          1D37AC2681A22D7D14B6F591CC3AB684F8AE17B30FD585905927F51B43D618E1
          AD31C05FCFBE3EFB18BFFDBCD64CE7B51C79EB0C9F10B0B997426DBD24734E4A
          580728C4773F14641D3F9619E1CAB5576AD98D339385CC6A0D30E2A9359E9C53
          3355F3060BF99B5A68EE319EE634370270DDDF1031AE8F828CF31689B16B2446
          78566285B7645670CBAC108898BBA297B496A8BBA649F2A94C3E5F9DE91D6F9D
          F184AFCEC4FBD4A65B3D6A135D6860E9A3A6569AD5359705F8FF0100B9934224
          A87C8EDD0000000049454E44AE426082}
        TabOrder = 1
        OnClick = bcancelarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
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
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 40
    Cursor = crDefault
    Caption.Text = 'Cadastro de Clientes'
    Caption.Location = plCenterCenter
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -21
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.BackgroundColor = 6054757
    Caption.BackgroundColorTo = 6054757
    Caption.ColorStart = clWhite
    Caption.ColorEnd = clWhite
    Caption.Line = False
    Fill.Color = 6054757
    Fill.ColorTo = 6054757
    Fill.ColorMirror = 6054757
    Fill.ColorMirrorTo = 6054757
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    OnMouseDown = AdvSmoothExpanderPanel1MouseDown
    TabOrder = 2
    ShowExpander = False
    ExpanderBorderColor = 6054757
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 40.000000000000000000
    object Label21: TLabel
      Left = 193
      Top = 17
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 196
      Top = 3
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = 942
      Top = 0
      Width = 45
      Height = 40
      Align = alRight
      Appearance.PictureColor = clWhite
      Caption = ''
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
      OnClick = AdvMetroButton1Click
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 14
      Top = 2
      Width = 38
      Height = 37
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000036669545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265
        663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73
        547970652F5265736F75726365526566232220786D6C6E733A786D703D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D
        4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A3444
        3538324345333046463345343131383932454130343642353242383133372220
        786D704D4D3A446F63756D656E7449443D22786D702E6469643A344630443444
        30454633313031314534424642424641374346433745394646362220786D704D
        4D3A496E7374616E636549443D22786D702E6969643A34463044344430444633
        313031314534424642424641374346433745394646362220786D703A43726561
        746F72546F6F6C3D2241646F62652050686F746F73686F702043533620285769
        6E646F777329223E203C786D704D4D3A4465726976656446726F6D2073745265
        663A696E7374616E636549443D22786D702E6969643A34443538324345333046
        46334534313138393245413034364235324238313337222073745265663A646F
        63756D656E7449443D22786D702E6469643A3444353832434533304646334534
        313138393245413034364235324238313337222F3E203C2F7264663A44657363
        72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
        203C3F787061636B657420656E643D2272223F3E257E78A1000004A549444154
        78DAC4986D685B5518C7FFC9BD3749D32EB5ADB176E91ABA545132379D38E82A
        DA69073ADC14416513DF612A3886FAC517141461C2AC0E54C4B70F633050C7F0
        8511266CDAB139FD601D165B95D1B5139BCE6DA52F499B26B989FF939CD46EA6
        BDF7A677CD03BF7E48CF7DCEFF9CE739CF7971DCB2A70F25582559465693EBC8
        D5A48ED4CAFF8F90F3E44FD2434E90D32466B523D562FB20E920F79175C465F2
        BB34F99E7C4EBE2583760BBC8C3C4E9E262D25CCB82A0726E8271F904FC8A8D1
        874E13CEEF2447486789E22EB6E564A7F479D74205BE42F6C93CB3DB84CF2FC8
        ABA50854C847E475E2C5A5330F794D865BB59283E28347B178F604D1C8236666
        F08D451657B087C90E2381F79297513E7B4196B0A2021BE4EA2AB7BD4502C504
        6E9725A0DCD624B55C2030B490BCD314071C4EDBF331345BE003A4DEF2F6E074
        A04275E0F0440A5DC4A53AED125A2F35E504D694327B42DC949EC5C1339378EC
        4A2F3A57D4617C5AC7743A6B67E9A975CA8A7E95A5EACA909EA598E3E726F154
        A806EFDE11C4C66B6AD1CBDFE2142D422E06301716B6C455A250B79AFD4284CF
        C3309E184BE24C3C85CE350D78766D031CECF3AFD109C4C6A7D0E3D1B034A520
        398F9F168F0A2FFDA43386B3DDAACA339DA990BA996F9173091E9E32F8ACA309
        F7AFA8FBAF81E84BE11F45E4A513EE39FA169AC6F40C2A3553C97AA36AE684E2
        A038314B91681C359CA1839B96E3A6C6AA0BDAAC59B604BD0FAD84C6764EC71C
        6174E4057EDA3D8CF7FAC7B1DAAB19751D52CDAEDE43E713B8FD0A2F766F6846
        A0FAFFE7D42AB7826BDD8AA95409FB2B11EB1B85EECD9F4AE631BF6AE654DC35
        91C4B6503576AE0FE6C2BC509B4AEBE64EA22CB186CDF4DC813D83E66AB72DE2
        0A7968D2B2860245086EF6B9F0DCAF67F1E691BF6D11285630B2A60B07FE316A
        E5A6C3EB2B34BCF86314CF1C3885C964664102C7137A6EC198C8D81155DEB0C2
        F3B54AB0F8D67301B42FADC2FB7D231888A5B06B7D135A6A3D336DBA87E2D871
        3C0A9FA6C0AB149F2051AAF46C16BF8C4CA3D567EA423828048A8BF106A330C7
        988762DF6D0F54E1C0701C27BFECC787EB02B8B5B93AD7663896C4BE936310EA
        148AD48B665436573057321A7E0E38A51BC6B94F083C4A9E37938B53DC67DD4C
        8ADBFC5E1CE66ED21E19C0DEB60036AFBA1C4D5C4458A221EC51E07729C8185C
        844C8813764C08EC16519417184391E94C7EDBE8A871E1776E775B0E9DCE15F1
        469F8666CE8AE6305EE926335868FA49081C22BBC99356123DC9D90C576A6864
        38371F1B42B84245D0AB328A596432B62CF63D429B533E4BEC2DC5438C227D2C
        A56D149A10C54DB7EDA805A9295DA883220FF75BF5A0C815AE7175063DF9BCCB
        DA337B5FC99787990D47B87DA7E49D6126376DB35D85549DBD931C9537AA72DB
        DBF225ACE8BD58DC89BF2BA33821ECA5F92EEEE220FC20F9AD0CE27AC916326D
        F4F411952F0C3D8B28AE47F61935FBBA259E6E37CECE854B6862B56E227F587D
        1F1C940F8C1F178E85369B2E7D8B73C080D5F7C182C5C956399B762E9E2EE973
        ABEC03A50A2C58448EF46E59444BB56FC83DD257C4D46DD28273B1797F8DFC2B
        BDB8ECB791B5E40679C9BE78B062DF3B457E263F8893895C0C092B23FA578001
        006FBA3CE8FDF36C410000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscliente2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 67
      Top = 2
      Width = 38
      Height = 37
      Hint = 'Next record'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000036669545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265
        663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73
        547970652F5265736F75726365526566232220786D6C6E733A786D703D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D
        4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A3444
        3538324345333046463345343131383932454130343642353242383133372220
        786D704D4D3A446F63756D656E7449443D22786D702E6469643A363237383534
        38374633313031314534413133314444363345433831363235412220786D704D
        4D3A496E7374616E636549443D22786D702E6969643A36323738353438364633
        313031314534413133314444363345433831363235412220786D703A43726561
        746F72546F6F6C3D2241646F62652050686F746F73686F702043533620285769
        6E646F777329223E203C786D704D4D3A4465726976656446726F6D2073745265
        663A696E7374616E636549443D22786D702E6969643A34443538324345333046
        46334534313138393245413034364235324238313337222073745265663A646F
        63756D656E7449443D22786D702E6469643A3444353832434533304646334534
        313138393245413034364235324238313337222F3E203C2F7264663A44657363
        72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
        203C3F787061636B657420656E643D2272223F3E77FAF4360000049549444154
        78DACC987B6C53551CC7BF6D6FDB6D1D5BBBECA5190FC1C188222841A2238D12
        93C5408868F085890A2AF1458CF10F497C4062A231D11031BE12FF300650D098
        98208A4074021115C42DA251746E202B34E04AB7D1767DF8FDDD9DCA5CDADE7B
        DB6BE72FF9A4D9EEB9E77C7FBF7BCEEF77CE7104DFFD09455833B98CCC2773C9
        34524F6AD5F30809931ED2450E931F49C8EA409AC5F6579265E40E32AB40BB26
        3293B48FF9DF2F6433F9981C313BA0D364BB4BC91BE42BB2DE405C3E13C11B54
        1FAFA93E6D11783FD943D6101F4AB76AF220D9ADFA2E5AA09BBCA59802FB6DAA
        EAFB4D3596258193C8FB663CB4C11E5063559B1528DE6C21CB513E5BAE169066
        46E0EB6429CA6FCBD4D805054AB85763E2EC3E454E81B3C90B98787B9EB4E612
        B89604EC1841733A4A795D2AD263E3054AB95A695708E2E98C2EB204A1779139
        6305DEAE524BC99173BB1C383A3482BDE7E270509FFC5D84D590DBB202A56EDE
        6387B868328DD3B114365EDD8CA75A03D8131AC6B99174B122578936C93BF3D4
        EEC4508044249381FE9BCB62A90CBAE3492C6CA9C6CAB9F5FA3BEB8F8471498D
        07D3AB34FDDD243FBF49BB885C2E021719B594084824BACE275155A0DD5F6C83
        58127D9138663554E2D9EB5B3099E2561F38899E911496042A10A3732329D322
        1789C02B8C5A89E7129D853EB71E957C511081DD9A035EED42725835BF1153FC
        1E2CDD7D1C3B4E0D6349D3A88B2645CE1381D38D5AC984DFD05687871634156C
        97A227E28CBFF2DF15EB86197E74D57A71F7277F60C79F8358DCECD3BF8A0991
        D3A4A706433F9219B4D655A0DEE72E7A11CDACAFC4CE15AD78F8B35E6C393188
        A0DF5BF06B6437BE4E537B427634184F959C1F25B29B6F9A81756D0174461366
        168C3E593228B3F9DC4ED3A3CA27364E52F4B4D2E32A59D808FB7972572F5EFE
        2D8260ADA94F9C1681A70DE7212774889F64389182334FF94A73207926BFB28A
        5DE3DAC9FB8FEEEAC3073D11B49B5F246111D8A78E90796D31BDDD7A6C00FBFA
        8790AFBCBA98BDA34C3361E6C14DCC7FD74EADF9E7D9775CB96B3EEFC3E1B331
        74B48C56D4F3AC3A26EC7711F803B9B150AB6CE5F89403C433B9BDF6B2515C16
        120546131716D44747CFE2E6CE139283D07171351342C64AA2EE1281FB0DE70E
        3BF4730EB61BCCC3B027856E8F13931971B14D5F87B0F6603F02151AAEAAF3EA
        73D042A9133BA0A9537F64CCAD40EE5468D0B1BE9361A4677B351C3B13C3CE5F
        07F0C4C110E6B0BC3556B8AC442D6B67E480AFA9EB88B7C9E3A5AC507140A21C
        A0C847F69DC471CEB1606395D9C590CBDE116D920765B6BE471276E43811D3C0
        3C179CE429455C421D4533D92AF2AD128952A3A8570C35578B1407A5E59BF167
        925764B76E47142D2E84F1364C36E63A341D22CFFC0F4E75A2E1FB7CE7E217C9
        8713286E3B79C9E866E15E33B9F13FB04E35B6E1D54794AC205F9451DC5E722B
        19327BBBD5AF2E74B69741DC36720B3965F57E704079F5B4CAEA769BF4B94E9D
        7F078AB9C0CCDA73A443254EBB6CABEAD3F02EC8EC1DF52175FB701D46EF97C3
        4588927DE7AB2448EE547D9ADA515BB12F15928E16906BD4BD4E9BDAF47AC694
        2A71E267B59DDBAF04F55AF5EA6F01060058D57322DA95B3520000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 2
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dscliente2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 43
    Width = 129
    Height = 532
    Align = alLeft
    BevelOuter = bvNone
    Color = 6054757
    ParentBackground = False
    TabOrder = 3
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 129
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel6'
      Color = 1873881
      ParentBackground = False
      TabOrder = 0
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 4
      Top = 31
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Caption = 'Informa'#231#245'es'
      Color = 3552822
      ParentFont = False
      TabOrder = 1
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 23
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 3
      Top = 72
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Caption = 'Financeiro'
      Color = 3552822
      ParentFont = False
      TabOrder = 2
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton2Click
      TMSStyle = 23
    end
    object AdvSmoothButton6: TAdvSmoothButton
      Left = 2
      Top = 113
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Caption = 'Hist'#243'rico'
      Color = 3552822
      ParentFont = False
      TabOrder = 3
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton6Click
      TMSStyle = 23
    end
    object AdvSmoothButton7: TAdvSmoothButton
      Left = 1
      Top = 154
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Color = 3552822
      ParentFont = False
      TabOrder = 4
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton7Click
      TMSStyle = 23
    end
    object AdvSmoothButton8: TAdvSmoothButton
      Left = 1
      Top = 198
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Caption = 'Refer'#234'ncias'
      Color = 3552822
      ParentFont = False
      TabOrder = 5
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton8Click
      TMSStyle = 23
    end
    object AdvSmoothButton10: TAdvSmoothButton
      Left = 2
      Top = 239
      Width = 120
      Height = 35
      Appearance.Font.Charset = ANSI_CHARSET
      Appearance.Font.Color = 10921638
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
      Caption = 'I. Municipais'
      Color = 3552822
      ParentFont = False
      TabOrder = 6
      Version = '2.1.1.1'
      OnClick = AdvSmoothButton10Click
      TMSStyle = 23
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 40
    Width = 987
    Height = 6
    Align = alTop
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 5
  end
  object Pop1: TPopupMenu
    Left = 1221
    Top = 152
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
      OnClick = brelatoriosClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FichadeCadastro1: TMenuItem
      Caption = 'Ficha de Cadastro'
      ShortCut = 121
      OnClick = FichadeCadastro1Click
    end
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      ShortCut = 122
      OnClick = Movimento1Click
    end
    object InformaesAdicionais1: TMenuItem
      Caption = 'Informa'#231#245'es Adicionais'
      ShortCut = 120
      OnClick = InformaesAdicionais1Click
    end
    object ServicosPeriodicos1: TMenuItem
      Caption = 'Servicos Periodicos'
      ShortCut = 115
      OnClick = ServicosPeriodicos1Click
    end
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico'
      ShortCut = 116
      OnClick = Histrico1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 1205
    Top = 200
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
  end
  object dscliente2: TDataSource
    DataSet = frmmodulo.qrcliente
    OnDataChange = dscliente2DataChange
    Left = 1261
    Top = 344
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'insert into c000007 '
      '(codigo, '
      'nome,'
      'apelido,'
      'endereco,'
      'bairro,'
      'cidade,'
      'uf,'
      'cep,'
      'complemento,'
      'telefone1,'
      'telefone2,'
      'celular,'
      'email,'
      'rg,'
      'cpf,'
      'filiacao,'
      'estadocivil,'
      'conjuge,'
      'profissao,'
      'empresa,'
      'renda,'
      'limite,'
      'ref1,'
      'ref2,'
      'data_cadastro,'
      'obs1,'
      'obs2,'
      'obs3,'
      'obs4,'
      'nascimento,'
      'tipo,'
      'situacao)'
      'values '
      '('#39'000019'#39','
      #39'ANGELO DA SILVA'#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      '0,'
      '0,'
      #39#39','
      #39#39','
      #39'24/07/2006'#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39'  /  /    '#39','
      '1,'
      '1)')
    Params = <>
    Left = 1277
    Top = 424
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 1309
    Top = 424
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1261
    Top = 496
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000048 order by data,codigo')
    Params = <>
    Left = 1237
    Top = 408
    object qrvendaCODIGO: TWideStringField
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaCODCAIXA: TWideStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 5
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TWideStringField
      DisplayLabel = 'VENDEDOR'
      DisplayWidth = 5
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrvendaDATA: TDateField
      DisplayWidth = 15
      FieldName = 'DATA'
    end
    object qrvendaCODCLIENTE: TWideStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 5
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrvendaOBS: TWideStringField
      DisplayWidth = 50
      FieldName = 'OBS'
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      DisplayLabel = 'MEIO DINHEIRO'
      DisplayWidth = 10
      FieldName = 'MEIO_DINHEIRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAV'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAP'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAOCRED'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAODEB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CREDIARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaRETIRADO: TWideStringField
      DisplayWidth = 50
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CONVENIO'
    end
    object qrvendaP5: TFloatField
      DisplayWidth = 10
      FieldName = 'P5'
    end
    object qrvendaP3: TFloatField
      DisplayWidth = 10
      FieldName = 'P3'
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_FINANCEIRA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaCOD_FINANCEIRA: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object qrvendaCODCONVENIO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object qrvendaSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrvendaCODTRANSPORTADOR: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object qrvendaCODVEICULO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object qrvendaFRETE_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE_VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaFRETE_OBS: TWideStringField
      DisplayWidth = 80
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object qrvendaFRETE_LANCAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'FRETE_LANCAR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaECF_SERIAL: TWideStringField
      DisplayWidth = 30
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrvendaCODNFSAIDA: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrvendaATACADO_VAREJO: TSmallintField
      DisplayWidth = 10
      FieldName = 'ATACADO_VAREJO'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaNRVENDA: TWideStringField
      DisplayWidth = 6
      FieldName = 'NRVENDA'
      Size = 6
    end
    object qrvendaFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
    end
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 1064
    Top = 440
  end
  object qrvenda_mes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(total) sum_0, '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048)  '
      ' from c000048')
    Params = <>
    Left = 1221
    Top = 360
    object qrvenda_mesCOLUMN_0: TFloatField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'sum_0'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn: TFloatField
      DisplayWidth = 8
      FieldName = 'sum'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_1: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_1'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_2: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_2'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_3: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_3'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_4: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_4'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_5: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_5'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_6: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_6'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_7: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_7'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_8: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_8'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_9: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_9'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_10: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_10'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsvenda_mes: TDataSource
    DataSet = qrvenda_mes
    Left = 1040
    Top = 416
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1253
    Top = 440
    object qrprodutoCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
    end
    object qrprodutoPRODUTO: TWideStringField
      DisplayWidth = 55
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrprodutoUNIDADE: TWideStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 5
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrprodutoQTDE: TFloatField
      DisplayWidth = 9
      FieldName = 'QTDE'
    end
    object qrprodutoUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
    end
    object qrprodutoTOTAL: TFloatField
      DisplayWidth = 9
      FieldName = 'TOTAL'
    end
    object qrprodutoSERIAL: TWideStringField
      DisplayWidth = 14
      FieldName = 'SERIAL'
      Size = 40
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
    end
    object qrprodutoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 30
    end
    object qrprodutoICMS: TFloatField
      FieldName = 'ICMS'
      Visible = False
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrprodutoCFOP: TWideStringField
      FieldName = 'CFOP'
      Visible = False
    end
    object qrprodutoDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qrprodutoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Visible = False
    end
    object qrprodutoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
    end
    object qrprodutoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrprodutoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrprodutoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrprodutoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
    end
    object qrprodutoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Visible = False
    end
    object qrprodutoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrprodutoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrprodutoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrprodutoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrprodutoECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
      Visible = False
      Size = 30
    end
    object qrprodutoECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 10
    end
    object qrprodutoCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Visible = False
    end
    object qrprodutoCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Visible = False
    end
    object qrprodutoCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Visible = False
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 30
    end
    object qrprodutoMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
      Visible = False
    end
    object qrprodutoLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Visible = False
    end
    object qrprodutoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Visible = False
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 40
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object qrprodutoCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qrprodutoPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qrprodutoCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qrprodutoLOJA: TWideStringField
      FieldName = 'LOJA'
      Visible = False
      Size = 30
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 10
    end
    object qrprodutoCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 10
    end
    object qrprodutoORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Visible = False
      Size = 80
    end
    object qrprodutoDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Visible = False
      Size = 80
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 1261
    Top = 160
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(total) sum_0, '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048)  '
      ' from c000048')
    Params = <>
    Left = 1293
    Top = 416
  end
  object dsreceber: TDataSource
    DataSet = qrcontasreceber
    Left = 1221
    Top = 488
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasreceberCalcFields
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1245
    Top = 416
    object qrcontasrecebersituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontasreceberjuros: TFloatField
      DisplayLabel = 'JUROS'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberCODIGO: TWideStringField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TWideStringField
      DisplayLabel = 'VENDA'
      DisplayWidth = 10
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TWideStringField
      DisplayLabel = 'VENDEDOR'
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TWideStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TWideStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberDATA_EMISSAO: TDateField
      DisplayLabel = 'DATA EMISS'#195'O'
      DisplayWidth = 18
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      DisplayLabel = 'DATA VENCIMENTO'
      DisplayWidth = 18
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateField
      DisplayLabel = 'DATA PAGAMENTO'
      DisplayWidth = 18
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberDOCUMENTO: TWideStringField
      DisplayWidth = 20
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TWideStringField
      DisplayWidth = 20
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberNOSSONUMERO: TWideStringField
      DisplayWidth = 30
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      DisplayWidth = 10
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      DisplayWidth = 10
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberVALOR_VENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ATUAL_ANTERIOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberEMAIL_ENVIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMAIL_ENVIADO'
    end
    object qrcontasreceberHISTORICO: TWideStringField
      FieldName = 'HISTORICO'
      Visible = False
      Size = 100
    end
    object qrcontasreceberDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Visible = False
      Calculated = True
    end
    object qrcontasreceberRESTANTE: TFloatField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 1293
    Top = 360
    Bitmap = {
      494C0101060008004C000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object qrcontasreceberpg: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1245
    Top = 336
    object qrcontasreceberpgCODIGO: TWideStringField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberpgCODVENDA: TWideStringField
      DisplayLabel = 'VENDA'
      DisplayWidth = 10
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberpgCODVENDEDOR: TWideStringField
      DisplayLabel = 'VENDEDOR'
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberpgDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcontasreceberpgRESTANTE: TFloatField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberpgCODCAIXA: TWideStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberpgCODCLIENTE: TWideStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberpgDATA_EMISSAO: TDateField
      DisplayLabel = 'DATA EMISS'#195'O'
      DisplayWidth = 18
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberpgDATA_VENCIMENTO: TDateField
      DisplayLabel = 'DATA VENCIMENTO'
      DisplayWidth = 18
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberpgDATA_PAGAMENTO: TDateField
      DisplayLabel = 'DATA PAGAMENTO'
      DisplayWidth = 18
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberpgVALOR_ORIGINAL: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgVALOR_PAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgVALOR_JUROS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_JUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgVALOR_ATUAL: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgVALOR_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgDOCUMENTO: TWideStringField
      DisplayWidth = 20
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberpgTIPO: TWideStringField
      DisplayWidth = 20
      FieldName = 'TIPO'
    end
    object qrcontasreceberpgSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberpgFILTRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FILTRO'
    end
    object qrcontasreceberpgNOSSONUMERO: TWideStringField
      DisplayWidth = 30
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberpgCODREGIAO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberpgCODCEDENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberpgP5: TFloatField
      DisplayWidth = 10
      FieldName = 'P5'
    end
    object qrcontasreceberpgP3: TFloatField
      DisplayWidth = 10
      FieldName = 'P3'
    end
    object qrcontasreceberpgNUMERO_CUPOM: TWideStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM'
      Size = 10
    end
    object qrcontasreceberpgVALOR_VENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgCOD_VENDA_ORIGINAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'COD_VENDA_ORIGINAL'
      Size = 10
    end
    object qrcontasreceberpgVALOR_ATUAL_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ATUAL_ANTERIOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberpgEMAIL_ENVIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EMAIL_ENVIADO'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'JUROS'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'juros'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Visible = False
      Calculated = True
    end
  end
  object dsreceberpg: TDataSource
    DataSet = qrcontasreceberpg
    Left = 1024
    Top = 336
  end
  object qrpgto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 1301
    Top = 320
  end
  object qrpessoas: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrpessoasBeforePost
    AfterPost = qrpessoasAfterPost
    SQL.Strings = (
      'select * from c000070')
    Params = <>
    Left = 1221
    Top = 416
  end
  object dspessoas: TDataSource
    DataSet = qrpessoas
    Left = 1056
    Top = 424
  end
  object dsservicos_periodicos: TDataSource
    DataSet = frmmodulo.qrservicos_periodicos
    Left = 1096
    Top = 408
  end
  object PopupMenu1: TPopupMenu
    Left = 720
    Top = 512
    object i1: TMenuItem
      Caption = 'Store Protheus'
      Enabled = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object A1: TMenuItem
      Caption = 'Atalhos'
      object Regies2: TMenuItem
        Caption = 'Regi'#245'es'
        OnClick = Regies2Click
      end
      object Vendedor1: TMenuItem
        Caption = 'Vendedor'
        OnClick = Vendedor1Click
      end
      object Convnio1: TMenuItem
        Caption = 'Conv'#234'nio'
        OnClick = Convnio1Click
      end
    end
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1229
    Top = 448
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 1261
    Top = 248
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Clientes'
    UserControl = frmPrincipal.icloud
    Components = 'Form.Clientes'
    NotAllowed = naDisabled
    Left = 1261
    Top = 152
  end
  object AdvPanelStyler1: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 7171437
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 12566463
    Settings.Caption.ColorTo = 9539985
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = 14145494
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'Tahoma'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 12566463
    Settings.ColorTo = 9539985
    Settings.ColorMirror = clNone
    Settings.ColorMirrorTo = clNone
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = clBlack
    Settings.Font.Height = -11
    Settings.Font.Name = 'Tahoma'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderColor = 12566463
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = 14145494
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 12566463
    Settings.StatusBar.ColorTo = 9539985
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2010Black
    Left = 1269
    Top = 256
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 1261
    Top = 464
  end
  object PrintDialog1: TPrintDialog
    Left = 1181
    Top = 496
  end
  object ColorDialog1: TColorDialog
    Left = 1221
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Texto rico (*.rtf)|*.rtf'
    Left = 1221
    Top = 368
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'rtf'
    Filter = 'Texto rico (*.rtf)|*.rtf'
    Left = 1269
    Top = 472
  end
  object ImagesBR: TImageList
    Left = 1197
    Top = 252
    Bitmap = {
      494C010116001800340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007F7F7F0000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000000080000000800000008000000080000000800000FFFF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000000000FF000000000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F000000FF000000
      FF000000FF000000000000FF000000FF000000FF000000000000FF000000FF00
      0000FF0000007F7F7F0000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000FF000000FF000000FF000000FF000000FF000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000008000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B0000007B0000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B00000000000000000000000000000000000000000000007B7B
      7B007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B000000000000000000000000000000000000007B7B
      7B007B0000007B00000000000000000000000000000000000000000000000000
      00007B7B7B007B000000000000000000000000000000000000007B7B7B007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B000000000000000000000000000000000000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      0000000000007B0000007B0000000000000000000000000000007B7B7B007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B0000000000000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B00000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B000000000000007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B0000007B0000007B0000007B7B
      7B0000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000000000007B7B7B007B0000007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000007B0000007B0000007B0000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000007B0000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000007B7B7B007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000000000000000000000000000000000007B000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD000000FF000000FF00BDBDBD00FFFFFF00FFFFFF00BDBDBD000000FF000000
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD000000FF000000FF00BDBDBD00FFFFFF00FFFFFF00BDBDBD000000FF000000
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      7B007B7B7B0000000000000000000000000000000000000000000000FF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      7B0000007B007B7B7B000000000000000000000000000000FF0000007B000000
      7B007B7B7B000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B0000007B007B7B7B0000007B0000007B0000007B000000
      7B0000007B007B7B7B0000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B007B7B7B0000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B0000007B0000007B007B7B
      7B00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B007B7B7B000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000007B0000007B0000007B0000007B007B7B7B000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B0000007B007B7B7B000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008484000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B007B7B7B0000007B0000007B0000007B007B7B
      7B00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B007B7B7B00000000000000FF0000007B0000007B000000
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFC00700000000F83FC00700000000
      1010C00700000000E00FC00700000000C007C007000000008003C00700000000
      8003C007000000008003C007000000008003C007000000008003C00700000000
      C007C00700000000E00FC007000000003018C00700000000F83FC00700000000
      FFFFC00700000000FFFFC00700000000FFFFF3FFFFFFFFFFFFFFF1FFFFFFFFFF
      FC3FF0FFE1C0FFFFFE7FF07FF3E1FFFFFE7FF03FF9E3F3C7FE7FF01FF9E3F9C7
      FE7FF00FFC07F9C7FE7FF007FCC7FC0FFE7FF007FE4FFC8FFE7FF00FFE0FEE1F
      FE7FF01F011FC73FE667F03F831FC73FE007F07FC7BF83FFE007F0FFC7FF01FF
      FFFFF1FFEFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFF8FFF0000C007C0078C030000FFFFFFFF8FFF0000F83FF807FFFF0000
      FFFFFFFFFFFF0000C007C0078FFF0000FFFFFFFF8C030000F01FF8078FFF0000
      FFFFFFFFFFFF0000C007C007FFFF0000FFFFFFFF8FFF0000F83FF8078C030000
      FFFFFFFF8FFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF007FFFF87C3FFFFFFFFC007CFE781FFFC1FFFFFCF87E3FFF9CFC03F
      CF07F1FFFFCFFFFFCE07F8FFFF9FC007C827FC7FFE3FFFFFC067FE3FFCFFC03F
      C1E7FF1FF9FFFFFFC3E7FF8FF9CFC007C7E7FF03FC1FFFFFCFE7FFFFFFFFC03F
      87C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00
      FFFFF6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFF7F8B780000000
      C1F7FE8F80000001C3FBFE3F80000003C7FBFF7F80000003CBFBFE3F80010003
      DCF7FEBF80030003FF0FFC9F80070FC3FFFFFDDF807F0003FFFFFDDF80FF8007
      FFFFFDDF81FFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFC001C007
      87CF001F8031BFEB8387000F80310005C003000780317E31E007000380017E35
      F00F000180010006F81F000080017FEAF81F001F8FF18014F01F001F8FF1C00A
      E00F001F8FF1E001C1078FF18FF1E007E7C3FFF98FF1F007FFE3FF758FF5F003
      FFFFFF8F8001F803FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ACBrConsultaCNPJ1: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 935
    Top = 424
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 899
    Top = 512
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 551
    Top = 365
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 639
    Top = 365
  end
end
