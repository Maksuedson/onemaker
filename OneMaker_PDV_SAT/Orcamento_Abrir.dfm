object frmOrcamento_Abrir: TfrmOrcamento_Abrir
  Left = 76
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Or'#231'amentos'
  ClientHeight = 387
  ClientWidth = 738
  Color = 9555950
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TNextGrid
    Left = 0
    Top = 39
    Width = 738
    Height = 312
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    BorderStyle = bsNone
    Caption = ''
    EnableVisualStyles = False
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 0
    TabStop = True
    ExplicitTop = 87
    ExplicitWidth = 745
    ExplicitHeight = 261
    object NxNumberColumn1: TNxTextColumn
      Alignment = taRightJustify
      DefaultValue = '0'
      DefaultWidth = 63
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'N'#250'mero'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 63
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 103
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'DAV'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 103
    end
    object NxDateColumn1: TNxDateColumn
      DefaultValue = '08/06/2009'
      DefaultWidth = 83
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Data'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 2
      SortType = stDate
      Width = 83
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 377
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Cliente'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 377
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 90
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Valor-R$'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Width = 90
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'CPF'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 6
      SortType = stAlphabetic
      Visible = False
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'subtotal'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 7
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn5: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'desconto'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 8
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn6: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'acrescimo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 9
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object dav_anterior: TNxTextColumn
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'dav_anterior'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 10
      SortType = stAlphabetic
      Visible = False
    end
    object NxNumberColumn7: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'COD_CLIENTE'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 11
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 48
    ExplicitWidth = 745
    object Label1: TLabel
      Left = 128
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 420
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 561
      Top = 8
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object bt_filtrar: TBitBtn
      Left = 667
      Top = 3
      Width = 62
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 4
      OnClick = bt_filtrarClick
    end
    object ed_cod_cliente: TEdit
      Left = 170
      Top = 6
      Width = 47
      Height = 21
      Color = clWhite
      TabOrder = 1
    end
    object Button1: TButton
      Left = 220
      Top = 6
      Width = 20
      Height = 21
      Caption = 'F6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object ed_nome_cliente: TEdit
      Left = 244
      Top = 6
      Width = 165
      Height = 21
      Color = clWhite
      TabOrder = 6
    end
    object ed_inicial: TJvDateEdit
      Left = 468
      Top = 6
      Width = 89
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 2
      OnKeyPress = ed_inicialKeyPress
    end
    object ed_final: TJvDateEdit
      Left = 572
      Top = 6
      Width = 89
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 3
      OnKeyPress = ed_finalKeyPress
    end
    object ed_numero: TEdit
      Left = 58
      Top = 6
      Width = 63
      Height = 21
      Color = clWhite
      TabOrder = 0
      OnKeyPress = ed_numeroKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 351
    Width = 738
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -1
    ExplicitTop = 348
    ExplicitWidth = 745
    object bt_imprimir: TButton
      Left = 0
      Top = 0
      Width = 105
      Height = 36
      Align = alLeft
      Caption = 'F2 &Imprimir DAV'
      TabOrder = 0
      OnClick = bt_imprimirClick
      ExplicitLeft = 8
      ExplicitTop = 4
      ExplicitHeight = 25
    end
    object Button3: TButton
      Left = 663
      Top = 0
      Width = 75
      Height = 36
      Align = alRight
      Caption = 'ESC &Fechar'
      TabOrder = 1
      OnClick = Button3Click
      ExplicitLeft = 656
      ExplicitTop = 4
      ExplicitHeight = 25
    end
    object Button2: TButton
      Left = 105
      Top = 0
      Width = 105
      Height = 36
      Align = alLeft
      Caption = 'F3 &Cupom'
      TabOrder = 2
      OnClick = Button2Click
      ExplicitLeft = 117
      ExplicitTop = 4
      ExplicitHeight = 25
    end
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.2.1'
    Left = 800
    Top = 384
    object MenuFiscal2: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal2Click
    end
    object ImprimirDAV1: TMenuItem
      Caption = 'Imprimir DAV'
      ShortCut = 113
      OnClick = bt_imprimirClick
    end
    object CupomFiscal1: TMenuItem
      Caption = 'Cupom Fiscal'
      ShortCut = 114
      OnClick = Button2Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Button3Click
    end
  end
  object qrItem: TUniQuery
    Left = 80
    Top = 216
  end
  object query: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    Left = 208
    Top = 216
  end
end