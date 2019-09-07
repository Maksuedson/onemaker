object frmxloc_produto: Tfrmxloc_produto
  Left = 390
  Top = 144
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = ' PRODUTO | Localizar'
  ClientHeight = 473
  ClientWidth = 774
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel8: TBevel
    Left = 0
    Top = 44
    Width = 774
    Height = 3
    Align = alTop
  end
  object Bevel6: TBevel
    Left = 0
    Top = 413
    Width = 774
    Height = 3
    Align = alBottom
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 44
    Color = clWhite
    ColorHighLight = clWhite
    ColorShadow = clWhite
    Align = alTop
    TabOrder = 0
    ExplicitTop = -3
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 58
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 704
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 726
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 714
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 774
    Height = 366
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'CODBARRA'#9'14'#9'C'#243'digo de Barras'#9#9
      'PRODUTO'#9'47'#9'Produto'#9#9
      'UNIDADE'#9'2'#9'Un.'#9#9
      'ESTOQUE_ATUAL'#9'12'#9'Estoque'#9#9
      'PRECOVENDA'#9'8'#9'Pre'#231'o-R$'#9#9
      'FORNECEDOR'#9'28'#9'Fornecedor'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 416
    Width = 774
    Height = 57
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    object Bevel3: TBevel
      Left = 64
      Top = 7
      Width = 341
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 9
      Width = 55
      Height = 13
      Caption = 'Fabricante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 67
      Top = 9
      Width = 326
      Height = 14
      DataField = 'MARCA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 413
      Top = 4
      Width = 2
      Height = 49
    end
    object Bevel9: TBevel
      Left = 541
      Top = 4
      Width = 2
      Height = 49
    end
    object Label11: TLabel
      Left = 422
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object combo_situacao: TComboBox
      Left = 422
      Top = 20
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Somente Ativos'
      OnChange = combo_situacaoChange
      Items.Strings = (
        'Somente Ativos'
        'Somente Inativos'
        'Todos')
    end
  end
  object PPROCURA: TFlatPanel
    Left = 304
    Top = 77
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 1
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
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
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
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    Left = 392
    Top = 264
    object queryCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryCODBARRA: TWideStringField
      DisplayLabel = 'C'#243'digo de Barras'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 47
      FieldName = 'PRODUTO'
      Size = 100
    end
    object queryUNIDADE: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object queryESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 12
      FieldName = 'ESTOQUE_ATUAL'
    end
    object queryPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o-R$'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
    end
    object queryNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 10
    end
    object queryMARCA: TStringField
      FieldKind = fkCalculated
      FieldName = 'MARCA'
      Visible = False
      Calculated = True
    end
    object queryDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object queryCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object queryCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object queryDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object queryNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 7
    end
    object queryPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object queryDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object queryESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object queryESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object queryCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object queryAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftWideMemo
    end
    object queryLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object queryPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object queryVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object queryCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object queryUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object queryCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object queryFOTO: TWideStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object queryDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object queryNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object queryCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object queryAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object queryAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object queryDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object queryDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object queryPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object queryDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object queryFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object queryCST: TWideStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object queryCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object queryNBM: TWideStringField
      FieldName = 'NBM'
      Visible = False
    end
    object queryNCM: TWideStringField
      FieldName = 'NCM'
      Visible = False
    end
    object queryALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object queryIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object queryREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Visible = False
    end
    object queryQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Visible = False
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
    end
    object queryFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Visible = False
      Size = 1
    end
    object queryFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Visible = False
    end
    object queryFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Visible = False
    end
    object queryFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Visible = False
    end
    object queryULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
      Visible = False
    end
    object queryULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
      Visible = False
    end
    object queryDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object queryCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Visible = False
    end
    object queryESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Visible = False
    end
    object queryESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Visible = False
    end
    object queryUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Visible = False
    end
    object queryQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
      Visible = False
    end
    object queryAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Visible = False
      Size = 60
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
      Visible = False
    end
    object queryPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      Visible = False
    end
    object queryPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      Visible = False
    end
    object queryPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
      Visible = False
    end
    object queryPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
      Visible = False
    end
    object queryDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
      Visible = False
    end
    object queryDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
      Visible = False
    end
    object queryMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
      Visible = False
    end
    object queryPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object queryREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Visible = False
      Size = 30
    end
    object queryCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
      Visible = False
    end
    object queryMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Visible = False
    end
    object queryTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Visible = False
      Size = 6
    end
    object queryCOR: TWideStringField
      FieldName = 'COR'
      Visible = False
      Size = 6
    end
    object queryINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Visible = False
      Size = 30
    end
    object queryVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Visible = False
      Size = 50
    end
    object queryVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Visible = False
      Size = 50
    end
    object queryVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Visible = False
      Size = 50
    end
    object queryVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Visible = False
      Size = 15
    end
    object queryVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Visible = False
      Size = 15
    end
    object queryVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
      Visible = False
    end
    object queryVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Visible = False
      Size = 50
    end
    object queryVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
      Visible = False
    end
    object queryVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
      Visible = False
    end
    object queryVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Visible = False
      Size = 50
    end
    object queryVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Visible = False
      Size = 15
    end
    object queryVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Visible = False
      Size = 15
    end
    object queryVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Visible = False
      Size = 30
    end
    object queryVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Visible = False
      Size = 10
    end
    object queryVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Visible = False
      Size = 50
    end
    object queryVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Visible = False
      Size = 15
    end
    object queryVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Visible = False
      Size = 15
    end
    object queryVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Visible = False
      Size = 15
    end
    object queryVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Visible = False
      Size = 15
    end
    object queryVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Visible = False
      Size = 50
    end
    object queryVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Visible = False
      Size = 50
    end
    object queryLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Visible = False
    end
    object queryLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
      Visible = False
    end
    object queryMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Visible = False
    end
    object queryCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Visible = False
      Size = 13
    end
    object queryFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
      Visible = False
    end
    object queryFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Visible = False
      Size = 10
    end
    object queryFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Visible = False
      Size = 10
    end
    object queryFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Visible = False
      Size = 30
    end
    object queryULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Visible = False
    end
    object queryFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
      Visible = False
    end
    object queryFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Visible = False
      Size = 1
    end
    object queryUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Visible = False
      Size = 1
    end
    object queryREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Visible = False
      Size = 30
    end
    object queryPERDA: TFloatField
      FieldName = 'PERDA'
      Visible = False
    end
    object queryCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Visible = False
      Size = 30
    end
    object queryCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Visible = False
      Size = 30
    end
    object queryIAT: TWideStringField
      FieldName = 'IAT'
      Visible = False
      Size = 1
    end
    object queryIPPT: TWideStringField
      FieldName = 'IPPT'
      Visible = False
      Size = 1
    end
    object querySITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Visible = False
      Size = 1
    end
    object queryFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Visible = False
      Size = 1
    end
    object queryFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Visible = False
      Size = 3
    end
    object queryFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Visible = False
      Size = 1
    end
    object queryCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Visible = False
      Size = 60
    end
    object queryCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
      Visible = False
    end
    object queryCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
      Visible = False
    end
    object queryUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Visible = False
      Size = 2
    end
    object queryQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
      Visible = False
    end
    object queryPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
      Visible = False
    end
    object queryPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
      Visible = False
    end
    object queryPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
      Visible = False
    end
    object queryPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
      Visible = False
    end
    object queryPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
      Visible = False
    end
    object queryPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
      Visible = False
    end
    object queryPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
      Visible = False
    end
    object queryPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
      Visible = False
    end
    object queryPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
      Visible = False
    end
    object queryPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
      Visible = False
    end
    object queryPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
      Visible = False
    end
    object queryPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
      Visible = False
    end
    object queryPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
      Visible = False
    end
    object queryPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
      Visible = False
    end
    object queryPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
      Visible = False
    end
    object queryPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
      Visible = False
    end
    object queryIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Visible = False
      Size = 6
    end
    object queryCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Visible = False
      Size = 30
    end
    object queryUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
      Visible = False
    end
    object queryIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Visible = False
      Size = 6
    end
    object queryCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Visible = False
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Visible = False
      Size = 6
    end
    object queryUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Visible = False
      Size = 4
    end
    object queryATIVA: TWideStringField
      FieldName = 'ATIVA'
      Visible = False
      Size = 10
    end
    object queryCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Visible = False
      Size = 7
    end
    object queryCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 10
    end
    object queryCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 10
    end
    object queryESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
      Visible = False
    end
    object queryENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
      Visible = False
    end
    object querySAIDAS: TFloatField
      FieldName = 'SAIDAS'
      Visible = False
    end
    object queryULTIMA_ENTRADA: TDateField
      FieldName = 'ULTIMA_ENTRADA'
      Visible = False
    end
    object queryULTIMA_SAIDA: TDateField
      FieldName = 'ULTIMA_SAIDA'
      Visible = False
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 344
    Top = 120
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
