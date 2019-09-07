object frmcliente: Tfrmcliente
  Left = 5
  Top = 38
  AlphaBlendValue = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CLIENTES | Ficha de Cadastro'
  ClientHeight = 599
  ClientWidth = 949
  Color = clWhite
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 949
    Height = -3
    Align = alTop
    ExplicitTop = 67
    ExplicitWidth = 971
  end
  object PageControl1: TPageControl
    Left = -6
    Top = 15
    Width = 1104
    Height = 524
    ActivePage = TabSheet4
    TabOrder = 5
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1096
        Height = 496
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Black'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dscliente2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 71
          end
          object cxGrid1DBTableView1CPF: TcxGridDBColumn
            DataBinding.FieldName = 'CPF'
            Width = 164
          end
          object cxGrid1DBTableView1ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'ENDERECO'
          end
          object cxGrid1DBTableView1vendedor: TcxGridDBColumn
            DataBinding.FieldName = 'vendedor'
            Visible = False
          end
          object cxGrid1DBTableView1convenio: TcxGridDBColumn
            DataBinding.FieldName = 'convenio'
            Visible = False
          end
          object cxGrid1DBTableView1usuario: TcxGridDBColumn
            DataBinding.FieldName = 'usuario'
            Visible = False
          end
          object cxGrid1DBTableView1regiao: TcxGridDBColumn
            DataBinding.FieldName = 'regiao'
            Visible = False
          end
          object cxGrid1DBTableView1APELIDO: TcxGridDBColumn
            DataBinding.FieldName = 'APELIDO'
            Visible = False
          end
          object cxGrid1DBTableView1BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
            Visible = False
          end
          object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'CIDADE'
            Visible = False
          end
          object cxGrid1DBTableView1UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
            Visible = False
          end
          object cxGrid1DBTableView1CEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
            Visible = False
          end
          object cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'COMPLEMENTO'
            Visible = False
          end
          object cxGrid1DBTableView1MORADIA: TcxGridDBColumn
            DataBinding.FieldName = 'MORADIA'
            Visible = False
          end
          object cxGrid1DBTableView1TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            Visible = False
          end
          object cxGrid1DBTableView1SITUACAO: TcxGridDBColumn
            DataBinding.FieldName = 'SITUACAO'
            Visible = False
          end
          object cxGrid1DBTableView1TELEFONE1: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE1'
            Visible = False
          end
          object cxGrid1DBTableView1TELEFONE2: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE2'
            Visible = False
          end
          object cxGrid1DBTableView1TELEFONE3: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE3'
            Visible = False
          end
          object cxGrid1DBTableView1CELULAR: TcxGridDBColumn
            DataBinding.FieldName = 'CELULAR'
            Visible = False
          end
          object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
            Visible = False
          end
          object cxGrid1DBTableView1RG: TcxGridDBColumn
            DataBinding.FieldName = 'RG'
            Visible = False
          end
          object cxGrid1DBTableView1FILIACAO: TcxGridDBColumn
            DataBinding.FieldName = 'FILIACAO'
            Visible = False
          end
          object cxGrid1DBTableView1ESTADOCIVIL: TcxGridDBColumn
            DataBinding.FieldName = 'ESTADOCIVIL'
            Visible = False
          end
          object cxGrid1DBTableView1CONJUGE: TcxGridDBColumn
            DataBinding.FieldName = 'CONJUGE'
            Visible = False
          end
          object cxGrid1DBTableView1PROFISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'PROFISSAO'
            Visible = False
          end
          object cxGrid1DBTableView1EMPRESA: TcxGridDBColumn
            DataBinding.FieldName = 'EMPRESA'
            Visible = False
          end
          object cxGrid1DBTableView1RENDA: TcxGridDBColumn
            DataBinding.FieldName = 'RENDA'
            Visible = False
          end
          object cxGrid1DBTableView1LIMITE: TcxGridDBColumn
            DataBinding.FieldName = 'LIMITE'
            Visible = False
          end
          object cxGrid1DBTableView1REF1: TcxGridDBColumn
            DataBinding.FieldName = 'REF1'
            Visible = False
          end
          object cxGrid1DBTableView1REF2: TcxGridDBColumn
            DataBinding.FieldName = 'REF2'
            Visible = False
          end
          object cxGrid1DBTableView1CODVENDEDOR: TcxGridDBColumn
            DataBinding.FieldName = 'CODVENDEDOR'
            Visible = False
          end
          object cxGrid1DBTableView1DATA_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_CADASTRO'
            Visible = False
          end
          object cxGrid1DBTableView1DATA_ULTIMACOMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_ULTIMACOMPRA'
            Visible = False
          end
          object cxGrid1DBTableView1OBS1: TcxGridDBColumn
            DataBinding.FieldName = 'OBS1'
            Visible = False
          end
          object cxGrid1DBTableView1OBS2: TcxGridDBColumn
            DataBinding.FieldName = 'OBS2'
            Visible = False
          end
          object cxGrid1DBTableView1OBS3: TcxGridDBColumn
            DataBinding.FieldName = 'OBS3'
            Visible = False
          end
          object cxGrid1DBTableView1OBS4: TcxGridDBColumn
            DataBinding.FieldName = 'OBS4'
            Visible = False
          end
          object cxGrid1DBTableView1OBS5: TcxGridDBColumn
            DataBinding.FieldName = 'OBS5'
            Visible = False
          end
          object cxGrid1DBTableView1OBS6: TcxGridDBColumn
            DataBinding.FieldName = 'OBS6'
            Visible = False
          end
          object cxGrid1DBTableView1NASCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'NASCIMENTO'
            Visible = False
          end
          object cxGrid1DBTableView1CODREGIAO: TcxGridDBColumn
            DataBinding.FieldName = 'CODREGIAO'
            Visible = False
          end
          object cxGrid1DBTableView1CODCONVENIO: TcxGridDBColumn
            DataBinding.FieldName = 'CODCONVENIO'
            Visible = False
          end
          object cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn
            DataBinding.FieldName = 'CODUSUARIO'
            Visible = False
          end
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
            Visible = False
          end
          object cxGrid1DBTableView1RG_ORGAO: TcxGridDBColumn
            DataBinding.FieldName = 'RG_ORGAO'
            Visible = False
          end
          object cxGrid1DBTableView1RG_ESTADO: TcxGridDBColumn
            DataBinding.FieldName = 'RG_ESTADO'
            Visible = False
          end
          object cxGrid1DBTableView1RG_EMISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'RG_EMISSAO'
            Visible = False
          end
          object cxGrid1DBTableView1SEXO: TcxGridDBColumn
            DataBinding.FieldName = 'SEXO'
            Visible = False
          end
          object cxGrid1DBTableView1HISTORICO: TcxGridDBColumn
            DataBinding.FieldName = 'HISTORICO'
            Visible = False
          end
          object cxGrid1DBTableView1PREVISAO: TcxGridDBColumn
            DataBinding.FieldName = 'PREVISAO'
            Visible = False
          end
          object cxGrid1DBTableView1CNAE: TcxGridDBColumn
            DataBinding.FieldName = 'CNAE'
            Visible = False
          end
          object cxGrid1DBTableView1COD_MUNICIPIO_IBGE: TcxGridDBColumn
            DataBinding.FieldName = 'COD_MUNICIPIO_IBGE'
            Visible = False
          end
          object cxGrid1DBTableView1IBGE: TcxGridDBColumn
            DataBinding.FieldName = 'IBGE'
            Visible = False
          end
          object cxGrid1DBTableView1TAMANHO_CALCA: TcxGridDBColumn
            DataBinding.FieldName = 'TAMANHO_CALCA'
            Visible = False
          end
          object cxGrid1DBTableView1TAMANHO_BLUSA: TcxGridDBColumn
            DataBinding.FieldName = 'TAMANHO_BLUSA'
            Visible = False
          end
          object cxGrid1DBTableView1TAMANHO_SAPATO: TcxGridDBColumn
            DataBinding.FieldName = 'TAMANHO_SAPATO'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_ENDERECO'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_BAIRRO'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_CIDADE'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_UF: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_UF'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_CEP: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_CEP'
            Visible = False
          end
          object cxGrid1DBTableView1CORRESP_COMPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'CORRESP_COMPLEMENTO'
            Visible = False
          end
          object cxGrid1DBTableView1RG_PRODUTOR: TcxGridDBColumn
            DataBinding.FieldName = 'RG_PRODUTOR'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_NOME'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_CPF: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_CPF'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_RG: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_RG'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_PROFISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_PROFISSAO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_ESTADO_CIVIL: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_ESTADO_CIVIL'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_ENDERECO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_BAIRRO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_CIDADE'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_UF: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_UF'
            Visible = False
          end
          object cxGrid1DBTableView1RESP1_CEP: TcxGridDBColumn
            DataBinding.FieldName = 'RESP1_CEP'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_NOME'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_CPF: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_CPF'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_RG: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_RG'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_PROFISSAO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_PROFISSAO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_ESTADO_CIVIL: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_ESTADO_CIVIL'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_ENDERECO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_BAIRRO'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_CIDADE'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_UF: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_UF'
            Visible = False
          end
          object cxGrid1DBTableView1RESP2_CEP: TcxGridDBColumn
            DataBinding.FieldName = 'RESP2_CEP'
            Visible = False
          end
          object cxGrid1DBTableView1FOTO: TcxGridDBColumn
            DataBinding.FieldName = 'FOTO'
            Visible = False
          end
          object cxGrid1DBTableView1CONDPGTO: TcxGridDBColumn
            DataBinding.FieldName = 'CONDPGTO'
            Visible = False
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'CIDADE'
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object bt_info_completo: TAdvSmoothButton
        Left = 760
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
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1096
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = 3684661
        Enabled = False
        ParentBackground = False
        TabOrder = 0
        object Label20: TLabel
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
        object Label21: TLabel
          Left = 136
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
          Top = 4
          Width = 57
          Height = 21
          DataField = 'CODIGO'
          DataSource = dscliente2
          TabOrder = 0
          OnChange = DBEdit1Change
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object combo_pessoa: TComboBox
          Left = 182
          Top = 4
          Width = 81
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = combo_pessoaChange
          OnExit = combo_pessoaExit
          OnKeyPress = combo_pessoaKeyPress
          Items.Strings = (
            'FISICA'
            'JURIDICA')
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 277
          Top = 5
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
          TabOrder = 2
          UnboundDataType = wwDefault
          OnChange = wwDBComboBox1Change
          OnEnter = wwDBComboBox1Enter
          OnExit = wwDBComboBox1Exit
          OnKeyPress = wwDBComboBox1KeyPress
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 32
        Width = 153
        Height = 464
        Align = alLeft
        BevelOuter = bvNone
        Color = 3684661
        ParentBackground = False
        TabOrder = 1
        object bt_referencias: TAdvGlowButton
          Left = 14
          Top = 216
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Refer'#234'ncias'
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
            702E6969643A3233444138383730374538423131453738363143384344413933
            3241373637392220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A323344413838373137453842313145373836314338434441393332413736
            3739223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3233444138383645374538423131
            453738363143384344413933324137363739222073745265663A646F63756D65
            6E7449443D22786D702E6469643A323344413838364637453842313145373836
            3143384344413933324137363739222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3ED9D7D7CA000002A74944415478DAAC53
            4B6B144110FEBAA777667626C926D947764D308F0D212A18443007837A104150
            F4268A10C45B0E12144FA242F00788878037053D7812CCC51F1011D460560924
            9B986497258F8DA8D947766676BBC79A15BC788C03DD553D5D5FD557555DCCF7
            7DECE763FB7520D8D3B5FB249F43FA79E8365E1CFD89BDEC3BD4AD4E0CC5E360
            DCA0300A5DBAC4AAD18D4BB31A997B0067074919E7609824E501C9343981478B
            F3BFF40231146C1A035C490ADD376DFF602603538B949BF0FD0CF179140D0BD4
            C930488D69E216636C9E6C661A12896898079CA7A0906962082B682BD1C14445
            D9270F87EF9D88964F4F57EB4B7153E98C87AEE91A27CEFC42A1EACD9F19E40B
            C303C6D9C54C0D6827A88F9240704FF41062B8D3A7215FC88D2926C67AA309B4
            B7D8582F16898D42871D4939A552EA617F1257174268E649D908C806E010E764
            2B8E87CB9859C9A3D5344091B1F36B172B1B05B875177D8914626612E7D314B0
            83C0BB5448939383EF3960AB8AF12323A86CE4F135BB8E782C8AD9CF3F20A56C
            169333868FDBDB585D6BC3DDEE38AE24245ECD2D52501B1C9EE723ACE36292E1
            FDA73938750FAEE3C0755D28259BD991025B3790DBDAC2CB37AF7139457F2D6A
            2F6139F6641706A218ED647E2892F447860FC1B2C20812542A68296FE61B3434
            1189A05869A8D10EB585C138022C95527F36916E3BD5AA9C819E9E34060D819A
            53A3E522BFB9816F851C74118210029E525F523DFD13FD0762DB137D783BBDB4
            F341C0B46EC4F5504BA9BC7BDBABBBE7C0E431A109ABB73B8652AD5674579713
            A6D0AB214DBBE74AF9A4EC383EB505ED963102DDA80A508B6A5255E8C14C31A6
            A688F6906472B4B257BBEE2BF99831BEC9191CA5D462838ACAE9103870A5AA06
            52FC335D405632966D28B91CB3ED8CA9EBE45F2198000AF2FFA7F1B7000300BA
            381C2A605C38630000000049454E44AE426082}
          Transparent = True
          TabOrder = 0
          OnClick = sBitBtn9Click
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
        object bt_i_muni: TAdvGlowButton
          Left = 14
          Top = 256
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'I. Municpais'
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
            702E6969643A3136424531384539374538423131453738333146453835313733
            3239373731432220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A313642453138454137453842313145373833314645383531373332393737
            3143223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3136424531384537374538423131
            453738333146453835313733323937373143222073745265663A646F63756D65
            6E7449443D22786D702E6469643A313642453138453837453842313145373833
            3146453835313733323937373143222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3E19A9F379000002E04944415478DA9C53
            5D6B1341143DBB339BDD6CB2FD481A35ADC64AF1AB16ABF50B11A4E88BFE01C1
            175F2AD4177F833F432AF44DF05D5F05412C0ABE6A41D152634DA33131D924BB
            9BDD9D19E76EFC05CE3070B9E7DCB977CEBD63DCBAF708964821A1A052815444
            5727260EDF3573CEF528ECD4A097932FD5651CBDF6FDBD679C396F0DCE60EA9D
            30068E7F4BCA84D9B6B77170F6D25A61B28AFE9F3AF2C5E93168B2696FBAB6EC
            F5F61FFE696C6F8E92C1BA69E644060106649AD2452FCB87CFAECDD52EC36FED
            C02D5460E74BD9219B7C84553487B8621C0353CA18DC761FD78EDF5C1522C697
            0F2F30ECFF826515110FDBD9219B7C840991A076FCC6AA65E71F532C5B58B870
            BE727479A37CE01472B626F6F6C1AD3C5239423068234922AD8F80A9289FC24C
            F50CDC6285F095B0F5E339770B53EBDEF4118CA21E441C428B8772E584BECC43
            5BCA4C02BA3C1EF5D16E7D4612F521858457AAA1DFFCBACEF3A5B96B05B79295
            46206739FD240F866981699B16D9E4234CCA148EEDC26193C84F1DBAC6651ACF
            B69BDB504A200ABA10698C9ECEA40C03E1A035EE90A160288551D043AAABA46A
            0D8351D25973DC2785FF5DDCE4B946F9D099123D61E037B2AC939593B0B8838E
            B19D914A071791A411D274A467A382E2C4AC7E9EA5456E3578D8F9B135ACB696
            182CDD2E07811448820E524D08A36E7641386C41E9044A63C4494643842A46D8
            6D6E99C1B0BBD1EFEEC171A7B4401291AEA0B5FF11BE9EC438F4B34336F90823
            0E71FDEE77AD99BFC18E5DBCD154C3DE1165AA15229338A47475FE0A441264B3
            31535D82DFD985952B82862D0C7EA3B7FF6933E2EA89E9701B711A3C687E7BFF
            CAF50E607EF1362CBB906565969B1DB2C9471871884B3114CB4E9F5B85C12DA9
            44FA74D0A9CF693157BCF2BC16E8A7AE20D46DD5E2E9AC13330BE8E8763777DF
            6D4A25EF303B2F98EE1E97FFBAC80CAE476074BFBEF366732AFBCEF6F538187F
            E79C5BAA0F7FEFE9EFDC78C64DEB2DB372590CC5FE15600036B98C22C940C5AC
            0000000049454E44AE426082}
          Transparent = True
          TabOrder = 1
          OnClick = sBitBtn8Click
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
        object bt_historico: TAdvGlowButton
          Left = 14
          Top = 174
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Hist'#243'rico'
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
          OnClick = sBitBtn5Click
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
        object bt_respon: TAdvGlowButton
          Left = 14
          Top = 132
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Respons'#225'veis'
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
            702E6969643A3330363836313231374538423131453741354638393833423237
            4434363731382220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A333036383631323237453842313145374135463839383342323744343637
            3138223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3330363836313146374538423131
            453741354638393833423237443436373138222073745265663A646F63756D65
            6E7449443D22786D702E6469643A333036383631323037453842313145374135
            4638393833423237443436373138222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3E90C5A699000002944944415478DA6C53
            4D48545114FEDE7D6FE6CDCF9B1F8C31C5322799D0CA85FDB808A559184482ED
            4C692505EEDA0445C814B88984A0105CD5C24554900B83901695B69131C82CA1
            5004537291A3336336E3BC79736FE7BE71021D0F5CE6DCF37DF7BBE77C739F22
            84808C818101E8BA8E442281E9E96950BD525194364DD30EA9AA3A6C59563E93
            C980730EAA231E8FDBE734EC842C96161DAE618C0D531E352DEE17163FE86488
            D1BE803DC14A09DD525C8CB948E06D322B3A9753C29F3305041777D2397C5415
            18A58E4BF1BF83B1B15930A6C2EBDDEA489BCA897090A12DC2D0D52CC5811BA3
            857373CB7A37B6FD4FF61568381B87C505BE7CAB3A7E371AC4950B1CF016E46C
            801F88ADEBE8799DA96B3DB3028D89728191C73F890C3CBD5F38D57EA09A9004
            907202B2E5A4890A87815B17E71A7B6FAFEE3F02468B3FD722BF057C19885FE4
            76B078934872D446B2E8FDB3A6E0D50EBF6B8F897006488E6EF41DBD0E274CA5
            CA001CCC5E764E351B931CC92DEBC0680138CDE0621BD09231FC0D3E80EA2962
            7C9BFC48C5E0086F403D42D7EEE3C1D5F7A7B199D7705817B859373758AF8E5D
            821BE76D308BC9C5C2E5C1874B27B19253E0775878D6BE4760860CD3C8F14F6B
            1A26179AA2533D9E90DFF5DDC6365D8DA1CEE7F5D175B73E51E9B5600956DE41
            B56EC9F768D468F9175FAD7447BFEFDED6507A4916D11FA8AB4D39863E340702
            6F4CA67493AD5BE51E006E95E35D014A4BD8F060FCF384B9BDFC834B60BCB6C1
            9235C23A6C0E43D41E6CB780D2478DB5C8136EB78EC5C47AC5D4FC828D2C7A42
            08530DF4D0248784FAA8FC68F7C7C44533972F89FAA31CADD98C3272ACC96E95
            72437E63F61F22DF2671CB46205F5E123A43695EEE7DC49FD5DDB607D5664EB3
            8AE2321CC49D2F6DFE0930009C23F2A0C0F279CC0000000049454E44AE426082}
          Transparent = True
          TabOrder = 3
          OnClick = sBitBtn10Click
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
        object bt_finan: TAdvGlowButton
          Left = 14
          Top = 91
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Financeiro'
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
          TabOrder = 4
          OnClick = bt00014ttdClick
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
        object bt_info: TAdvGlowButton
          Left = 14
          Top = 51
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Informa'#231#245'es'
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
          TabOrder = 5
          OnClick = sBitBtn1Click
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
        object cad_tabfoto: TAdvGlowButton
          Left = 13
          Top = 295
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Caption = 'Foto'
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
            89504E470D0A1A0A0000000D49484452000000100000000D0806000000A0BBEE
            240000001974455874536F6674776172650041646F626520496D616765526561
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
            702E6969643A3032354641383845374538423131453738463232463245304239
            3145303743352220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A303235464138384637453842313145373846323246324530423931453037
            4335223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3032354641383843374538423131
            453738463232463245304239314530374335222073745265663A646F63756D65
            6E7449443D22786D702E6469643A303235464138384437453842313145373846
            3232463245304239314530374335222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3EFA65FC2E0000026F4944415478DA7492
            4B68136110C77FBBD9DDB879ECDA26A96DADA968415AC1607D4251F1A488E041
            41F1A4072FDE3C78D7A30822488F15A588222248B18AD0803DD85A6CA1B6688C
            D447ABA26D4CD3475E9BECAEDFA62888763E66979D99FFFF9B9DF94B5373D9F4
            42D569F049B2950BD551D6205804A3F013479200CFFF35DB4533156695F92A6D
            A9822CD9E13AB6BE7E4822DDCF78E22C63CD5D8224BB1A9E6507DA750C4595DC
            4CC5A88F6D9B49D2D9775C6460FF740FF6E977648D3682A5DC7FBB107814898C
            EC65CB0AC466476A609A85CF4364FE032555FE03705D1759FC92771CDCDF6149
            7645C02C9498E838071D9D3007F99D27988A1FC0CCE76BB7DBAE832CFB8887D6
            D65C16318FD033C57B04CA794A81087DC70669C8BE6126D689EE5469941CBE8B
            42BFACB0C534890FDEE548B09E5BBB0F319459C071AB2B0496682D5AC961F90D
            DE36ED625DB948B3887DB12BACF787680C695C184BC28B5EFA559D8BAAC6E5C4
            418AA545E48A63636A7E42FE2041A74CBBB5CC76BFCEA56F631C1DBA42DA5AE0
            4E6A9C7BC96E886E06B389DBCFAE736AF8094DBA81D2A89B688E4AE2E9359055
            E60E9FE7CCC7211EA71E886F3839D10BD36230AA01DA9A95D1992D0C0F7473A3
            2E8C52746D12C91E483F073D426CF8A6508900185131A1205497A035227201C8
            650489505A2024D41626B9F403F9EA64D265F411D48BF65A3742E1B300798B16
            E3B184246DF1B6C5D66302A40BC2B205958A28F0D1A6EAAEB2E7FD5474E2FE00
            F14D5F71541F9228761DF72FD14862138E228B89FBA856AC9A1EBE7C4AB16F43
            57549A7C35929E197DD9E037C2965B7558CD3C12D727093DC83519951717B596
            1D7B677F093000F46FE7C4960E227A0000000049454E44AE426082}
          Transparent = True
          TabOrder = 6
          OnClick = cad_tabfotoClick
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
      object PageView1: TPageView
        Left = 144
        Top = 31
        Width = 808
        Height = 466
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        BackgroundColor = clWhite
        BackgroundKind = bkSolid
        Color = 9350400
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Indent = 2
        Margin = 1
        Options = [pgBoldActiveTab]
        ParentColor = False
        ParentFont = False
        ShowTabs = False
        Spacing = 1
        TabHeight = 14
        TabOrder = 2
        TabStyle = tsWhidbey
        TopIndent = 3
        OnChange = PageView1Change
        object PageSheet1: TPageSheet
          Left = 1
          Top = 1
          Width = 806
          Height = 464
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
            Width = 806
            Height = 272
            Color = clWhite
            ColorHighLight = clWhite
            ColorShadow = clWhite
            Align = alTop
            TabOrder = 0
            object Label5: TLabel
              Left = 491
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
              Left = 186
              Top = 249
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
              Left = 843
              Top = 105
              Width = 40
              Height = 13
              Caption = 'Usu'#225'rio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
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
              Left = 518
              Top = 227
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
              Top = 15
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
              Left = 523
              Top = 34
              Width = 89
              Height = 21
              Margins.Left = 4
              Margins.Top = 1
              DataField = 'DATA_CADASTRO'
              DataSource = dscliente2
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
              Color = clWhite
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
              Width = 533
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
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
              Width = 405
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
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
              Color = clWhite
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
              Width = 109
              Height = 21
              Color = clWhite
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
              Width = 533
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'COMPLEMENTO'
              DataSource = dscliente2
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit13: TDBEdit
              Left = 224
              Top = 247
              Width = 572
              Height = 21
              CharCase = ecLowerCase
              Color = clWhite
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
              Width = 466
              Height = 21
              TabStop = False
              Color = clWhite
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
              Left = 889
              Top = 101
              Width = 49
              Height = 21
              Color = clSilver
              DataField = 'CODUSUARIO'
              DataSource = dscliente2
              Enabled = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit17: TDBEdit
              Left = 940
              Top = 101
              Width = 86
              Height = 21
              CharCase = ecUpperCase
              Color = clSilver
              DataField = 'USUARIO'
              DataSource = dscliente2
              Enabled = False
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
              Color = clWhite
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
              ItemIndex = 25
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
              Color = clWhite
              FocusColor = 10550008
              TabOrder = 10
              OnExit = DBEdit28Exit
              OnKeyPress = dbedit28KeyPress
              AltBtnWidth = 15
              ButtonWidth = 15
              OnButtonClick = dbedit28ButtonClick
            end
            object pcad: TGroupBox
              Left = 619
              Top = 11
              Width = 181
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
                Color = clWhite
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
                TabOrder = 0
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
                Color = clWhite
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                ShowNullDate = False
                TabOrder = 1
              end
            end
            object GroupBox7: TGroupBox
              Left = -2
              Top = 177
              Width = 168
              Height = 89
              Caption = 'Telefones'
              Color = clWhite
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
                Color = clWhite
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
                Color = clWhite
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
                Color = clWhite
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
              Left = 190
              Top = 178
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
                Color = clWhite
                DataField = 'RG'
                DataSource = dscliente2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit14Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit15: TDBEdit
                Left = 33
                Top = 37
                Width = 108
                Height = 21
                CharCase = ecUpperCase
                Color = clWhite
                DataField = 'CPF'
                DataSource = dscliente2
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit15Exit
                OnKeyPress = DBEdit15KeyPress
              end
              object bitbtn8: TAdvGlowButton
                Left = 331
                Top = 37
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
                Left = 185
                Top = 7
                Width = 135
                Height = 54
                BorderOuter = fsNone
                Color = clWhite
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
                  Left = -24
                  Top = 35
                  Width = 56
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
                  Color = clWhite
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
                  Color = clWhite
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
              Left = 843
              Top = 178
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
                Color = clSilver
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
                Color = clSilver
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
                Color = clSilver
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
              Left = 595
              Top = 222
              Width = 110
              Height = 21
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
              ButtonWidth = 18
              ShowNullDate = False
              TabOrder = 12
              OnEnter = DBEdit1Enter
              OnExit = Edit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object bcad: TAdvGlowButton
              Left = 627
              Top = 11
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
                702E6969643A3136424531384539374538423131453738333146453835313733
                3239373731432220786D704D4D3A446F63756D656E7449443D22786D702E6469
                643A313642453138454137453842313145373833314645383531373332393737
                3143223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
                7374616E636549443D22786D702E6969643A3136424531384537374538423131
                453738333146453835313733323937373143222073745265663A646F63756D65
                6E7449443D22786D702E6469643A313642453138453837453842313145373833
                3146453835313733323937373143222F3E203C2F7264663A4465736372697074
                696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
                7061636B657420656E643D2272223F3E19A9F379000002E04944415478DA9C53
                5D6B1341143DBB339BDD6CB2FD481A35ADC64AF1AB16ABF50B11A4E88BFE01C1
                175F2AD4177F833F432AF44DF05D5F05412C0ABE6A41D152634DA33131D924BB
                9BDD9D19E76EFC05CE3070B9E7DCB977CEBD63DCBAF708964821A1A052815444
                5727260EDF3573CEF528ECD4A097932FD5651CBDF6FDBD679C396F0DCE60EA9D
                30068E7F4BCA84D9B6B77170F6D25A61B28AFE9F3AF2C5E93168B2696FBAB6EC
                F5F61FFE696C6F8E92C1BA69E644060106649AD2452FCB87CFAECDD52EC36FED
                C02D5460E74BD9219B7C84553487B8621C0353CA18DC761FD78EDF5C1522C697
                0F2F30ECFF826515110FDBD9219B7C840991A076FCC6AA65E71F532C5B58B870
                BE727479A37CE01472B626F6F6C1AD3C5239423068234922AD8F80A9289FC24C
                F50CDC6285F095B0F5E339770B53EBDEF4118CA21E441C428B8772E584BECC43
                5BCA4C02BA3C1EF5D16E7D4612F521858457AAA1DFFCBACEF3A5B96B05B79295
                46206739FD240F866981699B16D9E4234CCA148EEDC26193C84F1DBAC6651ACF
                B69BDB504A200ABA10698C9ECEA40C03E1A035EE90A160288551D043AAABA46A
                0D8351D25973DC2785FF5DDCE4B946F9D099123D61E037B2AC939593B0B8838E
                B19D914A071791A411D274A467A382E2C4AC7E9EA5456E3578D8F9B135ACB696
                182CDD2E07811448820E524D08A36E7641386C41E9044A63C4494643842A46D8
                6D6E99C1B0BBD1EFEEC171A7B4401291AEA0B5FF11BE9EC438F4B34336F90823
                0E71FDEE77AD99BFC18E5DBCD154C3DE1165AA15229338A47475FE0A441264B3
                31535D82DFD985952B82862D0C7EA3B7FF6933E2EA89E9701B711A3C687E7BFF
                CAF50E607EF1362CBB906565969B1DB2C9471871884B3114CB4E9F5B85C12DA9
                44FA74D0A9CF693157BCF2BC16E8A7AE20D46DD5E2E9AC13330BE8E8763777DF
                6D4A25EF303B2F98EE1E97FFBAC80CAE476074BFBEF366732AFBCEF6F538187F
                E79C5BAA0F7FEFE9EFDC78C64DEB2DB372590CC5FE15600036B98C22C940C5AC
                0000000049454E44AE426082}
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
              Color = clWhite
              DataField = 'COD_MUNICIPIO_IBGE'
              DataSource = dscliente2
              TabOrder = 21
              Visible = False
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object AdvGlowButton1: TAdvGlowButton
              Left = 84
              Top = 127
              Width = 32
              Height = 25
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
              Color = clWhite
              DataField = 'NUMERO'
              DataSource = dscliente2
              MaxLength = 5
              TabOrder = 4
              OnEnter = DBEdit1Enter
              OnExit = DBEdit38Exit
              OnKeyPress = DBEdit38KeyPress
            end
            object DBEdit2: TDBEdit
              Left = 79
              Top = 11
              Width = 534
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'NOME'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 23
              OnEnter = DBEdit1Enter
              OnExit = DBEdit2Exit
              OnKeyPress = DBEdit2KeyPress
            end
            object pnlPnlCNPJ: TPanel
              Left = 851
              Top = 14
              Width = 626
              Height = 220
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 12223546
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
                Color = 8454143
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
                Color = 8454143
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
                Fill.Color = 8210719
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
                  Left = 564
                  Top = 3
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
                Color = 12223546
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
              Left = 851
              Top = 11
              Width = 631
              Height = 236
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 12223546
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
                Left = 19
                Top = 199
                Width = 137
                Height = 33
                TabStop = False
                CharCase = ecUpperCase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
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
                Color = 8454143
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
                Color = 8454143
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object EditSituacao: TEdit
                Left = 398
                Top = 195
                Width = 160
                Height = 24
                TabStop = False
                BorderStyle = bsNone
                Color = 14678491
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
                Fill.Color = 8210719
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
                  Left = 15
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
                  Left = 568
                  Top = 1
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
          object pg_rodape: TPageView
            Left = 0
            Top = 272
            Width = 806
            Height = 192
            ActivePage = PageSheet7
            ActivePageIndex = 0
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clWhite
            BackgroundKind = bkSolid
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab]
            ShowTabs = False
            Spacing = 0
            TabHeight = 16
            TabOrder = 1
            TabStyle = tsWhidbey
            TopIndent = 3
            OnChange = pg_rodapeChange
            object PageSheet7: TPageSheet
              Left = 0
              Top = 0
              Width = 806
              Height = 192
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
                Width = 806
                Height = 192
                Align = alClient
                BevelOuter = bvNone
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                object LFILIACAO: TLabel
                  Left = 3
                  Top = 10
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
                  Top = 34
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
                  Top = 34
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
                  Top = 58
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
                  Top = 58
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
                  Top = 6
                  Width = 506
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'FILIACAO'
                  DataSource = dscliente2
                  TabOrder = 0
                  OnEnter = DBEdit1Enter
                  OnExit = DBEdit1Exit
                  OnKeyPress = EFILIACAOKeyPress
                end
                object ECIVIL: TDBComboBox
                  Left = 80
                  Top = 30
                  Width = 113
                  Height = 21
                  Color = clWhite
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
                  Top = 30
                  Width = 314
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  DataField = 'CONJUGE'
                  DataSource = dscliente2
                  TabOrder = 2
                  OnEnter = DBEdit1Enter
                  OnExit = DBEdit1Exit
                  OnKeyPress = ECONJUGEKeyPress
                end
                object DBEdit20: TDBEdit
                  Left = 192
                  Top = 55
                  Width = 604
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  Ctl3D = True
                  DataField = 'REF1'
                  DataSource = dscliente2
                  ParentCtl3D = False
                  TabOrder = 5
                  OnEnter = DBEdit1Enter
                  OnExit = DBEdit1Exit
                  OnKeyPress = DBEdit1KeyPress
                end
                object DBEdit21: TDBEdit
                  Left = 192
                  Top = 79
                  Width = 604
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
                  Ctl3D = True
                  DataField = 'REF2'
                  DataSource = dscliente2
                  ParentCtl3D = False
                  TabOrder = 6
                  OnEnter = DBEdit1Enter
                  OnExit = DBEdit1Exit
                  OnKeyPress = DBEdit21KeyPress
                end
                object lconvenio: TGroupBox
                  Left = 594
                  Top = 1
                  Width = 206
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
                    Color = clWhite
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
                    Width = 125
                    Height = 21
                    Color = clWhite
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
                  Top = 54
                  Width = 41
                  Height = 21
                  Style = csDropDownList
                  CharCase = ecUpperCase
                  Color = clWhite
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
                  Top = 80
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
              Top = 0
              Width = 806
              Height = 192
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
                Width = 806
                Height = 192
                Align = alClient
                BevelOuter = bvNone
                Color = clWhite
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
                  Color = clWhite
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
                  Color = clWhite
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
                  TabOrder = 3
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
                  Color = clWhite
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
                    702E6969643A3430323841384634374538393131453741343046454642393736
                    3543463639432220786D704D4D3A446F63756D656E7449443D22786D702E6469
                    643A343032384138463537453839313145374134304645464239373635434636
                    3943223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
                    7374616E636549443D22786D702E6969643A3430323841384632374538393131
                    453741343046454642393736354346363943222073745265663A646F63756D65
                    6E7449443D22786D702E6469643A343032384138463337453839313145374134
                    3046454642393736354346363943222F3E203C2F7264663A4465736372697074
                    696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
                    7061636B657420656E643D2272223F3EC5E9A4C9000004724944415478DAAC55
                    4D6F1C45107DD33DDFFBE5FD74BC1BC776B02C458EA38448510C42C0294211C2
                    481C38209413E7902B07B8700029F20FE0C629C7200428678438808248E22042
                    E28418AFBDB3B677777677666766679AEAB640FC005A6A69A6BBEA75D57B55DD
                    DA956B1FC34C32082D0532014DD39164518E25E95B4EA1F186E0EC5C120DE640
                    C3B04A7B5A9ADD0B87DE7799C1BF32983516620AC1189860880D061DFF19594A
                    A069FCBE55AA7D34DB5C5BE18683BEF7184EA17ABC9F24F599C6F2B93409DFEB
                    B4EF3F4A06079F82F32F3502FC67F0E5F3AF816780C82280E99BB30B2F7ED65C
                    B85CB5F30DEC6DFF80526D897C4CE8046EBB651CED3FC4ECA94B285716ABDCB2
                    DE1E8F3A33224BEF30CD40CA352868914D29557ED3C9D5AE1B561E5C37E13DFF
                    5901D4E6CE51D06335E5B75C937BD246DA3AB9FA754EBE12434578FAC2EBC024
                    7CB7D65ABB596FADA1E7FD81C1E13646835D94CA0B604CC778B80F213298661E
                    E934C2A1F71B82A1877832C4895317A5CDFAB0DFFE3D33CD077C65E962C1A934
                    BE9E9BBF58E0DC40B1BA84C9B84B0080E4C6EF3DA3F37C24718870EC296041E2
                    59760127162F83691A1CB78251E0BDA40DC75FE82C1357CBF5179A3AB73189FA
                    D0F594C499A23A77066EAE8E2CCB70D4D952E9546657291A86800E1C1E3D2791
                    424CA713D8561112A3DBFBE92AE3A5E2869B6B604A9B8C1994868F348D61D001
                    09F12653267ED594DF724DEE491B692B7DA6498C5C7E1670ED0DDD72CBAB8E5B
                    A3A8248881241A51940ECC5C0582D64C2B0749851CF29BEA0A9A549D6C04F162
                    3925F24DC8970472ABAB3AB1DCE8B67F5569CA08A289E42BC0D1DE034A97D427
                    3527A3AE02DCDFBD0B318DFFB5EB1F3E255E0F951DE3BAAC9606958DC0F1FC7F
                    860E6E78F5E6F9864C99516AA3FE2E29BB83CADC5995B26116E0EDFEA28C1BCD
                    0B14FD50A52C552F96E7919F69A994A5EFD8F73C3D0A7A5B61707056D72C2408
                    A8A735522E04ADABD4B86E43D5906CBD2C21012264D158D948DB281C50777044
                    C2C72438DA62E9C0BF1D507D31C3545C38F91AB8E9208E864AC9C191ACC39E9A
                    F25BA94B7BD246DA2AFE0C8A6ED4810826B7F58C69DFF4BA4FDAC5D2A9A66597
                    1045240A15F281BF0F5796029D3F25103902DF9371222067DD705545489F348D
                    20310461F1A5F52B71E6FB6DCED83B493AC1417B0B566E86C48F51271E6B3493
                    C980DA2E87E6E2BA2AA131B59D456535E86E53376918F788F7EE9F1F4439FBAE
                    AE133DDCB26F75DBF72EB9A5D687F3CBAFC07666F017DD34BD83C728944FAAB4
                    E460E42CD7DC7C1D274FBF4C34F4B1F3F87B0483DD4D6EB9B74C68E0AB747D09
                    9D93B57647C461893A75DDA4562A561671D8794805A591AA9CC4B10860404AB6
                    D15A7E55A57BD0A14BA2BFB3290CFD86463C1A241E5F2140EDF87CBAA2C23B61
                    AFFD7434DA5FD5B959CD955BF00F49882C563D1B8D7B544E67108E3CB49FFDF8
                    68D07972832E8BCF9961536B1E57B3F6E6B54F20FF045D028863E284BA809E00
                    3ECD366C7A02A822D6D2D0574F00778A7BD479F763BFF36D4A4F00A727409374
                    98A6BA996479FD2DC000FDB248C50F83E61A0000000049454E44AE426082}
                  Transparent = True
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
              Top = 0
              Width = 806
              Height = 192
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
                Width = 806
                Height = 192
                Align = alClient
                BevelOuter = bvNone
                Color = clWhite
                ParentBackground = False
                TabOrder = 0
                object DBEdit22: TDBEdit
                  Left = 7
                  Top = 8
                  Width = 761
                  Height = 21
                  CharCase = ecUpperCase
                  Color = clWhite
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
                  Color = clWhite
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
                  Color = clWhite
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
                  Color = clWhite
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
              Top = 0
              Width = 806
              Height = 192
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
                Width = 806
                Height = 192
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
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
                    Color = clWhite
                    DataField = 'RESP2_PROFISSAO'
                    DataSource = dscliente2
                    TabOrder = 2
                    OnEnter = DBEdit1Enter
                    OnExit = DBEdit1Exit
                    OnKeyPress = DBEdit1KeyPress
                  end
                  object DBEdit44: TDBEdit
                    Left = 58
                    Top = 52
                    Width = 144
                    Height = 21
                    CharCase = ecUpperCase
                    Color = clWhite
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
                    Color = clWhite
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
          Top = 1
          Width = 806
          Height = 464
          Caption = 'Financeiro'
          Color = clWhite
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          ParentColor = False
          TabColor = 4227327
          TabWidth = 0
          TransparentColor = clNone
          object ViewSplit1: TViewSplit
            Left = 0
            Top = 0
            Height = 464
            ExplicitLeft = 235
            ExplicitHeight = 351
          end
          object FlipView1: TFlipView
            Left = 0
            Top = 0
            Width = 235
            Height = 305
            Margins.Bottom = 4
            Margins.Left = 4
            Margins.Right = 4
            Margins.Top = 4
            AdaptiveColors = True
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
              Top = 268
              Width = 227
              Height = 3
              Cursor = crVSplit
              Align = alTop
              ExplicitTop = 299
            end
            object Label4: TLabel
              Left = 8
              Top = 281
              Width = 89
              Height = 13
              Caption = 'TOTAL/COMPRAS:'
            end
            object LTOTAL: TLabel
              Left = 111
              Top = 275
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
              Height = 246
              Selected.Strings = (
                'CODIGO'#9'8'#9'CODIGO'
                'CODCAIXA'#9'5'#9'CAIXA'
                'CODVENDEDOR'#9'5'#9'VENDEDOR'
                'DATA'#9'15'#9'DATA'
                'CODCLIENTE'#9'5'#9'CLIENTE'
                'OBS'#9'50'#9'OBS'
                'MEIO_DINHEIRO'#9'10'#9'MEIO DINHEIRO'
                'MEIO_CHEQUEAV'#9'10'#9'MEIO_CHEQUEAV'
                'MEIO_CHEQUEAP'#9'10'#9'MEIO_CHEQUEAP'
                'MEIO_CARTAOCRED'#9'10'#9'MEIO_CARTAOCRED'
                'MEIO_CARTAODEB'#9'10'#9'MEIO_CARTAODEB'
                'MEIO_CREDIARIO'#9'10'#9'MEIO_CREDIARIO'
                'SUBTOTAL'#9'10'#9'SUBTOTAL'
                'DESCONTO'#9'10'#9'DESCONTO'
                'ACRESCIMO'#9'10'#9'ACRESCIMO'
                'TOTAL'#9'10'#9'TOTAL'
                'CUPOM_FISCAL'#9'10'#9'CUPOM_FISCAL'
                'NUMERO_CUPOM_FISCAL'#9'10'#9'NUMERO_CUPOM_FISCAL'
                'RETIRADO'#9'50'#9'RETIRADO'
                'MEIO_CONVENIO'#9'10'#9'MEIO_CONVENIO'
                'P5'#9'10'#9'P5'
                'P3'#9'10'#9'P3'
                'MEIO_FINANCEIRA'#9'10'#9'MEIO_FINANCEIRA'
                'COD_FINANCEIRA'#9'10'#9'COD_FINANCEIRA'
                'COD_FINANCEIRA_LANCTO'#9'10'#9'COD_FINANCEIRA_LANCTO'
                'COD_FINANCEIRA_LACTO'#9'10'#9'COD_FINANCEIRA_LACTO'
                'CODCONVENIO'#9'10'#9'CODCONVENIO'
                'SITUACAO'#9'10'#9'SITUACAO'
                'CODTRANSPORTADOR'#9'10'#9'CODTRANSPORTADOR'
                'CODVEICULO'#9'10'#9'CODVEICULO'
                'FRETE_VALOR'#9'10'#9'FRETE_VALOR'
                'FRETE_OBS'#9'80'#9'FRETE_OBS'
                'FRETE_LANCAR'#9'10'#9'FRETE_LANCAR'
                'ECF_SERIAL'#9'30'#9'ECF_SERIAL'
                'CODNFSAIDA'#9'10'#9'CODNFSAIDA'
                'ATACADO_VAREJO'#9'10'#9'ATACADO_VAREJO'
                'NRVENDA'#9'6'#9'NRVENDA'
                'FILTRO'#9'10'#9'FILTRO')
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
            Height = 128
            Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
            TabOrder = 1
            object wwDBGrid2: TwwDBGrid
              Left = 10
              Top = 14
              Width = 535
              Height = 109
              Selected.Strings = (
                'CODPRODUTO'#9'6'#9'C'#211'DIGO'
                'PRODUTO'#9'55'#9'PRODUTO'
                'UNIDADE'#9'5'#9'UN.'
                'QTDE'#9'9'#9'QTDE'
                'UNITARIO'#9'9'#9'PRE'#199'O'
                'TOTAL'#9'9'#9'TOTAL'
                'SERIAL'#9'14'#9'SERIAL')
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
            Top = 137
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
                    'situacao2'#9'3'#9'?'
                    'juros'#9'6'#9'JUROS'
                    'CODIGO'#9'12'#9'CODIGO'
                    'CODVENDA'#9'10'#9'VENDA'
                    'CODVENDEDOR'#9'6'#9'VENDEDOR'
                    'CODCAIXA'#9'6'#9'CAIXA'
                    'CODCLIENTE'#9'6'#9'CLIENTE'
                    'DATA_EMISSAO'#9'18'#9'DATA EMISS'#195'O'
                    'DATA_VENCIMENTO'#9'18'#9'DATA VENCIMENTO'
                    'DATA_PAGAMENTO'#9'18'#9'DATA PAGAMENTO'
                    'VALOR_ORIGINAL'#9'10'#9'VALOR_ORIGINAL'
                    'VALOR_PAGO'#9'10'#9'VALOR_PAGO'
                    'VALOR_JUROS'#9'10'#9'VALOR_JUROS'
                    'VALOR_ATUAL'#9'10'#9'VALOR_ATUAL'
                    'VALOR_DESCONTO'#9'10'#9'VALOR_DESCONTO'
                    'DOCUMENTO'#9'20'#9'DOCUMENTO'
                    'TIPO'#9'20'#9'TIPO'
                    'SITUACAO'#9'10'#9'SITUACAO'
                    'FILTRO'#9'10'#9'FILTRO'
                    'NOSSONUMERO'#9'30'#9'NOSSONUMERO'
                    'CODREGIAO'#9'6'#9'CODREGIAO'
                    'CODCEDENTE'#9'6'#9'CODCEDENTE'
                    'P5'#9'10'#9'P5'
                    'P3'#9'10'#9'P3'
                    'NUMERO_CUPOM'#9'10'#9'NUMERO_CUPOM'
                    'VALOR_VENDA'#9'10'#9'VALOR_VENDA'
                    'COD_VENDA_ORIGINAL'#9'10'#9'COD_VENDA_ORIGINAL'
                    'VALOR_ATUAL_ANTERIOR'#9'10'#9'VALOR_ATUAL_ANTERIOR'
                    'EMAIL_ENVIADO'#9'10'#9'EMAIL_ENVIADO')
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
                    'CODIGO'#9'12'#9'CODIGO'
                    'CODVENDA'#9'10'#9'VENDA'
                    'CODVENDEDOR'#9'6'#9'VENDEDOR'
                    'DIAS'#9'4'#9'DIAS'
                    'RESTANTE'#9'8'#9'RESTANTE'
                    'CODCAIXA'#9'6'#9'CAIXA'
                    'CODCLIENTE'#9'6'#9'CLIENTE'
                    'DATA_EMISSAO'#9'18'#9'DATA EMISS'#195'O'
                    'DATA_VENCIMENTO'#9'18'#9'DATA VENCIMENTO'
                    'DATA_PAGAMENTO'#9'18'#9'DATA PAGAMENTO'
                    'VALOR_ORIGINAL'#9'10'#9'VALOR_ORIGINAL'
                    'VALOR_PAGO'#9'10'#9'VALOR_PAGO'
                    'VALOR_JUROS'#9'10'#9'VALOR_JUROS'
                    'VALOR_ATUAL'#9'10'#9'VALOR_ATUAL'
                    'VALOR_DESCONTO'#9'10'#9'VALOR_DESCONTO'
                    'DOCUMENTO'#9'20'#9'DOCUMENTO'
                    'TIPO'#9'20'#9'TIPO'
                    'SITUACAO'#9'10'#9'SITUACAO'
                    'FILTRO'#9'10'#9'FILTRO'
                    'NOSSONUMERO'#9'30'#9'NOSSONUMERO'
                    'CODREGIAO'#9'6'#9'CODREGIAO'
                    'CODCEDENTE'#9'6'#9'CODCEDENTE'
                    'P5'#9'10'#9'P5'
                    'P3'#9'10'#9'P3'
                    'NUMERO_CUPOM'#9'10'#9'NUMERO_CUPOM'
                    'VALOR_VENDA'#9'10'#9'VALOR_VENDA'
                    'COD_VENDA_ORIGINAL'#9'10'#9'COD_VENDA_ORIGINAL'
                    'VALOR_ATUAL_ANTERIOR'#9'10'#9'VALOR_ATUAL_ANTERIOR'
                    'EMAIL_ENVIADO'#9'10'#9'EMAIL_ENVIADO')
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
            Top = 328
            Width = 844
            Height = 53
            AdaptiveColors = False
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
              Width = 844
              Height = 37
              Selected.Strings = (
                'SUM_0'#9'9'#9'Janeiro'
                'SUM'#9'8'#9'Feveiro'
                'SUM_1'#9'8'#9'Mar'#231'o'
                'SUM_2'#9'8'#9'Abril'
                'SUM_3'#9'8'#9'Maio'
                'SUM_4'#9'8'#9'Junho'
                'SUM_5'#9'8'#9'Julho'
                'SUM_6'#9'8'#9'Agosto'
                'SUM_7'#9'8'#9'Setembro'
                'SUM_8'#9'9'#9'Outubro'
                'SUM_9'#9'9'#9'Novembro'
                'SUM_10'#9'9'#9'Dezembro')
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
              ExplicitWidth = 842
              ExplicitHeight = 35
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
          Top = 1
          Width = 806
          Height = 464
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
            Width = 806
            Height = 464
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
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
                Left = 9
                Top = 198
                Width = 154
                Height = 42
                Caption = 'Excluir Autorizados'
                Glyph.Data = {
                  CE0C0000424DCE0C00000000000036000000280000001A0000001F0000000100
                  200000000000980C0000000000000000000000000000000000004AA020004AA0
                  20004AA020004BA0211D4DA122C94DA223FB4DA223F44DA223F24DA223F24DA2
                  23F24DA223F24DA223F24DA223F24DA223F24DA223F24DA223F24DA223F24DA2
                  23F24DA223F24DA223F44DA223FB4DA122C94BA0211D4AA020004AA020004AA0
                  20000482030004820300007F0000399A1AA056A627FF4DA223FF4DA223FF4DA2
                  23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
                  23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF56A627FF399A1AA0007F
                  0000048203000482030035991700359917003398160047A020C250A325FF4DA2
                  23FF4DA223FF4AA01EFF4CA222FF4DA223FF4DA223FF4DA224FF4BA120FF4BA1
                  20FF4DA224FF4DA223FF4DA223FF4CA222FF4AA01EFF4DA223FF4DA223FF50A3
                  25FF47A020C233981600359917003599170053A3230053A3230054A323004FA2
                  23CA4CA223FF4DA222FF4DA224FF53A52CFF4EA325FF4CA222FF4DA223FF4CA1
                  21FF51A42AFF51A42AFF4CA121FF4DA223FF4CA222FF4EA325FF53A52CFF4DA2
                  23FF4DA223FF4CA223FF4FA223CA54A3230053A3230053A32300499F2200499F
                  2200499F22014CA123D24EA223FF4BA120FF4FA327FF6FB65CFF55A730FF49A0
                  1DFF4DA223FF479F19FF66B14EFF66B14EFF479F19FF4DA223FF49A01DFF55A7
                  30FF6FB65CFF4FA327FF4BA120FF4EA223FF4CA123D2499F2201499F2200499F
                  22004C9F21004C9F21004C9F21084DA122D94DA223FF4BA120FF4FA327FF70B7
                  5FFF55A731FF49A01DFF4DA223FF479E18FF68B250FF68B250FF479E18FF4DA2
                  23FF49A01DFF55A731FF70B75FFF4FA327FF4BA120FF4DA223FF4DA122D94C9F
                  21084C9F21004C9F21004DA221004DA221004DA221104DA222E04DA223FF4BA1
                  20FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B1
                  4EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA2
                  23FF4DA222E04DA221104DA221004DA221004BA222004BA222004BA222184CA2
                  23E84DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E
                  19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA3
                  27FF4BA120FF4DA223FF4CA223E84BA222184BA222004BA222004CA122004CA1
                  22004CA122214DA223F04DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A0
                  1DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A7
                  30FF70B75DFF4FA327FF4BA120FF4DA223FF4DA223F04CA122214CA122004CA1
                  22004CA123004CA123004CA123284DA223F74DA223FF4BA120FF4FA327FF70B7
                  5DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA2
                  23FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA223F74CA1
                  23284CA123004CA123004CA222004CA222004CA222304DA223FF4DA223FF4BA1
                  20FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B1
                  4EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA2
                  23FF4DA223FF4CA222304CA222004CA222004CA222004CA222004CA222384DA2
                  23FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E
                  19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA3
                  27FF4BA120FF4DA223FF4DA223FF4CA222384CA222004CA222004EA225004EA2
                  25004DA2243F4DA222FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A0
                  1DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A7
                  30FF70B75DFF4FA327FF4BA120FF4DA223FF4DA222FF4DA2243F4EA225004EA2
                  250049A01C0048A01B004AA01E484DA224FF4DA223FF4BA120FF4FA327FF70B7
                  5DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA2
                  23FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA224FF4AA0
                  1E4848A01B0049A01C0034980300319700003C9B0D4F50A327FF4DA223FF4BA1
                  20FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B1
                  4EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA2
                  23FF50A327FF3C9B0D4F3197000034980300439B1D00429A1C00469D1F594EA3
                  24FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E
                  19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA3
                  27FF4BA120FF4DA223FF4EA324FF469D1F59429A1C00439B1D004A9D1F004A9C
                  1E004B9F20644DA323FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A0
                  1DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A7
                  30FF70B75DFF4FA327FF4BA120FF4DA223FF4DA323FF4B9F20644A9C1E004A9D
                  1F004C9F21004C9F21004CA0226E4DA223FF4DA223FF4BA120FF4FA327FF70B7
                  5DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B14EFF479E19FF4DA2
                  23FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA223FF4DA223FF4CA0
                  226E4C9F21004C9F21004AA121004AA121004BA122784DA223FF4DA223FF4BA1
                  20FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E19FF67B14EFF67B1
                  4EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA327FF4BA120FF4DA2
                  23FF4DA223FF4BA122784AA121004AA121004CA121004CA121004CA122824DA2
                  23FF4DA223FF4BA120FF4FA327FF70B75DFF55A730FF49A01DFF4DA223FF479E
                  19FF67B14EFF67B14EFF479E19FF4DA223FF49A01DFF55A730FF70B75DFF4FA3
                  27FF4BA120FF4DA223FF4DA223FF4CA122824CA121004CA121004CA022004CA0
                  22004CA1228C4DA223FF4DA223FF4BA120FF4FA327FF70B75EFF55A731FF49A0
                  1DFF4DA223FF479E19FF68B24FFF68B24FFF479E19FF4DA223FF49A01DFF55A7
                  31FF70B75EFF4FA327FF4BA120FF4DA223FF4DA223FF4CA1228C4CA022004CA0
                  22004CA023004CA023004CA123964DA223FF4DA223FF4BA120FF4FA327FF72B8
                  61FF56A731FF49A01CFF4DA223FF469E18FF69B352FF69B352FF469E18FF4DA2
                  23FF49A01CFF56A731FF72B861FF4FA327FF4BA120FF4DA223FF4DA223FF4CA1
                  23964CA023004CA023004DA222004DA222004DA222A04DA223FF4DA223FF4CA2
                  22FF4EA224FF58A936FF50A427FF4CA121FF4DA223FF4BA120FF55A731FF55A7
                  31FF4BA120FF4DA223FF4CA121FF50A427FF58A936FF4EA224FF4CA222FF4DA2
                  23FF4DA223FF4DA222A04DA222004DA2220049A720004CA022004CA122AB4DA2
                  23FF4DA223FF4DA223FF4DA223FF489F1CFF4CA121FF4DA224FF4DA223FF4EA2
                  24FF4AA01DFF4AA01DFF4EA224FF4DA223FF4DA224FF4CA121FF489F1CFF4DA2
                  23FF4DA223FF4DA223FF4DA223FF4CA122AB4CA0220049A720005395250048AA
                  20004DA122B64DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
                  23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA2
                  23FF4DA223FF4DA223FF4DA223FF4DA223FF4DA223FF4DA122B648AB20005394
                  25006E5E35005394270045AF1FBF49AB21FF49AA21FF49AA21FF49AA21FF49AA
                  21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA
                  21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AA21FF49AB21FF45AF
                  1FBF539427006F5D35006F5C354F6E60356A578D28E4549427FF569028FF5690
                  28FF569028FF569028FF569029FF569028FF569028FF569028FF569028FF5690
                  28FF569028FF569028FF579028FF569028FF569028FF569028FF569028FF5690
                  28FF549427FF578D28E46E60356A6F5C354F6B6433B96E6035FC705B36CF6F5C
                  36C66F5C36C96F5C36C6705C36CD6F5C36FA6F5C35D0705C36C46F5C36C96F5C
                  36C96F5C36C96F5C36C96F5C36C9705C36C26E5B36D56F5C36FA705C36C96F5C
                  36C76F5C36C96F5C36C96F5C36C6705B36CF6E6035FC6B6433B96B6333006C63
                  34006C6334006C6334006C6334006D6435006F6335026D6234D86A62315D6B62
                  33006C6334006C6334006C6334006C6334006C6334006B6233006A6232756D62
                  34CF6F6335006D6435006C6334006C6334006C6334006C6334006C6334006B63
                  33006B6333006C6334006C6334006C6334006D64350067613200605D2F006761
                  328E6C6335F56661322C6C63341C6C6334256C6334256C6334256C63341B6A60
                  313A6D6334FF66603279605D2F00686132006D6435006C6334006C6334006C63
                  34006C6334006B6333006B6333006C6334006C6334006C6334006F643500625F
                  3000565A2B00615D2F026D6233A86C6334FF6C6334F06C6334EF6C6334EF6C63
                  34EF6C6334F06C6334FD6D623397605D2F00565A2B00646031006F6435006C63
                  34006C6334006C6334006C6334006B633300}
                TabOrder = 2
                OnClick = btExcluiPessoasautorizadasClick
                SkinData.SkinSection = 'BUTTON'
              end
            end
          end
        end
        object PageSheet11: TPageSheet
          Left = 1
          Top = 1
          Width = 806
          Height = 464
          Caption = 'Compra'
          Color = clWhite
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
              Color = clWhite
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
              Color = clWhite
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
              Color = clWhite
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
          Top = 1
          Width = 806
          Height = 464
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
            Left = 0
            Top = 0
            Width = 806
            Height = 464
            Align = alClient
            Caption = 'Servi'#231'os Realizados Periodicamente'
            Color = clWhite
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
              Left = 298
              Top = 327
              Width = 225
              Height = 41
              Caption = 'Imprimir'
              Glyph.Data = {
                460E0000424D460E00000000000036000000280000001E0000001E0000000100
                200000000000100E000000000000000000000000000000000000FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF000000000042424200F9CA9000F9CA9000F9CA9000F9CA90A8F9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90A8F9CA9000F9CA9000F9CA90004242420000000000FFFFFF00FFFFFF000000
                00004242420042424200F9CA9000F9CA9000F9CA90A8F9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90A8F9CA9000F9CA
                9000424242004242420000000000FFFFFF00FFFFFF0000000000424242004242
                420042424200F9CA9000F9CA90A8F9CA90FFF9CA90FFECAD67FFD27619FFD276
                19FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFECAD67FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90A8F9CA900042424200424242004242
                420000000000FFFFFF00FFFFFF00000000004242420042424200424242004242
                4200F9CA90A8F9CA90FFF9CA90FFF4C082FFECAD67FFECAD67FFECAD67FFECAD
                67FFECAD67FFECAD67FFECAD67FFECAD67FFF4C082FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90A84242420042424200424242004242420000000000FFFF
                FF00FFFFFF000000000042424232424242A7424242F9424242FFBB9C75FFF9CA
                90FFF9CA90FFF4C082FFECAD67FFECAD67FFECAD67FFECAD67FFECAD67FFECAD
                67FFECAD67FFECAD67FFECAD67FFECAD67FFECAD67FFF9CA90FFF9CA90FFBB9C
                75FF424242FF424242F9424242A74242423200000000FFFFFF00FFFFFF000000
                0001424242DB424242FF424242FF424242FFBB9C75FFF9CA90FFF9CA90FFECAD
                67FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFD27619FFD276
                19FFD27619FFD27619FFD27619FFF9CA90FFF9CA90FFBB9C75FF424242FF4242
                42FF424242FF424242DB00000001FFFFFF00FFFFFF0043434341424242FF4242
                42FF424242FF424242FFBB9C75FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFBB9C75FF424242FF424242FF424242FF4242
                42FF43434341FFFFFF00FFFFFF0043434358424242FF424242FF424242FF3636
                36FF9D7543FFC98F47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F
                47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F47FFC98F
                47FFC98F47FF9D7543FF363636FF424242FF424242FF424242FF43434358FFFF
                FF00FFFFFF0043434358424242FF424242FF424242FF282828FF7E5C31FFAE79
                38FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FFAE79
                38FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FFAE7938FF7E5C
                31FF282828FF424242FF424242FF424242FF43434358FFFFFF00FFFFFF004343
                4358424242FF424242FF424242FF3E3E3EFF383838FF383838FF383838FF3838
                38FF383838FF383838FF383838FF383838FF383838FF383838FF383838FF3838
                38FF383838FF383838FF383838FF383838FF383838FF383838FF3E3E3EFF4242
                42FF424242FF424242FF43434358FFFFFF00FFFFFF0043434358424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
                42FF43434358FFFFFF00FFFFFF004B4B4B7D424242FF424242FF424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF424242FF4242
                42FF424242FF424242FF424242FF424242FF424242FF424242FF4B4B4B7DFFFF
                FF00FFFFFF0060606058616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF60606058FFFFFF00FFFFFF006060
                6058616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF60606058FFFFFF00FFFFFF0060606058616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF60606058FFFFFF00FFFFFF0060606058616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF69943CFF62685CFF616161FF60606058FFFF
                FF00FFFFFF0063636324616161FE616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF69943CFF62685CFF616161FE63636324FFFFFF00FFFFFF006363
                6300616161B3616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161FF616161FF616161FF616161FF616161FF616161FF6161
                61FF616161FF616161B363636300FFFFFF00FFFFFF0055555500555555036161
                614F616161A15D5D5DC6877A6AD39C8971DA9C8971DA9C8971DA9C8971DA9C89
                71DA9C8971DA9C8971DA9C8971DA9C8971DA9C8971DA9C8971DA9C8971DA9C89
                71DA9C8971DA9C8971DA9C8971DA877A6AD35D5D5DC6616161A16161614F5555
                550355555500FFFFFF00FFFFFF00555555005555550061616100616161004242
                42FFBB9C75FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFBB9C75FF424242FF61616100616161005555550055555500FFFF
                FF00FFFFFF0055555500555555006161610041414100414141A8CBA87DE1F9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFCBA8
                7DE1414141A841414100616161005555550055555500FFFFFF00FFFFFF005555
                550055555500616161004141410041414100F9CA90A8F9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90A8414141004141
                4100616161005555550055555500FFFFFF00FFFFFF005555550055555500F9CA
                9000F9CA9000F9CA9000F9CA90A8F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90A8F9CA9000F9CA9000F9CA90005555
                550055555500FFFFFF00FFFFFF00F9CA9000F9CA9000F9CA9000F9CA9000F9CA
                9000F9CA90A8F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90A8F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000FFFF
                FF00FFFFFF00F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000F9CA90A8F9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
                90A8F9CA9000F9CA9000F9CA9000F9CA9000F9CA9000FFFFFF00FFFFFF00FBC9
                8F00FBC98F00FBC98F00FBC98F00FBC98F00FBC98F39F9CB9158F9CB9158F9CB
                9158F9CB9158F9CB9158F9CB9158F9CB9158F9CB9158F9CB9158F9CB9158F9CB
                9158F9CB9158F9CB9158F9CB9158F9CB9158F9CB9158FBC98F39FBC98F00FBC9
                8F00FBC98F00FBC98F00FBC98F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00}
              TabOrder = 2
              OnClick = btImprimirServicosClick
              SkinData.SkinSection = 'BUTTON'
            end
          end
        end
        object PageSheet9: TPageSheet
          Left = 1
          Top = 1
          Width = 806
          Height = 464
          Caption = 'Hist'#243'rico'
          Color = clWhite
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 5
          ParentColor = False
          TabColor = 4227327
          TabWidth = 0
          TransparentColor = clNone
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 806
            Height = 464
            Align = alClient
            Color = clWhite
            DataField = 'HISTORICO'
            DataSource = dscliente2
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object PageSheet12: TPageSheet
          Left = 1
          Top = 1
          Width = 806
          Height = 464
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
            Width = 806
            Height = 464
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object RzPanel9: TRzPanel
              Left = 230
              Top = 35
              Width = 192
              Height = 257
              BorderOuter = fsNone
              BorderColor = clGradientActiveCaption
              BorderWidth = 1
              Color = clWhite
              TabOrder = 0
              object Image2: TImage
                Left = 5
                Top = 6
                Width = 181
                Height = 181
                Stretch = True
              end
              object btn101: TAdvGlowButton
                Left = 7
                Top = 198
                Width = 33
                Height = 36
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                Picture.Data = {
                  89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
                  A200000009704859730000093A0000093A01F064924A000000206348524D0000
                  7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
                  1F900000048C4944415478DAC4974B68546714C77FE7E64EE63D138D31D81863
                  0C3ED0B4052DB40B69A158A12EA450BA69BB6AB295D645C58D844A0BAD05A948
                  5756BB287651E8C68D20EE8AA0F8008DF8484D4CA2959AC9A899C79D3B797CA7
                  8B9B99DC3BCD8C232EBC70E17EE79EF3FF7FE771CFF9AEA82AAFE2B2784597ED
                  5F7C73FC74F5B934EF10CD3DC25DD185A56054F8FEAB013970ECD42611DD21CA
                  5B002A5C5195AB47BEFC62E4E04F27D512C508449EFE4329F51A513B56C51CDA
                  F7D9F2C40DAE37801F0F1E3BF90E90C2971D51109483C74EE6808BC0D7C08D97
                  0DB50D1C32C86584DD40AA816E0A61B7412E03879EE75423E26DA5B6AE4BA81C
                  065A5F207DADA81C2EB5755D02B6359563FFEEC5B2CE02DDB52F5CD7C5291670
                  8A450062F138B17882482412D013643B969C05FA815C43E299F9565A250F628E
                  0A12202D97CB4C8C8D92CFE796DD693299A267431FE170D82FEE2E99D251D41A
                  9CD5E4733DFE509001BF209BC93039711F630C44D268FB4634EDED4B661E20D9
                  BFC9E767B8357C9D753DBDB47774F83D1F50F81338DB88382A624E805405C542
                  8189F13154417B7662B6EC057BC92B05982F63DD398399B8C0C4F81891689478
                  22B1442EE604CA46A0B46C714524B71DA4ABB236C6303E760F55C56CDE83E9FF
                  A44ADA22DEED6D3F8CE9FF04B3790FAACAF8D83D2F3A4BD45D1E763D8F4577F8
                  BDCD6632B8AE8BB6AD43FB7601D016115EEFB0680B7B7ACFCACA70C6F0CC55B4
                  6F17FA7818F7D924D94C868ECECE1A6C2E2CEBB1C20EFFBA582C78F29E77412C
                  5644849D6B5B5811110A734A614EABB25848402C4FD7675B0FBB26C71278E954
                  8C170BA9BC008F0ACAC39C61CAF1DAD7EA98D095B4309561B3A8EBD410D762D7
                  1657E0139A9D9DF5761B6DF3C0E6946BFF2E040CA61C65CA599255742BB6F5B0
                  6B3BD770A0C4A35E8397FCA3A6DB5645B7625B0FDBAA49C415FF3296887B0F4F
                  EE37DF301775ABB675B003C4627135D037D35ED8ACD1F3E0CE3C9FD49DF1747D
                  B6F5B003C40B4603BB4AA7DB58D9DE0E730ED6F5D3305FAE4F3A5FF674E61C56
                  B6B793AE21AEC5AECDF16D9473818AE8E925140A21D37769F9EB07243B02FEE3
                  922A921DF1DE4DDF25140AD1DDD35B1BE673C0EDBA551D322D00830BB6194649
                  03D8B6CD96ADFD8CDF1F259FCB625DFC19EC309A5AEB8530F7B01A89642AC5FA
                  DE3E6CDBF68FA99996056BB0A589B1F840D0FD8A9CAA0ED870984D5BB692997A
                  4C66EA316EA9044F4617FBB01089C5E858DD49C7EACEFF5739BA1F78D0EC3CFE
                  15F808D8EB1756C08D3181796C5975CF136716B11A1F0442F949FFF2E39948FB
                  917038B20F91809E65592492C9FA85A63A5F2EBBC7D36EF6C08B9E4000CCCDEB
                  37DE8FC6A2F6FA0D7DC4E2F1A63E63A758647C6CD4764ACE7BE77FFF25D0E686
                  86869627BE3639E93BE25883086F964A0E776EDD64E5AA55241249E2F1049168
                  141159744E714B258AC50285429E27D3D3A82A02DB3FF874E073FB69ECB717F1
                  38A9F0ED52E4946C26433693A986BA1201A758AC99BD81D2FA0EF8032837242E
                  16AB45BFC66AD18EBA393086423EDF4CE4BB353DB706186FD6E3110B7D5BB136
                  BCCC6F8A60C69623F5CE05AFE8A7EDBF0100489FCFD1549F3653000000004945
                  4E44AE426082}
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
                Left = 83
                Top = 198
                Width = 33
                Height = 36
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                Picture.Data = {
                  89504E470D0A1A0A0000000D494844520000001E0000001F0806000000F06C7D
                  07000000097048597300000B1300000B1301009A9C18000000206348524D0000
                  7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
                  1F90000004134944415478DAE496BB6F1C5514C67FF731B3EF57B24012C77120
                  29620A9051102890A044042221220A28A082920A0989927F0151D15220A0A526
                  40010D110151F192120271429C5D7BBDCFD99D997B0FC5DA491CDB1B13D969B8
                  D2163BD2DC9FCE77BEF39D51D71ACDCBF97C76BF31A62B22ECE4514AE19C2B0D
                  06C3799BCF652B1F7CF8B1F9E5D78BD54AB9B8A3E076A7C7A3B38778F79DB72A
                  D658C36FBF5FE2FBF33F53AFD77614DC6CB6D05A61ACC18A08E57291FAEE2ABB
                  6A951D05B3C21211ECFA3E80F7D0EE6BFA91C218A8143CF9ACB09D165807761E
                  FA91E6F863439E3F1AD16C1BBEF82ECFB5A6A55CF0DB065F076E750CAF1CEFF3
                  FE9BCB98A20781A76647BCF7D12E9A1D4D21BB3D647DFB9F61ACA8141DAF9EEC
                  63B2C2F20D4BBB69993D1273E6E98851AC909D905A04AC19FF481522E36778C8
                  041EA5B6AFC76B2ACE86C262DBF0F5852C8442ADEEA83DE868DC307CF3630E6B
                  40ED44C55A41B9E0F9F45C91C148F3E2930396BA864FBE2CF2C77C40B5E8EF9E
                  4E7EDC0CD1EA3F480D640201A5F8EC5C81CFBF2AE005020BD5E258EA4D5DAD40
                  B9F1254A4089E0AD623353AC73B517088CB0AB7C6B6E577B3B6994542AD84498
                  9F2B92869AE90B5DCCC89366344AB600BE334CB614FE1E8291E7FA6C9E852305
                  442BBC86991FBA044321C9AA7570BBB59B41A51E1D7B5CD68CCD20B7FA130C3D
                  8DC339AECE95B0B1473BA1F5700E176A66CE7708234F92D39BBB7AB3B275E4F0
                  56D37FA48C4E3D2A959BF60E23C7E2C10CF373257422E8444020EC3BBA7B33FC
                  F96C856151130C3CB7CF84BE5BA5A69F8081E60BFBF9E7F543741EAF637A092A
                  F58403C7F2DE902B47CBA015269135F316448E5E3DE4D2892A83AA2118B89B92
                  4F94DA7612924AC8C2CB330C0E97312347F3F41402D4BFBD4EE7408EBF8E5510
                  AB3043BFE19087916358B15C3C51A5DCEB12447E32D87613867B72DC383BC368
                  4F9EA01D8380CF685A27A710A368E463D25013461E9960C4A0EF497386CBCF94
                  59762126BE732D2A504E30BD84C1A1320B670FE24A01B6938CAB51A0471E09A0
                  F5DC3EF4DF4B049D1E3E34A84999A6C00E3DA3826161AA7047C54AA112C1F462
                  3A73759A67A6F1A1C67493B5122A50C958AECC43556C2CF4E23E12DA0DE7F5F6
                  F774BA926A6AD55C4AA1628F1E39968EEFA5F1D201442B4C2FDD389C57E0CE80
                  99AE51C816207613E5BEE9E695D4D582C244292AF5344FED63F1F41438410FDD
                  E48DA08055F8548D42260FA314D9E2E2B43615AEBA3E3F9D2AA29FC8621ACD35
                  737AD7130156A3772BDC958464A9056693977BCB346A7BD04A6187A3116FBCFD
                  1AC7F2310531E0E4DE769FD1985921E90E48F5C6570CD298E9628D284D50579B
                  CDD603A54A35F066FC9577CF5F908C2B357AE2F64F929446AFBD6C358AC56E87
                  FB79B4525BC8EA9D82FFEFC016680325A07B9F9825A0FDEF006C4FB804D8C979
                  A20000000049454E44AE426082}
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
                Left = 153
                Top = 198
                Width = 33
                Height = 36
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 532
    Width = 949
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Color = 3552822
    ParentBackground = False
    TabOrder = 0
    object bincluir: TAdvGlowButton
      Left = 4
      Top = 4
      Width = 69
      Height = 49
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
      Left = 84
      Top = 4
      Width = 69
      Height = 49
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
      Left = 164
      Top = 4
      Width = 69
      Height = 49
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
      Left = 244
      Top = 4
      Width = 69
      Height = 49
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
    object brelatorios: TAdvGlowButton
      Left = 324
      Top = 4
      Width = 69
      Height = 49
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
      TabOrder = 4
      OnClick = brelatoriosClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = 4548219
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
      Left = 606
      Top = 3
      Width = 786
      Height = 57
      ParentColor = True
      Visible = False
      ColorHighLight = 3552822
      ColorShadow = 3552822
      TabOrder = 5
      object bgravar: TAdvGlowButton
        Left = 4
        Top = 2
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
        Appearance.BorderColorDown = 4548219
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
        Left = 84
        Top = 2
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
        Appearance.BorderColorDown = 4548219
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
    Top = 587
    Width = 949
    Height = 12
    Align = alBottom
    BevelOuter = bvNone
    Color = 3684661
    ParentBackground = False
    TabOrder = 1
  end
  object Panel7: TPanel
    Left = 1268
    Top = 52
    Width = 12
    Height = 553
    BevelOuter = bvNone
    Color = 3684661
    ParentBackground = False
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 5
      Top = 0
      Width = 36
      Height = 34
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
      DataSource = dscliente2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 43
      Top = 0
      Width = 36
      Height = 34
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
      DataSource = dscliente2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
  end
  object Pop1: TPopupMenu
    Left = 1461
    Top = 296
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
    Left = 1445
    Top = 344
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
    Left = 1501
    Top = 488
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 1517
    Top = 568
    object qrclienteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteAPELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrclienteENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrclienteCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrclienteUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrclienteCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TWideStringField
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
    object qrclienteTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrclienteTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrclienteTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrclienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrclienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrclienteRG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrclienteCPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteFILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrclienteESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrclienteCONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrclientePROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrclienteEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrclienteREF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrclienteREF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrclienteCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrclienteOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrclienteOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrclienteOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrclienteOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrclienteOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrclienteOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrclienteNASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrclienteCODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrclienteCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrclienteCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrclienteNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrclienteRG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrclienteRG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
    end
    object qrclienteSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrclientePREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object qrclienteCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrclienteIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrclienteTAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrclienteCORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrclienteCORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrclienteCORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrclienteCORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrclienteCORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrclienteCORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrclienteRG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrclienteRESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrclienteRESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrclienteRESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrclienteRESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrclienteRESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrclienteRESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrclienteRESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrclienteRESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrclienteRESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrclienteRESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrclienteFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrclienteCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
    object qrclienteTOTALGERAL: TWideStringField
      FieldName = 'TOTALGERAL'
      Size = 30
    end
    object qrclienteFOTO2: TWideMemoField
      FieldName = 'FOTO2'
      BlobType = ftWideMemo
    end
    object qrclienteCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object qrclienteCODLOCAL: TWideStringField
      FieldName = 'CODLOCAL'
      Size = 10
    end
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 1309
    Top = 424
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 1501
    Top = 640
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000048 order by data,codigo')
    Params = <>
    Left = 1477
    Top = 552
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
    Left = 1304
    Top = 584
  end
  object qrvenda_mes: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
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
    Left = 1461
    Top = 504
    object qrvenda_mesSUM_0: TExtendedField
      DisplayLabel = 'Janeiro'
      DisplayWidth = 9
      FieldName = 'SUM_0'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM: TExtendedField
      DisplayLabel = 'Feveiro'
      DisplayWidth = 8
      FieldName = 'SUM'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_1: TExtendedField
      DisplayLabel = 'Mar'#231'o'
      DisplayWidth = 8
      FieldName = 'SUM_1'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_2: TExtendedField
      DisplayLabel = 'Abril'
      DisplayWidth = 8
      FieldName = 'SUM_2'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_3: TExtendedField
      DisplayLabel = 'Maio'
      DisplayWidth = 8
      FieldName = 'SUM_3'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_4: TExtendedField
      DisplayLabel = 'Junho'
      DisplayWidth = 8
      FieldName = 'SUM_4'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_5: TExtendedField
      DisplayLabel = 'Julho'
      DisplayWidth = 8
      FieldName = 'SUM_5'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_6: TExtendedField
      DisplayLabel = 'Agosto'
      DisplayWidth = 8
      FieldName = 'SUM_6'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_7: TExtendedField
      DisplayLabel = 'Setembro'
      DisplayWidth = 8
      FieldName = 'SUM_7'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_8: TExtendedField
      DisplayLabel = 'Outubro'
      DisplayWidth = 9
      FieldName = 'SUM_8'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_9: TExtendedField
      DisplayLabel = 'Novembro'
      DisplayWidth = 9
      FieldName = 'SUM_9'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesSUM_10: TExtendedField
      DisplayLabel = 'Dezembro'
      DisplayWidth = 9
      FieldName = 'SUM_10'
      ReadOnly = True
      Precision = 19
    end
    object qrvenda_mesCOLUMN_0: TStringField
      FieldKind = fkCalculated
      FieldName = 'COLUMN_0'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_1: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_1'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_2'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_3: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_3'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_4: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_4'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_5: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_5'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_6: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_6'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_7: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_7'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_8: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_8'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_9: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_9'
      Visible = False
      Calculated = True
    end
    object qrvenda_mesColumn_10: TStringField
      FieldKind = fkCalculated
      FieldName = 'Column_10'
      Visible = False
      Calculated = True
    end
  end
  object dsvenda_mes: TDataSource
    DataSet = qrvenda_mes
    Left = 1296
    Top = 672
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1493
    Top = 584
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
    Left = 1501
    Top = 304
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
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
    Left = 1533
    Top = 560
  end
  object dsreceber: TDataSource
    DataSet = qrcontasreceber
    Left = 1461
    Top = 632
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasreceberCalcFields
    Active = True
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1485
    Top = 560
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
    Left = 1533
    Top = 504
    Bitmap = {
      494C0101060008007C000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Active = True
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1485
    Top = 480
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
    Left = 1280
    Top = 592
  end
  object qrpgto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 1541
    Top = 464
  end
  object qrpessoas: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrpessoasBeforePost
    AfterPost = qrpessoasAfterPost
    Active = True
    SQL.Strings = (
      'select * from c000070')
    Params = <>
    Left = 1461
    Top = 560
  end
  object dspessoas: TDataSource
    DataSet = qrpessoas
    Left = 1296
    Top = 568
  end
  object dsservicos_periodicos: TDataSource
    DataSet = frmmodulo.qrservicos_periodicos
    Left = 1336
    Top = 552
  end
  object PopupMenu1: TPopupMenu
    Left = 1288
    Top = 672
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
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 1469
    Top = 592
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 1501
    Top = 392
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Clientes'
    UserControl = frmPrincipal.icloud
    Components = 'Form.Clientes'
    NotAllowed = naDisabled
    Left = 1501
    Top = 296
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
    Settings.BottomIndent = 0
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
    Left = 1509
    Top = 400
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 1501
    Top = 608
  end
  object PrintDialog1: TPrintDialog
    Left = 1421
    Top = 640
  end
  object ColorDialog1: TColorDialog
    Left = 1461
    Top = 248
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Texto rico (*.rtf)|*.rtf'
    Left = 1461
    Top = 512
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'rtf'
    Filter = 'Texto rico (*.rtf)|*.rtf'
    Left = 1509
    Top = 616
  end
  object ImagesBR: TImageList
    Left = 1437
    Top = 396
    Bitmap = {
      494C010116001800640010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 1295
    Top = 632
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 1291
    Top = 688
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 1295
    Top = 685
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 1295
    Top = 685
  end
end
