object frmvenda_fechamento_aprazo: Tfrmvenda_fechamento_aprazo
  Left = 334
  Top = 256
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ATENDIMENTO | Fechamento '#224' Prazo'
  ClientHeight = 281
  ClientWidth = 364
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 51
    Top = 21
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Subtotal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 51
    Top = 45
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 51
    Top = 68
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Acr'#233'scimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 51
    Top = 92
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 12
    Top = 123
    Width = 129
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cond. de Pgto.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 51
    Top = 150
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Parcelas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object rdesconto2: TJvCalcEdit
    Left = 230
    Top = 42
    Width = 95
    Height = 22
    Margins.Left = 5
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
    OnExit = rdesconto2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo2: TJvCalcEdit
    Left = 230
    Top = 65
    Width = 95
    Height = 22
    Margins.Left = 5
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnExit = racrescimo2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object rdesconto1: TJvCalcEdit
    Left = 160
    Top = 42
    Width = 69
    Height = 22
    Margins.Left = 5
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 0
    DecimalPlacesAlwaysShown = False
    OnExit = rdesconto1Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo1: TJvCalcEdit
    Left = 160
    Top = 65
    Width = 69
    Height = 22
    Margins.Left = 5
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
    OnKeyPress = rdesconto1KeyPress
  end
  object Panel3: TPanel
    Left = 0
    Top = 230
    Width = 364
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 6
    ExplicitTop = 375
    ExplicitWidth = 415
    object bgravar: TBitBtn
      Left = 518
      Top = 80
      Width = 97
      Height = 25
      Caption = 'F2 | Gravar'
      TabOrder = 0
      OnClick = bgravarClick
    end
    object bcancelar: TBitBtn
      Left = 246
      Top = 108
      Width = 97
      Height = 25
      Caption = 'Esc | Cancelar'
      TabOrder = 1
      OnClick = bcancelarClick
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 100
      Height = 51
      Align = alLeft
      Caption = 'F2 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
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
      OnClick = AdvGlowButton1Click
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
      ExplicitLeft = -7
      ExplicitTop = 4
      ExplicitHeight = 61
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 264
      Top = 0
      Width = 100
      Height = 51
      Align = alRight
      Caption = 'Esc | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
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
      TabOrder = 3
      OnClick = AdvGlowButton2Click
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
      ExplicitLeft = 140
      ExplicitHeight = 61
    end
  end
  object bParcelamento: TBitBtn
    Left = 743
    Top = 218
    Width = 166
    Height = 23
    Caption = 'F10 | Consultar Parcelas'
    TabOrder = 7
  end
  object rsubtotal: TJvCalcEdit
    Left = 159
    Top = 18
    Width = 166
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
  end
  object rtotal: TJvCalcEdit
    Left = 160
    Top = 88
    Width = 165
    Height = 22
    Margins.Left = 2
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 9
    DecimalPlacesAlwaysShown = False
  end
  object rparcelas: TJvCalcEdit
    Left = 160
    Top = 145
    Width = 165
    Height = 22
    Margins.Left = 5
    Margins.Top = 2
    Flat = True
    ParentFlat = False
    AutoSize = False
    Color = clWhite
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MinValue = 1.000000000000000000
    NumGlyphs = 2
    ParentFont = False
    ShowButton = False
    TabOrder = 5
    Value = 1.000000000000000000
    DecimalPlacesAlwaysShown = False
    OnExit = rdesconto2Exit
    OnKeyPress = rparcelasKeyPress
  end
  object comboforma: TComboBox
    Left = 160
    Top = 120
    Width = 165
    Height = 24
    Style = csDropDownList
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Text = 'CREDI'#193'RIO'
    OnKeyPress = comboformaKeyPress
    Items.Strings = (
      'CREDI'#193'RIO'
      'CHEQUE '#192' PRAZO'
      'CART'#195'O DE CR'#201'DITO')
  end
  object AdvGlowButton3: TAdvGlowButton
    Left = 152
    Top = 173
    Width = 173
    Height = 49
    Caption = 'F10 | Consultar Parcelas'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Picture.Data = {
      89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
      A2000000097048597300000B1300000B1301009A9C18000000206348524D0000
      7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
      1F90000005F34944415478DABC965B8C5E5515C77F7B9FEB77BECB7C33EDDCDA
      7E1DCA8CD3D2522DD45E80D8C4169422248A2115A260E22B98A80F6AD407134D
      4C50135F8CC668C28346084A8294348A8519465A81523A6DA22D36AD0CBDB7D3
      99EF7ABE73CEDECB87999A5E9C4E4B53FFC97AD80F3BBFBDD6DEEBBF97DABAF5
      2900C45AA28525142159DBE2E4A9388ACF8AB0095889480F6051EA24C25EA518
      B5CABEA013E7FC74758223C70E716AE221AA675B80309FDC8B1722A05D895C5F
      7D576B792A6EB40AD6185CCF43690D80B5B6274BD38F7A9EF7849F0B7FE8F8DE
      D3D69A9FA6498C529A6B952B32431463C1527103E78FB1697EBC35D5A677E912
      962E5F4E777F1FB9421E11A151AD716AE2038E1E3CC8E4C9D37DC572F92751B1
      634BB9ABFFD189C34915D43581D5C39FFB2AE2F8E0054B3CDF7BABD1A8F70561
      8EF5F76D61D5BAB544A50226B317954FA1B5667A7292FDBB76B3E7D5113CCFC5
      8F8A7B766E6FAD4F9ACA5E4BA9D5B6479E44DCBCA70A1D6FD627CFAD2994CB6C
      FDE2630C2CBF95663D26896394BA2C0B1182282297F7F9E73BFBF9F3EF9FC324
      295129FFBC341A8FA8CC82BE7AE6CECADB3683EF7EAF9D245FF07C9F07BFFC25
      960E0F529D9CC61A73251440294C9AD28E132A1F594ABED4C5E1F1FD086AA5D2
      FA8068F987688D6835676882A80F37F85612B7587FDF160656CC40E7AF954244
      983E5B63D5BA35ACBE7B23CD5A0D71DC1F89E707E2FA5C2DB4F5CCE7DBAD7AD8
      BB64092BD7ADA5598BB91E196348DB19B76FDC40B15C264D922132F713A40E64
      7387ABE05E9319068687C9178B54CF4FFDEFF2CE99B8A2D56CD1D9DDCDE2C165
      1CDABB0FBF237C20080AAFCCD7C783AEE7B1A0BF1F33D79DCE231141BB0E0BFB
      FA39C43869D65E7EFEDCB1790C44A45B694D54C8F3A12582A335B9429E309767
      7AF244EF5FB7FF6A5EE732337B2D372AB182B582765CE3BAFE3C60A54E596B17
      D7AB3514EA43019552186368D4AA2471835267F78907B77D7D3ECB5407B234BD
      F3F4C4046AE38619C3BECE7B565A932629A7263E40391A8DB3D70F4B57DDA341
      7678BECFBF0F1E62EAEC19827C7E067E1D0F2B2A449C39769CE3478EE2070118
      5ECA5A29593C77689D387FF2C3DCB9C9D367187F633761E4A11DE79AA19EEFA3
      B466DFD8DF889B2D5CDF7F1337DB839792DA167156A59D4DD1CEA667638AB6A9
      E292D6EB38EE7772C5E22FF68E8ED15BA970FB86354C4FD6315936677B5D8096
      BA2276ED18E5D0BBFBF002CFC6E7CF7D8D2CC1E2B278A087CEEE4132E3C285C7
      AB15364970B5D302897EE9E70A0F9934FDCC5F9E7B1E931956DFB596B46D6835
      9B33DFE66CF995525C683FA515BB768C30F6D2CBA084BECAD0EF725EF48689DB
      785117DD5D2DC2A017711682A4B3EFC1216BD471868636921948DBE90B41187E
      D298B47278FC00D5A92AC572078572193F0C09A31C7E18E2BA2E029C38FA3EA3
      2F6EE79DD746505AB1747035C3B76DEC2A2DEC8F8B0BFBDFEEE8A990368E9126
      60F130591B63528CCD48E3166E1C0BD046B246CB71BBEE090BD133693B7D7CDF
      EB63FC6B7C9C45CB6EA57B511FB9FCEC20509B19048E1F394AD28A090B119EEB
      7FBB52195EAC1DE7C9B85EFDB9B5924F53F9B158C35C33893B33D168C475510E
      646D798254BF5CE8ECF866DA4EEF38BCFF00EFBDBB6FD660144A2B1CC7C50B02
      0A9D1D234923FE81D2E92BF51327414A0BC27CF468DC6A3C2D92443A7F8B4F92
      FD019BEDBDDC22DC2B8E62C1643C8B55CF7A9EB7D9F3BCCD28B51AE805ACA08E
      63ED5B2846AC98DD62C14A46E09479F1995F3FB66AD36073CD9D0F7CA5563DFB
      7D9C22E8EC71899BF7203271B13F5C095617FB87EC04765E31475DE87305264B
      E8EC5C46A1BBCC8A8F0D52CC757E2349DA0F83EAC4A6A0544505E1EBD28E3721
      F2FE450672633226239F5F80F2E08E0D77B378D18A9E66B3AA2F1D5DF5800A72
      23283574E1D0370C9EF1E914B142BD5623495BEF69A5EF07A62F85AB5B0873AF
      A2F51022370E9E43BBC5CABD97C395524B08C251945E76B3C0006F8B954F8BD0
      BA2473A15F974ABFBD996080BF23F22991993F7FF6D3463BCE5D371B0C3086C8
      16111AFF6567E6372EFF1F8D20B25E601BA829117EF69F01007684EC3F1FCFFC
      640000000049454E44AE426082}
    Transparent = True
    TabOrder = 10
    OnClick = AdvGlowButton3Click
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
    Layout = blGlyphLeftAdjusted
  end
  object PopupMenu1: TPopupMenu
    Left = 772
    Top = 308
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object Parcelamento1: TMenuItem
      Caption = 'Parcelamento'
      ShortCut = 121
      OnClick = bparcelamentoClick
    end
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39209.833059294000000000
    ReportOptions.LastChange = 39973.627536724510000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 608
    Top = 320
    Datasets = <
      item
        DataSet = fsorcamento
        DataSetName = 'fsorcamento'
      end
      item
        DataSet = fsorcamento_cliente
        DataSetName = 'fsorcamento_cliente'
      end
      item
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
      end
      item
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 191.196970000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 1.000000000000000000
          Top = 160.960730000000000000
          Width = 715.842519685039000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'DISCRIMINA'#199#195'O DOS PRODUTOS')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 178.078850000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 49.133890000000000000
          Top = 178.078850000000000000
          Width = 294.803340000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 347.716760000000000000
          Top = 178.078850000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 423.307360000000000000
          Top = 178.078850000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'UNIT'#193'RIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 646.299630000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 578.268090000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 191.196970000000000000
          Width = 716.220472440945000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape22: TfrxShapeView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape23: TfrxShapeView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo47: TfrxMemoView
          Left = -3.779530000000000000
          Top = 2.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTO AUXILIAR DE VENDA - OR'#199'AMENTO')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo48: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#195'O '#201' DOCUMENTO FISCAL - N'#195'O '#201' VALIDO COMO RECIBO E COMO '
            'GARANTIA DE MERCADORIA - N'#195'O COMPROVA PAGAMENTO')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo49: TfrxMemoView
          Top = 65.031540000000010000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Identifica'#231#227'o do Estabelecimento Emitente')
          ParentFont = False
        end
        object Shape26: TfrxShapeView
          Top = 83.149660000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 84.929190000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Denomina'#231#227'o:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 90.708720000000000000
          Top = 85.149660000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 529.134200000000000000
          Top = 85.149660000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 570.709030000000000000
          Top = 85.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Shape27: TfrxShapeView
          Left = 525.354670000000000000
          Top = 120.944960000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape28: TfrxShapeView
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo66: TfrxMemoView
          Top = 102.826840000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Identifica'#231#227'o do Destinat'#225'rio')
          ParentFont = False
        end
        object Shape29: TfrxShapeView
          Top = 120.944960000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.724490000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 52.913420000000000000
          Top = 122.944960000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 529.134200000000000000
          Top = 122.944960000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 597.165740000000000000
          Top = 123.165430000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsorcamento_cliente."CPF"]')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape31: TfrxShapeView
          Top = 139.842610000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo89: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' do Documento:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 102.047310000000000000
          Top = 141.842610000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'DAV'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsorcamento."DAV"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 343.937230000000000000
          Top = 141.842610000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#186' do Documento Fiscal:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 476.220780000000000000
          Top = 142.063080000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'XXXXXX')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
        RowCount = 0
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'CODPRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 49.133890000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'NUMERACAO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 377.953000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'QTDE'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."QTDE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 442.205010000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'UNITARIO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 642.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."TOTAL"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 514.016080000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."DESCONTO"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 578.268090000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_produto."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 136.842610000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape14: TfrxShapeView
          Left = 1.000000000000000000
          Top = 4.559059999999988000
          Width = 715.842519685039000000
          Height = 98.267780000000000000
          Fill.BackColor = clBtnFace
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Shape15: TfrxShapeView
          Left = 585.827150000000000000
          Top = 11.338589999999900000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Shape16: TfrxShapeView
          Left = 585.827150000000000000
          Top = 34.015769999999970000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Shape17: TfrxShapeView
          Left = 585.827150000000000000
          Top = 78.370130000000190000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Top = 14.118119999999920000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DOS PRODUTOS - R$:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 423.307360000000000000
          Top = 36.015769999999970000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO - R$:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 423.307360000000000000
          Top = 79.590600000000220000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO OR'#199'AMENTO - R$:')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 8.338590000000000000
          Top = 11.338589999999900000
          Width = 408.189240000000000000
          Height = 83.905526460000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118119999999920000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677180000000190000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015769999999970000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354359999999990000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692950000000110000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 589.606680000000000000
          Top = 11.338590000000010000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 589.606680000000000000
          Top = 34.015769999999970000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 589.606680000000000000
          Top = 77.370130000000010000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."TOTAL"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 1.000000000000000000
          Top = 105.826840000000000000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDI'#199#213'ES DE PAGAMENTO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 136.063080000000000000
          Top = 122.590026380000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR - R$')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 7.559060000000000000
          Top = 122.590026380000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 135.063080000000000000
          Width = 238.110390000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape21: TfrxShapeView
          Left = 585.827150000000000000
          Top = 56.692950000000110000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
        end
        object Memo44: TfrxMemoView
          Left = 423.307360000000000000
          Top = 58.692950000000280000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMO - R$:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 589.606680000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
        RowCount = 0
        object Memo67: TfrxMemoView
          Left = 8.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_VENCIMENTO'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsorcamento_receber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 165.299320000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ORIGINAL'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsorcamento_receber."VALOR_ORIGINAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 548.031849999999900000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 1.000000000000000000
          Top = 3.779530000000022000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURAS')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Top = 21.677180000000020000
          Width = 336.378170000000000000
          Height = 56.692950000000000000
          Frame.Width = 0.500000000000000000
        end
        object Shape20: TfrxShapeView
          Left = 343.937230000000000000
          Top = 21.677180000000020000
          Width = 374.173470000000000000
          Height = 56.692950000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo71: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.456710000000040000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'RESPONS'#193'VEL PELO OR'#199'AMENTO')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 347.716760000000000000
          Top = 25.456710000000040000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'AUTORIZA'#199#195'O DO CLIENTE')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 402.732530000000000000
          Top = 70.252010000000040000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 436.748300000000000000
          Top = 70.252010000000040000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 375.275820000000000000
          Top = 70.432450870000030000
          Width = 102.047310000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 347.716760000000000000
          Top = 59.692950000000000000
          Width = 26.456710000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 536.693260000000000000
          Top = 70.432450870000030000
          Width = 170.078850000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          Left = 480.000310000000000000
          Top = 59.472480000000010000
          Width = 56.692950000000000000
          Height = 9.448818900000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8W = (
            'ASSINATURA:')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          Top = 83.149660000000040000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo93: TfrxMemoView
          Top = 83.929189999999950000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #201' vedada a autentica'#231#227'o deste documento')
          ParentFont = False
        end
      end
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 576
    Top = 320
  end
  object fsorcamento: TfrxDBDataset
    UserName = 'fsorcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA=DATA'
      'CODCLIENTE=CODCLIENTE'
      'OBS=OBS'
      'MEIO_DINHEIRO=MEIO_DINHEIRO'
      'MEIO_CHEQUEAV=MEIO_CHEQUEAV'
      'MEIO_CHEQUEAP=MEIO_CHEQUEAP'
      'MEIO_CARTAOCRED=MEIO_CARTAOCRED'
      'MEIO_CARTAODEB=MEIO_CARTAODEB'
      'MEIO_CREDIARIO=MEIO_CREDIARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TOTAL=TOTAL'
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'RETIRADO=RETIRADO'
      'TIPO=TIPO'
      'MEIO_CONVENIO=MEIO_CONVENIO'
      'DAV=DAV')
    DataSet = frmmodulo.qrorcamento
    BCDToCurrency = False
    Left = 672
    Top = 344
  end
  object fsorcamento_produto: TfrxDBDataset
    UserName = 'fsorcamento_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'NUMERACAO=NUMERACAO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'MIX=MIX'
      'SERIAL=SERIAL'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TIPO=TIPO'
      'TERMINAL=TERMINAL')
    DataSet = frmvenda_pdv.qrvenda_produto
    BCDToCurrency = False
    Left = 640
    Top = 344
  end
  object fsorcamento_receber: TfrxDBDataset
    UserName = 'fsorcamento_receber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'CODCEDENTE=CODCEDENTE')
    DataSet = frmmodulo.qrorcamento_receber
    BCDToCurrency = False
    Left = 608
    Top = 344
  end
  object fsorcamento_cliente: TfrxDBDataset
    UserName = 'fsorcamento_cliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'CPF=CPF'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO'
      'SEXO=SEXO'
      'HISTORICO=HISTORICO'
      'PREVISAO=PREVISAO')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 576
    Top = 344
  end
end
