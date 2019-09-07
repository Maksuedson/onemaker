object frmxloc_notafiscal: Tfrmxloc_notafiscal
  Left = 31
  Top = 318
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTA FISCAL DE SA'#205'DA | Localizar'
  ClientHeight = 307
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 44
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
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
      Text = 'N'#218'MERO'
      Items.Strings = (
        'N'#218'MERO'
        'CLIENTE'
        'DATA')
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
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = 'PARTE'
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
    Top = 44
    Width = 769
    Height = 263
    Selected.Strings = (
      'NUMERO'#9'6'#9'N'#218'MERO'
      'DATA'#9'9'#9'DATA'
      'CFOP'#9'5'#9'CFOP'
      'CLIENTE'#9'68'#9'CLIENTE'
      'TOTAL_NOTA'#9'14'#9'TOTAL-R$')
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
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitTop = 47
    ExplicitHeight = 260
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 37
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 2
    object wwDBGrid1: TwwDBGrid
      Left = 0
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
      'select * from c000061')
    Params = <>
    Left = 464
    Top = 232
    object queryNUMERO: TWideStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrinventarioDATA: TDateField
      DisplayWidth = 9
      FieldName = 'DATA'
    end
    object queryCFOP: TWideStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Size = 5
    end
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object queryTOTAL_NOTA: TFloatField
      DisplayLabel = 'TOTAL-R$'
      DisplayWidth = 14
      FieldName = 'TOTAL_NOTA'
    end
    object queryCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object queryVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      Visible = False
    end
    object queryBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
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
    object queryICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
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
    object queryOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Visible = False
    end
    object queryVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      Visible = False
    end
    object queryITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object queryCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Visible = False
      Size = 6
    end
    object queryFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
      Visible = False
    end
    object queryPLACA: TWideStringField
      FieldName = 'PLACA'
      Visible = False
      Size = 10
    end
    object queryPLACA_UF: TWideStringField
      FieldName = 'PLACA_UF'
      Visible = False
      Size = 2
    end
    object queryVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
      Visible = False
    end
    object queryVOL_ESPECIE: TWideStringField
      FieldName = 'VOL_ESPECIE'
      Visible = False
    end
    object queryVOL_MARCA: TWideStringField
      FieldName = 'VOL_MARCA'
      Visible = False
    end
    object queryVOL_NUMERO: TWideStringField
      FieldName = 'VOL_NUMERO'
      Visible = False
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
    end
    object queryPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Visible = False
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Visible = False
      Size = 40
    end
    object qrinventarioFATURAMENTO_DATA1: TDateField
      FieldName = 'FATURAMENTO_DATA1'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA2: TDateField
      FieldName = 'FATURAMENTO_DATA2'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA3: TDateField
      FieldName = 'FATURAMENTO_DATA3'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA4: TDateField
      FieldName = 'FATURAMENTO_DATA4'
      Visible = False
    end
    object queryFATURAMENTO_NUMERO1: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO2: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO3: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO4: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
      Visible = False
    end
    object queryFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
      Visible = False
    end
    object queryFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
      Visible = False
    end
    object queryFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
      Visible = False
    end
    object queryCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 6
    end
    object queryOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object queryOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object queryOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object queryINF1: TWideStringField
      FieldName = 'INF1'
      Visible = False
      Size = 80
    end
    object queryINF2: TWideStringField
      FieldName = 'INF2'
      Visible = False
      Size = 80
    end
    object queryINF3: TWideStringField
      FieldName = 'INF3'
      Visible = False
      Size = 80
    end
    object queryINF4: TWideStringField
      FieldName = 'INF4'
      Visible = False
      Size = 80
    end
    object queryINF5: TWideStringField
      FieldName = 'INF5'
      Visible = False
      Size = 80
    end
    object qrinventarioDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Visible = False
    end
    object queryHORA: TWideStringField
      FieldName = 'HORA'
      Visible = False
    end
    object querySITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Visible = False
      Size = 1
    end
    object queryMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Visible = False
      Size = 2
    end
    object querySERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Visible = False
      Size = 3
    end
    object queryVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
      Visible = False
    end
    object queryALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Visible = False
    end
    object querySIT: TWideStringField
      FieldName = 'SIT'
      Visible = False
      Size = 1
    end
    object queryCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Visible = False
      Size = 10
    end
    object queryMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Visible = False
      Size = 1
    end
    object queryBAIXA_ESTOQUE: TWideStringField
      FieldName = 'BAIXA_ESTOQUE'
      Visible = False
      Size = 1
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 1
    end
    object queryOS_COD1: TWideStringField
      FieldName = 'OS_COD1'
      Visible = False
      Size = 10
    end
    object queryOS_COD2: TWideStringField
      FieldName = 'OS_COD2'
      Visible = False
      Size = 10
    end
    object queryOS_COD3: TWideStringField
      FieldName = 'OS_COD3'
      Visible = False
      Size = 10
    end
    object queryOS_COD4: TWideStringField
      FieldName = 'OS_COD4'
      Visible = False
      Size = 10
    end
    object queryOS_COD5: TWideStringField
      FieldName = 'OS_COD5'
      Visible = False
      Size = 10
    end
    object queryOS_COD6: TWideStringField
      FieldName = 'OS_COD6'
      Visible = False
      Size = 10
    end
    object queryOS_SERV1: TWideStringField
      FieldName = 'OS_SERV1'
      Visible = False
      Size = 60
    end
    object queryOS_SERV2: TWideStringField
      FieldName = 'OS_SERV2'
      Visible = False
      Size = 60
    end
    object queryOS_SERV3: TWideStringField
      FieldName = 'OS_SERV3'
      Visible = False
      Size = 60
    end
    object queryOS_SERV4: TWideStringField
      FieldName = 'OS_SERV4'
      Visible = False
      Size = 60
    end
    object queryOS_SERV5: TWideStringField
      FieldName = 'OS_SERV5'
      Visible = False
      Size = 60
    end
    object queryOS_SERV6: TWideStringField
      FieldName = 'OS_SERV6'
      Visible = False
      Size = 60
    end
    object queryOS_COMP1: TWideStringField
      FieldName = 'OS_COMP1'
      Visible = False
      Size = 60
    end
    object queryOS_COMP2: TWideStringField
      FieldName = 'OS_COMP2'
      Visible = False
      Size = 60
    end
    object queryOS_COMP3: TWideStringField
      FieldName = 'OS_COMP3'
      Visible = False
      Size = 60
    end
    object queryOS_COMP4: TWideStringField
      FieldName = 'OS_COMP4'
      Visible = False
      Size = 60
    end
    object queryOS_COMP5: TWideStringField
      FieldName = 'OS_COMP5'
      Visible = False
      Size = 60
    end
    object queryOS_COMP6: TWideStringField
      FieldName = 'OS_COMP6'
      Visible = False
      Size = 60
    end
    object queryOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
      Visible = False
    end
    object queryOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
      Visible = False
    end
    object queryOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
      Visible = False
    end
    object queryOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
      Visible = False
    end
    object queryOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
      Visible = False
    end
    object queryOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
      Visible = False
    end
    object queryOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
      Visible = False
    end
    object queryOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
      Visible = False
    end
    object queryOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
      Visible = False
    end
    object queryOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
      Visible = False
    end
    object queryOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
      Visible = False
    end
    object queryOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
      Visible = False
    end
    object queryOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
      Visible = False
    end
    object queryOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
      Visible = False
    end
    object queryOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
      Visible = False
    end
    object queryOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
      Visible = False
    end
    object queryOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
      Visible = False
    end
    object queryOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
      Visible = False
    end
    object queryOS_ISS: TFloatField
      FieldName = 'OS_ISS'
      Visible = False
    end
    object queryOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
      Visible = False
    end
    object queryOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
      Visible = False
    end
    object queryDESCONTO_ITEM: TFloatField
      FieldName = 'DESCONTO_ITEM'
      Visible = False
    end
    object queryOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object queryOBS5: TWideStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 80
    end
    object queryCODIGOMODELO: TWideStringField
      FieldName = 'CODIGOMODELO'
      Visible = False
      Size = 6
    end
    object queryCUSTO_VENDA: TWideStringField
      FieldName = 'CUSTO_VENDA'
      Visible = False
      Size = 1
    end
    object queryFAT_FORMA_PGTO: TWideStringField
      FieldName = 'FAT_FORMA_PGTO'
      Visible = False
      Size = 50
    end
    object queryFAT_CONDI_PGTO: TWideStringField
      FieldName = 'FAT_CONDI_PGTO'
      Visible = False
      Size = 50
    end
    object queryFAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
      Visible = False
    end
    object queryFAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
      Visible = False
    end
    object queryFAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
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
    object queryFAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
      Visible = False
    end
    object queryCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
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
    object queryNFE_SITUACAO: TIntegerField
      FieldName = 'NFE_SITUACAO'
      Visible = False
    end
    object queryNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Visible = False
      Size = 240
    end
    object queryVAREJO_ATACADO: TWideStringField
      FieldName = 'VAREJO_ATACADO'
      Visible = False
      Size = 1
    end
    object queryINDUSTRIALIZACAO: TWideStringField
      FieldName = 'INDUSTRIALIZACAO'
      Visible = False
      Size = 1
    end
    object queryPERDA: TWideStringField
      FieldName = 'PERDA'
      Visible = False
      Size = 1
    end
    object qrinventarioFATURAMENTO_DATA5: TDateField
      FieldName = 'FATURAMENTO_DATA5'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA6: TDateField
      FieldName = 'FATURAMENTO_DATA6'
      Visible = False
    end
    object queryFATURAMENTO_NUMERO5: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO5'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO6: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO6'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_VALOR5: TFloatField
      FieldName = 'FATURAMENTO_VALOR5'
      Visible = False
    end
    object queryFATURAMENTO_VALOR6: TFloatField
      FieldName = 'FATURAMENTO_VALOR6'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA7: TDateField
      FieldName = 'FATURAMENTO_DATA7'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA8: TDateField
      FieldName = 'FATURAMENTO_DATA8'
      Visible = False
    end
    object qrinventarioFATURAMENTO_DATA9: TDateField
      FieldName = 'FATURAMENTO_DATA9'
      Visible = False
    end
    object queryFATURAMENTO_NUMERO7: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO7'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO8: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO8'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO9: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO9'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_VALOR7: TFloatField
      FieldName = 'FATURAMENTO_VALOR7'
      Visible = False
    end
    object queryFATURAMENTO_VALOR8: TFloatField
      FieldName = 'FATURAMENTO_VALOR8'
      Visible = False
    end
    object queryFATURAMENTO_VALOR9: TFloatField
      FieldName = 'FATURAMENTO_VALOR9'
      Visible = False
    end
    object queryCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Visible = False
      Size = 50
    end
    object queryNATUREZA: TWideStringField
      FieldName = 'NATUREZA'
      Visible = False
    end
    object queryTIPO_FINALIDADE: TIntegerField
      FieldName = 'TIPO_FINALIDADE'
      Visible = False
    end
    object querySEQEVENTO: TIntegerField
      FieldName = 'SEQEVENTO'
      Required = True
      Visible = False
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 528
    Top = 184
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
