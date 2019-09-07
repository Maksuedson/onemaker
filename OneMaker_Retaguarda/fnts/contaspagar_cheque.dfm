object frmcontaspagar_cheque: Tfrmcontaspagar_cheque
  Left = 323
  Top = 321
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CONTAS A PAGAR | Pagamento com Cheque de Terceiros'
  ClientHeight = 393
  ClientWidth = 714
  Color = clWhite
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
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 296
    Width = 714
    Height = 45
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 12
    ExplicitTop = 351
    ExplicitWidth = 713
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object RadioButton1: TRadioButton
      Left = 66
      Top = 4
      Width = 73
      Height = 17
      Caption = 'N'#250'mero'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 66
      Top = 21
      Width = 59
      Height = 17
      Caption = 'Titular'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object loc: TwwIncrementalSearch
      Left = 144
      Top = 12
      Width = 261
      Height = 21
      DataSource = dscheque
      TabOrder = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 713
    Height = 259
    ControlType.Strings = (
      'CODCONTAS_PAGAR;CheckBox;1;0')
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'#9'F'#9
      'EMISSAO'#9'18'#9'EMISS'#195'O'#9'F'
      'VENCIMENTO'#9'18'#9'VENCIMENTO'#9#9
      'DATA_DEPOSITO1'#9'18'#9'DATA DEPOSITO 1'#9'F'
      'DATA_DEPOSITO2'#9'18'#9'DATA DEPOSITO 2'#9'F'
      'DATA_DEVOLUCAO1'#9'18'#9'DATA DEVOLU'#199#195'O 1'#9'F'
      'DATA_DEVOLUCAO2'#9'18'#9'DATA DEVOLU'#199#195'O O2'#9'F'
      'SITUACAO'#9'10'#9'SITUA'#199#195'O'#9'F'
      'CODCLIENTE'#9'6'#9'COD. CLIENTE'#9'F'
      'TITULAR'#9'80'#9'TITULAR'#9#9
      'CODBANCO'#9'6'#9'COD. BANCO'#9'F'
      'AGENCIA'#9'8'#9'AG'#202'NCIA'#9'F'
      'CONTA'#9'15'#9'CONTA'#9'F'#9
      'DATA_CONTA'#9'18'#9'DATA DA CONTA'#9'F'
      'NUMERO'#9'15'#9'NUMERO'#9#9
      'VALOR'#9'10'#9'VALOR'#9#9
      'DESCONTO'#9'10'#9'DESCONTO'#9'F'#9
      'LIQUIDO'#9'10'#9'LIQUIDO'#9'F'#9
      'CODVENDA'#9'6'#9'CODVENDA'#9'F'#9
      'OBS1'#9'80'#9'OBS1'#9'F'#9
      'OBS2'#9'80'#9'OBS2'#9'F'#9
      'CODCONTAS_PAGAR'#9'6'#9'CODCONTAS_PAGAR'#9#9
      'DESTINO'#9'50'#9'DESTINO'#9'F'#9
      'DATA_BAIXA'#9'18'#9'DATA_BAIXA'#9'F'#9
      'CODCONTA_CORRENTE'#9'6'#9'CODCONTA_CORRENTE'#9'F'#9
      'CODCONTA'#9'20'#9'CODCONTA'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dscheque
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 714
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 12
    ExplicitTop = 295
    ExplicitWidth = 713
    object Label1: TLabel
      Left = 400
      Top = 11
      Width = 112
      Height = 13
      Caption = 'Valor total selecionado:'
    end
    object rtotal: TJvCalcEdit
      Left = 520
      Top = 6
      Width = 121
      Height = 21
      Margins.Left = 2
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 341
    Width = 714
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 527
    ExplicitWidth = 1105
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 113
      Height = 52
      Align = alLeft
      Caption = 'F2 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A200000009704859730000093A0000093A01F064924A000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000002754944415478DAC497314B1C4114C77F6F569354827042BC08769E
        B781408C972241B92A4D0AD1DCA58A1FC426AD5F43B0947858A4499AE3B44B38
        6C2CD2046CAE3AAE10E450B333296676A3B7E7EDEEDD061F0C2C3B33FF1FEFCD
        BC9937628CE1216C0AE0FDE187E887521A00AD95FD16034610AD56B4176C8891
        75A0E81A4007E818312D15784746E9763827D2707AA17DDDFA62C109B609EC1A
        A54B626458FF12B02446AA46E9CFC02F6007688C125523FA168116460E815286
        2896DC9C96D3C804AE2AA57F026B132CE39AD3A8A6055705BE01851CF650C169
        5593C08BC08181E9BC76AFD33A180CBB02505E609BD2FB39791AF35C29BD1F72
        063DDE9C704D23F394E2F1542C61D61CE31F58020F8CECE603153EBEF6D97EFB
        8227D3037023BB1278773C5EC99832F742EB95E7949E1658989D61E365299E6A
        9665C1DA0B36F2822ECFDB2D72D1BFE2FBD9EFD8B89065436D8FC15CA17B27A7
        F42EFBB1B1212B0C757112682D25F4362B11BC303BC3D6AB329E8A9FD34A84DA
        AA4F393D34628DBC249ECDCEF0E98DDD9D8FA63C0E7E9C11681341EB159F7271
        2E0B347672758675F6AF6FB8FE63137E79BE406DD54789584FC7877612C1BDCB
        3E7B27A75CF4AF002817E7A8557C6A151F7F4C4FEF808D98D67DA306E17E716E
        1268C4B26775E01D8D1A3C081F177A9B1586BAED2A8754F071A18ED18E76B5B1
        37C68EAB1C12E1E1776613B36386DC4E0DE038696EEFB23F1ED46A37EEA4930E
        3CDBB4DA06BAFFE13EEE6AADB643CEB00AE41CA80BDCE445745A75A73DB2E66A
        1A789793E75DA7D54C5B6536B556AB69D67CD49A3A8D66D6BAFA1C5847CC5652
        AAC552C6CE591F0C6FEC0993600DA091E909932AB31EE8D1F677002FBD397636
        4708BE0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
      ExplicitLeft = 12
      ExplicitTop = 18
      ExplicitHeight = 64
    end
    object bcancelar: TAdvGlowButton
      Left = 601
      Top = 0
      Width = 113
      Height = 52
      Align = alRight
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
        89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
        A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000053F4944415478DAC4974F885C551687BF73EE7D55A94E5226817455
        9B40A24C70E3C6859B9861C20C3303AE14375192744750D21D9C888BD1EECDEC
        BA1D611699907F0EE44F47548691590EE8E028C4B8C8226E4517061CD3550D89
        5D095657BD7BEF71F1AA5B43EA75060DCC81BB7A70BE73CFFD9DDF7D57FEB377
        2F2B11A3B1AEE6D83A5AA3DFEB6326281ED43C2EFD0E9327BCEAEE84EDC0E401
        00C49614B91652BA8CD827447D9F24211110312AD50A8BED2ECBDD8873B2CAF2
        94849901D4D47354549E07B74B44300C416035876C3178C8ABDB6B1878BEB0C4
        D914EC989975CBF26B1954D53DEB3377551D73C02E00C3282DF4876FBBD431E7
        337755D53D3BD8C0DDE094A058468C8625438459E7FDDBA2EE112B6795176120
        EA1E71DEBF2DC2AC0D72A764ACF07C960D1A264A561136D6B379900360F013A0
        77D08BCCD31BEB95ED467E50B09523C4D7EB456BB34A46A5529D35EC404A3F87
        7867A464D446FC819191ECEB7EBF3793F7FB88086A565461C633C96CFA7E427F
        0C4F66D3663CB3C25391753857F3CEFB63654248BD1E962288946717C15224F5
        7AA553E2BC3FE65CCD8BAC433187F7EE1555DD5696D0ADDF40EA762186E17011
        8881D4EDE2D66F282D5055B779EF5EC11CEA3D5575BC3C4C49A9B78C78CFCED9
        E38CEE9BA0DF5EC0427E6762112CE4F4DB0B8CEE9B60E7EC71C47B526F79E8D0
        A9E365EFADAAD1C73DA23236ACCB9265846F6FD2B9F4215BF71DA2313149DE5E
        C0F2015C04CB73F2F6028D8949B6EE3B44E7D287846F6F222BE372D798C958F4
        718F3BF2E82FA65474F7D02EAB439C63E9E37F6396688E4F42323A973F4247D6
        434AE4EDEB340E1EA6313EC9C2F993B4CE9EC06FDA8CB8325314CC687B2FFA78
        E9C09A21CE938D36685F388D18340E4D810A0B674F00D07CFE088DF1495AE74E
        D29E3F4DD6182BA0A5CE637891C73DC28E7B1981F88C6C748CD6C53390791AE3
        93C4DBB7000AE85B6FD2BA78866C740CF1D91AD0D54DEFF066525F6B4A56E159
        015FF8DB5F89376FF0E04BAF01F0CDF1D759FCC75B54C6B623DEDF1B0A98495D
        F93F8517B10EC896B55B3350EFE202CD17FE4063FF8B7C73E20D001E7CE935DC
        E62DB4CE9E20DBDA2CD47CCF56DB92C7B886B0734D68C87F50EFFE17695D38C5
        E2DFE701701B36D2189F843CD05A11D73DCE59E19A0F6657BCE8AF862A5B048B
        81BCDD6274FC308D89295AE74ED29A3F4D656C3B00ADF3A720198D435398407B
        FE4DB246730D650B21A52BEEF0A30F27AFEEE05011A448EA76694E4CD1D8FF02
        AD8B67685D385DA837CB1055B43642E7D38F4195E6F824BAAEC6EDAB570A0F50
        1DB21721B7F827EF82BB6462D745B9CBBD2CCFF19B3653DFF36B16DF3D47EBFC
        29B2D1E61DAD2CD4DEA475FE149A55A9FFF237DCF8D73F89B76F21CEDD65E996
        ECBA0BEE927CF6D4936415FEE832F9F3D0DB4904719EB0741357ABC1B0160E2E
        89D85DC63FB0098B61689B458498DBAB799F37E4B3A77F8F083EABEA5722B2AD
        EC5A94CCAFED48033D581ED06AB5EC6AFC6FDE4B3BCD086AB64C8CDD1043382A
        65D759B58AA85B7B4CCC1075A5501121867034C66E305B46458462F19E8ACCA9
        CA7D370B554145E644786F85E73B9D42E2220123CED4EBD9F6DA88BF6FFF5DAA
        42F7BB70B1D3C9678A9FBD62633ECF574F92100CC10ED646DCD720D308FF93F7
        969D79610D3677ABD39FE97E17F15E587909A82A144B704E1015CC9889213C67
        297E2EF21399297E1E4378CE8C1919E45615567965424829BE13F2F8588A4C03
        5FC28F5E2D43FD6835BE4C91E990C7C7528AEF9409D697572D984937055E47F9
        0B2EFD16B3279CB8DD88EDB0C1A34DC49630B9162C5E46E413A27E40222F7453
        5EE8F703002EBE857159353E1E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clSilver
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = clSilver
      Appearance.ColorCheckedTo = clSilver
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = clSilver
      Appearance.ColorDownTo = clSilver
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clSilver
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clSilver
      Appearance.ColorMirrorDown = clSilver
      Appearance.ColorMirrorDownTo = clSilver
      Appearance.ColorMirrorChecked = clSilver
      Appearance.ColorMirrorCheckedTo = clSilver
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
      ExplicitLeft = 167
      ExplicitTop = 18
      ExplicitHeight = 64
    end
  end
  object qrcheque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000040 order by vencimento')
    Params = <>
    Left = 296
    Top = 48
    object qrchequeCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeEMISSAO: TDateField
      DisplayLabel = 'EMISS'#195'O'
      DisplayWidth = 18
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateField
      DisplayWidth = 18
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateField
      DisplayLabel = 'DATA DEPOSITO 1'
      DisplayWidth = 18
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateField
      DisplayLabel = 'DATA DEPOSITO 2'
      DisplayWidth = 18
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateField
      DisplayLabel = 'DATA DEVOLU'#199#195'O 1'
      DisplayWidth = 18
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateField
      DisplayLabel = 'DATA DEVOLU'#199#195'O O2'
      DisplayWidth = 18
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeSITUACAO: TIntegerField
      DisplayLabel = 'SITUA'#199#195'O'
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrchequeCODCLIENTE: TWideStringField
      DisplayLabel = 'COD. CLIENTE'
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TWideStringField
      DisplayWidth = 80
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TWideStringField
      DisplayLabel = 'COD. BANCO'
      DisplayWidth = 6
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TWideStringField
      DisplayLabel = 'AG'#202'NCIA'
      DisplayWidth = 8
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeCONTA: TWideStringField
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeDATA_CONTA: TDateField
      DisplayLabel = 'DATA DA CONTA'
      DisplayWidth = 18
      FieldName = 'DATA_CONTA'
    end
    object qrchequeNUMERO: TWideStringField
      DisplayWidth = 15
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeCODVENDA: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TWideStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDESTINO: TWideStringField
      DisplayWidth = 50
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeDATA_BAIXA: TDateField
      DisplayWidth = 18
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeCODCONTA_CORRENTE: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequeCODCONTA: TWideStringField
      DisplayWidth = 20
      FieldName = 'CODCONTA'
    end
  end
  object dscheque: TDataSource
    DataSet = qrcheque
    Left = 248
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 184
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
end
