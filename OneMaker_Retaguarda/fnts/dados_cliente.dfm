object frmdados_cliente: Tfrmdados_cliente
  Left = 293
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados Cadastrais dos Clientes'
  ClientHeight = 232
  ClientWidth = 590
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 55
    Height = 13
    Caption = 'C'#211'DIGO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 33
    Width = 38
    Height = 13
    Caption = 'NOME:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 6
    Top = 57
    Width = 69
    Height = 13
    Caption = 'ENDERE'#199'O:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 6
    Top = 102
    Width = 51
    Height = 13
    Caption = 'BAIRRO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 293
    Top = 102
    Width = 52
    Height = 13
    Caption = 'CIDADE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 532
    Top = 101
    Width = 19
    Height = 13
    Caption = 'UF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 126
    Width = 61
    Height = 13
    Caption = 'CNPJ/CPF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 149
    Width = 39
    Height = 13
    Caption = 'IE/RG:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 79
    Width = 92
    Height = 13
    Caption = 'COMPLEMENTO:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 293
    Top = 147
    Width = 57
    Height = 13
    Caption = 'CELULAR:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 293
    Top = 123
    Width = 62
    Height = 13
    Caption = 'TELEFONE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object bimprimir: TBitBtn
    Left = 463
    Top = 392
    Width = 122
    Height = 25
    Caption = 'Imprimir'
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      794020733D246C3A266A3D24673B265E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0D69F65FFFFFFE5CAABB26F3AAF6A37AC6734A66030
      A25B2DC4936AFFFFFFBC916F86461B81461CC7B3A1FCFBFBFDFDFDC8BCAD6439
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFD9A266FFFFFFE7CBAA
      B9763DB6743CB4703BB06C39AC6737CD996CFFFFFFC79971934D26B1835FFFFF
      FFC2AA94B9A089FFFFFF99795D633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0DCA566FFFFFFEAD8C2D8A063D79F62BF7E41B9773DB7743CD6A26FFFFF
      FFD09E72A0592DD1AE8FFFFFFFA06E4A926341FFFFFFB9A18B693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0E0AA65FFFFFFFFFFFFFFFFFFFFFFFFD295
      4CCC8E4AD49A5BDCA972FFFFFFD7A575AA6533DABA9BFFFFFFA2673B99643BFF
      FFFFC3AD98723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0E1AB66FFFF
      FFEAD1AFCD8D3CCD8D3CCA8A3CDDA359FFFFFFF0E9E2FFFFFFDCAA77B16D39DA
      AF87FFFFFFB77E51B07D54FFFFFFBC9B7E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0E2AD67FFFFFFF7F5F1ECE1CFECE1CFE8BE86CB8B3CE1AC69F2
      EDE7FFFFFFDEAD79B4713BC18348FFFFFFE2D4C4E5DDD4FEFEFDA16A4186451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFDCA14CEBCA9DEBCA9DEBCA9DEB
      CA9DE4B16DCB8B3BC9893DD99F57E9D2B6D79E61B7753CB26F3BC68C57DDC0A2
      D9C0A3B88055934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D09037CF8F37CC8C3AC9893CC7873EC5843EC17F3EBC7A3E
      B9773CB5723CAF6B38A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    TabOrder = 11
    OnClick = bimprimirClick
  end
  object ecodigo: TDBEdit
    Left = 100
    Top = 10
    Width = 121
    Height = 21
    Color = clWhite
    DataField = 'CODIGO'
    DataSource = dscliente
    Enabled = False
    TabOrder = 0
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object enome: TDBEdit
    Left = 100
    Top = 32
    Width = 484
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'NOME'
    DataSource = dscliente
    TabOrder = 1
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 100
    Top = 54
    Width = 484
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'ENDERECO'
    DataSource = dscliente
    TabOrder = 2
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 100
    Top = 98
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'BAIRRO'
    DataSource = dscliente
    TabOrder = 4
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 358
    Top = 98
    Width = 170
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'CIDADE'
    DataSource = dscliente
    TabOrder = 5
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 554
    Top = 98
    Width = 29
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'UF'
    DataSource = dscliente
    TabOrder = 6
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit7: TDBEdit
    Left = 100
    Top = 120
    Width = 187
    Height = 21
    Color = clWhite
    DataField = 'CPF'
    DataSource = dscliente
    TabOrder = 7
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit8: TDBEdit
    Left = 100
    Top = 142
    Width = 187
    Height = 21
    Color = clWhite
    DataField = 'RG'
    DataSource = dscliente
    TabOrder = 8
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit1: TDBEdit
    Left = 100
    Top = 76
    Width = 484
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'COMPLEMENTO'
    DataSource = dscliente
    TabOrder = 3
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit2: TDBEdit
    Left = 358
    Top = 142
    Width = 170
    Height = 21
    Color = clWhite
    DataField = 'CELULAR'
    DataSource = dscliente
    TabOrder = 10
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 358
    Top = 120
    Width = 170
    Height = 21
    Color = clWhite
    DataField = 'TELEFONE1'
    DataSource = dscliente
    TabOrder = 9
    OnEnter = ecodigoEnter
    OnExit = ecodigoExit
    OnKeyPress = ecodigoKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 181
    Width = 590
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 12
    ExplicitTop = 347
    ExplicitWidth = 937
    object bt005_fech558: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 89
      Height = 51
      Align = alLeft
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000023E4944415478DAE497BF6B136118C73FEF79E6875C6E2908E6489A
        A1217429A2C592C52193A2462862281467375DA4FE094A163767B7D641B41474
        097429456944BB086D2909454B1382D1547289C99D432F31391212BDFC107CC6
        E77DEFFBE1FBBCCFFBBC9C304D9371840CF0E45DADD35A54928C4927E2862165
        814D7BFEFE25F9042C84D1E9BB7BA649C209580863A5131840624C21016C2417
        D9482E0E1DD6CA915B173E3EBD4B269301E0E6E3370381BD5ABA02402814EAAB
        D4CB85FDEDA853A8A5B1DCD719874221841009FDB818740AD68F8B412144C2EE
        D65EEA53C075605ED3B4CD1FFB5BBE6C21EB7602AE7CCB57344D2B01CF8017C0
        1A506F825555C5308C9716185996291FEE503EDC713E286419200ADC5114654D
        92A41BADA59E02AE0DAB9B772F7AF8E916588CA926B85EAFCF026204D75758AC
        F6EB34AC08A7F57F6C728DED75CAE7F3E172B93C12A0D7EB0D371DEBBABE3B2A
        A70D56C7E6AAD56A54ABD581805C2E57E32E779D5CCDC8E57278676FE30E9C77
        04AD1C7CA0B8F51CBFDFDF1F5855557CE72691CF6A8EC0B5DA574AAADABDB980
        A3D6A4A2285C8804D1669C39FEBCFD9D745AB1A78F9AE0542AB51E8BC5F61AE3
        CC1E9F0E4AACBEFDD23770E956A4DBD25E2A955A6F756C0209E001300FB85A77
        6B131EE2737E27E6ABD6EB94B4586D03E43DB000B801A1CD5C5EF913656DC2C3
        74C0C774C0F73B77A2212CCD058BD1BDB9E28F5EB79F5541EF59EAF89C1FF5CC
        E98E5AAB0FAFF6EE6A3B14B09C44FEBACE9DE0522FE8A0C2AE2DC6F50BF3FF3D
        8BBF06000A89ACCFF90571920000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bt005_fech558Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
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
      Layout = blGlyphTop
      ExplicitLeft = 6
      ExplicitTop = 17
      ExplicitHeight = 83
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 454
    Top = 352
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 121
      OnClick = Imprimir1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object dscliente: TwwDataSource
    DataSet = frmPrevenda.qrcliente
    Left = 510
    Top = 352
  end
end
