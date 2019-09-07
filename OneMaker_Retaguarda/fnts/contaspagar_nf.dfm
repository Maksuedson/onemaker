object frmcontaspagar_nf: Tfrmcontaspagar_nf
  Left = 448
  Top = 177
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONTAS A PAGAR | Visuzalia'#231#227'o de Nota Fiscal'
  ClientHeight = 479
  ClientWidth = 746
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 746
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 383
    Width = 746
    Height = 3
    Align = alBottom
    ExplicitTop = 387
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
    end
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 272
      Top = 12
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 57
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsnota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 81
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = dsnota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 344
      Top = 8
      Width = 385
      Height = 21
      DataField = 'fornecedor'
      DataSource = dsnota
      TabOrder = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 44
    Width = 746
    Height = 339
    Selected.Strings = (
      'CODPRODUTO'#9'6'#9'C'#243'digo'
      'produto'#9'47'#9'Produto'
      'UN_COMPRA'#9'5'#9'Un.'
      'CFOP'#9'6'#9'CFOP'
      'CST'#9'5'#9'CST'
      'QTDE'#9'7'#9'Qtde.'
      'UNITARIO'#9'8'#9'Unit'#225'rio'
      'SUBTOTAL'#9'8'#9'Subtotal'
      'DESCONTO'#9'8'#9'Desconto'
      'TOTAL'#9'10'#9'Total')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsitem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel2: TPanel
    Left = 0
    Top = 386
    Width = 746
    Height = 93
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Base C. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 88
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 159
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Base C. Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 238
      Top = 3
      Width = 58
      Height = 13
      Caption = 'Valor Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 316
      Top = 27
      Width = 90
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 30
      Top = 45
      Width = 26
      Height = 13
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 100
      Top = 45
      Width = 34
      Height = 13
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 164
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 243
      Top = 45
      Width = 41
      Height = 13
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 535
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 16
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_ICMS'
      Alignment = taLeftJustify
      TabOrder = 0
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 88
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS'
      Alignment = taLeftJustify
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit3: TRzDBNumericEdit
      Left = 160
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_SUB'
      Alignment = taLeftJustify
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit4: TRzDBNumericEdit
      Left = 232
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      Alignment = taLeftJustify
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit5: TRzDBNumericEdit
      Left = 312
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_PRODUTOS'
      Alignment = taLeftJustify
      TabOrder = 4
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit6: TRzDBNumericEdit
      Left = 16
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'FRETE'
      Alignment = taLeftJustify
      TabOrder = 5
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit7: TRzDBNumericEdit
      Left = 88
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'SEGURO'
      Alignment = taLeftJustify
      TabOrder = 6
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit8: TRzDBNumericEdit
      Left = 160
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'OUTRAS'
      Alignment = taLeftJustify
      TabOrder = 7
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit9: TRzDBNumericEdit
      Left = 232
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      Alignment = taLeftJustify
      TabOrder = 8
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit10: TRzDBNumericEdit
      Left = 520
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_NOTA'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit11: TRzDBNumericEdit
      Left = 424
      Top = 44
      Width = 81
      Height = 21
      DataSource = dsnota
      DataField = 'DESCONTO'
      Alignment = taLeftJustify
      TabOrder = 10
      DisplayFormat = '###,###,##0.00'
    end
  end
  object bcancelar: TAdvGlowButton
    Left = 621
    Top = 409
    Width = 118
    Height = 48
    Caption = 'ESC | Retornar'
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
      89504E470D0A1A0A0000000D4948445200000014000000210806000000D93E8B
      13000000097048597300000B1300000B1301009A9C18000000206348524D0000
      7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
      1F90000002454944415478DAA496BF6B93411C879FEFDD8DD56A711071711207
      4114741084AA88BF101CFD07B2A9146CB13F8CB68D6D69506A1141F307088E22
      2A5275EF20828338B9083AD426D1824D9A7BBF0E266972B14D2EBDF1F381E77D
      EEEE7DDF3BE1D93CDD0F056747285220EF1F6105B72598D851D466E8030C6B2C
      2539D735CCD841C46600F040AF7B8256D474699646EC6C6384D70ABDE6BBEBC2
      6C04B1E341BE827219CF828B349B44EC5850ACA07A0A6411C04498A531214C7F
      A1C92560B196B80ECDA6117B33287EA3DA0F7C680CDB1B1A3B8109619A47938B
      21AC8DA182D859C40EB64E534F021FFFFBFC4DCCA6302DB02554CF6F04DBC050
      41EC7DC40E0479A16AF669D3156A4D5C16D302FB81EAD976B0C05041DC03C45C
      0B60CB55B3CF9DBC60A6C16C0ED302FB86EA994E61554305718F11930A605F51
      3D077C89F9380D89BB820B61806A260EA6206028D9A794358704BDC818B03FF6
      5F6440E18FA428EB7CF39ECB3E441680237140A96E4D49AE53D287CDA6B21791
      37C08108C386B12A5729EBBDC0B40F9177C0B138E0BAE90D4A3A1798EE46E435
      7030CE70DD7480B2CE04D01D55D3E371C09AE9AA0CB3A6D900BA0B9197C0A138
      C31A39F143247E32C8B7574D4FC4016B665A4993F899A0DC899817C0E108C31A
      5540FD3089BF1394DB10790FF4C71D0135B0FA71129F699DBE790E1C8D04D6A1
      B7503F1A143D88BC054E4702EB1B3545E26F07790F985758B9D0C5554440FD04
      EA879A96DA89A3E0F77401AC9B6649FCBF83DF02C54A8A9F3EB785EB9C80FABB
      18943C45967D0E27FC1D008876D0A3253592180000000049454E44AE426082}
    Transparent = True
    TabOrder = 3
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
    Layout = blGlyphLeftAdjusted
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 88
    Top = 248
    object qrnotafornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrnotaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnotaCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrnotaCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnotaMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrnotaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrnotaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnotaDATA_LANCAMENTO: TDateField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnotaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qrnotaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qrnotaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qrnotaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qrnotaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qrnotaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qrnotaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qrnotaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qrnotaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qrnotaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qrnotaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qrnotaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qrnotaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnotaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qrnotaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnotaTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qrnotaTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qrnotaTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qrnotaTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TWideStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrnotaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnotaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qrnotaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qrnotaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qrnotaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qrnotaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qrnotaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qrnotaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qrnotaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qrnotaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qrnotaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qrnotaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qrnotaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qrnotaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qrnotaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qrnotaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qrnotaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qrnotaOBS8: TWideStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object qrnotaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrnotaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnotaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnotaOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qrnotaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
  end
  object qritem: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * FROM C000088')
    Params = <>
    Left = 120
    Top = 248
    object qritemCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 47
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object qritemUN_COMPRA: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qritemCFOP: TWideStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Size = 6
    end
    object qritemCST: TWideStringField
      DisplayWidth = 5
      FieldName = 'CST'
      Size = 5
    end
    object qritemQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object qritemUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
    end
    object qritemSUBTOTAL: TFloatField
      DisplayLabel = 'Subtotal'
      DisplayWidth = 8
      FieldName = 'SUBTOTAL'
    end
    object qritemDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 8
      FieldName = 'DESCONTO'
    end
    object qritemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qritemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object qritemITEM: TWideStringField
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object qritemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object qritemCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Visible = False
    end
    object qritemUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object qritemFRACAO: TFloatField
      FieldName = 'FRACAO'
      Visible = False
    end
    object qritemDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object qritemICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object qritemICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
      Visible = False
    end
    object qritemICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object qritemICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object qritemICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object qritemICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object qritemICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qritemICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object qritemSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object qritemSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object qritemSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
      Visible = False
    end
    object qritemIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object qritemIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
      Visible = False
    end
    object qritemIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object qritemIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
      Visible = False
    end
    object qritemDATA: TDateField
      FieldName = 'DATA'
      Visible = False
    end
    object qritemTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qritemNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qritemFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qritemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qritemSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qritemCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
    object qritemSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
      Visible = False
    end
    object qritemCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qritemITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object qritemICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object qritemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Visible = False
    end
    object qritemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      Visible = False
    end
    object qritemCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
      Visible = False
    end
    object qritemPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
      Visible = False
    end
    object qritemPIS: TFloatField
      FieldName = 'PIS'
      Visible = False
    end
    object qritemCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
      Visible = False
    end
    object qritemCOFINS: TFloatField
      FieldName = 'COFINS'
      Visible = False
    end
    object qritemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qritemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
      Size = 15
    end
    object qritemLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object qritemLOTE_FABRICACAO_DATA: TDateField
      FieldName = 'LOTE_FABRICACAO_DATA'
      Visible = False
    end
    object qritemPMARGEM: TFloatField
      FieldName = 'PMARGEM'
      Visible = False
    end
    object qritemPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      Visible = False
    end
    object qritemPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 152
    Top = 248
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 184
    Top = 248
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 216
    Top = 248
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 248
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 128
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
