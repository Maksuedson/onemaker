object frmVenda_Crediario: TfrmVenda_Crediario
  Left = 507
  Top = 113
  BorderStyle = bsNone
  Caption = 'frmVenda_Crediario'
  ClientHeight = 436
  ClientWidth = 335
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_consumid
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_consumidor: TFlatPanel
    Left = 0
    Top = 0
    Width = 332
    Height = 436
    ParentColor = True
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 0
    object RzLabel10: TRzLabel
      Left = 375
      Top = 14
      Width = 287
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'CREDI'#193'RIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
    object RzLabel9: TRzLabel
      Left = 9
      Top = 39
      Width = 48
      Height = 17
      AutoSize = False
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
    object sh_cred_cliente: TShape
      Left = 62
      Top = 34
      Width = 235
      Height = 24
      Pen.Color = clSilver
    end
    object sh_consumid_endereco: TShape
      Left = 14
      Top = 63
      Width = 293
      Height = 30
      Brush.Color = clBlack
      Pen.Color = clSilver
      Shape = stRoundRect
    end
    object RzLabel12: TRzLabel
      Left = 9
      Top = 263
      Width = 160
      Height = 17
      AutoSize = False
      Caption = 'Quantidade de Presta'#231#245'es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ShadowColor = clBlack
    end
    object sh_cred_prestacao: TShape
      Left = 172
      Top = 258
      Width = 51
      Height = 25
      Brush.Color = clBlack
      Pen.Color = clSilver
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 14
      Top = 223
      Width = 293
      Height = 30
      Brush.Color = clBlack
      Pen.Color = clSilver
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 14
      Top = 79
      Width = 293
      Height = 153
      Brush.Color = clBlack
      Pen.Color = clSilver
    end
    object FlatPanel3: TFlatPanel
      Left = 1
      Top = 368
      Width = 330
      Height = 67
      Color = 3355443
      ColorHighLight = 3355443
      ColorShadow = 3355443
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = -2
      ExplicitTop = 352
      ExplicitWidth = 342
      object bt_gravar_crediario: TAdvGlowButton
        Left = 1
        Top = 1
        Width = 110
        Height = 65
        Align = alLeft
        Caption = 'Confirmar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        OnClick = bt_gravar_crediarioClick
        OnEnter = bt_gravar_crediarioEnter
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
        ExplicitLeft = 34
        ExplicitTop = 8
        ExplicitHeight = 51
      end
      object bt_cancelar_crediario: TAdvGlowButton
        Left = 190
        Top = 1
        Width = 139
        Height = 65
        Align = alRight
        Caption = 'ESC Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        OnClick = bt_cancelar_crediarioClick
        OnEnter = bt_cancelar_crediarioEnter
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
        ExplicitLeft = 152
        ExplicitTop = 8
        ExplicitHeight = 51
      end
    end
    object ed_cred_cliente: TRzEdit
      Left = 64
      Top = 35
      Width = 230
      Height = 21
      Text = ''
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 14511872
      FrameStyle = fsNone
      FrameVisible = True
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 0
      OnEnter = ed_cred_clienteEnter
      OnExit = ed_cred_clienteExit
      OnKeyPress = ed_cred_clienteKeyPress
    end
    object FlatPanel1: TFlatPanel
      Left = 15
      Top = 67
      Width = 291
      Height = 178
      ParentColor = True
      Enabled = False
      ColorHighLight = clBlack
      ColorShadow = clBlack
      TabOrder = 2
      object lb_cred_nome: TRzLabel
        Left = 80
        Top = 3
        Width = 209
        Height = 17
        AutoSize = False
        Caption = 'Store Protheus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_endereco: TRzLabel
        Left = 25
        Top = 24
        Width = 263
        Height = 17
        AutoSize = False
        Caption = 'Rua Conde de Linhares, 462'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_bairro: TRzLabel
        Left = 25
        Top = 40
        Width = 263
        Height = 17
        AutoSize = False
        Caption = 'Filomena '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_cidade: TRzLabel
        Left = 25
        Top = 56
        Width = 128
        Height = 17
        AutoSize = False
        Caption = 'Nova Ven'#233'cia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_cpf: TRzLabel
        Left = 25
        Top = 72
        Width = 263
        Height = 17
        AutoSize = False
        Caption = 'CPF/CNPJ: 000.000.000-00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel6: TRzLabel
        Left = 9
        Top = 95
        Width = 112
        Height = 17
        AutoSize = False
        Caption = 'Situa'#231#227'o do Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_situacao: TRzLabel
        Left = 121
        Top = 94
        Width = 112
        Height = 17
        AutoSize = False
        Caption = '3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel8: TRzLabel
        Left = 9
        Top = 115
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'Limite de Cr'#233'dito:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_limite: TRzLabel
        Left = 97
        Top = 115
        Width = 96
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 1.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel13: TRzLabel
        Left = 9
        Top = 131
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'Utilizado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_utilizado: TRzLabel
        Left = 97
        Top = 131
        Width = 96
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 1.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object RzLabel15: TRzLabel
        Left = 9
        Top = 147
        Width = 96
        Height = 17
        AutoSize = False
        Caption = 'Dispon'#237'vel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_disponivel: TRzLabel
        Left = 97
        Top = 147
        Width = 96
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 1.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_uf: TRzLabel
        Left = 161
        Top = 56
        Width = 18
        Height = 17
        AutoSize = False
        Caption = 'ES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_cep: TRzLabel
        Left = 185
        Top = 56
        Width = 65
        Height = 17
        AutoSize = False
        Caption = '29830-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_codigo: TRzLabel
        Left = 8
        Top = 3
        Width = 65
        Height = 17
        AutoSize = False
        Caption = '00000001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object lb_cred_atualizado: TRzLabel
        Left = 9
        Top = 165
        Width = 272
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Atualizado em 01/01/2009 as 18:00'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5855577
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object pn_tampa: TFlatPanel
        Left = 297
        Top = 137
        Width = 289
        Height = 176
        ParentColor = True
        Visible = False
        ColorHighLight = clBlack
        ColorShadow = clBlack
        TabOrder = 0
      end
    end
    object ed_cred_prestacao: TRzSpinEdit
      Left = 174
      Top = 259
      Width = 47
      Height = 21
      AllowKeyEdit = True
      FlatButtonColor = clBlack
      Max = 100.000000000000000000
      Min = 1.000000000000000000
      Value = 1.000000000000000000
      Color = clBlack
      FlatButtons = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 14511872
      FrameHotColor = clBlack
      FrameHotStyle = fsNone
      FrameStyle = fsNone
      FrameVisible = True
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 3
      OnEnter = ed_cred_prestacaoEnter
      OnExit = ed_cred_prestacaoExit
      OnKeyPress = ed_cred_prestacaoKeyPress
    end
    object pn_veiculo: TFlatPanel
      Left = 1
      Top = 287
      Width = 330
      Height = 64
      ParentColor = True
      ColorHighLight = clBlack
      ColorShadow = clBlack
      TabOrder = 4
      object RzLabel21: TRzLabel
        Left = 9
        Top = 22
        Width = 73
        Height = 17
        AutoSize = False
        Caption = 'KM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object sh_consumid_km: TShape
        Left = 6
        Top = 37
        Width = 93
        Height = 24
        Brush.Color = clBlack
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object RzLabel22: TRzLabel
        Left = 109
        Top = 22
        Width = 73
        Height = 17
        AutoSize = False
        Caption = 'Placa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object sh_consumid_placa: TShape
        Left = 106
        Top = 37
        Width = 89
        Height = 24
        Brush.Color = clBlack
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object RzLabel16: TRzLabel
        Left = 204
        Top = 22
        Width = 78
        Height = 17
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
      end
      object sh_consumid_vendedor: TShape
        Left = 202
        Top = 37
        Width = 94
        Height = 24
        Brush.Color = clBlack
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object RzLabel17: TRzLabel
        Left = 1
        Top = 1
        Width = 328
        Height = 22
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'VE'#205'CULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ShadowColor = clBlack
        ExplicitLeft = 5
        ExplicitTop = 7
        ExplicitWidth = 288
      end
      object ed_consumid_km: TRzEdit
        Left = 7
        Top = 38
        Width = 89
        Height = 21
        Text = ''
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 14511872
        FrameStyle = fsNone
        FrameVisible = True
        FramingPreference = fpCustomFraming
        ParentFont = False
        TabOnEnter = True
        TabOrder = 0
      end
      object ed_consumid_placa: TRzEdit
        Left = 107
        Top = 38
        Width = 85
        Height = 21
        Text = ''
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 14511872
        FrameStyle = fsNone
        FrameVisible = True
        FramingPreference = fpCustomFraming
        ParentFont = False
        TabOnEnter = True
        TabOrder = 1
      end
      object ed_consumid_vendedor: TRzEdit
        Left = 203
        Top = 38
        Width = 90
        Height = 21
        Text = ''
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 14511872
        FrameStyle = fsNone
        FrameVisible = True
        FramingPreference = fpCustomFraming
        ParentFont = False
        TabOrder = 2
        OnKeyPress = ed_consumid_vendedorKeyPress
      end
    end
    object Panel1: TPanel
      Left = -4
      Top = -1
      Width = 342
      Height = 32
      BevelOuter = bvNone
      Caption = 'CREDI'#193'RIO'
      Color = 3355443
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object pop_consumid: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.6.2.1'
    Left = 446
    Top = 344
    object MenuItem2: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = MenuItem2Click
    end
  end
end
