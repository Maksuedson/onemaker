object frmfornecedor: Tfrmfornecedor
  Left = 389
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FORNECEDORES | Ficha de Cadastro'
  ClientHeight = 535
  ClientWidth = 932
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = -4
    Top = 47
    Width = 1209
    Height = 537
    ActivePage = TabSheet2
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1201
        Height = 509
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Black'
        object cxGrid1DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsfornecedor2
          DataController.DetailKeyFieldNames = 'None selected'
          DataController.KeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView2CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGrid1DBTableView2CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ'
          end
          object cxGrid1DBTableView2IE: TcxGridDBColumn
            DataBinding.FieldName = 'IE'
          end
          object cxGrid1DBTableView2NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid1DBTableView2ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'ENDERECO'
          end
          object cxGrid1DBTableView2BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
          end
          object cxGrid1DBTableView2CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'CIDADE'
          end
          object cxGrid1DBTableView2UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object cxGrid1DBTableView2TELEFONE1: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE1'
          end
          object cxGrid1DBTableView2CELULAR1: TcxGridDBColumn
            DataBinding.FieldName = 'CELULAR1'
          end
          object cxGrid1DBTableView2EMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
          end
        end
        object cxGrid1Level2: TcxGridLevel
          Caption = 'cxGrid1Level2'
          GridView = cxGrid1DBTableView2
        end
      end
      object bt_info_completo: TAdvSmoothButton
        Left = 720
        Top = 3
        Width = 174
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
        Caption = 'Mostrar Cadastro'
        Color = 3552822
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000000F0806000000ED734F
          2F0000001974455874536F6674776172650041646F626520496D616765526561
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
          702E6969643A3345323433363141374538423131453739444333424636313735
          4237394331462220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A334532343336314237453842313145373944433342463631373542373943
          3146223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3345323433363138374538423131
          453739444333424636313735423739433146222073745265663A646F63756D65
          6E7449443D22786D702E6469643A334532343336313937453842313145373944
          4333424636313735423739433146222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E12EFD411000002254944415478DA7C52
          BB6E1341143D777666FD58C7383C9438122E9012A4500012251D1474281D0550
          F017117C407AFE03DA9420A0A0484191080B2C9208824902043BF6DADE9D19CE
          DA40E4C464A5BBF3BA73EE3DE78CBC5EB9A700BC15C102C744893271DA7DAABC
          3C094D01DE3B4CFA3C43185AB2BFC8256F93B2D8012CB70BA21E8BF3B524E974
          09A4C7AF3AF82034129826D197F510CCF9EFCEF9B350E11035C9F2023CC8E64E
          4E56663E02F129939775DF2A98EE57D157972057EE00AD263B5298DC37E99467
          E1D75761DF3DFF9414AB5E4FA98E3FD0D3E9E2ED47385389D0F3F32372FF219E
          E7D9AFEA1C36D65FD84AD0F1FAC67C7A7D637F369A0BDA40DC42E41C4EFD9442
          14080EAA17A2C5F39FAF895F7DB8C38A550CE24C4C56F1A703FCCD097240A8B7
          15AC6B8C3C09F06F3C2DBC1A193895C76EF3B0A18958A7AA37A1CCB14A342869
          31484DFD71D2A5343E62E532D0B7A81482F7DAB5E3BA9A2E01A91D07483B40A9
          46D52F723E60659ED366C4FBC0E116C1428405A96B95D70DD238C975B00777F9
          3E3E566FA118EF429B3CFAC519CC7C7B83FCDA0AED38075A460AC67C992C9C80
          02C1767EA2FD631B461BB88A87CA68D089EC8EEDD91D0D9B6E22D05DDE281EF3
          8B94072815F3904105420AD650BC34C95E73F6285A4139DC94E4D912742EDA22
          6A6DAC93ECD5295A952B8DAC1BEEF13C612DDBCF561FD8C282D661215BBCA485
          7733E6470D50F9940EF4F63897A3A72814D2944238FB8A96E0B700030011EADA
          A8DA6F7D6F0000000049454E44AE426082}
        TabOrder = 1
        Version = '2.1.1.5'
        OnClick = bt_info_completoClick
        TMSStyle = 23
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object panel99: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 509
        Align = alClient
        BevelOuter = bvNone
        Color = 943798
        ParentBackground = False
        TabOrder = 0
        object PageView1: TPageView
          Left = 167
          Top = -1
          Width = 780
          Height = 422
          ActivePage = PageSheet1
          ActivePageIndex = 0
          AdaptiveColors = True
          BackgroundColor = 11429670
          BackgroundKind = bkSolid
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Indent = 2
          Margin = 0
          Options = [pgBoldActiveTab]
          ParentColor = False
          ParentFont = False
          ShowTabs = False
          Spacing = 0
          TabHeight = 14
          TabOrder = 0
          TabStyle = tsWhidbey
          TopIndent = 3
          OnChange = PageView1Change
          object PageSheet1: TPageSheet
            Left = 0
            Top = 0
            Width = 780
            Height = 422
            Caption = ' F10 | Ficha de Cadastro'
            Color = clWhite
            DisplayMode = tdTextOnly
            ImageIndex = 0
            Margin = 0
            PageIndex = 0
            ParentColor = False
            TabColor = 15653559
            TabWidth = 0
            TransparentColor = clNone
            object pficha: TFlatPanel
              Left = -11
              Top = 4
              Width = 776
              Height = 398
              ParentColor = True
              ColorHighLight = clWhite
              ColorShadow = clSilver
              TabOrder = 0
              object Label5: TLabel
                Left = 560
                Top = 31
                Width = 89
                Height = 13
                Caption = 'Data do Cadastro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LAPELIDO: TLabel
                Left = 6
                Top = 31
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Fantasia:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 6
                Top = 55
                Width = 68
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
                Left = 550
                Top = 55
                Width = 32
                Height = 13
                Caption = 'Bairro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 6
                Top = 79
                Width = 68
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
              object Label10: TLabel
                Left = 272
                Top = 79
                Width = 17
                Height = 13
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 347
                Top = 79
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
                Left = 483
                Top = 79
                Width = 69
                Height = 13
                Caption = 'Complemento:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 216
                Top = 84
                Width = 3
                Height = 12
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 345
                Top = 103
                Width = 22
                Height = 13
                Caption = 'Fax:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 6
                Top = 128
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Email:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LRG: TLabel
                Left = 6
                Top = 183
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Insc.Est.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LCPF: TLabel
                Left = 6
                Top = 207
                Width = 68
                Height = 12
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
              object Label21: TLabel
                Left = 6
                Top = 239
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Contato #1:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 6
                Top = 295
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Banco:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 228
                Top = 295
                Width = 42
                Height = 13
                Caption = 'Ag'#234'ncia:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 6
                Top = 103
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Telefones:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 6
                Top = 153
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Home-Page:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 379
                Top = 239
                Width = 37
                Height = 13
                Caption = 'Celular:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 6
                Top = 263
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Contato #2:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label23: TLabel
                Left = 379
                Top = 263
                Width = 37
                Height = 13
                Caption = 'Celular:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 383
                Top = 295
                Width = 33
                Height = 13
                Caption = 'Conta:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 6
                Top = 343
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'OBS.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 286
                Top = 183
                Width = 68
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Insc.Mun.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 286
                Top = 207
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
              object Label31: TLabel
                Left = 530
                Top = 183
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
                Left = 530
                Top = 207
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
              object Label34: TLabel
                Left = 433
                Top = 55
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
              object Label33: TLabel
                Left = 29
                Top = 7
                Width = 31
                Height = 13
                Caption = 'Nome:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edata_cadastro: TJvDBDateEdit
                Left = 656
                Top = 27
                Width = 106
                Height = 21
                Margins.Left = 4
                Margins.Top = 1
                DataField = 'DATA'
                DataSource = dsfornecedor2
                Color = clWhite
                Enabled = False
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
                OnExit = edata_cadastroExit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit3: TDBEdit
                Left = 80
                Top = 27
                Width = 417
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'FANTASIA'
                DataSource = dsfornecedor2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit4: TDBEdit
                Left = 80
                Top = 51
                Width = 345
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'ENDERECO'
                DataSource = dsfornecedor2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit5: TDBEdit
                Left = 588
                Top = 51
                Width = 174
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'BAIRRO'
                DataSource = dsfornecedor2
                TabOrder = 4
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit6: TDBEdit
                Left = 117
                Top = 75
                Width = 148
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CIDADE'
                DataSource = dsfornecedor2
                ReadOnly = True
                TabOrder = 5
                OnEnter = DBEdit1Enter
                OnExit = DBEdit6Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit8: TDBEdit
                Left = 376
                Top = 75
                Width = 86
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CEP'
                DataSource = dsfornecedor2
                MaxLength = 8
                TabOrder = 7
                OnEnter = DBEdit1Enter
                OnExit = DBEdit8Exit
                OnKeyPress = DBEdit8KeyPress
              end
              object DBEdit9: TDBEdit
                Left = 560
                Top = 75
                Width = 201
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'COMPLEMENTO'
                DataSource = dsfornecedor2
                TabOrder = 8
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit10: TDBEdit
                Left = 80
                Top = 99
                Width = 86
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'TELEFONE1'
                DataSource = dsfornecedor2
                MaxLength = 10
                TabOrder = 9
                OnEnter = DBEdit1Enter
                OnExit = DBEdit10Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit11: TDBEdit
                Left = 168
                Top = 99
                Width = 86
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'TELEFONE2'
                DataSource = dsfornecedor2
                MaxLength = 10
                TabOrder = 10
                OnEnter = DBEdit1Enter
                OnExit = DBEdit11Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit12: TDBEdit
                Left = 376
                Top = 99
                Width = 86
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'FAX'
                DataSource = dsfornecedor2
                MaxLength = 10
                TabOrder = 11
                OnEnter = DBEdit1Enter
                OnExit = DBEdit12Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit13: TDBEdit
                Left = 80
                Top = 124
                Width = 681
                Height = 21
                CharCase = ecLowerCase
                Color = clWhite
                DataField = 'EMAIL'
                DataSource = dsfornecedor2
                TabOrder = 12
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit14: TDBEdit
                Left = 80
                Top = 179
                Width = 169
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'IE'
                DataSource = dsfornecedor2
                TabOrder = 14
                OnEnter = DBEdit1Enter
                OnExit = DBEdit14Exit
                OnKeyPress = DBEdit14KeyPress
              end
              object DBEdit15: TDBEdit
                Left = 80
                Top = 203
                Width = 168
                Height = 21
                Color = clWhite
                DataField = 'CNPJ'
                DataSource = dsfornecedor2
                TabOrder = 15
                OnEnter = DBEdit1Enter
                OnExit = DBEdit15Exit
                OnKeyPress = DBEdit15KeyPress
              end
              object econtato1: TDBEdit
                Left = 80
                Top = 235
                Width = 289
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTATO1'
                DataSource = dsfornecedor2
                TabOrder = 20
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit18: TDBEdit
                Left = 80
                Top = 291
                Width = 145
                Height = 21
                Color = clWhite
                DataField = 'BANCO'
                DataSource = dsfornecedor2
                TabOrder = 25
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit19: TDBEdit
                Left = 280
                Top = 291
                Width = 89
                Height = 21
                Color = clWhite
                DataField = 'AGENCIA'
                DataSource = dsfornecedor2
                TabOrder = 26
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit28: TDBEdit
                Left = 80
                Top = 149
                Width = 681
                Height = 21
                CharCase = ecLowerCase
                Color = clWhite
                DataField = 'HOMEPAGE'
                DataSource = dsfornecedor2
                TabOrder = 13
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit29: TDBEdit
                Left = 425
                Top = 235
                Width = 86
                Height = 21
                Color = clWhite
                DataField = 'CELULAR1'
                DataSource = dsfornecedor2
                MaxLength = 10
                TabOrder = 21
                OnEnter = DBEdit1Enter
                OnExit = DBEdit29Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit17: TDBEdit
                Left = 80
                Top = 259
                Width = 289
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CONTATO2'
                DataSource = dsfornecedor2
                TabOrder = 22
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit30: TDBEdit
                Left = 425
                Top = 259
                Width = 86
                Height = 21
                Color = clWhite
                DataField = 'CELULAR2'
                DataSource = dsfornecedor2
                MaxLength = 10
                TabOrder = 23
                OnEnter = DBEdit1Enter
                OnExit = DBEdit30Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit31: TDBEdit
                Left = 424
                Top = 291
                Width = 145
                Height = 21
                Color = clWhite
                DataField = 'CONTA'
                DataSource = dsfornecedor2
                TabOrder = 27
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit31KeyPress
              end
              object DBCheckBox1: TDBCheckBox
                Left = 602
                Top = 229
                Width = 116
                Height = 17
                Caption = 'Assist'#234'ncia T'#233'cnica'
                DataField = 'ASSISTENCIA_TECNICA'
                DataSource = dsfornecedor2
                TabOrder = 24
                ValueChecked = '1'
                ValueUnchecked = '0'
                OnKeyPress = DBCheckBox1KeyPress
              end
              object DBEdit22: TDBEdit
                Left = 81
                Top = 320
                Width = 680
                Height = 21
                Color = clWhite
                DataField = 'OBS1'
                DataSource = dsfornecedor2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 28
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit23: TDBEdit
                Left = 81
                Top = 344
                Width = 680
                Height = 21
                Color = clWhite
                DataField = 'OBS2'
                DataSource = dsfornecedor2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 29
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit24: TDBEdit
                Left = 81
                Top = 368
                Width = 680
                Height = 21
                Color = clWhite
                DataField = 'OBS3'
                DataSource = dsfornecedor2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 30
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit24KeyPress
              end
              object euf: TDBComboBox
                Left = 296
                Top = 75
                Width = 41
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'UF'
                DataSource = dsfornecedor2
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
                TabOrder = 6
                OnEnter = eufEnter
                OnExit = eufExit
                OnKeyPress = DBEdit1KeyPress
              end
              object bitbtn6: TAdvGlowButton
                Left = 253
                Top = 181
                Width = 26
                Height = 48
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
                TabOrder = 31
                Visible = False
                OnClick = bitbtn6Click
                Appearance.ColorChecked = 16111818
                Appearance.ColorCheckedTo = 16367008
                Appearance.ColorDisabled = 15921906
                Appearance.ColorDisabledTo = 15921906
                Appearance.ColorDown = 16111818
                Appearance.ColorDownTo = 16367008
                Appearance.ColorHot = 16117985
                Appearance.ColorHotTo = 16372402
                Appearance.ColorMirrorHot = 16107693
                Appearance.ColorMirrorHotTo = 16775412
                Appearance.ColorMirrorDown = 16102556
                Appearance.ColorMirrorDownTo = 16768988
                Appearance.ColorMirrorChecked = 16102556
                Appearance.ColorMirrorCheckedTo = 16768988
                Appearance.ColorMirrorDisabled = 11974326
                Appearance.ColorMirrorDisabledTo = 15921906
              end
              object DBEdit7: TDBEdit
                Left = 360
                Top = 179
                Width = 169
                Height = 21
                Color = clWhite
                DataField = 'IM'
                DataSource = dsfornecedor2
                TabOrder = 16
                OnEnter = DBEdit1Enter
                OnExit = DBEdit14Exit
                OnKeyPress = DBEdit14KeyPress
              end
              object ecnae: TDBEdit
                Left = 360
                Top = 203
                Width = 84
                Height = 21
                Color = clWhite
                DataField = 'CNAE'
                DataSource = dsfornecedor2
                TabOrder = 17
                OnEnter = DBEdit1Enter
                OnExit = ecnaeExit
                OnKeyPress = DBEdit15KeyPress
              end
              object ecodmunicipio: TDBEdit
                Left = 619
                Top = 179
                Width = 105
                Height = 21
                Color = clWhite
                DataField = 'COD_MUNICIPIO_IBGE'
                DataSource = dsfornecedor2
                TabOrder = 18
                OnEnter = DBEdit1Enter
                OnExit = DBEdit15Exit
                OnKeyPress = DBEdit15KeyPress
              end
              object bibge: TAdvGlowButton
                Left = 726
                Top = 180
                Width = 33
                Height = 47
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
                TabOrder = 32
                Visible = False
                OnClick = bibgeClick
                Appearance.ColorChecked = 16111818
                Appearance.ColorCheckedTo = 16367008
                Appearance.ColorDisabled = 15921906
                Appearance.ColorDisabledTo = 15921906
                Appearance.ColorDown = 16111818
                Appearance.ColorDownTo = 16367008
                Appearance.ColorHot = 16117985
                Appearance.ColorHotTo = 16372402
                Appearance.ColorMirrorHot = 16107693
                Appearance.ColorMirrorHotTo = 16775412
                Appearance.ColorMirrorDown = 16102556
                Appearance.ColorMirrorDownTo = 16768988
                Appearance.ColorMirrorChecked = 16102556
                Appearance.ColorMirrorCheckedTo = 16768988
                Appearance.ColorMirrorDisabled = 11974326
                Appearance.ColorMirrorDisabledTo = 15921906
              end
              object bcnae: TAdvGlowButton
                Left = 446
                Top = 205
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
                TabOrder = 33
                OnClick = bcnaeClick
                Appearance.ColorChecked = 16111818
                Appearance.ColorCheckedTo = 16367008
                Appearance.ColorDisabled = 15921906
                Appearance.ColorDisabledTo = 15921906
                Appearance.ColorDown = 16111818
                Appearance.ColorDownTo = 16367008
                Appearance.ColorHot = 16117985
                Appearance.ColorHotTo = 16372402
                Appearance.ColorMirrorHot = 16107693
                Appearance.ColorMirrorHotTo = 16775412
                Appearance.ColorMirrorDown = 16102556
                Appearance.ColorMirrorDownTo = 16768988
                Appearance.ColorMirrorChecked = 16102556
                Appearance.ColorMirrorCheckedTo = 16768988
                Appearance.ColorMirrorDisabled = 11974326
                Appearance.ColorMirrorDisabledTo = 15921906
              end
              object eibge: TDBEdit
                Left = 619
                Top = 203
                Width = 105
                Height = 21
                Color = clWhite
                DataField = 'IBGE'
                DataSource = dsfornecedor2
                TabOrder = 19
                OnEnter = DBEdit1Enter
                OnExit = DBEdit15Exit
                OnKeyPress = DBEdit15KeyPress
              end
              object AdvGlowButton1: TAdvGlowButton
                Left = 79
                Top = 73
                Width = 34
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
                  702E6969643A3332303232313846374538393131453742313042394534443535
                  4643464530372220786D704D4D3A446F63756D656E7449443D22786D702E6469
                  643A333230323231393037453839313145374231304239453444353546434645
                  3037223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
                  7374616E636549443D22786D702E6969643A3332303232313844374538393131
                  453742313042394534443535464346453037222073745265663A646F63756D65
                  6E7449443D22786D702E6469643A333230323231384537453839313145374231
                  3042394534443535464346453037222F3E203C2F7264663A4465736372697074
                  696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
                  7061636B657420656E643D2272223F3E2FCE0693000003F84944415478DA7C54
                  5D681C5514FEEE9DD9D99F6E926677B39BCDC6649BA4542481AA18450C5D10AA
                  2DE84B41F041682D552A51441FFC791315FA665F44FC79F1455010A9E00F4229
                  3E28520D5A6A2B54A5A6368D4D26B39BD99FD9DD3B33D773EF6E36DD5A1C38B3
                  73EF3DE73BE77CE7DBCBF0E183B8E5C324BD78091287C1E57DB4180437AF03F2
                  0C9A950F600E5C44206819F487FD0FE0AB30D8EB609C23E80FA1679DEC3844FD
                  53F221D0ED53DE71B8C9985C8461BE49C71D304E7BC65608451BC6080CFE1142
                  EAA0420EEEB6718DDE6F5314F09A5E84E800A93C4158EE55E253AB1158E0D609
                  947D4B83768DC350196F308E872924D50123A4009BF0FCA711B0BB09F015DA15
                  606A9F7C63E65D90F21EDD41B739F316DCCD22ECF2C2E9D5084FA21DBE87840A
                  E22708A940078B54B15A47908DED456EC7777A0D0528D9CD90433D3AD513C2D1
                  E0814F1513E5DCA82194D0DCAA098F2406A9CA0ECF7A28AAFC7EABF6A0035A47
                  F9F3481825048109113C4A0E4FF586AD4084ACEAF6BB66C2A42CAAC59077C72F
                  CF69EE5407AA9208DB05C93F078BFE46439FA3BDF8963EC8C7439BFC75215227
                  E1389D053C8F264785451CCA52FB8A325DA5D6BA55EA2C03B0CC794A14EF898E
                  E98467E1E37B30A2C3A30DD780514ACDA3F86B067F494A9924E058AB0223A684
                  F790AE906DC949F60918C29460C171AAF277B816D8521AFB7E1C8631BE672FC5
                  304CAD2570FBB91CFE50D39CA8FE022B5C40DB9AD4406CFB6FA07965F491DF38
                  89B8F736BE1DC3C133598C79A6F6332676DF09559CA2505097335793685C1BF0
                  EB6DE31BCC39FB518DE6B4121403827E13446EB2F1257E1E3E8AF3E970FFF99D
                  7093A14EA670940EEF208B6BB64877CD8864FB7E4A49B194BCF4596AFD134C37
                  E750A6E336551A254BB6049692EF3EF1FEEE4C7B28CC5F2ED6A4E5EB16544A8F
                  2D1C7CF2922FFC941A936172083F8011E118DA301AD215D6D78B760E539B0C4E
                  0CC83680D323C1A15363ABD58CE0E5B8B0A2A4CDC0D7243333623A9C9E945BAB
                  A71B5E23C318CBB86E2D430932FFECF426365BADD1855339A6EF96A932B03C88
                  F98FA3466D476BDC4EB6C6AA6E95627846C52A0C85C56DBBE23E73F4313C7EE8
                  00EAF5065E7AEE308AE305CC1677E185778E21ED443153BF1F68C630FB45166F
                  BDF12286EF1DC54C7E0C2F3F7B44C7A85885A1B04CD3E4D2713651AD7BA45B8E
                  35DBA17B5368CAD6571C38E9264A1772889EDD83115BE2A2588168D06D2342ED
                  AB629C4A1542F85058ACF4C8317BF9EFD534370D147219FCB9BC827C36031906
                  B8B66AA3385380D8F0909549B8E910172E5FC1747654DF44AB6B36A6270B58B9
                  6E2324EE276FCB6FB0070E1CF981089DA0A178375C09DB97296D85DD6FAE144B
                  6297FC3F178A523D49815DF9578001000C57B70434246AA10000000049454E44
                  AE426082}
                Transparent = True
                TabOrder = 34
                OnClick = bibgeClick
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
              object DBEdit16: TDBEdit
                Left = 479
                Top = 51
                Width = 65
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NUMERO'
                DataSource = dsfornecedor2
                MaxLength = 5
                TabOrder = 3
                OnEnter = DBEdit1Enter
                OnExit = DBEdit16Exit
                OnKeyPress = DBEdit16KeyPress
              end
              object DBEdit2: TDBEdit
                Left = 79
                Top = 3
                Width = 418
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'NOME'
                DataSource = dsfornecedor2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 35
                OnEnter = DBEdit1Enter
                OnExit = DBEdit2Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object pnlPnlCNPJ: TPanel
                Left = 765
                Top = 183
                Width = 626
                Height = 220
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = cl3DDkShadow
                ParentBackground = False
                TabOrder = 36
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
                  Left = 359
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
                  Caption.Text = 'advsmthxpndrpnl1'
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
                  Fill.Rounding = 10
                  Fill.ShadowColor = clNone
                  Fill.ShadowOffset = 10
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
                    Top = -1
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
                  Left = 408
                  Top = 192
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
                Left = 765
                Top = 148
                Width = 631
                Height = 236
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = cl3DDkShadow
                ParentBackground = False
                TabOrder = 37
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
                object Panel6: TPanel
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
                  Left = 380
                  Top = 197
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
                  Caption.Text = 'advsmthxpndrpnl2'
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
                  Fill.Rounding = 10
                  Fill.ShadowColor = clNone
                  Fill.ShadowOffset = 10
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
            end
          end
          object PageSheet2: TPageSheet
            Left = 0
            Top = 0
            Width = 780
            Height = 422
            Caption = ' F11 | Movimento'
            Color = clWhite
            DisplayMode = tdTextOnly
            ImageIndex = 0
            Margin = 0
            PageIndex = 1
            ParentColor = False
            TabColor = 11184895
            TabWidth = 0
            TransparentColor = clNone
            object ViewSplit1: TViewSplit
              Left = 0
              Top = 0
              Height = 422
              ExplicitLeft = 235
              ExplicitHeight = 334
            end
            object FlipView1: TFlipView
              Left = 20
              Top = 0
              Width = 235
              Height = 334
              Margins.Bottom = 4
              Margins.Left = 4
              Margins.Right = 4
              Margins.Top = 4
              AdaptiveColors = False
              Caption = 'Hist'#243'rico de Entradas'
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
              Color = clBtnFace
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
              HeaderColor = 12508128
              HeaderHeight = 18
              HeaderStyle = hsSolid
              HideGlyphs = False
              ParentColor = False
              TransparentButtons = False
              object Bevel3: TBevel
                Left = 4
                Top = 324
                Width = 227
                Height = 2
                Align = alTop
              end
              object Bevel4: TBevel
                Left = 4
                Top = 297
                Width = 227
                Height = 2
                Align = alTop
              end
              object wwDBGrid1: TwwDBGrid
                Left = 4
                Top = 40
                Width = 227
                Height = 257
                Selected.Strings = (
                  'NUMERO'#9'8'#9'N'#218'MERO'#9#9
                  'DATA_LANCAMENTO'#9'10'#9'DATA'#9#9
                  'TOTAL_NOTA'#9'11'#9'VALOR-R$'#9#9)
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                Align = alTop
                DataSource = dsnf
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
                PaintOptions.ActiveRecordColor = clBlack
              end
              object FlatPanel1: TFlatPanel
                Left = 4
                Top = 22
                Width = 227
                Height = 18
                Caption = 'Notas Fiscais'
                Color = 11647157
                ColorHighLight = clBtnFace
                ColorShadow = clBtnFace
                Align = alTop
                TabOrder = 1
              end
              object FlatPanel2: TFlatPanel
                Left = 4
                Top = 299
                Width = 227
                Height = 25
                Color = 11647157
                ColorHighLight = clBtnFace
                ColorShadow = clBtnFace
                Align = alTop
                TabOrder = 2
                object Label4: TLabel
                  Left = 8
                  Top = 6
                  Width = 28
                  Height = 13
                  Caption = 'Total:'
                end
                object LTOTAL: TLabel
                  Left = 90
                  Top = 5
                  Width = 113
                  Height = 22
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = '1.000,00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
            object GroupBox3: TGroupBox
              Left = 263
              Top = 3
              Width = 513
              Height = 143
              Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
              TabOrder = 1
              object gridcompra: TwwDBGrid
                Left = 8
                Top = 14
                Width = 497
                Height = 116
                Selected.Strings = (
                  'CODPRODUTO'#9'6'#9'C'#211'DIGO'
                  'PRODUTO'#9'22'#9'PRODUTO'
                  'UNIDADE'#9'3'#9'UN.'
                  'QTDE'#9'4'#9'QTDE'
                  'UNITARIO'#9'6'#9'PRE'#199'O'
                  'TOTAL'#9'7'#9'TOTAL'
                  'SERIAL'#9'12'#9'SERIAL')
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
              object gridnf: TwwDBGrid
                Left = 8
                Top = 14
                Width = 497
                Height = 116
                Selected.Strings = (
                  'CODPRODUTO'#9'6'#9'C'#211'DIGO'
                  'PRODUTO'#9'35'#9'PRODUTO'
                  'UN_COMPRA'#9'5'#9'UN'
                  'QTDE'#9'7'#9'QTDE'
                  'UNITARIO'#9'8'#9'PRE'#199'O'
                  'TOTAL'#9'10'#9'TOTAL')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = DSNF_PRODUTO
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                TabOrder = 1
                TitleAlignment = taLeftJustify
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                Visible = False
                PaintOptions.AlternatingRowColor = 15921906
                PaintOptions.ActiveRecordColor = clRed
              end
            end
            object GroupBox4: TGroupBox
              Left = 263
              Top = 146
              Width = 513
              Height = 182
              Caption = 'PRESTA'#199#213'ES'
              TabOrder = 2
              object PageView2: TPageView
                Left = 2
                Top = 15
                Width = 509
                Height = 165
                ActivePage = PageSheet3
                ActivePageIndex = 0
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
                  Height = 150
                  Caption = 'A PAGAR'
                  DisplayMode = tdGlyph
                  ImageIndex = 0
                  Margin = 0
                  PageIndex = 0
                  TabColor = 16240558
                  TabWidth = 0
                  TransparentColor = clNone
                  object Label27: TLabel
                    Left = 345
                    Top = 131
                    Width = 36
                    Height = 13
                    Caption = 'TOTAL:'
                  end
                  object wwDBGrid4: TwwDBGrid
                    Left = 0
                    Top = 0
                    Width = 509
                    Height = 123
                    ControlType.Strings = (
                      'FILTRO;CheckBox;1;0'
                      'SITUACAO;ImageIndex;Original Size'
                      'situacao2;ImageIndex;Original Size')
                    Selected.Strings = (
                      'situacao2'#9'3'#9'?'#9#9
                      'DATA_VENCIMENTO'#9'9'#9'VENCTO.'#9#9
                      'DATA_EMISSAO'#9'9'#9'EMISS'#195'O'#9#9
                      'ESPECIE'#9'9'#9'ESP'#201'CIE'#9#9
                      'DOCUMENTO'#9'8'#9'DOCTO.'#9#9
                      'HISTORICO'#9'17'#9'HISTORICO'#9#9
                      'VALOR'#9'8'#9'VALOR-R$'#9#9)
                    IniAttributes.Delimiter = ';;'
                    IniAttributes.UnicodeIniFile = False
                    TitleColor = clBtnFace
                    FixedCols = 0
                    ShowHorzScrollBar = True
                    Align = alTop
                    DataSource = dspagar
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
                    PaintOptions.AlternatingRowColor = 16053492
                    PaintOptions.ActiveRecordColor = clRed
                  end
                  object rtotal: TJvCalcEdit
                    Left = 392
                    Top = 128
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
                object PageSheet4: TPageSheet
                  Left = 0
                  Top = 15
                  Width = 509
                  Height = 150
                  Caption = 'PAGAS'
                  DisplayMode = tdGlyph
                  ImageIndex = 0
                  Margin = 0
                  PageIndex = 1
                  TabColor = 11184895
                  TabWidth = 0
                  TransparentColor = clNone
                  object Label28: TLabel
                    Left = 345
                    Top = 130
                    Width = 36
                    Height = 13
                    Caption = 'TOTAL:'
                  end
                  object wwDBGrid5: TwwDBGrid
                    Left = 0
                    Top = 0
                    Width = 509
                    Height = 122
                    ControlType.Strings = (
                      'FILTRO;CheckBox;1;0'
                      'SITUACAO;ImageIndex;Original Size'
                      'situacao2;ImageIndex;Original Size')
                    Selected.Strings = (
                      'DATA_VENCIMENTO'#9'9'#9'VENCTO.'#9#9
                      'DATA_PAGAMENTO'#9'11'#9'DT.PGTO'#9#9
                      'DOCUMENTO'#9'8'#9'DOCTO.'#9#9
                      'HISTORICO'#9'16'#9'HISTORICO'#9#9
                      'NOTAFISCAL'#9'10'#9'NOTAFISCAL'#9#9
                      'VALORPAGO'#9'9'#9'VLR.PAGO'#9#9)
                    IniAttributes.Delimiter = ';;'
                    IniAttributes.UnicodeIniFile = False
                    TitleColor = clBtnFace
                    FixedCols = 0
                    ShowHorzScrollBar = True
                    Align = alTop
                    DataSource = dsPAGARpg
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
                    PaintOptions.AlternatingRowColor = 16053492
                    PaintOptions.ActiveRecordColor = clRed
                  end
                  object rtotal_pago: TJvCalcEdit
                    Left = 392
                    Top = 127
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
            end
            object HeaderView2: THeaderView
              Left = 20
              Top = 334
              Width = 756
              Height = 53
              AdaptiveColors = False
              BorderStyle = bsNone
              Caption = 'Movimento de Mensal de compras ('#218'ltimos 12 Meses)'
              HeaderColor = clBtnFace
              HeaderFont.Charset = ANSI_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HeaderSize = 16
              ParentColor = False
              object wwDBGrid3: TwwDBGrid
                Left = 0
                Top = 16
                Width = 756
                Height = 37
                Selected.Strings = (
                  'sum_0'#9'9'#9'janeiro'#9#9
                  'sum'#9'8'#9'sum'#9#9
                  'sum_1'#9'8'#9'sum_1'#9#9
                  'sum_2'#9'8'#9'sum_2'#9#9
                  'sum_3'#9'8'#9'sum_3'#9#9
                  'sum_4'#9'8'#9'sum_4'#9#9
                  'sum_5'#9'8'#9'sum_5'#9#9
                  'sum_6'#9'8'#9'sum_6'#9#9
                  'sum_7'#9'8'#9'sum_7'#9#9
                  'sum_8'#9'9'#9'sum_8'#9#9
                  'sum_9'#9'9'#9'sum_9'#9#9
                  'sum_10'#9'9'#9'sum_10'#9#9)
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = False
                ShowVertScrollBar = False
                Align = alClient
                DataSource = dsCOMPRA_mes
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
                ExplicitWidth = 754
                ExplicitHeight = 35
              end
            end
          end
          object PageSheet5: TPageSheet
            Left = 0
            Top = 0
            Width = 780
            Height = 422
            Caption = 'F12 | Sugest'#245'es de Compra'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 2
            TabColor = clWindow
            TabWidth = 0
            TransparentColor = clNone
            object Bevel6: TBevel
              Left = 0
              Top = 42
              Width = 780
              Height = -1
              Align = alTop
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 780
              Height = 42
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object Bevel7: TBevel
                Left = 687
                Top = 14
                Width = 43
                Height = 20
              end
              object Label2: TLabel
                Left = 18
                Top = 16
                Width = 96
                Height = 13
                Caption = 'Per'#237'odo de Vendas :'
              end
              object ldias: TLabel
                Left = 692
                Top = 16
                Width = 32
                Height = 16
                Alignment = taCenter
                AutoSize = False
                Caption = '000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 740
                Top = 16
                Width = 20
                Height = 13
                Caption = 'Dias'
              end
              object Label1: TLabel
                Left = 228
                Top = 16
                Width = 6
                Height = 13
                Caption = 'a'
              end
              object Label15: TLabel
                Left = 652
                Top = 16
                Width = 28
                Height = 13
                Caption = 'Total:'
              end
              object ldataini_remarcado: TJvDateEdit
                Left = 122
                Top = 12
                Width = 100
                Height = 21
                Date = 36892.000000000000000000
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
                TabOrder = 0
                OnKeyPress = ldataini_remarcadoKeyPress
              end
              object ldatafim_remarcado: TJvDateEdit
                Left = 240
                Top = 12
                Width = 104
                Height = 21
                Date = 73050.000000000000000000
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
                ReadOnly = True
                ShowNullDate = False
                TabOrder = 1
                OnKeyPress = ldatafim_remarcadoKeyPress
              end
              object bfiltrar: TAdvGlowButton
                Left = 355
                Top = 2
                Width = 106
                Height = 40
                Caption = 'Filtrar'
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
                TabOrder = 2
                OnClick = bfiltrarClick
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
            object GRID5: TwwDBGrid
              Left = 0
              Top = 41
              Width = 780
              Height = 381
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F'
                'SITUACAO;ImageIndex;Original Size')
              Selected.Strings = (
                'CODIGO'#9'7'#9'C'#243'digo'#9'F'
                'CODBARRA'#9'17'#9'C'#243'd.Barra'#9'F'
                'produto'#9'55'#9'Produto'#9'F'
                'UNIDADE'#9'4'#9'UN'#9'F'
                'ESTOQUE_ATUAL'#9'10'#9'Estoque'#9'F'
                'vendas'#9'12'#9'Vendas'#9'F'
                'sugestao'#9'12'#9'Sugest'#227'o'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dssugestao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
              OnDrawDataCell = GRID5DrawDataCell
            end
          end
          object PageSheet6: TPageSheet
            Left = 0
            Top = 0
            Width = 780
            Height = 422
            Caption = ' | Grade de Produtos'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 3
            TabColor = clWindow
            TabWidth = 0
            TransparentColor = clNone
            object Bevel8: TBevel
              Left = 0
              Top = 21
              Width = 780
              Height = 3
              Align = alTop
              ExplicitLeft = 20
              ExplicitTop = 17
              ExplicitWidth = 956
            end
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 780
              Height = 21
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
            end
            object wwDBGrid2: TwwDBGrid
              Left = 0
              Top = 24
              Width = 780
              Height = 398
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F'
                'SITUACAO;ImageIndex;Original Size')
              Selected.Strings = (
                'CODIGO'#9'7'#9'Refer'#234'ncia'#9'F'
                'CODPRODUTO'#9'10'#9'C'#243'digo'#9'F'
                'produto'#9'90'#9'Produto'#9'F'
                'PRECO'#9'12'#9'PMC'#9'F')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dsfornecedor_codigo
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              UseTFields = False
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 168
          Height = 509
          Align = alLeft
          BevelOuter = bvNone
          Color = 3684661
          ParentBackground = False
          TabOrder = 1
          object bt_fornecedor_001: TAdvGlowButton
            Left = 9
            Top = 80
            Width = 149
            Height = 25
            Cursor = crHandPoint
            Caption = 'Ficha cadastral'
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
              89504E470D0A1A0A0000000D49484452000000100000000F0806000000ED734F
              2F0000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A3345323433363141374538423131453739444333424636313735
              4237394331462220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A334532343336314237453842313145373944433342463631373542373943
              3146223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A3345323433363138374538423131
              453739444333424636313735423739433146222073745265663A646F63756D65
              6E7449443D22786D702E6469643A334532343336313937453842313145373944
              4333424636313735423739433146222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3E12EFD411000002254944415478DA7C52
              BB6E1341143D777666FD58C7383C9438122E9012A4500012251D1474281D0550
              F017117C407AFE03DA9420A0A0484191080B2C9208824902043BF6DADE9D19CE
              DA40E4C464A5BBF3BA73EE3DE78CBC5EB9A700BC15C102C744893271DA7DAABC
              3C094D01DE3B4CFA3C43185AB2BFC8256F93B2D8012CB70BA21E8BF3B524E974
              09A4C7AF3AF82034129826D197F510CCF9EFCEF9B350E11035C9F2023CC8E64E
              4E56663E02F129939775DF2A98EE57D157972057EE00AD263B5298DC37E99467
              E1D75761DF3DFF9414AB5E4FA98E3FD0D3E9E2ED47385389D0F3F32372FF219E
              E7D9AFEA1C36D65FD84AD0F1FAC67C7A7D637F369A0BDA40DC42E41C4EFD9442
              14080EAA17A2C5F39FAF895F7DB8C38A550CE24C4C56F1A703FCCD097240A8B7
              15AC6B8C3C09F06F3C2DBC1A193895C76EF3B0A18958A7AA37A1CCB14A342869
              31484DFD71D2A5343E62E532D0B7A81482F7DAB5E3BA9A2E01A91D07483B40A9
              46D52F723E60659ED366C4FBC0E116C1428405A96B95D70DD238C975B00777F9
              3E3E566FA118EF429B3CFAC519CC7C7B83FCDA0AED38075A460AC67C992C9C80
              02C1767EA2FD631B461BB88A87CA68D089EC8EEDD91D0D9B6E22D05DDE281EF3
              8B94072815F3904105420AD650BC34C95E73F6285A4139DC94E4D912742EDA22
              6A6DAC93ECD5295A952B8DAC1BEEF13C612DDBCF561FD8C282D661215BBCA485
              7733E6470D50F9940EF4F63897A3A72814D2944238FB8A96E0B700030011EADA
              A8DA6F7D6F0000000049454E44AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = bt_fornecedor_001Click
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
            Layout = blGlyphLeftAdjusted
          end
          object bt_fornecedor_002: TAdvGlowButton
            Left = 9
            Top = 127
            Width = 149
            Height = 25
            Cursor = crHandPoint
            Caption = 'Movimento'
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
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A3337374237423844374538423131453742414137463341324432
              3844374438352220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A333737423742384537453842313145374241413746334132443238443744
              3835223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A3337374237423842374538423131
              453742414137463341324432384437443835222073745265663A646F63756D65
              6E7449443D22786D702E6469643A333737423742384337453842313145374241
              4137463341324432384437443835222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3E15627647000002AE4944415478DAA453
              CD4FD3601C7E4ADB7565AB2B30096C619A40F0234E891C503C9008266A2431C6
              DB0E1E3CA8899C3C9878F3C07FC0490926123998E0410F1A15633064C64403E2
              3020BA2C217C6F6C32C63ABAD5A72DC67866D9DBB77D3F9EDFF3F1BE826559D8
              CB4F1206EF0FB2AF852018300DC02AF3537067FF820BBBDFE0B720729762CFF1
              818C045DBBEEAEE7A354059409C00E1536D9E3EEDB29FD1B1309E0F1B960FC4B
              A8AFCDB0422D8C2D20721A037A23D23B065A141F72ECED3DBAACE027E7EBD8DF
              CE2E01A92F80D74F800A1998A689AD75A206500AB741AEF63A64C6D22B88CDBD
              73CA8E452F20166E752ADED442905253407611A80E9A55A8B046DD498C76DC82
              AC7A611581F1D505F4C41F139460FE20BA278638C6CADB3B1089FE327A110834
              D90CA86C7F1456FB715C298E6063F50D045AD3B59A822D295AD384B791767AB0
              8DAE95590A96B166E4715E0FC13A13036AC2F4602B0ECC7402B4A0C60EA0D84F
              0997695A15A6F31B98F505F92E11C4D84D4544AE5440C0AB018A9F0C72334092
              E39B6C6489F5CFE8D174A66102AA86C3BE006C9967D58013A7CC340234F8759A
              1E6CAE9181E477E32103187666FB30DC104263B01958FC86EE0CE5D41FC270F8
              A8C34267849DC94F88FF18A7471A012A56B59331FD8209675103E35FEAB886C6
              F9AF1C2B60AEF51442AA7B24BEE73288CF4FB867C1A3E814A7A709E3B723B241
              46F359F3EA64621AF27224A97DAC3B6825602E0C41285DCA436CD9C0EF840794
              00D123D293B4D4274EF653C203470699A4B7E7065B367B9F3D2D251F1DB01969
              F66903A6961E7E3851B81143B0CD0355B17D116DBE82358A5EC878EEACAA383E
              DC85827AA8B883CCEEB528238535F42554BC38161961F5A273069CCB8465BC27
              F501B673F4E0170A78E200A938C2CDCD28E215E5DDE37B216BD744F9BFDB28EC
              F53AFF1160001A68FA45C456440F0000000049454E44AE426082}
            Transparent = True
            TabOrder = 1
            OnClick = bt_fornecedor_002Click
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
            Layout = blGlyphLeftAdjusted
          end
          object bt_fornecedor_003: TAdvGlowButton
            Left = 9
            Top = 174
            Width = 149
            Height = 25
            Cursor = crHandPoint
            Caption = 'Sugest'#227'o de compra'
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
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A3241323937363143374538423131453741433243383644323242
              3233363246452220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A324132393736314437453842313145374143324338364432324232333632
              4645223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A3241323937363141374538423131
              453741433243383644323242323336324645222073745265663A646F63756D65
              6E7449443D22786D702E6469643A324132393736314237453842313145374143
              3243383644323242323336324645222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3E74A561DC000002E34944415478DA7C92
              CB4F135114C6BFB9336DA7D3764A29168AADBC2246234602214412352E64C5C6
              A85B15123786E0DE3F80AD0931AEDC6A8CAB426288C6F8D820298160508C8291
              506985421F3353A6F3F4CE542AC6C493DCDCD739BFFB9D730F63DB36DEA517A0
              A82A5637338F7C1E4E8A06C5BB9BF99D8558A4611CD4B60BC5A964D391FE5DB9
              7CBFAA1BA153C9C418CF7B619A1638C7C1B42D3E22044682827F94256CB1ABA5
              35BE91DFE98B87A393CE7DAE50ECA3674F954DEDB2C7633688422055D1AAD37E
              DE5F03301679601266542E4BE008DBA01BC675A55CA4AAF62F38F7CEBA762641
              370D783BBC53BA69CF66B6729A0BB02C2B421DD0198B531A439D4CF4B47541F0
              F2CEB5BB76CEDA62CD542D509294E4B77C76F8EBDADA4C0D60DB555337D0146D
              04212CAA9A8AF6A309EC6B5517D02826A02812C4964E184204E9C5578C9ACF4E
              7B5976B296021D84255035CD1DAE6CB516EC982497900F1FC789CC1C06ED39A8
              3DE348CD6CA1C9AA7473074ECCEF51521418B041DC1DC0591A32810E24728B18
              5C19033ECA1889BF4171E0DECBD955E96A1D40D370E76848ACBF0C4BC7AE781A
              E7D40D0C2DDD00B232A4CF808FD9D64EB6368C577C7DA803082D9E49217BB204
              DBB6C0C244466847F2471A432B57809F40F53DA0F7F7E2F59D677B9CC9667BFD
              0AFE52C0B80A82F42358949900CE973F61E0CB6DDA08804C834B67CF203D9102
              5B35BD4229C34B842B93C30A9C24F2B28CF5ED1CEC4823067CCB40BA84CA3C05
              F4F72335F618A868084B5B30598FFBE5E41F058110BA5BE250BFAFE379F32D28
              AD3DD0BA63989F98C631BF80B092854E151ED89F1A10E23414B2C55D84C50096
              3E2C63E3ED0222379F40337470B43642651B16F1E0B0B9000FC731260D76AC23
              D6E282AE0D5F826D6828ECD38252B982BA530F660961E8834C1DF0B35812423C
              0F31187083DD940C0B36C341647530B438362FD495966505054576203540A152
              7E58DC9704AEB477916E77F17F8BE996F9C2D0F59CD37ABF041800FC2D5A8337
              CFC09B0000000049454E44AE426082}
            Transparent = True
            TabOrder = 2
            OnClick = bt_fornecedor_003Click
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
            Layout = blGlyphLeftAdjusted
          end
          object bt_fornecedor_004: TAdvGlowButton
            Left = 9
            Top = 221
            Width = 149
            Height = 25
            Cursor = crHandPoint
            Caption = 'Grade de produtos'
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
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
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
              702E6969643A3144434645333132374538423131453741353633464242314235
              3838344644312220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A314443464533313337453842313145374135363346424231423538383446
              4431223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A3144434645333130374538423131
              453741353633464242314235383834464431222073745265663A646F63756D65
              6E7449443D22786D702E6469643A314443464533313137453842313145374135
              3633464242314235383834464431222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3E5FAE03E0000001FA4944415478DA8452
              4B68134118FE6667A77934768DED6649B4524B412988A0BDF45C905EEAC58237
              513CF5A667F1E4CD9B176F5E8A87EAB18750257A6DC1175E2C055B1A082D26F6
              614DE226BB33E3CCB491AC59DB1F86F91FDFFFCDF7CF0C915242DBF4ADDBD816
              16B2FD198C8E8CC0CD7917DDA133F774ADF663F779ADFA7D6D6373137B8D3AF2
              96C0D2CB79D367E1C804C1B9EA41FDA91F868B39CF2B0DA4539F767EEE65F4D2
              BECEE99AC6686CA7CFEE38DB3E7F7CFFE68D3B93D7AE6079AD8C66AB059BD873
              BAD6562AB38E33F5E4C11C963F7EC18BE2EB0195BE1B21380879616A72021397
              C7315CC8E357F337987D580EC210A7D2295CC8E790EE6378B6582CF428504EA3
              BABB6F7C0DFC9F698CC676622B522512271A2191D0EE0EFA2835FB6AB982B3EE
              A0911E72A17A08F46B795907347A6454813C62672AABA92C15EB14E93AF89FFE
              A88276C0CD3E367CF84AFD3113F8FC1882F329605D2882376D2C5C65586F09AC
              3408D2EA6EF625C1AB4B165C268F19418184C94A50D514483D8A549F4C9A9DC6
              288A2828FBC08CA294D713269E8D69A805245E41A8461E743227BEA2AB3061D7
              F5FC5570DAA65BA5950F109C230882D866C618DEBDFF6CB03D045ED27E34BFF4
              962E144B635CCA561C012524D1B6C8B75185ED21F0A95D711879586FFAE3EAE3
              F871045C88A493487EF529AD74727F041800EF8EB403659EAD1A000000004945
              4E44AE426082}
            Transparent = True
            TabOrder = 3
            OnClick = bt_fornecedor_004Click
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
            Layout = blGlyphLeftAdjusted
          end
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 18
      Top = 3
      Width = 31
      Height = 31
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
      TabOrder = 0
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
      DataSource = dsfornecedor2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 51
      Top = 3
      Width = 31
      Height = 31
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
      TabOrder = 1
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
      DataSource = dsfornecedor2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 470
    Width = 932
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    Color = 3552822
    ParentBackground = False
    TabOrder = 1
    object bcompras: TAdvGlowButton
      Left = 410
      Top = 5
      Width = 74
      Height = 55
      Caption = 'Compras'
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
      TabOrder = 8
      OnClick = bcomprasClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 5
      Width = 74
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
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
      Left = 90
      Top = 4
      Width = 74
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
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
      Left = 170
      Top = 5
      Width = 74
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
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
    object blocalizar: TAdvGlowButton
      Left = 250
      Top = 5
      Width = 74
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
      TabOrder = 3
      OnClick = blocalizarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 480
      Top = 256
      Width = 43
      Height = 35
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033E494441544889
        8D95C18B1C4514C67FDFA43D444583E061BDE9218B2B314E6FE2450FEA5E82D9
        83DDA241C583202222994E0E4A349B109218D643B65B4444041121829A690F4A
        F660CC1FB0D84D4232620E7A5B0F8210317871E7F390EA75323B339B7729AAEA
        BDEFABEFD57B55B2CD386B77BA0F487ACEF653C00C70AF246CFF21A967FB47E0
        EBBA487F1D87A151047156DE6FFB14904ABACD034E9264DBCD08FC2BA96BFB50
        5DA4BF6D4A1067E5CBC087C05D401FB80074819F80DF83DB14B00B4880278116
        F017F06695275F8C256877BA878013925AB62F0007EA22BD384E7E88D92969C9
        F61380251DAEF2E4D40682382B5FB1FD6948C3A2ED85BA48D726810FA8DE62FB
        38F076B8A357EB22FD6C9D20CECAED21057700EF557972F8568047109D04DE01
        FE0666AB3CB91A01D85E9474A7ED1FEA225D07DF7DF05B03AC9C7E464369E907
        A5B24D5DA40A3847243D6A7B0E580492A8DDE94E03F3C01AD0D9EC940D78005C
        0707A88B742DCECA0E7009988FB3723A92B40F8880737591F63649415F5273DA
        9BC01BABF2A41767E532B017D817053996F4CD66271FA87D8D021F50D6059E96
        3417013BC2FACA24F0C179DFBCB8737FF78561BF8B1FA45F0E61ED88806D61B2
        DAEE745B7591F6870387AD25CE0084925C1F818660358CDBA2905242C056E0FA
        30A0069C9ACA9964839891ED6BC0DD92A6AA3CB93C2AA0798B9A3BE89B97C206
        378DFFFB4F05FF6B91A4CBC0E3C02C3092A02ED2569C95EB242D7C66D2254B9A
        05045C89C293FB98A46781CFC7055579A2382BDDA86977BA1E47623BE546659E
        D723FBCFCE009782FA87EA22BDDA388EEAE4A18ADA50AE71566EB77D25887D38
        AA8BB41767E539605ED212371A64AC0DA66B58499C952D20971401DF5579D293
        6DDA9DEE8CA415DB5B812375919E984432CEDA9DEE82A463B6FF0176D745DA1B
        7CAE5FB7FD11D00F4E276FA5279A93DB7E17381AFE9237EA22FD18863E9C382B
        8F010B61BA0C1CA8F2E4974DC0A78125604F583A5EE5C9D1667F43D3B43BDDD7
        249DB67D3BB02669D9F659A0025643D7DE276997ED04D82329B27D1D385817E9
        278378E33EFD69DBEF037B256DD9E4D3EF4BFADEF65B75916E503BB1EDE3AC9C
        019E07E68007817BC2D69FC0CFC079E0AB2A4FC63EF3FF018B09C93EC7530589
        0000000049454E44AE426082}
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
      DataSource = dsfornecedor2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 615
      Top = 256
      Width = 43
      Height = 35
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
      DataSource = dsfornecedor2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 330
      Top = 5
      Width = 74
      Height = 55
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
      TabOrder = 6
      OnClick = BitBtn5Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = 15465983
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
    object pgravar: TFlatPanel
      Left = 581
      Top = -1
      Width = 534
      Height = 65
      ParentColor = True
      Visible = False
      ColorHighLight = 3552822
      ColorShadow = 3552822
      TabOrder = 7
      object bgravar: TAdvGlowButton
        Left = 10
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
        Appearance.ColorHot = 15465983
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
        Left = 90
        Top = 5
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
        Appearance.ColorHot = 15465983
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
  object Panel1: TPanel
    Left = 0
    Top = 37
    Width = 932
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    Color = 3684661
    ParentBackground = False
    TabOrder = 0
    object Label29: TLabel
      Left = 13
      Top = 8
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
    object Label30: TLabel
      Left = 120
      Top = 8
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
    object DBEdit1: TDBEdit
      Left = 56
      Top = 6
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsfornecedor2
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object combo_pessoa: TComboBox
      Left = 164
      Top = 6
      Width = 149
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnExit = combo_pessoaExit
      OnKeyPress = combo_pessoaKeyPress
      Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA'
        'PRODUTOR RURAL'
        'OUTROS')
    end
  end
  object Pop1: TPopupMenu
    Left = 2024
    Top = 616
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
      OnClick = BitBtn5Click
    end
    object compras1: TMenuItem
      Caption = 'compras'
      ShortCut = 119
      OnClick = compras1Click
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
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      ShortCut = 122
      OnClick = Movimentaes1Click
    end
    object Sugestesdecompra1: TMenuItem
      Caption = 'Sugest'#245'es de compra'
      ShortCut = 123
      OnClick = Sugestesdecompra1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 1440
    Top = 616
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
  object dsfornecedor2: TDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 1568
    Top = 624
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
    Left = 1656
    Top = 640
  end
  object qrcontasPAGAR: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasPAGARCalcFields
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 1512
    Top = 616
    object qrcontasPAGARsituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object dtfldPAGARDATA_VENCIMENTO: TDateField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 9
      FieldName = 'DATA_VENCIMENTO'
    end
    object dtfldPAGARDATA_EMISSAO: TDateField
      DisplayLabel = 'EMISS'#195'O'
      DisplayWidth = 9
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasPAGARESPECIE: TWideStringField
      DisplayLabel = 'ESP'#201'CIE'
      DisplayWidth = 9
      FieldName = 'ESPECIE'
      Size = 50
    end
    object qrcontasPAGARDOCUMENTO: TWideStringField
      DisplayLabel = 'DOCTO.'
      DisplayWidth = 8
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object qrcontasPAGARHISTORICO: TWideStringField
      DisplayWidth = 17
      FieldName = 'HISTORICO'
      Size = 100
    end
    object qrcontasPAGARVALOR: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 8
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARconta: TStringField
      DisplayWidth = 17
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
    object qrcontasPAGARFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 4
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrcontasPAGARfornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 30
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
    object qrcontasPAGARSITUACAO: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontasPAGARVALORPAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALORPAGO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object dtfldPAGARDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontasPAGARNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 30
    end
    object qrcontasPAGARCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 10
    end
    object qrcontasPAGARCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qrcontasPAGARCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontasPAGARC: TWideStringField
      FieldName = 'C'
      Visible = False
      Size = 10
    end
    object qrcontasPAGARE: TWideStringField
      FieldName = 'E'
      Visible = False
      Size = 10
    end
    object qrcontasPAGARMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontasPAGARCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Visible = False
    end
    object qrcontasPAGARCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
    end
  end
  object QRCOMPRA_MES: TZQuery
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
    Left = 1632
    Top = 624
    object QRCOMPRA_MESSUM_0: TExtendedField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'SUM_0'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM: TExtendedField
      DisplayLabel = 'sum'
      DisplayWidth = 8
      FieldName = 'SUM'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_1: TExtendedField
      DisplayLabel = 'sum_1'
      DisplayWidth = 8
      FieldName = 'SUM_1'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_2: TExtendedField
      DisplayLabel = 'sum_2'
      DisplayWidth = 8
      FieldName = 'SUM_2'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_3: TExtendedField
      DisplayLabel = 'sum_3'
      DisplayWidth = 8
      FieldName = 'SUM_3'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_4: TExtendedField
      DisplayLabel = 'sum_4'
      DisplayWidth = 8
      FieldName = 'SUM_4'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_5: TExtendedField
      DisplayLabel = 'sum_5'
      DisplayWidth = 8
      FieldName = 'SUM_5'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_6: TExtendedField
      DisplayLabel = 'sum_6'
      DisplayWidth = 8
      FieldName = 'SUM_6'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_7: TExtendedField
      DisplayLabel = 'sum_7'
      DisplayWidth = 8
      FieldName = 'SUM_7'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_8: TExtendedField
      DisplayLabel = 'sum_8'
      DisplayWidth = 9
      FieldName = 'SUM_8'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_9: TExtendedField
      DisplayLabel = 'sum_9'
      DisplayWidth = 9
      FieldName = 'SUM_9'
      ReadOnly = True
      Precision = 19
    end
    object QRCOMPRA_MESSUM_10: TExtendedField
      DisplayLabel = 'sum_10'
      DisplayWidth = 9
      FieldName = 'SUM_10'
      ReadOnly = True
      Precision = 19
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1552
    Top = 640
    object qrprodutoCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
    end
    object qrprodutoPRODUTO: TWideStringField
      DisplayWidth = 22
      FieldName = 'PRODUTO'
      Size = 300
    end
    object qrprodutoUNIDADE: TWideStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qrprodutoQTDE: TFloatField
      DisplayWidth = 4
      FieldName = 'QTDE'
    end
    object qrprodutoUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 6
      FieldName = 'UNITARIO'
    end
    object qrprodutoTOTAL: TFloatField
      DisplayWidth = 7
      FieldName = 'TOTAL'
    end
    object qrprodutoSERIAL: TWideStringField
      DisplayWidth = 12
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
    object dtfldDATA1: TDateField
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
    object dtfldVENCIMENTO: TDateField
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
    object qrprodutoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Visible = False
    end
  end
  object qrcompra: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 1888
    Top = 624
    object qrcompraCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcompraNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrcompraCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrcompraCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrcompraVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrcompraTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrcompraBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrcompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrcompraBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrcompraICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrcompraFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrcompraSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrcompraOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrcompraVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrcompraITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrcompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrcompraMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrcompraSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrcompraALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrcompraSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcompraMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrcompraSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrcompraVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrcompraALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrcompraSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object dtfldDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 1600
    Top = 624
    Bitmap = {
      494C01010600080030000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object dspagar: TDataSource
    DataSet = qrcontasPAGAR
    Left = 1576
    Top = 616
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 1832
    Top = 632
  end
  object dsPAGARpg: TDataSource
    DataSet = qrcontasPAGARpg
    Left = 1544
    Top = 616
  end
  object dsCOMPRA_mes: TDataSource
    DataSet = QRCOMPRA_MES
    Left = 1360
    Top = 616
  end
  object dscompra: TDataSource
    DataSet = qrcompra
    Left = 1472
    Top = 632
  end
  object qrcontasPAGARpg: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 1536
    Top = 624
  end
  object dsnf: TDataSource
    DataSet = qrnf
    Left = 1392
    Top = 624
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 1600
    Top = 624
    object qrnfNUMERO: TWideStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 10
    end
    object dtfldDATA_LANCAMENTO: TDateField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnfTOTAL_NOTA: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 11
      FieldName = 'TOTAL_NOTA'
    end
    object qrnfCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrnfCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object qrnfCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qrnfMODELO: TWideStringField
      FieldName = 'MODELO'
      Visible = False
      Size = 10
    end
    object qrnfESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Visible = False
      Size = 10
    end
    object qrnfSERIE: TWideStringField
      FieldName = 'SERIE'
      Visible = False
      Size = 10
    end
    object qrnfCFOP: TWideStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 10
    end
    object dtfldDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrnfCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object qrnfCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object qrnfCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object qrnfCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object qrnfCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object qrnfCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object qrnfCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object qrnfCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object qrnfCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object qrnfCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object qrnfCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
      Visible = False
    end
    object qrnfCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object qrnfCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object qrnfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Visible = False
    end
    object qrnfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrnfBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object qrnfVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
      Visible = False
    end
    object qrnfFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qrnfSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qrnfOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qrnfIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrnfDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrnfTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
      Visible = False
    end
    object qrnfTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object qrnfTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object qrnfTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object qrnfTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object qrnfTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object qrnfTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrnfTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object qrnfTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object qrnfTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object qrnfTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object qrnfTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object qrnfTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object qrnfTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object qrnfTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object qrnfTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object qrnfOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object qrnfOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object qrnfOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object qrnfOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object qrnfOBS5: TWideStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object qrnfOBS6: TWideStringField
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object qrnfOBS7: TWideStringField
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object qrnfSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrnfITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object qrnfTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrnfNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object qrnfVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object qrnfCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object qrnfICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qrnfICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object qrnfDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object qrnfITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object qrnfITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object qrnfITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object qrnfITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object qrnfITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object qrnfITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object qrnfITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object qrnfITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object qrnfITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object qrnfITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object qrnfITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object qrnfITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object qrnfITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object qrnfITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object qrnfITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object qrnfITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
    end
    object qrnfITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object qrnfBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Visible = False
    end
    object qrnfCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Visible = False
    end
    object qrnfOBS8: TWideStringField
      FieldName = 'OBS8'
      Visible = False
      Size = 60
    end
    object qrnfCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qrnfPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qrnfCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qrnfOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Visible = False
      Size = 1
    end
    object qrnfINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Visible = False
    end
    object qrnfAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Visible = False
      Size = 1
    end
    object qrnfCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Visible = False
      Size = 50
    end
  end
  object QRNF_MES: TZQuery
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
    Left = 1648
    Top = 632
  end
  object QRNF_PRODUTO: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    Left = 1640
    Top = 624
    object QRNF_PRODUTOCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object QRNF_PRODUTOPRODUTO: TWideStringField
      DisplayWidth = 35
      FieldName = 'PRODUTO'
      Size = 100
    end
    object QRNF_PRODUTOUN_COMPRA: TWideStringField
      DisplayLabel = 'UN'
      DisplayWidth = 5
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object QRNF_PRODUTOQTDE: TFloatField
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object QRNF_PRODUTOUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
    end
    object QRNF_PRODUTOTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object QRNF_PRODUTOCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOITEM: TWideStringField
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object QRNF_PRODUTOCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Visible = False
    end
    object QRNF_PRODUTOUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object QRNF_PRODUTOFRACAO: TFloatField
      FieldName = 'FRACAO'
      Visible = False
    end
    object QRNF_PRODUTOCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 5
    end
    object QRNF_PRODUTOCFOP: TWideStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object QRNF_PRODUTOSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object QRNF_PRODUTODESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object QRNF_PRODUTODESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object QRNF_PRODUTOICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object QRNF_PRODUTOICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
      Visible = False
    end
    object QRNF_PRODUTOICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object QRNF_PRODUTOICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object QRNF_PRODUTOICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object QRNF_PRODUTOSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object QRNF_PRODUTOSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object QRNF_PRODUTOSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
      Visible = False
    end
    object QRNF_PRODUTOIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object QRNF_PRODUTOIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
      Visible = False
    end
    object QRNF_PRODUTOIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object QRNF_PRODUTOIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
      Visible = False
    end
    object QRNF_PRODUTODATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object QRNF_PRODUTOTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object QRNF_PRODUTONOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object QRNF_PRODUTOOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object QRNF_PRODUTOSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object QRNF_PRODUTOCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
    object QRNF_PRODUTOSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
      Visible = False
    end
    object QRNF_PRODUTOCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object QRNF_PRODUTOICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object QRNF_PRODUTOALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Visible = False
    end
    object QRNF_PRODUTOCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object QRNF_PRODUTOCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
      Visible = False
    end
    object QRNF_PRODUTOPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
      Visible = False
    end
    object QRNF_PRODUTOPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object QRNF_PRODUTOCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
      Visible = False
    end
    object QRNF_PRODUTOCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object QRNF_PRODUTOLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 15
    end
    object QRNF_PRODUTOLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object QRNF_PRODUTOLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
      Visible = False
    end
    object QRNF_PRODUTOCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object QRNF_PRODUTOPMARGEM: TSingleField
      FieldName = 'PMARGEM'
      Visible = False
    end
    object QRNF_PRODUTOPRECOVENDA: TSingleField
      FieldName = 'PRECOVENDA'
      Visible = False
    end
    object QRNF_PRODUTOPRECOCUSTO: TSingleField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
  end
  object DSNF_PRODUTO: TDataSource
    DataSet = QRNF_PRODUTO
    Left = 1848
    Top = 632
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1760
    Top = 632
  end
  object qrsugestao: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrsugestaoCalcFields
    SQL.Strings = (
      'select pro.*, est.* from c000025 pro,'
      'c000100 est'
      ' where'
      'pro.codigo = est.codproduto')
    Params = <>
    Left = 1496
    Top = 624
    object qrsugestaosugestao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaovendas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsugestaoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrsugestaoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrsugestaoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrsugestaoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrsugestaoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrsugestaoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrsugestaoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsugestaoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrsugestaoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrsugestaoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrsugestaoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrsugestaoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrsugestaoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrsugestaoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrsugestaoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrsugestaoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrsugestaoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrsugestaoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrsugestaoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrsugestaoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrsugestaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrsugestaoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrsugestaoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrsugestaoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrsugestaoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrsugestaoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrsugestaoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrsugestaoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrsugestaoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrsugestaoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrsugestaoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrsugestaoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrsugestaoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrsugestaoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrsugestaoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrsugestaoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrsugestaoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrsugestaoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrsugestaoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrsugestaoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrsugestaoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrsugestaoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrsugestaoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrsugestaoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrsugestaoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrsugestaoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrsugestaoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrsugestaoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrsugestaoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrsugestaoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrsugestaoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrsugestaoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrsugestaoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrsugestaoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrsugestaoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrsugestaoDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrsugestaoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrsugestaoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrsugestaoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrsugestaoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrsugestaoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrsugestaoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrsugestaoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrsugestaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsugestaoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrsugestaoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrsugestaoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrsugestaoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrsugestaoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrsugestaoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrsugestaoDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrsugestaoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrsugestaoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrsugestaoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrsugestaoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrsugestaoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrsugestaoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrsugestaoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrsugestaoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrsugestaoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrsugestaoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrsugestaoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrsugestaoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrsugestaoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrsugestaoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrsugestaoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrsugestaoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrsugestaoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrsugestaoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrsugestaoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrsugestaoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrsugestaoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrsugestaoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrsugestaoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrsugestaoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrsugestaoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrsugestaoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrsugestaoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrsugestaoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrsugestaoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrsugestaoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrsugestaoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrsugestaoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrsugestaoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrsugestaoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrsugestaoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrsugestaoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrsugestaoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrsugestaoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrsugestaoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrsugestaoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrsugestaoFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrsugestaoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrsugestaoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrsugestaoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrsugestaoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrsugestaoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrsugestaoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrsugestaoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrsugestaoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrsugestaoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrsugestaoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrsugestaoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrsugestaoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrsugestaoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrsugestaoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrsugestaoCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrsugestaoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrsugestaoQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrsugestaoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrsugestaoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrsugestaoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrsugestaoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrsugestaoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrsugestaoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrsugestaoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrsugestaoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrsugestaoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrsugestaoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrsugestaoPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrsugestaoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrsugestaoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrsugestaoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrsugestaoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrsugestaoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrsugestaoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrsugestaoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrsugestaoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrsugestaoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrsugestaoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrsugestaoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrsugestaoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrsugestaoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrsugestaoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrsugestaoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrsugestaoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrsugestaoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrsugestaoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object qrsugestaoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object qrsugestaoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object qrsugestaoESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object qrsugestaoENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrsugestaoSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object qrsugestaoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrsugestaoULTIMA_ENTRADA: TDateField
      FieldName = 'ULTIMA_ENTRADA'
    end
    object qrsugestaoULTIMA_SAIDA: TDateField
      FieldName = 'ULTIMA_SAIDA'
    end
    object qrsugestaoNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
  end
  object dssugestao: TDataSource
    DataSet = qrsugestao
    Left = 1448
    Top = 605
  end
  object QUERY1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1691
    Top = 636
  end
  object dsfornecedor_codigo: TDataSource
    DataSet = frmmodulo.qrfornecedor_codigo
    Left = 1544
    Top = 613
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Fornecedores'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 1568
    Top = 608
  end
  object ACBrConsultaCNPJ1: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 1579
    Top = 562
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 1470
    Top = 618
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 1549
    Top = 626
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 1486
    Top = 618
  end
end
