object frmMesas: TfrmMesas
  Left = 498
  Top = 48
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Mesas'
  ClientHeight = 507
  ClientWidth = 462
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgFundo: TImage
    Left = 0
    Top = 41
    Width = 462
    Height = 438
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 790
    ExplicitHeight = 532
  end
  object Image1: TImage
    Left = 0
    Top = 41
    Width = 462
    Height = 438
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 790
    ExplicitHeight = 532
  end
  object lb_cliente: TRzLabel
    Left = 672
    Top = 217
    Width = 469
    Height = 47
    Caption = 'Mesas / Comandas - Abertas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
    ShadowColor = clBlack
    TextStyle = tsShadow
  end
  object grid_venda: TNextGrid
    Left = 0
    Top = 41
    Width = 462
    Height = 438
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    BorderStyle = bsNone
    Caption = ''
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 130
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Mesa / Comanda'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 130
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxDateColumn1: TNxDateColumn
      DefaultValue = '26/08/2009'
      DefaultWidth = 102
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Data'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 1
      SortType = stDate
      Width = 102
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 98
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Hora'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 98
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 105
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Valor Total R$'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 105
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 41
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = clWhite
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 1
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 41.000000000000000000
    object Label17: TLabel
      Left = 90
      Top = 5
      Width = 306
      Height = 25
      Caption = 'Mesas / Comandas - Abertas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object img_cliente: TAdvOfficeImage
      Left = 5
      Top = 4
      Width = 43
      Height = 31
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
        11000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005564944415478DAA496DF8B5D5715C73F6BED7DCEB97333F74E6626
        3F4AC6621B8B034990A6C51F49C087983F4011D1C73412ED6341FAE04369FF01
        FBD497121AF04D50908250F021066D8C68498AC531369DC489F96D3BEDDC3BB9
        F79E1F7B2F1FCEF5CEC4CE1DEEE086C3DE9CBDCEFAAEB5CFF7BBD69633D7DE66
        27439C9F11F467A2EE7B0016C32F8DF8130BD5DA4EFC78763632557F0191E730
        1B06E27E28A64743A88E83E52093013B9FEE24DFB3C0081460B87E4E7D7616EC
        8D8981757E57ED52051B54C44E013AF6E363605B87247A0C7863CBCD68483B45
        1A1E62FDBD1FFCE1761DF8A0C22D4C937E652F71750045DC2AF81B631332BBF1
        F97740AAE8DC14E55FFF4D75671D69B83AD0EF7EFBA71BC0FB9A4C7DE74B24CF
        CEA3AD84D829B03C22324A6B417DBA04D2DEC85C00EBC4AA3884D99DFF9EBE64
        8AB65362B7A47CFF13FABF5E263CECD55903EEC8374E210D8FB633AC08147F7E
        40757D0D8B113DD0446753AC0C581541AC2B22BF17D563DA4AF74AE6B0322C59
        ACBE6FB15AB268900A3A97D6BE2EDFA7FFAB1BE4176E835774B681640E69F84D
        AC8E86A40E9973845BEBF46E76F0971E909E7882F4AB7BEBC0CA8824EE8FE2FD
        D1DE2FAEFFCEC09A3F78E6249514522A9A28D62BC92FDEA3B8749FEA6607718A
        CE354618DBCA495A0922D4012C7F4871E93ED9C903B8277661594279F561F1E8
        ED8F6E00224D2992A3FBB0BC24DC7F447EE12ED5720749149DCDC671711B1DDB
        4600D54A97F0F30F6B6218581170FBA67601F47FF34F06BFFD1708D82060D1D0
        F921A0FD3F05C440DB697D4C5673499AC988F1D24C4647284D8FA86C0BB8F3CA
        F5796D1723523B61A7E37F81DB406BC280760FE72F4E605B015DA0330EF84FC0
        7E204CE0AC3D9CFF3281AD031E0087B6024E802781B3C0E5099CBD399C7F3C81
        ED31E0DC10A3DC2AE32E700D5899C0D967C37912DBD9A1EF8D7F6C1601414675
        9196D9662D3CB6B7798C6F6B22485D4A6B2F66AD8DADDA979A19315684AA4044
        09A1228472841B6389594054B7EF78526B4FBD47FD506E22A8F388739845D47B
        441D88E09F39F24D9CF3DCBA7EB5FCF8C17268EFDEBFFAD497BF864F53FABD40
        0C397797AFD05F5DC365292E4DC0226E2AE901847E09A284A2C4A2A07EC0DACA
        1255BF074913F59E3D8B4756A766F784EE9D9572F5E67510F0D3ED3D389F7070
        F1EB8B69EA9BFB17169F6FCD3FF9B750159895A453D37CB2B24C67FD2E99F338
        0F31C6D4C1530031C454558B584554521EDDBBCBFAED9B68926169452C73C4F9
        E767BEF074F3E38F9616F34EE71FEA1C9A0FFAC4F2D1AB535353EF1D7EF65B73
        33B3FBCFC7A27BBE2AFB69510C288A1E310610A91B8997E3AE915CB568272CDA
        09D748AE8A97E344C3CC50555C9AE29204972469B67BFE7CB1DE3DFF70E9FD39
        8CF7D299B9579DF778457E94A87B2D5A20CF7B002E71EE8510109FC80B89575C
        E2D0D4A1892E88977750698FCAA4D743447B471377489DBB23890397804B50E7
        DE14E74F6F9053A645F5B5E8DC3D6D64FE9510EDB16B548846E2F5F4CC7476B8
        B52BA1D1CE48669B24ADC68B407B737B1BAEDB492B7D31DB9DE15B4DC86690E6
        CC61F1E9696278BCF0C780A68D571438308EA4822CE850028221C2C1F10A9283
        882002228AA00BDB48E080C6681F8CB99FC52A866B558C842A12EB676C458B21
        5EB6A19DC59218CB6B60712B8D9B850F7450542F3927A37B9500CE2965082FAF
        758B5B9DF58A416740F9699FB2939F03AEC8A64E355C5F29D7F273834F0754DD
        1E0CD6A0F7D9AD58162FA3EE315044B162F0928A72B1A8E2A92AD8BB22D20D66
        4B79599D31EC754C1815B1BA17E756DAC95084B744A423422714D55B56DA4984
        7CA3F9D71CB0185F8F657EC6CCFE0ED2B550BD1B8AFC941917FF330003727A49
        2206AB080000000049454E44AE426082}
      Version = '1.1.1.0'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 479
    Width = 462
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object RzLabel1: TRzLabel
      Left = 6
      Top = 7
      Width = 75
      Height = 17
      AutoSize = False
      Caption = 'F2 - Concluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
    object RzLabel3: TRzLabel
      Left = 298
      Top = 7
      Width = 148
      Height = 17
      AutoSize = False
      Caption = 'F5 - Confer'#234'ncia de Mesa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
    object LB_MENU_FISCAL: TRzLabel
      Left = 498
      Top = 7
      Width = 91
      Height = 17
      AutoSize = False
      Caption = 'F8 - Menu Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.2.1'
    Left = 600
    Top = 40
    object Finalizar1: TMenuItem
      Caption = 'Concluir'
      ShortCut = 113
      OnClick = Finalizar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      Enabled = False
      ShortCut = 115
      OnClick = Cancelar1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 116
      OnClick = Imprimir1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Retornar1: TMenuItem
      Caption = 'Retornar'
      ShortCut = 27
      OnClick = Retornar1Click
    end
  end
  object tm_Atualiza: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tm_AtualizaTimer
    Left = 512
    Top = 384
  end
  object qrMesa: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 216
    Top = 304
  end
  object QRITEM: TUniQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 320
    Top = 304
  end
end
