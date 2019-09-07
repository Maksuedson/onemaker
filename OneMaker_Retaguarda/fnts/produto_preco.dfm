object frmproduto_preco: Tfrmproduto_preco
  Left = 451
  Top = 117
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Atualiza'#231#227'o de Pre'#231'o'
  ClientHeight = 406
  ClientWidth = 560
  Color = clBtnFace
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
  object ppreco: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 353
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    ParentBackground = False
    TabOrder = 0
    object FlatPanel9: TFlatPanel
      Left = 402
      Top = 0
      Width = 33
      Height = 13
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
    end
    object FlatPanel10: TFlatPanel
      Left = 490
      Top = 0
      Width = 33
      Height = 13
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 3
      Width = 226
      Height = 63
      Caption = 'Valores Anteriores'
      Enabled = False
      TabOrder = 2
      object Label7: TLabel
        Left = 8
        Top = 16
        Width = 77
        Height = 13
        Caption = 'Pre'#231'o de Custo:'
      end
      object Label8: TLabel
        Left = 8
        Top = 40
        Width = 79
        Height = 13
        Caption = 'Pre'#231'o de Venda:'
      end
      object edcusto: TRzNumericEdit
        Left = 112
        Top = 12
        Width = 105
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object edvenda: TRzNumericEdit
        Left = 112
        Top = 36
        Width = 105
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
    end
    object GroupBox3: TGroupBox
      Left = 6
      Top = 67
      Width = 226
      Height = 274
      Caption = 'Custos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label19: TLabel
        Left = 8
        Top = 16
        Width = 130
        Height = 13
        Caption = 'Valor da Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 46
        Width = 31
        Height = 13
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 0
        Top = 227
        Width = 226
        Height = 2
      end
      object Label21: TLabel
        Left = 8
        Top = 241
        Width = 117
        Height = 13
        Caption = 'Custo Mercadoria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label73: TLabel
        Left = 8
        Top = 118
        Width = 53
        Height = 13
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 8
        Top = 149
        Width = 29
        Height = 13
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 8
        Top = 207
        Width = 17
        Height = 13
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 8
        Top = 168
        Width = 41
        Height = 13
        Caption = 'Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 8
        Top = 187
        Width = 97
        Height = 13
        Caption = 'Outras Despesas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label79: TLabel
        Left = 122
        Top = 48
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label81: TLabel
        Left = 122
        Top = 120
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label82: TLabel
        Left = 122
        Top = 148
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 122
        Top = 168
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label84: TLabel
        Left = 122
        Top = 188
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label85: TLabel
        Left = 122
        Top = 209
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel5: TBevel
        Left = 0
        Top = 37
        Width = 226
        Height = 2
      end
      object Bevel6: TBevel
        Left = 0
        Top = 138
        Width = 226
        Height = 2
      end
      object Label1: TLabel
        Left = 8
        Top = 70
        Width = 20
        Height = 13
        Caption = 'PIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 72
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 94
        Width = 45
        Height = 13
        Caption = 'COFINS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 122
        Top = 96
        Width = 15
        Height = 9
        Caption = '(-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit19: TDBEdit
        Left = 141
        Top = 13
        Width = 80
        Height = 21
        DataField = 'VALOR_ULTIMA_COMPRA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit20: TDBEdit
        Left = 141
        Top = 42
        Width = 80
        Height = 21
        DataField = 'ICMS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit21: TDBEdit
        Left = 141
        Top = 114
        Width = 80
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit63: TDBEdit
        Left = 141
        Top = 142
        Width = 80
        Height = 21
        DataField = 'FRETE'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit64: TDBEdit
        Left = 141
        Top = 162
        Width = 80
        Height = 21
        DataField = 'SEGURO'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit65: TDBEdit
        Left = 141
        Top = 182
        Width = 80
        Height = 21
        DataField = 'OUTRAS_DESPESAS'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit66: TDBEdit
        Left = 141
        Top = 202
        Width = 80
        Height = 21
        DataField = 'IPI'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit67: TDBEdit
        Left = 141
        Top = 237
        Width = 80
        Height = 21
        DataField = 'CUSTO_COMPRA'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnEnter = DBEdit19Enter
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit68: TDBEdit
        Left = 56
        Top = 43
        Width = 62
        Height = 21
        DataField = 'ICMS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit19Enter
        OnExit = DBEdit68Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object FlatPanel1: TFlatPanel
        Left = 185
        Top = 0
        Width = 33
        Height = 13
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 14
        object Label86: TLabel
          Left = 10
          Top = 0
          Width = 16
          Height = 13
          Caption = 'R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object DBEdit69: TDBEdit
        Left = 56
        Top = 202
        Width = 62
        Height = 21
        DataField = 'IPI_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnEnter = DBEdit19Enter
        OnExit = DBEdit69Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 67
        Width = 62
        Height = 21
        DataField = 'PIS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit19Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 141
        Top = 66
        Width = 80
        Height = 21
        DataField = 'PIS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 56
        Top = 91
        Width = 62
        Height = 21
        DataField = 'COFINS_ENTRADA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit19Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 141
        Top = 90
        Width = 80
        Height = 21
        DataField = 'COFINS_ENTRADA'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 235
      Top = 67
      Width = 317
      Height = 274
      Caption = 'Comercializa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label22: TLabel
        Left = 8
        Top = 14
        Width = 90
        Height = 13
        Caption = 'ICMS de Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 34
        Width = 25
        Height = 13
        Caption = 'PIS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 54
        Width = 50
        Height = 13
        Caption = 'COFINS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Top = 74
        Width = 115
        Height = 13
        Caption = 'Contribui'#231#227'o Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 94
        Width = 110
        Height = 13
        Caption = 'Custo Operacional:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 8
        Top = 114
        Width = 61
        Height = 13
        Caption = 'Comiss'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 0
        Top = 133
        Width = 316
        Height = 2
      end
      object Label28: TLabel
        Left = 8
        Top = 140
        Width = 111
        Height = 13
        Caption = 'Total dos Custos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 9
        Top = 224
        Width = 105
        Height = 13
        Caption = 'Pre'#231'o de Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 134
        Top = 36
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 134
        Top = 56
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 134
        Top = 76
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 134
        Top = 96
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 134
        Top = 116
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 134
        Top = 16
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 0
        Top = 159
        Width = 317
        Height = 2
      end
      object Label40: TLabel
        Left = 8
        Top = 166
        Width = 105
        Height = 13
        Caption = 'Lucro Desejado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 134
        Top = 168
        Width = 15
        Height = 9
        Caption = '(+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
      end
      object Bevel7: TBevel
        Left = 0
        Top = 185
        Width = 316
        Height = 2
      end
      object Label71: TLabel
        Left = 210
        Top = -2
        Width = 14
        Height = 13
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 291
        Top = -1
        Width = 16
        Height = 13
        Caption = 'R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit23: TDBEdit
        Left = 152
        Top = 30
        Width = 75
        Height = 21
        DataField = 'PIS_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit24: TDBEdit
        Left = 152
        Top = 50
        Width = 75
        Height = 21
        DataField = 'COFINS_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit25: TDBEdit
        Left = 152
        Top = 70
        Width = 75
        Height = 21
        DataField = 'CONTRIBUICAO_SOCIAL_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit26: TDBEdit
        Left = 152
        Top = 90
        Width = 75
        Height = 21
        DataField = 'CUSTO_OPERACIONAL_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit27: TDBEdit
        Left = 152
        Top = 110
        Width = 75
        Height = 21
        DataField = 'COMISSAO_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit33: TDBEdit
        Left = 228
        Top = 30
        Width = 80
        Height = 21
        DataField = 'PIS'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit34: TDBEdit
        Left = 228
        Top = 50
        Width = 80
        Height = 21
        DataField = 'COFINS'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit35: TDBEdit
        Left = 228
        Top = 70
        Width = 80
        Height = 21
        DataField = 'CONTRIBUICAO_SOCIAL'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit36: TDBEdit
        Left = 228
        Top = 90
        Width = 80
        Height = 21
        DataField = 'CUSTO_OPERACIONAL'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit37: TDBEdit
        Left = 228
        Top = 110
        Width = 80
        Height = 21
        DataField = 'COMISSAO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit38: TDBEdit
        Left = 152
        Top = 136
        Width = 75
        Height = 21
        DataField = 'TOTAL_CUSTO_P'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit19Enter
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 228
        Top = 136
        Width = 80
        Height = 21
        DataField = 'TOTAL_CUSTO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit8: TDBEdit
        Left = 152
        Top = 10
        Width = 75
        Height = 21
        DataField = 'ICMS_SAIDA_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 228
        Top = 10
        Width = 80
        Height = 21
        DataField = 'ICMS_SAIDA'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit22: TDBEdit
        Left = 152
        Top = 162
        Width = 75
        Height = 21
        DataField = 'LUCRO_P'
        DataSource = dspreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit19Enter
        OnExit = DBEdit22Exit
        OnKeyPress = DBEdit19KeyPress
      end
      object DBEdit32: TDBEdit
        Left = 228
        Top = 162
        Width = 80
        Height = 21
        DataField = 'LUCRO'
        DataSource = dspreco
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit5: TJvDBCalcEdit
        Left = 152
        Top = 221
        Width = 153
        Height = 24
        Margins.Left = 2
        Margins.Top = 1
        DisplayFormat = '###,###,##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 16
        DecimalPlacesAlwaysShown = False
        OnKeyPress = DBEdit5KeyPress
        DataField = 'PRECO_VENDA'
        DataSource = dspreco
      end
    end
    object bnovopreco_venda: TBitBtn
      Left = 343
      Top = 16
      Width = 129
      Height = 25
      Caption = 'bnovopreco_venda'
      TabOrder = 5
      Visible = False
      OnClick = bnovopreco_vendaClick
    end
    object bar: TProgressBar
      Left = 0
      Top = 348
      Width = 560
      Height = 5
      Align = alBottom
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 355
    Width = 560
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 365
    object batualiza: TAdvGlowButton
      Left = 224
      Top = 3
      Width = 182
      Height = 46
      Caption = 'Atualizar Grade e Produto'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A4343383330454337453238313131453242443130394230353645
        4630304337382220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A434338333045433845323831313145324244313039423035364546303043
        3738223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4343383330454335453238313131
        453242443130394230353645463030433738222073745265663A646F63756D65
        6E7449443D22786D702E6469643A434338333045433645323831313145324244
        3130394230353645463030433738222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EF955B0250000045E4944415478DACC99
        7748566114C6EF77535BDAD66C697B90EDEC8F168A0D08DA5034093268170451
        44911045104511ED699B68FF51B4F78EF6A2010D2BD2F6302BB3E7D0F3C6E9F6
        E9B7FCD4033FEE7BAFF7BBF7B9EF38E7BC4797B5FB91158095074D402CA80B6A
        F0FA6B701FA4813BE0B9BF2F08F1F377BD415F9000AA79B8F73D3801F6821DE0
        832F2F72F9D083E5C0243008D4F2F3C33E820D602178909F0287810514A94D7A
        E634B80D6E822FE01708E7903706F1A02B28E9F8ED4C9012A8C0D26033E8A1AE
        DD038BC03E1FE696CCD54E601CE8A0AE5FE388DCF1476015701EC4F0FC079802
        E65B81597F3EA3AABAD6119C7277B39DCB43EA71C88CB8E3BC16A838B16DA03E
        58ADAE9D04DDBD15180ACE808A3CDF0212C1132BFF4CE66A3298A6AEC92A8FF3
        46A04CFA48B697828156F06C3618A9CECF7281E52A702268C3F64530DA0ABE2D
        07CBD88E00A9B92D924A205DF92B59245FAD82B30BAA7312E8C2FEE9C105AA9D
        5CC0E2C406A8F63AE7104783C16C8B87DF6E15BC3D56C35B13B4D7B1B88FBA71
        148FE3416B30873E2B96FE4A7E73093C64A220ABFB2023C34BB09E1F2B313787
        11A50C17DC353E7B0CE7DB5DD0821D35034C0543958ED346A0B92873F0082806
        EA80567C502405B6A21B7A0B3ED39F49682B0E9A524809FACC0C0A8CA3CB2AAB
        3AA136A38B24128DD448BEE0C77661A79508E1CBE379C30E1EC3B950D2194132
        C1279E87F26F5FF902119A0DDEF03C9BBDF78902DFF2F8DD9134B8F88C778EB5
        B09F02E543936C8EB5B9E1FADFD55D78764EB59BD85C20C61EF298538802AFB0
        87C5AADB9C2F2619B86E15BEFD04AFD88EB2559A9EE96BB61B44FBCC6398ED98
        6F2EAB8899AD92CE924C508B829532D3CE560B23948EB72858651E336C7A7F63
        0D8AC050B7A413177B1AC2E4D4589C5A49D2CDD519254AF347B2C50C63648860
        E4B0187924FBF9C691A8A4DC5534EFFBA1DE5381CF93EB510E47DD4EB5EF8670
        498B7B69067A31069B9EDDC590E5622408A5989B8CC1E528389311209D3EEC8C
        8A24191419A95E7C891FFD88EFD2021395DB3B6AF241D9EFCEE31FE295E0CB1E
        8643F6C749609587FBA4C7BB714F9C975560C8345B809E466035B59A6F505C31
        C6D5BCB7AD7F7A30CB8BB915E688C7EE6C89CAA63A83C3A66BD3A8D86256D2C5
        0B71668E657939F93D898B52E2A4B673D899518F53EDB585B07A373932FAFF36
        4D4FC12CB625413D5080E2525879103BC6AA85DB5DDD74953074550B27983690
        D9B459B9FD3CED8B3BAA79358995A86059B2636813E896F214F891496C96DA9B
        6C554E39BF4CF63A2BD5F9706EDCBDAACD88FF6B4E676B0A3E12B387E48330F9
        F85B2C44199362E81A5F8A47A6CCD6909B188B912095A591113EF6A8BCA727F7
        3CA758373419BC08DE196801733298EB26A9DC03AE32B4A5B128649CB27C505B
        8E440F47B94D6C0518EB88D17E0B3425B909ACB6E696377EE3B1781E199154CB
        16BB9B6F810AD4F1B23FEB7949EC2D4F26D3E210D8C80A82D7E60AF0DF100DB9
        F18E614210CE9EFBC23DF233662C97FD7DC16F010600767F01E1A58A2B170000
        000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = batualizaClick
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
    object BITBTN1: TAdvGlowButton
      Left = 412
      Top = 3
      Width = 123
      Height = 46
      Caption = 'ESC | Cancelar'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3237463942453631453238323131453238383933383533304243
        3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A323746394245363245323832313145323838393338353330424336434635
        3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3237463942453546453238323131
        453238383933383533304243364346353036222073745265663A646F63756D65
        6E7449443D22786D702E6469643A323746394245363045323832313145323838
        3933383533304243364346353036222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
        7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
        9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
        15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
        F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
        EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
        C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
        FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
        1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
        C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
        4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
        E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
        21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
        6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
        02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
        60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
        5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
        C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
        6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
        65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
        2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
        E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
        5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
        A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
        3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
        484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
        02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
        86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
        CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
        5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
        E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
        94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
        D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
        ADC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
        D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
        079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
        475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
        AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
        AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
        8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
        703A52D50000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = BitBtn1Click
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
    object batualiza_grade: TAdvGlowButton
      Left = 35
      Top = 3
      Width = 182
      Height = 46
      Caption = 'Atualizar apenas a Grade'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3433384531453735453238323131453239453939383435423344
        3532464433362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A343338453145373645323832313145323945393938343542334435324644
        3336223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3433384531453733453238323131
        453239453939383435423344353246443336222073745265663A646F63756D65
        6E7449443D22786D702E6469643A343338453145373445323832313145323945
        3939383435423344353246443336222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB3CF7EBF000004DB4944415478DABC99
        7B6C4E671CC74FEBD45E14DBAC96BACCA59B8545C622D12C337625143316A218
        D98265461762D125241244828D2DCDFA07B1D18D4DCC652386B86C82AD8B5135
        9DFB6553D5990D75ABF2FDCDF7243F4F9E73E9FBBEFC924FDE739EF39CF3FCCE
        737EB7E779539C55479C04E461D011B4024F824CB65F04A5E04FF03B381AEF00
        6E9CF70D04AF831EA05948DFCB601B5807BE06E76A33504A2D66F0213011E482
        D601FD6A40AACFB56B6029F804EC4DA682A3C047A0B16ABB0936831D601F2803
        FF51C186FCEC9DC133A037DBB4CCE30B27A4603AF812F4556DA2CC7C7EB2F288
        B3DF90E6301EBCACDA0F83E160573C0A8AC1EF062D795E053E009F3A89493FBE
        A036139980EF6C9DFD6CE50950A294DBC0B644951359438F2F506D6BC188A80A
        A6D1AE9AF07C31E805FE729227D7C1BB860D7E0E9E8DA2E08F2083C71FD34192
        21B69036CF78FE4F6A6CAB8262C45D792CB3F87E12676D2828B4B42F6684B8E3
        138EB3CCCF49242B54B2D37906E06B11076FCE70920D627CCE4E500C2EB14F2E
        63A038C824506DF972CF29475A6B2AB8484D777F1A73987400F91CDC26FF822F
        401E680FF6B33DCB92FE5A80533CAE008FEA4FDC54297720A27213996F7303FA
        48607F0FFC01A684D8FE696502A2CFABBA637FD5313F827232D81C4BBBA4AF15
        0CE65AB28C17B9EEF3DCA9EA78AC5670B89ADAD521CABD08661A6DD3411BD009
        BC019EA62D8FA33D9B72D3E7D9159EED41722493B9FC0CD96C5C1921547C65B4
        0D00ABD4F918563AC79997ABAD19CC5F7E60669178FC924BCF49E3C592086556
        53753EC9504E643B98E1D9501CB2433BA1CB10E1C989909BDF31CEE75AFA4881
        FA0828623EFF075C2555FCBD1030C61EDE23E55D3357E55BAFBA089219CA392E
        84F4CD4D20A89753C10C5795E90E350F928DCEFD912AFEC6520D838DDDC341EB
        D462A95147773CA32E3C064E06DCF838EDCBE543D288BCE8F701F7497A1BC2B4
        17E342EB7C48A1FCFF4CBA5C7979D2961545D040BD7DAE1D03DD8CE7E922C4CB
        10274394ABAF1CB732D5786056C8D4D758CECB39335221CF5621CB9365C6F9E4
        903124ECD5E3F1A954CE9817D97B86DCFC80C598F3B9E690670D0337784D0659
        0E06ABFE656C0B926C755CEA72BA8B590776E54C1CF7B9F986C5560A5809AF61
        AA92B2AD3B18E95524946A56E6613288BF122FB778DE54A40AD5690155747D55
        4635569EFF36F11389992F04BCB8FEBC1D792C35C115AF58F846751A6996DD16
        1B2DE4808722CCC812D00EFC16A1EF67EAB8405733E586312FF27980D72E0BAA
        AD1C78080B883D3497630CE8B358A48E88B8DD21F6FB94E71CCCE97755D499C6
        CAED2D1F45BFA5530DB25CAB1B50EB0549265FCC73C257C026B3B29580FDA13A
        5FC8AD0BC7525E8D0F584EC6233F2BE5D67BCAD94A6F29447F51E7BBE891A624
        6B8DDC80E3B5503B6143C3D6C5CFAB95585DDADAE07B909BB3E8385D545B77B3
        4AB229789571ED92910D6491FD6092941B0D0E32B7EBF2ECD7A87B33255C57FC
        ADDA64112F1E352181AA27879FB4D0A868FA7017ADD6DB6F19F4E41CA3FD2C77
        A336321C9CF1B9BF111DAD17D3A8E974A58CBBC5896E60E6B1BCB7CDF82DC6AD
        32A5683A63604B553A99B2805F23293BAC5EAD289FF94D96E3F1480DD3EA82A0
        598B57415D20C8DAF735AE91D323DCB3857B8C45DC41882C2909FE0DD186C9BD
        392B97980AD895AC350F59761A22CB6D010600366217C325081BDD0000000049
        454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = batualiza_gradeClick
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
  object bpreco_venda: TBitBtn
    Left = 48
    Top = 505
    Width = 129
    Height = 25
    Caption = 'bpreco_venda'
    TabOrder = 2
    Visible = False
    OnClick = bpreco_vendaClick
  end
  object dspreco: TDataSource
    DataSet = frmmodulo.qrpreco
    Left = 161
    Top = 153
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 264
    Top = 16
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 296
    Top = 16
  end
  object qrprod: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 320
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 48
    object cancelar1: TMenuItem
      Caption = 'cancelar'
      ShortCut = 27
      OnClick = cancelar1Click
    end
  end
end
