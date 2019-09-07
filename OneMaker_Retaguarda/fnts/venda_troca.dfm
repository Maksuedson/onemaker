object frmvenda_troca: Tfrmvenda_troca
  Left = 249
  Top = 369
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE VENDA | Troca de Mercadorias'
  ClientHeight = 347
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 253
    Width = 617
    Height = 3
    Align = alBottom
    ExplicitTop = 257
  end
  object Bevel1: TBevel
    Left = 0
    Top = 291
    Width = 617
    Height = 3
    Align = alBottom
    ExplicitTop = 295
  end
  object Panel4: TPanel
    Left = 0
    Top = 294
    Width = 617
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object bgravar: TAdvGlowButton
      Left = 6
      Top = 2
      Width = 91
      Height = 48
      Caption = 'Confirmar'
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
        D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
        1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
        A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
        F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
        7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
        7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
        EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
        9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
        C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
        F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
        6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
        A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
        A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
        06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
        0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
        C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
        DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
        7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
        ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
        1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
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
    object bcancelar: TAdvGlowButton
      Left = 104
      Top = 2
      Width = 113
      Height = 48
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
        CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
        BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
        54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
        DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
        30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
        0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
        32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
        4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
        406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
        328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
        BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
        F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
        F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
        D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
        85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
        59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
        E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
        F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
        47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
        C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
        C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
        0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
        CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
        CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 617
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = 14657888
    TabOrder = 5
    object Label15: TLabel
      Left = 365
      Top = 7
      Width = 80
      Height = 13
      Caption = 'Diferen'#231'a - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rdiferenca: TJvCalcEdit
      Left = 453
      Top = 3
      Width = 129
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 0
    Width = 617
    Height = 121
    AdaptiveColors = False
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Produto - ENTRADA'
    Color = clBtnFace
    HeaderColor = 42496
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 145
      Height = 12
      Caption = 'C'#211'DIGO OU C'#211'D. BARRAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 163
      Top = 24
      Width = 67
      Height = 12
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 197
      Top = 72
      Width = 76
      Height = 12
      Caption = 'QUANTIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 285
      Top = 91
      Width = 9
      Height = 16
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 309
      Top = 72
      Width = 119
      Height = 12
      Caption = 'PRE'#199'O VENDIDO - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 437
      Top = 91
      Width = 9
      Height = 16
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 458
      Top = 72
      Width = 112
      Height = 12
      Caption = 'TOTAL DO ITEM - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ecodigo: TEdit
      Left = 8
      Top = 40
      Width = 145
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = ecodigoEnter
      OnExit = ecodigoExit
      OnKeyPress = ecodigoKeyPress
    end
    object EPRODUTO: TwwIncrementalSearch
      Left = 162
      Top = 40
      Width = 421
      Height = 24
      DataSource = dsproduto
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = EPRODUTOChange
      OnEnter = EPRODUTOEnter
      OnExit = EPRODUTOExit
      OnKeyDown = EPRODUTOKeyDown
      OnKeyPress = EPRODUTOKeyPress
    end
    object rqtde: TJvCalcEdit
      Left = 197
      Top = 88
      Width = 81
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnEnter = rqtdeEnter
      OnExit = rqtdeExit
      OnKeyPress = rqtdeKeyPress
    end
    object runitario: TJvCalcEdit
      Left = 301
      Top = 88
      Width = 129
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnEnter = runitarioEnter
      OnExit = rqtdeExit
      OnKeyPress = runitarioKeyPress
    end
    object rtotal: TJvCalcEdit
      Left = 453
      Top = 88
      Width = 129
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 72
      Width = 177
      Height = 41
      Caption = 'Numera'#231#227'o/Serial'
      TabOrder = 5
      object lserial: TLabel
        Left = 2
        Top = 15
        Width = 18
        Height = 13
        Align = alClient
        Alignment = taCenter
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object HeaderView2: THeaderView
    Left = 0
    Top = 121
    Width = 617
    Height = 121
    AdaptiveColors = False
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Produto - SA'#205'DA'
    Color = clBtnFace
    HeaderColor = clRed
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label8: TLabel
      Left = 8
      Top = 25
      Width = 145
      Height = 12
      Caption = 'C'#211'DIGO OU C'#211'D. BARRAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 163
      Top = 25
      Width = 67
      Height = 12
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 197
      Top = 72
      Width = 76
      Height = 12
      Caption = 'QUANTIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 285
      Top = 94
      Width = 9
      Height = 16
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 307
      Top = 72
      Width = 119
      Height = 12
      Caption = 'PRE'#199'O VENDIDO - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 437
      Top = 94
      Width = 9
      Height = 16
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 458
      Top = 72
      Width = 112
      Height = 12
      Caption = 'TOTAL DO ITEM - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ecodigo2: TEdit
      Left = 8
      Top = 41
      Width = 145
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = ecodigo2Enter
      OnExit = ecodigo2Exit
      OnKeyPress = ecodigo2KeyPress
    end
    object eproduto2: TwwIncrementalSearch
      Left = 162
      Top = 41
      Width = 421
      Height = 24
      DataSource = dsproduto
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = eproduto2Change
      OnEnter = eproduto2Enter
      OnExit = eproduto2Exit
      OnKeyDown = eproduto2KeyDown
      OnKeyPress = eproduto2KeyPress
    end
    object rqtde2: TJvCalcEdit
      Left = 197
      Top = 89
      Width = 81
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnEnter = rqtde2Enter
      OnExit = rqtde2Exit
      OnKeyPress = rqtde2KeyPress
    end
    object runitario2: TJvCalcEdit
      Left = 301
      Top = 89
      Width = 129
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnEnter = runitario2Enter
      OnExit = runitario2Exit
      OnKeyPress = runitario2KeyPress
    end
    object rtotal2: TJvCalcEdit
      Left = 453
      Top = 89
      Width = 129
      Height = 24
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 72
      Width = 177
      Height = 41
      Caption = 'Numera'#231#227'o/Serial'
      TabOrder = 5
      object lserial2: TLabel
        Left = 2
        Top = 15
        Width = 18
        Height = 13
        Align = alClient
        Alignment = taCenter
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object PPRODUTO: TFlatPanel
    Left = 592
    Top = 27
    Width = 617
    Height = 254
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 4
      Width = 609
      Height = 245
      Selected.Strings = (
        'PRODUTO'#9'45'#9'PRODUTO'
        'UNIDADE'#9'2'#9'UN'
        'marca'#9'13'#9'MARCA'
        'fornecedor'#9'24'#9'FORNECEDOR'
        'PRECOVENDA'#9'9'#9'PRE'#199'O')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid1DblClick
      OnKeyPress = wwDBGrid1KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
  end
  object pproduto2: TFlatPanel
    Left = 592
    Top = 291
    Width = 617
    Height = 134
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
    object wwDBGrid2: TwwDBGrid
      Left = 4
      Top = 4
      Width = 609
      Height = 126
      Selected.Strings = (
        'PRODUTO'#9'45'#9'PRODUTO'
        'UNIDADE'#9'2'#9'UN'
        'marca'#9'13'#9'MARCA'
        'fornecedor'#9'24'#9'FORNECEDOR'
        'PRECOVENDA'#9'9'#9'PRE'#199'O')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid2DblClick
      OnKeyPress = wwDBGrid2KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 288
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object dsproduto: TDataSource
    DataSet = frmmodulo.qrproduto
    Left = 406
    Top = 96
  end
  object qrvendido: TZQuery
    Connection = frmmodulo.ConexaoLocal
    Params = <>
    Left = 152
    Top = 216
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 112
    Top = 240
  end
end
