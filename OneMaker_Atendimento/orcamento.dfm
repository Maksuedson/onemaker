object frmorcamento: Tfrmorcamento
  Left = 831
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Or'#231'amentos'
  ClientHeight = 484
  ClientWidth = 641
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
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
    Width = 641
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 36
    ExplicitWidth = 705
    object lpesquisa: TLabel
      Left = 288
      Top = 15
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F3 | Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per'#237'odo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 168
      Top = 15
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 368
      Top = 12
      Width = 169
      Height = 19
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = LOCKeyPress
    end
    object ed_inicial: TJvDateEdit
      Left = 65
      Top = 12
      Width = 96
      Height = 19
      Color = clWhite
      Flat = True
      ParentFlat = False
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 0
      OnKeyPress = ed_inicialKeyPress
    end
    object ed_final: TJvDateEdit
      Left = 185
      Top = 12
      Width = 96
      Height = 19
      Color = clWhite
      Flat = True
      ParentFlat = False
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 1
      OnKeyPress = ed_finalKeyPress
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 542
      Top = 1
      Width = 98
      Height = 45
      Caption = 'Filtrar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      OnClick = BitBtn1Click
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
  object grid: TwwDBGrid
    Left = 0
    Top = 47
    Width = 641
    Height = 437
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'DATA'#9'11'#9'Data'
      'NOME'#9'33'#9'Cliente'
      'TOTAL'#9'10'#9'Total'
      'vendedor'#9'17'#9'Vendedor')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
    ExplicitTop = 83
    ExplicitWidth = 648
    ExplicitHeight = 400
  end
  object Panel2: TPanel
    Left = -1
    Top = 483
    Width = 652
    Height = 30
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Label14: TLabel
      Left = 15
      Top = 7
      Width = 45
      Height = 13
      Caption = 'F2 | Abrir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 96
      Top = 7
      Width = 47
      Height = 13
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 272
    Top = 376
  end
  object qrorcamento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select orc.*, cli.nome from c000074 orc, c000007 cli where orc.c' +
        'odcliente = cli.codigo')
    Params = <>
    Left = 224
    Top = 224
    object qrorcamentoCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object qrorcamentoNOME: TWideStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldName = 'NOME'
      Size = 80
    end
    object qrorcamentoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qrorcamentovendedor: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 30
      Lookup = True
    end
    object qrorcamentoagc: TStringField
      DisplayLabel = '*'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'agc'
      Visible = False
      Size = 2
      Calculated = True
    end
    object qrorcamentoCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrorcamentoOBS: TWideStringField
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrorcamentoMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrorcamentoMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrorcamentoCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
      Size = 10
    end
    object qrorcamentoRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Visible = False
      Size = 50
    end
    object qrorcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrorcamentoMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
      Visible = False
    end
    object qrorcamentoDAV: TWideStringField
      FieldName = 'DAV'
      Visible = False
      Size = 10
    end
    object qrorcamentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrorcamentoDAV_ANTERIOR: TWideStringField
      FieldName = 'DAV_ANTERIOR'
      Visible = False
      Size = 100
    end
    object qrorcamentoATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
      Visible = False
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 320
    Top = 224
    object qrorcamento_produtoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 60
      Lookup = True
    end
    object qrorcamento_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamento_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrorcamento_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrorcamento_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrorcamento_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamento_produtoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrorcamento_produtoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrorcamento_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrorcamento_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrorcamento_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamento_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamento_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamento_produtoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrorcamento_produtoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamento_produtoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrorcamento_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrorcamento_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrorcamento_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrorcamento_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrorcamento_produtoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrorcamento_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrorcamento_produtoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrorcamento_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrorcamento_produtoSERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Size = 6
    end
    object qrorcamento_produtoCOD_BARRAS: TWideStringField
      FieldName = 'COD_BARRAS'
      Size = 25
    end
    object qrorcamento_produtoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object qrorcamento_receber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000076')
    Params = <>
    Left = 280
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 248
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Abrir1: TMenuItem
      Caption = 'Abrir'
      ShortCut = 113
      OnClick = Abrir1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 352
    Top = 224
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 472
    Top = 192
  end
end
