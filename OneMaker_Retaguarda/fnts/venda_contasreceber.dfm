object frmvenda_contasreceber: Tfrmvenda_contasreceber
  Left = 337
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE VENDA | Gerar Contas a Receber'
  ClientHeight = 419
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = -2
    Top = 65
    Width = 519
    Height = 230
    ControlType.Strings = (
      'TIPO;CustomEdit;combotipo;F')
    Selected.Strings = (
      'PRESTACAO'#9'1'#9'.'#9#9
      'VENCIMENTO'#9'15'#9'Vencimento'#9'F'#9
      'VALOR'#9'13'#9'Valor'#9#9
      'DOCUMENTO'#9'10'#9'Documento'#9#9
      'TIPO'#9'23'#9'Tipo'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = dsvenda_contasreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
    OnKeyDown = wwDBGrid1KeyDown
    OnKeyPress = wwDBGrid1KeyPress
  end
  object FlatPanel2: TFlatPanel
    Left = -2
    Top = 296
    Width = 519
    Height = 64
    Color = clWhite
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 1
    object Label3: TLabel
      Left = 100
      Top = 10
      Width = 92
      Height = 16
      Caption = 'SOMAT'#211'RIO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 321
      Top = 10
      Width = 87
      Height = 16
      Caption = 'DIFEREN'#199'A:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rsoma: TJvCalcEdit
      Left = 86
      Top = 26
      Width = 124
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object rdiferenca: TJvCalcEdit
      Left = 305
      Top = 26
      Width = 124
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
  end
  object pgravar: TFlatPanel
    Left = 991
    Top = 222
    Width = 116
    Height = 374
    Color = clWhite
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 2
  end
  object FlatPanel3: TFlatPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 65
    Color = clWhite
    ColorHighLight = clWhite
    ColorShadow = clWhite
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 10
    ExplicitTop = 36
    ExplicitWidth = 521
    object Label1: TLabel
      Left = 14
      Top = 16
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Condi'#231#227'o de Pgto:'
    end
    object Label2: TLabel
      Left = 14
      Top = 40
      Width = 88
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Qtde. Parcelas:'
    end
    object combocondpgto: TwwDBLookupCombo
      Left = 110
      Top = 12
      Width = 329
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = frmmodulo.qrcondpgto
      LookupField = 'CONDPGTO'
      Color = clWhite
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = combocondpgtoEnter
      OnExit = combocondpgtoExit
      OnKeyPress = combocondpgtoKeyPress
    end
    object rqtde: TRzSpinEdit
      Left = 110
      Top = 40
      Width = 65
      Height = 21
      AllowKeyEdit = True
      Max = 100.000000000000000000
      Enabled = False
      TabOrder = 1
      OnEnter = rqtdeEnter
      OnExit = rqtdeExit
      OnKeyPress = rqtdeKeyPress
    end
  end
  object combotipo: TwwDBLookupCombo
    Left = 175
    Top = 231
    Width = 250
    Height = 21
    DropDownAlignment = taLeftJustify
    DataField = 'TIPO'
    DataSource = dsvenda_contasreceber
    LookupTable = frmmodulo.qrformapgto
    LookupField = 'FORMAPGTO'
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 360
    Width = 516
    Height = 59
    Cursor = crDefault
    Caption.Location = plCenterLeft
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -19
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = clWhite
    Caption.ColorEnd = clWhite
    Caption.Line = False
    Fill.Color = 3355443
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alBottom
    OnMouseDown = AdvSmoothExpanderPanel1MouseDown
    TabOrder = 5
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    ExplicitTop = 545
    ExplicitWidth = 1042
    TMSStyle = 0
    OldHeight = 59.000000000000000000
    object AdvMetroButton1: TAdvMetroButton
      Left = 629
      Top = 0
      Width = 35
      Height = 34
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.1.2.0'
      OnClick = BCANCELARClick
    end
    object yttt558: TAdvGlowButton
      Left = 82
      Top = 0
      Width = 89
      Height = 59
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      OnClick = yttt558Click
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
      ExplicitLeft = 175
      ExplicitTop = 24
      ExplicitHeight = 41
    end
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 82
      Height = 59
      Align = alLeft
      Caption = 'Confirmar'
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
      TabOrder = 2
      OnClick = BGRAVARClick
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
      ExplicitLeft = 17
      ExplicitTop = -12
      ExplicitHeight = 80
    end
  end
  object dsvenda_contasreceber: TDataSource
    DataSet = frmvenda.qrvenda_contasreceber
    Left = 320
    Top = 144
  end
  object pop1: TPopupMenu
    Left = 216
    Top = 104
    object C1: TMenuItem
      Caption = 'Cancelar'
      OnClick = C1Click
    end
  end
end
