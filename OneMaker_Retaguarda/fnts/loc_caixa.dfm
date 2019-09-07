object frmloc_caixa: Tfrmloc_caixa
  Left = 525
  Top = 207
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Localizar Operador de Caixa'
  ClientHeight = 211
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 390
    Height = 211
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'#9#9
      'nome'#9'40'#9'Caixa'#9'F'#9
      'SIT'#9'10'#9'Situa'#231#227'o'#9#9
      'DATA'#9'10'#9'DATA'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsfunci
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = DBGrid1DblClick
  end
  object dsfunci: TDataSource
    DataSet = qrcaixa_operador
    Left = 272
    Top = 96
  end
  object qrcaixa_operador: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 272
    Top = 144
    object qrcaixa_operadorCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadornome: TStringField
      DisplayLabel = 'Caixa'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFUNCIONARIO'
      Size = 30
      Lookup = True
    end
    object qrcaixa_operadorSIT: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'SIT'
      Size = 15
      Calculated = True
    end
    object dtfld_operadorDATA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrcaixa_operadorCODFUNCIONARIO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODFUNCIONARIO'
      Visible = False
      Size = 6
    end
    object qrcaixa_operadorSENHA: TWideStringField
      DisplayWidth = 30
      FieldName = 'SENHA'
      Visible = False
      Size = 30
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcaixa_operadorSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TWideStringField
      DisplayWidth = 50
      FieldName = 'SITUACAO_ATUAL'
      Visible = False
      Size = 50
    end
  end
end
