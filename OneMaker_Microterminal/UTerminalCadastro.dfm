inherited FTerminalCadastro: TFTerminalCadastro
  Caption = 'Cadastro de Terminais'
  ClientHeight = 383
  ClientWidth = 454
  Color = clWhite
  ExplicitWidth = 470
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblDescricao: TLabel
    Top = 44
    Font.Color = clBlack
    ParentFont = False
    ExplicitTop = 44
  end
  inherited Label1: TLabel
    Top = 18
    Font.Color = clBlack
    ParentFont = False
    ExplicitTop = 18
  end
  inherited dbtCodigo: TDBText
    Top = 18
    DataField = 'Codigo'
    Font.Color = clBlack
    ParentFont = False
    ExplicitTop = 18
  end
  object Label2: TLabel [3]
    Left = 19
    Top = 76
    Width = 10
    Height = 13
    Caption = 'IP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited pnlCabecalho: TPanel
    Left = 495
    Top = 8
    Width = 454
    Align = alNone
    ExplicitLeft = 495
    ExplicitTop = 8
    ExplicitWidth = 454
    inherited imgCabecalho: TImage
      Left = 190
      Top = -1
      Width = 400
      Align = alNone
      ExplicitLeft = 190
      ExplicitTop = -1
      ExplicitWidth = 400
      ExplicitHeight = 47
    end
    inherited bvCabecalho: TBevel
      Width = 454
      ExplicitWidth = 454
    end
    inherited lblCabecalho: TLabel
      Left = 300
      Top = 5
      Width = 406
      ExplicitLeft = 300
      ExplicitTop = 5
      ExplicitWidth = 406
    end
  end
  inherited pnlRodape: TPanel
    Top = 321
    Width = 454
    Color = 3355443
    ParentBackground = False
    ExplicitTop = 321
    ExplicitWidth = 454
    inherited bvRodape: TBevel
      Width = 454
      ExplicitWidth = 454
    end
    inherited sbCancelar: TSpeedButton
      Left = 568
      ExplicitLeft = 568
    end
    inherited sbOk: TSpeedButton
      Left = 465
      ExplicitLeft = 465
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 0
      Top = 2
      Width = 100
      Height = 60
      Align = alLeft
      Action = actOk
      Font.Charset = DEFAULT_CHARSET
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
      ExplicitLeft = 236
      ExplicitTop = 5
      ExplicitHeight = 54
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 354
      Top = 2
      Width = 100
      Height = 60
      Align = alRight
      Action = actCancelar
      Font.Charset = DEFAULT_CHARSET
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
      ExplicitLeft = 342
      ExplicitTop = 5
      ExplicitHeight = 54
    end
  end
  inherited dbeDescricao: TDBEdit
    Top = 41
    Height = 19
    Color = clWhite
    Ctl3D = False
    DataField = 'Descricao'
    ParentCtl3D = False
    ExplicitTop = 41
    ExplicitHeight = 19
  end
  inherited DBCheckBox1: TDBCheckBox
    Left = 275
    Top = 17
    DataField = 'ATIVA'
    TabOrder = 6
    ValueChecked = '1'
    ValueUnchecked = '0'
    ExplicitLeft = 275
    ExplicitTop = 17
  end
  object DBRadioGroup1: TDBRadioGroup [8]
    Left = 126
    Top = 155
    Width = 320
    Height = 49
    Caption = '  Display  '
    Columns = 4
    DataField = 'Display'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      '16x2'
      '20x4'
      '20x8'
      '40x2')
    ParentFont = False
    TabOrder = 4
    Values.Strings = (
      '0'
      '1'
      '2'
      '3')
  end
  object DBRadioGroup2: TDBRadioGroup [9]
    Left = 128
    Top = 100
    Width = 320
    Height = 49
    Caption = '  Protocolo  '
    Columns = 4
    DataField = 'Protocolo'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'VT-100'
      'STX/ETX')
    ParentFont = False
    TabOrder = 5
    Values.Strings = (
      '0'
      '1')
  end
  object DBEdit1: TDBEdit [10]
    Left = 128
    Top = 73
    Width = 320
    Height = 19
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    DataField = 'IP'
    DataSource = dsCadastro
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBRadioGroup3: TDBRadioGroup [11]
    Left = 128
    Top = 210
    Width = 320
    Height = 49
    Caption = '  Porta de Impress'#227'o  '
    Columns = 4
    DataField = 'PortaImpressora'
    DataSource = dsCadastro
    Items.Strings = (
      'Nenhuma'
      'Serial 0'
      'Serial 1'
      'Paralela')
    TabOrder = 7
    Values.Strings = (
      '0'
      '1'
      '2'
      '3')
  end
  object DBRadioGroup4: TDBRadioGroup [12]
    Left = 128
    Top = 265
    Width = 320
    Height = 49
    Caption = '  Balan'#231'a  '
    Columns = 4
    DataField = 'PortaBalanca'
    DataSource = dsCadastro
    Items.Strings = (
      'Nenhuma'
      'Serial 0'
      'Serial 1')
    TabOrder = 8
    Values.Strings = (
      '0'
      '1'
      '2'
      '3')
  end
  inherited ALPadrao: TActionList
    Left = 487
    Top = 24
  end
  inherited imgPadrao: TImageList
    Left = 543
    Top = 24
  end
  inherited dsCadastro: TDataSource
    DataSet = DMTabelas.adoTerminal
    Left = 599
    Top = 24
  end
  inherited adoPesquisa: TADOQuery
    Left = 663
    Top = 24
  end
end
