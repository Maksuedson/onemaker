object frmProduto_consultaserial: TfrmProduto_consultaserial
  Left = 494
  Top = 482
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Consulta Serial'
  ClientHeight = 240
  ClientWidth = 592
  Color = 11429670
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 592
    Height = 2
    Align = alTop
    ExplicitTop = 41
    ExplicitWidth = 477
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 54
    Top = 54
    Width = 50
    Height = 15
  end
  object Bevel4: TBevel
    Left = 111
    Top = 54
    Width = 355
    Height = 15
  end
  object lcodigo: TLabel
    Left = 60
    Top = 55
    Width = 42
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object lproduto: TLabel
    Left = 116
    Top = 55
    Width = 338
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 73
    Width = 43
    Height = 13
    Caption = 'Unidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel5: TBevel
    Left = 54
    Top = 73
    Width = 50
    Height = 15
  end
  object lun: TLabel
    Left = 57
    Top = 74
    Width = 42
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label7: TLabel
    Left = 112
    Top = 73
    Width = 33
    Height = 13
    Caption = 'Marca:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel6: TBevel
    Left = 162
    Top = 73
    Width = 304
    Height = 15
  end
  object lmarca: TLabel
    Left = 167
    Top = 74
    Width = 291
    Height = 13
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 105
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Compra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel7: TBevel
    Left = 94
    Top = 105
    Width = 80
    Height = 15
  end
  object lcompra: TLabel
    Left = 97
    Top = 106
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label11: TLabel
    Left = 198
    Top = 105
    Width = 56
    Height = 13
    Caption = 'Nota Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel8: TBevel
    Left = 260
    Top = 105
    Width = 59
    Height = 15
  end
  object lnf: TLabel
    Left = 263
    Top = 106
    Width = 56
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label13: TLabel
    Left = 336
    Top = 105
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Custo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Bevel9: TBevel
    Left = 400
    Top = 105
    Width = 65
    Height = 15
    Visible = False
  end
  object lcusto: TLabel
    Left = 396
    Top = 106
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
    Visible = False
  end
  object Label15: TLabel
    Left = 31
    Top = 124
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel10: TBevel
    Left = 94
    Top = 124
    Width = 371
    Height = 15
  end
  object lfornecedor: TLabel
    Left = 99
    Top = 125
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label17: TLabel
    Left = 45
    Top = 154
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel11: TBevel
    Left = 94
    Top = 153
    Width = 131
    Height = 15
  end
  object lestoque: TLabel
    Left = 97
    Top = 154
    Width = 120
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'EM ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 15
    Top = 177
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel12: TBevel
    Left = 94
    Top = 177
    Width = 80
    Height = 15
  end
  object lvenda: TLabel
    Left = 97
    Top = 178
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label21: TLabel
    Left = 219
    Top = 177
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel13: TBevel
    Left = 260
    Top = 177
    Width = 61
    Height = 15
  end
  object lnumero: TLabel
    Left = 263
    Top = 178
    Width = 58
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label23: TLabel
    Left = 368
    Top = 177
    Width = 28
    Height = 13
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel14: TBevel
    Left = 400
    Top = 177
    Width = 65
    Height = 15
  end
  object lvalor: TLabel
    Left = 396
    Top = 178
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
  end
  object Label25: TLabel
    Left = 53
    Top = 196
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel15: TBevel
    Left = 94
    Top = 196
    Width = 371
    Height = 15
  end
  object lcliente: TLabel
    Left = 99
    Top = 197
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 2
    Width = 592
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 133
      Height = 13
      Caption = 'Informe o N'#250'mero de S'#233'rie:'
    end
    object eloc: TRzEdit
      Left = 160
      Top = 13
      Width = 305
      Height = 21
      Text = ''
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 0
      OnKeyPress = elocKeyPress
    end
  end
  object ptampa: TFlatPanel
    Left = 448
    Top = 275
    Width = 477
    Height = 179
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select seria.*, produt.produto, produt.codmarca, produt.unidade,'
      'produt.precovenda prv from c000022 seria, c000025 produt'
      'where seria.codproduto = produt.codigo')
    Params = <>
    Left = 520
    Top = 152
    object qrserial_produtomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 50
      Lookup = True
    end
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrinventario_produtoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrinventario_produtoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrserial_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrserial_produtoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrserial_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrserial_produtoPRV: TFloatField
      FieldName = 'PRV'
    end
  end
end
