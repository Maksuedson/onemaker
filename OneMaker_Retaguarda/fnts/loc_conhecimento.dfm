object frmloc_conhecimento: Tfrmloc_conhecimento
  Left = 90
  Top = 86
  BorderIcons = []
  Caption = 'Localizar Conhecimento de Transportes'
  ClientHeight = 362
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 60
    Width = 666
    Height = 3
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 63
    Width = 666
    Height = 299
    Selected.Strings = (
      'CODIGO'#9'10'#9'C'#211'DIGO'
      'DATA'#9'12'#9'DATA'
      'remetente'#9'39'#9'REMETENTE'
      'destinatario'#9'41'#9'DESTINAT'#193'RIO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsconhecimento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyPress = DBGRID1KeyPress
    PaintOptions.AlternatingRowColor = 15987699
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 6
      Top = 1
      Width = 211
      Height = 55
      Caption = 'Localizar por'
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 13
        Width = 73
        Height = 17
        Caption = 'N'#250'mero'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 29
        Width = 81
        Height = 17
        Caption = 'Remetente'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 104
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Destinat'#225'rio'
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 104
        Top = 29
        Width = 97
        Height = 17
        Caption = 'Data'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 224
      Top = 1
      Width = 433
      Height = 54
      Caption = 'Informe os dados da pesquisa:'
      TabOrder = 1
      object Edit1: TEdit
        Left = 16
        Top = 20
        Width = 401
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
    end
  end
  object dsconhecimento: TDataSource
    DataSet = qrconhecimento
    Left = 216
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 168
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
      ShortCut = 113
    end
  end
  object qrconhecimento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000068')
    Params = <>
    Left = 528
    Top = 296
    object qrconhecimentoremetente: TStringField
      DisplayLabel = 'REMETENTE'
      DisplayWidth = 39
      FieldKind = fkLookup
      FieldName = 'remetente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codremetente'
      Size = 60
      Lookup = True
    end
    object qrconhecimentodestinatario: TStringField
      DisplayLabel = 'DESTINAT'#193'RIO'
      DisplayWidth = 41
      FieldKind = fkLookup
      FieldName = 'destinatario'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'CODDESTINATARIO'
      Size = 60
      Lookup = True
    end
    object qrconhecimentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconhecimentoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrconhecimentoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrconhecimentoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrconhecimentoCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrconhecimentoCODDESTINATARIO: TWideStringField
      FieldName = 'CODDESTINATARIO'
      Size = 6
    end
    object qrconhecimentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrconhecimentoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrconhecimentoCONSIG_NOME: TWideStringField
      FieldName = 'CONSIG_NOME'
      Size = 60
    end
    object qrconhecimentoCONSIG_ENDERECO: TWideStringField
      FieldName = 'CONSIG_ENDERECO'
      Size = 60
    end
    object qrconhecimentoCONSIG_CIDADE: TWideStringField
      FieldName = 'CONSIG_CIDADE'
      Size = 30
    end
    object qrconhecimentoCONSIG_UF: TWideStringField
      FieldName = 'CONSIG_UF'
      Size = 2
    end
    object qrconhecimentoCONSIG_TIPO: TWideStringField
      FieldName = 'CONSIG_TIPO'
      Size = 10
    end
    object qrconhecimentoCONSIG_CALCULADO: TWideStringField
      FieldName = 'CONSIG_CALCULADO'
      Size = 30
    end
    object qrconhecimentoREDE_NOME: TWideStringField
      FieldName = 'REDE_NOME'
      Size = 60
    end
    object qrconhecimentoREDE_ENDERECO: TWideStringField
      FieldName = 'REDE_ENDERECO'
      Size = 60
    end
    object qrconhecimentoREDE_CIDADE: TWideStringField
      FieldName = 'REDE_CIDADE'
      Size = 30
    end
    object qrconhecimentoREDE_UF: TWideStringField
      FieldName = 'REDE_UF'
      Size = 2
    end
    object qrconhecimentoREDE_TIPO: TWideStringField
      FieldName = 'REDE_TIPO'
      Size = 10
    end
    object qrconhecimentoREDE_CNPJ: TWideStringField
      FieldName = 'REDE_CNPJ'
      Size = 25
    end
    object qrconhecimentoCARGA_NATUREZA: TWideStringField
      FieldName = 'CARGA_NATUREZA'
      Size = 30
    end
    object qrconhecimentoCARGA_NF: TWideStringField
      FieldName = 'CARGA_NF'
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR: TFloatField
      FieldName = 'CARGA_VALOR'
    end
    object qrconhecimentoCARGA_QTDE: TFloatField
      FieldName = 'CARGA_QTDE'
    end
    object qrconhecimentoCARGA_VOL_QTDE: TFloatField
      FieldName = 'CARGA_VOL_QTDE'
    end
    object qrconhecimentoCARGA_VOL_ESPECIE: TWideStringField
      FieldName = 'CARGA_VOL_ESPECIE'
      Size = 25
    end
    object qrconhecimentoCARGA_MARCA1: TWideStringField
      FieldName = 'CARGA_MARCA1'
      Size = 30
    end
    object qrconhecimentoCARGA_MARCA2: TWideStringField
      FieldName = 'CARGA_MARCA2'
      Size = 30
    end
    object qrconhecimentoFRETE_PESO: TFloatField
      FieldName = 'FRETE_PESO'
    end
    object qrconhecimentoFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrconhecimentoFRETE_ADICIONAL: TFloatField
      FieldName = 'FRETE_ADICIONAL'
    end
    object qrconhecimentoFRETE_SEGURO: TFloatField
      FieldName = 'FRETE_SEGURO'
    end
    object qrconhecimentoFRETE_DESPACHO: TFloatField
      FieldName = 'FRETE_DESPACHO'
    end
    object qrconhecimentoFRETE_OUTROS: TFloatField
      FieldName = 'FRETE_OUTROS'
    end
    object qrconhecimentoFRETE_TOTAL: TFloatField
      FieldName = 'FRETE_TOTAL'
    end
    object qrconhecimentoFRETE_TARIFA: TFloatField
      FieldName = 'FRETE_TARIFA'
    end
    object qrconhecimentoFRETE_BASE: TFloatField
      FieldName = 'FRETE_BASE'
    end
    object qrconhecimentoFRETE_ALIQUOTA: TIntegerField
      FieldName = 'FRETE_ALIQUOTA'
    end
    object qrconhecimentoFRETE_ICMS: TFloatField
      FieldName = 'FRETE_ICMS'
    end
    object qrconhecimentoFRETE_PRONT: TWideStringField
      FieldName = 'FRETE_PRONT'
      Size = 30
    end
    object qrconhecimentoFRETE_APOLICE: TWideStringField
      FieldName = 'FRETE_APOLICE'
      Size = 30
    end
    object qrconhecimentoFRETE_CIA: TWideStringField
      FieldName = 'FRETE_CIA'
      Size = 40
    end
    object qrconhecimentoFRETE_CARREGAR: TWideStringField
      FieldName = 'FRETE_CARREGAR'
      Size = 60
    end
    object qrconhecimentoFRETE_DESCARREGAR: TWideStringField
      FieldName = 'FRETE_DESCARREGAR'
      Size = 60
    end
    object qrconhecimentoCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrconhecimentoCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrconhecimentoOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrconhecimentoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrconhecimentoLOCAL: TWideStringField
      FieldName = 'LOCAL'
      Size = 40
    end
    object qrconhecimentoMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object qrconhecimentoVEICULO_LOCAL: TWideStringField
      FieldName = 'VEICULO_LOCAL'
      Size = 30
    end
    object qrconhecimentoVEICULO_UF: TWideStringField
      FieldName = 'VEICULO_UF'
      Size = 2
    end
    object qrconhecimentoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrconhecimentoESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrconhecimentoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrconhecimentoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF: TWideStringField
      FieldName = 'ESPECIE_NF'
      Size = 10
    end
    object qrconhecimentoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 10
    end
    object qrconhecimentoDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
    end
    object qrconhecimentoVALOR_CONHECIMENTO: TFloatField
      FieldName = 'VALOR_CONHECIMENTO'
    end
    object qrconhecimentoINF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrconhecimentoINF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrconhecimentoINF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrconhecimentoINF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrconhecimentoINF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrconhecimentoCARGA_NATUREZA2: TWideStringField
      FieldName = 'CARGA_NATUREZA2'
      Size = 30
    end
    object qrconhecimentoCARGA_NF2: TWideStringField
      FieldName = 'CARGA_NF2'
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR2: TFloatField
      FieldName = 'CARGA_VALOR2'
    end
    object qrconhecimentoCARGA_QTDE2: TFloatField
      FieldName = 'CARGA_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_QTDE2: TFloatField
      FieldName = 'CARGA_VOL_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_ESPECIE2: TWideStringField
      FieldName = 'CARGA_VOL_ESPECIE2'
      Size = 25
    end
    object qrconhecimentoMODELO_NF2: TWideStringField
      FieldName = 'MODELO_NF2'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF2: TWideStringField
      FieldName = 'ESPECIE_NF2'
      Size = 10
    end
    object qrconhecimentoSERIE_NF2: TWideStringField
      FieldName = 'SERIE_NF2'
      Size = 10
    end
    object qrconhecimentoDATA_NF2: TDateTimeField
      FieldName = 'DATA_NF2'
    end
    object qrconhecimentoVALOR_CONHECIMENTO2: TFloatField
      FieldName = 'VALOR_CONHECIMENTO2'
    end
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 432
    Top = 304
  end
  object dsquery1: TDataSource
    DataSet = query1
    Left = 280
    Top = 144
  end
  object PopupMenu2: TPopupMenu
    Left = 176
    Top = 168
    object MenuItem1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
      ShortCut = 113
    end
  end
end
