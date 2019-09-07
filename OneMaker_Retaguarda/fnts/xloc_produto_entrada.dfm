object frmxloc_produto_entrada: Tfrmxloc_produto_entrada
  Left = 44
  Top = 148
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTAS FISCAIS DE COMPRA | Localizar'
  ClientHeight = 433
  ClientWidth = 760
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 41
    Width = 760
    Height = 3
    Align = alTop
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 44
    Width = 760
    Height = 389
    Selected.Strings = (
      'DATA_EMISSAO'#9'10'#9'Emiss'#227'o'
      'NUMERO'#9'6'#9'N'#250'mero'
      'MODELO'#9'3'#9'Mod.'
      'ESPECIE'#9'3'#9'Esp.'
      'CFOP'#9'4'#9'CFOP'
      'fornecedor'#9'43'#9'Fornecedor'
      'DATA_LANCAMENTO'#9'10'#9'Entrada'
      'TOTAL_PRODUTOS'#9'9'#9'Vlr.Produtos'
      'TOTAL_NOTA'#9'10'#9'Total Nota')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
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
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PPROCURA: TFlatPanel
    Left = 760
    Top = 141
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 0
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
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object Label56: TLabel
      Left = 19
      Top = 13
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 203
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 389
      Top = 13
      Width = 78
      Height = 13
      Caption = 'F6 | Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edata_inicio: TJvDateEdit
      Left = 90
      Top = 10
      Width = 104
      Height = 21
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
      OnEnter = edata_inicioEnter
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object edata_final: TJvDateEdit
      Left = 267
      Top = 10
      Width = 104
      Height = 21
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
      OnEnter = edata_inicioEnter
      OnKeyPress = edata_inicioKeyPress
    end
    object ENUMERO: TEdit
      Left = 480
      Top = 7
      Width = 89
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = edata_inicioEnter
      OnExit = ENUMEROExit
      OnKeyPress = edata_inicioKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 656
      Top = 0
      Width = 104
      Height = 41
      Align = alRight
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
      TabOrder = 3
      OnClick = BfiltrarClick
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
      ExplicitLeft = 640
      ExplicitTop = 1
      ExplicitHeight = 40
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object PesquisaNota1: TMenuItem
      Caption = 'Pesquisa Nota'
      ShortCut = 117
      OnClick = PesquisaNota1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 496
    Top = 200
    object qrinventarioDATA_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object queryNUMERO: TWideStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Size = 10
    end
    object queryMODELO: TWideStringField
      DisplayLabel = 'Mod.'
      DisplayWidth = 3
      FieldName = 'MODELO'
      Size = 10
    end
    object queryESPECIE: TWideStringField
      DisplayLabel = 'Esp.'
      DisplayWidth = 3
      FieldName = 'ESPECIE'
      Size = 10
    end
    object queryCFOP: TWideStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Size = 10
    end
    object queryfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrinventarioDATA_LANCAMENTO: TDateField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
    end
    object queryTOTAL_PRODUTOS: TFloatField
      DisplayLabel = 'Vlr.Produtos'
      DisplayWidth = 9
      FieldName = 'TOTAL_PRODUTOS'
    end
    object queryTOTAL_NOTA: TFloatField
      DisplayLabel = 'Total Nota'
      DisplayWidth = 10
      FieldName = 'TOTAL_NOTA'
    end
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object queryCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object queryCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object querySERIE: TWideStringField
      FieldName = 'SERIE'
      Visible = False
      Size = 10
    end
    object queryCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object queryCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object queryCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object queryCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object queryCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object queryCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object queryCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object queryCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object queryCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object queryCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object queryCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
      Visible = False
    end
    object queryCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object queryCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object queryBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Visible = False
    end
    object queryVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object queryBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object queryVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
      Visible = False
    end
    object queryFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object querySEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object queryOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object queryIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object queryTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object queryTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object queryTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object queryTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object queryTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object queryTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object queryTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object queryTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object queryTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object queryTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object queryTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object queryTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object queryTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object queryTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object queryTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object queryOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object queryOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object queryOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object queryOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object queryOBS5: TWideStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object queryOBS6: TWideStringField
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object queryOBS7: TWideStringField
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object queryNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object queryVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object queryCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object queryICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object queryICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object queryDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object queryITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object queryITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object queryITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object queryITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object queryITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object queryITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object queryITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object queryITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object queryITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object queryITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object queryITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object queryITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object queryITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object queryITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object queryITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object queryITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object queryITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object queryITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object queryITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
    end
    object queryITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object queryBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Visible = False
    end
    object queryCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Visible = False
    end
    object queryOBS8: TWideStringField
      FieldName = 'OBS8'
      Visible = False
      Size = 60
    end
    object queryCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object queryPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object queryCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object queryOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Visible = False
      Size = 1
    end
    object queryINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Visible = False
    end
    object queryAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Visible = False
      Size = 1
    end
    object queryCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Visible = False
      Size = 50
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 560
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
