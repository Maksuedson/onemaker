object frmConfig: TfrmConfig
  Left = 176
  Top = 161
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es Gerais'
  ClientHeight = 481
  ClientWidth = 605
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 423
    Width = 605
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 622
    ExplicitWidth = 1181
    object BitBtn1: TBitBtn
      Left = 724
      Top = 118
      Width = 100
      Height = 25
      Caption = '&Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 752
      Top = 110
      Width = 100
      Height = 25
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
    end
    object btn1: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 82
      Height = 58
      Align = alLeft
      Caption = 'Salvar'
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
      OnClick = btn1Click
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
      ExplicitLeft = 12
      ExplicitTop = 24
      ExplicitHeight = 62
    end
    object btn2: TAdvGlowButton
      Left = 523
      Top = 0
      Width = 82
      Height = 58
      Align = alRight
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
      TabOrder = 3
      OnClick = btn2Click
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
      ExplicitLeft = 156
      ExplicitTop = 24
      ExplicitHeight = 62
    end
  end
  object pageview1: TPageView
    Left = 0
    Top = 50
    Width = 607
    Height = 374
    ActivePage = PageSheet4
    ActivePageIndex = 3
    AdaptiveColors = True
    BackgroundColor = 15264234
    BackgroundKind = bkSolid
    Color = 15264234
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgTopBorder]
    ParentColor = False
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 1
    TabStyle = tsWhidbey
    TopIndent = 3
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 607
      Height = 374
      Caption = 'Geral'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 396
      object GroupBox2: TGroupBox
        Left = 35
        Top = 16
        Width = 242
        Height = 160
        Caption = 'Outras'
        TabOrder = 0
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 16
          Width = 223
          Height = 17
          Caption = 'Informar o Consumidor no in'#237'cio da venda'
          DataField = 'NF_PAULISTA'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 36
          Width = 223
          Height = 17
          Caption = 'Alterar Pre'#231'o Unit'#225'rio'
          DataField = 'MUDA_UNITARIO'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 344
          Top = 48
          Width = 223
          Height = 17
          Caption = 'Alterar Quantidade'
          DataField = 'MUDA_QTDE'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 56
          Width = 223
          Height = 17
          Caption = 'Alterar Total'
          DataField = 'MUDA_TOTAL'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 8
          Top = 76
          Width = 223
          Height = 17
          Caption = 'Imprime comprovante de Credi'#225'rio'
          DataField = 'COMPROVANTE_CREDIARIO'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 8
          Top = 97
          Width = 223
          Height = 17
          Caption = 'Imprime Produtos no Comprovante'
          DataField = 'COMPROVANTE_CREDIARIO_PRODUTO'
          DataSource = dsconfig
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CheckBox3: TCheckBox
          Left = 8
          Top = 117
          Width = 97
          Height = 17
          Caption = 'Habilita Sat'
          TabOrder = 6
        end
        object CheckBox4: TCheckBox
          Left = 8
          Top = 137
          Width = 97
          Height = 17
          Caption = 'Habilita Cart'#227'o'
          TabOrder = 7
        end
      end
      object GroupBox4: TGroupBox
        Left = 283
        Top = 126
        Width = 169
        Height = 49
        Caption = 'Vendedor'
        TabOrder = 1
        object chkVendedor: TCheckBox
          Left = 8
          Top = 15
          Width = 145
          Height = 25
          Caption = 'Informar Vendedor no Fechamento da Venda'
          TabOrder = 0
          WordWrap = True
        end
      end
      object GroupBox7: TGroupBox
        Left = 35
        Top = 183
        Width = 242
        Height = 61
        Caption = 'Login Autom'#225'tico'
        TabOrder = 2
        object Label8: TLabel
          Left = 4
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label10: TLabel
          Left = 152
          Top = 16
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Combo_Usuario: TComboBox
          Left = 3
          Top = 28
          Width = 145
          Height = 21
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object EditSenhaUsuario: TEdit
          Left = 152
          Top = 28
          Width = 76
          Height = 19
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          PasswordChar = '*'
          TabOrder = 1
        end
      end
      object GroupBox8: TGroupBox
        Left = 283
        Top = 16
        Width = 169
        Height = 105
        Caption = 'Identifica'#231#227'o do Caixa'
        TabOrder = 3
        object Label11: TLabel
          Left = 8
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Caixa'
        end
        object Label9: TLabel
          Left = 8
          Top = 59
          Width = 122
          Height = 13
          Caption = 'Transferir no fechamento'
          Visible = False
        end
        object Combo_Tesouraria: TComboBox
          Left = 8
          Top = 75
          Width = 144
          Height = 21
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Visible = False
        end
        object Combo_Caixa: TComboBox
          Left = 8
          Top = 30
          Width = 144
          Height = 21
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 283
        Top = 189
        Width = 169
        Height = 54
        Caption = 'Enviar SAT Ontabilidade'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
          7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
          1F90000003CA4944415478DAEC974D4F545718C77FE79E3BEDDC7961B424C498
          1989347DD18DA921DAC60DE95770DB453F423F83E9E768BA7021686448648569
          D8985663534920032E1406C80C638432732FC3CC7979BA80A1285690FAB2F149
          CEEEE6FCF23FCFFF79B94A44F81011F081E223F8BD450830FDFB1FB9A1C1C15F
          0B85C2F7D6DA77030A433637377F7BB2B4F4E3C877DFC62180B3FEE7C5E5D5AB
          5F7EFA09F96C8EF6F6364AA9B7021411A2749A5612B3B8BC7AD559BF02FC1400
          28158C349B2D1E3E9A214E12A228E26D9499881045117192F0F0D10CCD660BA5
          8291FD39967C3687B3C2BDFB0F8893846C26F3BFE022423693214E12EEDD7F80
          B3423E9B0390FD60E7BCE364A180F770777A9A3849C81C132E226476A177A7A7
          F11E4E160A38EF00DC01575B6B3935308042333935C5567BEB8D95F7946EB5B7
          989C9A42A1393530C0CBA63D504EDD6E97C15209E784DB772669773A4786F7A0
          ED4E87DB7726714E182C95E876BB47AB63D3357CFDF91718E3181D1FA7D3E990
          39C4702242268AE8743A8C8E8F638CDBB9A36B8EDE40BC788C355C38779E384E
          B8512E63ACFD4FE53DA5C65A6E94CBC471C28573E731D6E0C5BF59E7F2DEE345
          B87C719867CFD7B97EEB26C69803CA7B4A8D315CBF759367CFD7B97C71182F82
          F7FE782DD31883568A2BC397A8D5D7182D97B1CEEDB9BDE75EEB1CA3E532B5FA
          1A57862FA195C21873FC5EAD548088B06DBB9C2E16999D9F67AC5CC65A4B944E
          13A5D3586B192B97999D9FE774B1C8B6ED222228151C1F9C0A351B718B27ABCB
          10049C1D1A626E6181B189095410A08280B18909E61616383B340441C093D565
          36E216A9501F3E240E2845914A856CB49A2CADD5F0025A84289BA5582A315BA9
          509E9C0460B652A174E60C51368BB7162FB0B45603E064BE0F632C821C0E5640
          2A0C596F6E526DD411EF09B54600EF1CF9BE3E8AC5227FCECC00502C16C9F7F5
          E19C4380300870CEB1B4564344F82C5FC05873001DBE985345A8357F27CD3DA8
          D6FA05073BE7C8150AF4773A00E40A851DE83EA76BAD71CE516DD4090245219B
          C7BEF44DD0038222A5779E77B15EC3BF04DD0F17EF39D1DFCF89FE7EC4FB57D6
          B6D61AEF3D8BF51A1BAD26291DEE247177DC86BBE020D4011B71936AA3860884
          5ABFB64BF52E785D370BB5C6794FB5514329C5895C1EE77DB0077EBEB19E4A47
          11D5467D4779A88F3C180E5B18526188DD7BF680ED763BB5F7D4738F2BB34F57
          AAB00B73D6E29D7B2BC7F5A692084F57AACC3DAECCEE29DEB6E6DAB346E3AB30
          0CBFF1EF68C10F94C25AFB971177ED5F570741C53AF78BEFD81F4085EF66AF14
          EB95BA8E0E2A00EAE32FCCFB8A7F0600A20D6BB60D6CC5FE0000000049454E44
          AE426082}
        TabOrder = 4
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
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 607
      Height = 374
      Caption = 'ECF/TEF'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 396
      object GroupBox1: TGroupBox
        Left = 87
        Top = 22
        Width = 410
        Height = 153
        Caption = 'Formas de Pagametos'
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 25
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
        end
        object Label2: TLabel
          Left = 9
          Top = 49
          Width = 41
          Height = 13
          Caption = 'Cheque:'
        end
        object Label3: TLabel
          Left = 9
          Top = 73
          Width = 37
          Height = 13
          Caption = 'Cart'#227'o:'
        end
        object Label4: TLabel
          Left = 9
          Top = 97
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
        end
        object Label6: TLabel
          Left = 8
          Top = 121
          Width = 49
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object DBEdit1: TDBEdit
          Left = 64
          Top = 21
          Width = 334
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'FORMA_DINHEIRO'
          DataSource = dsconfig
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 64
          Top = 45
          Width = 334
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'FORMA_CHEQUE'
          DataSource = dsconfig
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 64
          Top = 69
          Width = 334
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'FORMA_CARTAO'
          DataSource = dsconfig
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 64
          Top = 93
          Width = 334
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'FORMA_CREDIARIO'
          DataSource = dsconfig
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 117
          Width = 334
          Height = 19
          Color = clWhite
          Ctl3D = False
          DataField = 'FORMA_CONVENIO'
          DataSource = dsconfig
          ParentCtl3D = False
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 87
        Top = 182
        Width = 410
        Height = 73
        Caption = 'TEF'
        TabOrder = 1
        object DBCheckBox5: TDBCheckBox
          Left = 8
          Top = 17
          Width = 140
          Height = 17
          Caption = 'Visanet/Redecard/Amex'
          DataField = 'USA_TEF'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 8
          Top = 32
          Width = 140
          Height = 17
          Caption = 'Tecban'
          DataField = 'USA_TEF_TECBAN'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 8
          Top = 48
          Width = 140
          Height = 17
          Caption = 'Hipercard'
          DataField = 'USA_TEF_HIPERCARD'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 0
      Width = 607
      Height = 374
      Caption = 'Imagens'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 396
      object GroupBox5: TGroupBox
        Left = 92
        Top = 26
        Width = 409
        Height = 89
        Caption = 'Foto Produtos'
        TabOrder = 0
        object Label5: TLabel
          Left = 4
          Top = 46
          Width = 133
          Height = 13
          Caption = 'Caminho imagens produtos:'
        end
        object CheckHabilitaFotoProduto: TCheckBox
          Left = 4
          Top = 20
          Width = 197
          Height = 17
          Caption = 'Habilita foto produto'
          TabOrder = 0
          OnClick = CheckHabilitaFotoProdutoClick
        end
        object EditImgProdutos: TAdvDirectoryEdit
          Left = 4
          Top = 59
          Width = 385
          Height = 19
          EmptyTextStyle = []
          Flat = False
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = False
          TabOrder = 1
          Text = ''
          Visible = True
          Version = '1.3.6.0'
          ButtonStyle = bsButton
          ButtonWidth = 18
          Etched = False
          Glyph.Data = {
            CE000000424DCE0000000000000076000000280000000C0000000B0000000100
            0400000000005800000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
            00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
            00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
            0000FF0BBB00000F0000FFF000FFFFFF0000}
          BrowseDialogText = 'Select Directory'
        end
      end
      object GroupBox6: TGroupBox
        Left = 92
        Top = 118
        Width = 409
        Height = 89
        Caption = 'Foto Produtos'
        TabOrder = 1
        object Label7: TLabel
          Left = 4
          Top = 46
          Width = 59
          Height = 13
          Caption = 'Logo Marca:'
        end
        object CheckLogoMarca: TCheckBox
          Left = 4
          Top = 20
          Width = 197
          Height = 17
          Caption = 'Habilita Logo Marca'
          TabOrder = 0
          OnClick = CheckLogoMarcaClick
        end
        object EditLogoMarca: TAdvEditBtn
          Left = 4
          Top = 60
          Width = 385
          Height = 19
          EmptyTextStyle = []
          Flat = False
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = False
          TabOrder = 1
          Text = ''
          Visible = True
          Version = '1.3.6.0'
          ButtonStyle = bsButton
          ButtonWidth = 16
          Etched = False
          ButtonCaption = '...'
          OnClickBtn = EditLogoMarcaClickBtn
        end
      end
    end
    object PageSheet4: TPageSheet
      Left = 0
      Top = 0
      Width = 607
      Height = 374
      Caption = 'PageSheet4'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 396
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 607
        Height = 374
        Align = alClient
        AutoSize = True
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000022C
          000001440806000000043865430000001974455874536F667477617265004164
          6F626520496D616765526561647971C9653C0000032269545874584D4C3A636F
          6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E3D
          22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B63
          3964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A
          6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
          6520352E332D633031312036362E3134353636312C20323031322F30322F3036
          2D31343A35363A32372020202020202020223E203C7264663A52444620786D6C
          6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30
          322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372
          697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D2268
          7474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C
          6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F7572
          6365526566232220786D703A43726561746F72546F6F6C3D2241646F62652050
          686F746F73686F7020435336202857696E646F7773292220786D704D4D3A496E
          7374616E636549443D22786D702E6969643A3830394439444137323041363131
          4538393337314531384136334337393533362220786D704D4D3A446F63756D65
          6E7449443D22786D702E6469643A383039443944413832304136313145383933
          3731453138413633433739353336223E203C786D704D4D3A4465726976656446
          726F6D2073745265663A696E7374616E636549443D22786D702E6969643A3830
          3944394441353230413631314538393337314531384136334337393533362220
          73745265663A646F63756D656E7449443D22786D702E6469643A383039443944
          4136323041363131453839333731453138413633433739353336222F3E203C2F
          7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
          786D706D6574613E203C3F787061636B657420656E643D2272223F3E5E77841E
          0000F8294944415478DAEC9D079C654595FF4F851B5EECD7B9677A72628661C8
          9241110564D0C545540CAC8A890513C65D59E3EAFE8D1816C580A0222AAE8A4B
          70514150092A088343980093634FE717EFBD55F53F755FF7D0D3D3E1A5EE7E33
          D66F3E6FFABDFBEEBBB76EDD70BE75EAD429A2940223232323232323A37A1631
          C0626464646464646480C5C8C8C8C8C8C8C8C8008B9191919191919101162323
          232323232323032C464646464646464606588C8C8C8C8C8C8C0CB01819191919
          19191919603132323232323232C06280C5C8C8C8C8C8C8C8008B919191919191
          9191011623232323232323032C464646464646464606588C8C8C66F8414008BC
          A7E31838BF7309AC6C9A05BE1293FEE6507874104221EFE7E1EFFD5D7044A201
          FA83023483053D14202A03706502EC1807AA57F63DF0AC002017093FEF9569A0
          CA86B8744042E907CBF0C7B1380142095612058B52D891EF0707B79AB223FBB7
          C42983ADFDDDD0ECB860731B482E5BF6F151D78574DA835DB91C1CD1D9060A8B
          FFC8DE4DD0996884D9B8AFDD853C705CB625DF039DB146E02E87DFEFDE0C2F4A
          CD853C9EC0C6A80336D611C3B271C2A0DBCBC2E90FDD0C39AC1B3C82AAEB5F5F
          238C11B8FF571D70C2910D30902F607D30B0B805B99C0F19CF8354D2C27AE6A5
          6D8FE8D324E191C7F370F669F186ED3B83B6581CDA1C9BACB0385B8EABB4E33E
          5BF06F2B5ED20501F265781E060EDE129E51892B7801E83D27A22EDCF75817DC
          FBC85E70EDF06A0021159C79421C4E5ADE094C6F4CE6F02F054A2C5DF34024DE
          2354C2601A2F993C81591D1608519F3705C5F2AFDBBB1DFAF03AA4844EB8AE50
          12E6C63B604E4B033CB3AE0F1ECACC862D7D045A530E445A5CC08B15949F0325
          F0BA71195EC7955F27EF38F99EB2D6E7E6516D6464646434334009E0F96803A9
          0AC166322ED4A6D1E6ECA3AB5644CE0B042C696FE38DB8C81DBDCD6123DD37E8
          9F3898F1EEA5E4F90DABA1EDB43645430041723127E21091011623232323A319
          93E749605C7B5D68297E2C0719E31D4D0D7CAEF6804C2606E4954AD27B473A8B
          C890174129ED6930B06280C5C8C8C8C8C8A804698F880A018295B2BA5E292805
          56A452904CD8E745E3D2C54F79BD4CFF8A120E5472FC9E8017C07E96D1DF295C
          36DCD5A977A18A5DA3BA0FC837676AE6454D151819191919CDA4341CF88108E1
          810CD3C3F8368B95BA5D848FA502EC233DB041BF24BE88B49178D441BBD0DD46
          BA5B6AFF8B22F0446367D89CAEC1427D115749993335B3321E1623232323A399
          6D392386A4F301488496A6063BFC3C4E50372DC76E115C5D09FF5C5FF87FD39E
          1CCEED31D7F37D09CB963440C39C681894AA779D94F2C4F664E4E752A936DCED
          0A9B39FF8465FA1C7EF55D73C666E83A3155606464646434E35212FA060574F7
          F8E021B8E86E1F4A4918DB6259146C7CE1FBB28045C7A85884BF08020A2ED8FA
          FDD8BB4612894739343747A0B1C982CE2667F6DC96D8CF38A76D4570921A7E96
          20CC7C8710FA3FB860B63961D32FE3613132323232AA0B11287A56F25E0031D7
          820D9BB3B07D57017C2142AF876D337ADAB10DCCB64849C3EAC3114194BC9071
          7A14E574AD0A47041DDC4E57DAFD22022888BDE0402412E78D3F94A016A8B1CB
          7831AE7E9222F4130832DF3367CD008B91919191D13F2AB890E2AB77C083A50B
          5CA06E00360BF3EA28C6F0BF32D29DE066DCB8EDDEA9406EC38F7DF85A4F29DD
          841B5B8FEF1FC157B7F6B0304AA14D258131E77A449A174FB28BB908423710C2
          5E024A7C18D7DD46481D27262287C7756180C5C8C8C8C8A82EA5BB84A22E8368
          92C0AE5D0AB219E9B61F4999E797371C1961651EFE9937F471351D4A76E6587C
          3728F50010753B05FA84CB6297294A2E2B234DE0A5B11879B1EDA8D5BEA71EAD
          DB648A87C9E86D032C4646464646532E6DCC6D665DC008F924E2C2FFE2A2CFA1
          1DF526B4B3125143129042B537A6F8EB1BE2E42D8150899A391E0874E07F17E3
          BB8BC3329699B535F4CC30D296F5B3F94C3E28C99151EC9062D356EFDAF3E30B
          05192F3B69965B032C4646464646FFE0B0427477CE2B38253FC18F117C9D6833
          F6424B92B7A3CD7F6E3CC08947F91CDBA6EF75B9FB86A84DDA8721666C0C987E
          3782CEA69BCE889FEFDDA39E24647208D19E9D40C7E34CB32BA6C0B210303F1C
          356580C5C8C8C8C8E8D0070B7C0561C6340055A32DA27DD65E880B39871F0722
          84951046B845CF49D9D13F65B2858FE0A21F8C841B4668442A72F58A45B17781
          9E1F685C5019D60CF5791010F138F9E2D25862440D1EBC924E34A373BF140A0A
          06E5006CEFEF0AE76E9A2E05CA3BE461C5008B9191919151289DAE3E4E5CF8C2
          95F3605FFB26604175DBD39966173435C2BC8EE4994BE7476EF17C888E8623FC
          6F562CE27C1F573D2BEB051FC3253B198353A3AEF5655C764A3DCFAF49A982FE
          0179FB405AFC79A2805BED4D89462824E21CBAFB24F006004FFA20A898B6B21E
          2631B706588C8C8C8C8C343B28B081C1892B13D0BD080DB257858124DAA30070
          CC9CE8D10B66277F9ECD88C4441E124AC9E50D51F7FC98AB1EB3393D0F8AE9F0
          EB5A7A26F0CDDB7BBEB0697B267C3FC1B1C1F225494826280C830D398C20C200
          8B91919151FD58F2AA25E1804E0B3664903925C4221066335368CDF6CDF4A10A
          3CD6A65600B753038BAAAACA1A6176676334F98B4C46B44E16B2A1BD109C934E
          0EA4532900A50E81CB42AABF1C7F64EAE1171C3576C67E21251402099C319D0B
          06727961EE25032C4646464653F480449CD0D9DC4B996C6F7F8B9AC1026C71FF
          17016A6333DA924A59CD966B61FBDA41CBE5EABC20B89A2B9472DBE30D2EC15D
          A085EF5211EB44FC6E6052F851C3AD74AB7644B5DFCAEA88D806E08DCD40F3D1
          8AE1CC122AD942E23FC37A585C6A80E9A10029C3D239627A06BD6F075249CEC8
          D051D303802DE132081409AF1DCECCBD6480C5C8C8C8688A84ED62C8490FB616
          BA8B16AA0430D046B7C1728E58E1B6BD560C596089BF73A9B5DF981F0037435D
          09D8004FF578B032E7050F9109FA0A18AE9FB4EDB03B81F36230678D4D31F0BD
          31C8773920D20E9032FB2D748F071E23696CB6AEA7163D551E4A145216B0208E
          3275DADB3FB0F986BFAD51605BC56561C61749A0310570D7F71740632303691C
          2B06588C8C8C8CA6523A197C8CBBB03092041FC180959AC382C23231CA504F36
          864583CBD65CDF8A6D99FE7181457B2A62E0C0E91DF37083148A69E66B0C69AE
          82EE9FB5C31D7FA310B46C01EA47CADE8692817AD52BDA362D591407CF3B3C81
          45C7E334259CB75C73E5BC2DBD3DF94F3DF4441F6CDC9903ED6DF103098B3A23
          904A32F0C574665C31C062646464F40FAD42E085AF881307A1040493780D1C42
          E75A045BD630F6BC35632940F838AE71D6AAE31B671F148CB97F77C2073F4740
          20D148981A10908869897C1C2E936743E6557780DDD80B5496672654082D3B3F
          29C882D328B15E74B87A598200E0B417C43FC9796C30E083D79204806B29F070
          F9B2B91C6C1BE1A5A04C74AD0116232323A3E913C396B3CD296CCB0EC08E6C3F
          DA200216A5E15F35CA5CCF8DA55A5A116E40D18370605C8041A3E605F294DC40
          7090F1674C4F8683FB9202B4C3824DF5001A3700B93E05DD9F7B217C2EB80D06
          0703A0AA3CAB1BC8C06B4B6D7EFD759F5CF85022CEE7097178424B3E2F8051F2
          E545731BFB54C2B9D1C293A5F3D874241C385C8FD9008B91919151BDB7A81118
          E64412302FD20002D96373BA173C08E08026B452106156CBD84E053AA15B8252
          35CF8E80269DF4FEC552C74AD0696FA44BCB8359DB3BE1158597C08ED3FEA293
          BC0111A5776EE8EE2ADBA53B839CBC9C24C85DB8C43A5CAF0B1D54BB7249EABA
          E4207F6ACF407F9893A5C58D0F0D7596E6C631C0626464643403C6094944E0BF
          4010B0F1E5B80E10840A6D9B86C2722927646E252377D0C0757007962BA08F3C
          DF0F24819616EF3BC6F6C86C056AA7AA0077C2DDB901BC3CB212F625383CB6E4
          7740A50B23F3A3E94473DA38533A0E8861BDDCFEE0D6DF9D7A5CFBBB97CD8F7F
          330866EEBC55588525CBF765A499DBDFD9D03D78EAAE2E3F13151C2E7A890B39
          DFDC3306588C8C8C8C6650DA00363B1160510BA8903028BC300E8513DA62516B
          4125ED6A8AD89311FECA5CE03DE2580EC42807A5836B115ACA450EC2E8FBA8E5
          FC470CE4ED2AE35F25951AACE438B3AA00D67D0B61F18A25905FF20C108F0CC1
          109AFF4202F6F67890CDE7808E336960D456F05CD7AEEBDB52F31735249C0F0A
          392DDD24597CE9F989B6E24B7BAB5820550396711996B213A6200E560744DB9C
          AF3A6EEEC24F75BAF9F76FD9A9470BC93120125CAC014F8461D3750AE5530C77
          06588C8C8C8C2AD74A7C6D19326E252B0C2645A32445008FF5EC862CFE6DB023
          2DA7B6B80986F8512EB4E861B17E6E70797AB01B12ADF3753E17287744ACAF02
          58966AFF48C4B1FFCBD3A9F62DF73292B08FB4FCBEB729508F97EF69298E8EEA
          688C407E3642559E0E2D17D0C65B812DB0616F7706FAFABD3055FD5818268440
          B049FF9BEB5A17599C2CAD650CAEAE330D0B88074F81A2BF45B2BBDB13FE531C
          E8764699D0A1371AA572BE072EE7F15C5E2D8845E93994D07FC2C567D7F222D2
          D7433CCEAF0C887D6357BFBF4729B29C53E8C47D756239975B1C56B4B592763C
          2BF7449AE6BD93D4E9CCC9BA3B2FC258E84133C06264646454170F6605964BAF
          E0947D112DDEB382922B70E9036519A9F0214AE09CB60590911EECCAE58EB508
          6741490FFB038370B581684CB6BEBAB1A1ED3722108FA2E118286B8889D2DD33
          E4DA4424FA5EA254B875A5C299074F3CA2A9E37E34DFEFEB55F9EFA972DBCFB4
          18A72103DC9E9043C0827084D0A20382DB5A62106B70F0D3F8C78C2CB38251D2
          514B58C122E57DDFBFC5B1F84D9E28FCC5226E210498F17F92F6A55A8B47B256
          00FD6A20C5299C902B38E16F54BAFFAA26D714380D51FBBEE3575A442AD264B1
          917045C1D2913C8A773A6EE4FF613937D7E37D31DC7D26C1008B919191D1CCC3
          0A36C7A391C4172C665D3DF4945E452DFB2E4B91B7794ADE0A65B67E0B527450
          20E735BB916B64C92DD3834711294517E17FF712AAB611200FA3FD7D04BFB81F
          5F4FC304597065184F423E8F46F1BD458FC3F3FBD09F5DCA9394D11B6C5F1C6D
          11F641A9945FA38AC43D50E09C4277762B043AA665E4882252EC1AE970E7BE1D
          8125518B21CE43796AEECAE40BD7740D661F5BD2D65896311E1642E5C3589A87
          11627E6401FD6FCED852551B23DD6C5964CCCCBD43CB228AB30BF0FD37EAF5FE
          28CE756480C5C8C8C868462540B9ED4EFC5B36B52E3BF0214D93D84AFFA972FC
          B9D2832F1135D9439DB430424E638C5F4C28B9C002AB45E7D917151B653AB22C
          73F1CF5C4AE192A1908B2DB8D55F1306DF473CF9338C087F6594B2A668F45A5C
          F0AE897C391A6A1AADC87B4E6D9DB7C809E0F25CE077D5C4D381FF6CC221CE1A
          A02BDF750086E942C6B8332FC1A36F94AAFAD0574A89ECEA2EFC67D4251FD73B
          AAB6534597281F48EDD13A2316A7D7E3E757D6C20B54C236CEC24BE51B757DA3
          D461979501162323A37F14AF8A9E84AE33EEC46FE1CC3EEB60B0D0A6978265F3
          2F624B7B8ECAC3D52A343D07F5161CCB38BC8B716B358245FBB0D594255AAA0A
          359F50F64E3B0AEF544AFE058F03C145DDAA940ADC44E4C618A5179512D0AA8F
          79961B7F3956C503FDE9FE3721F63C589331D3B88D06D688F51B0DFB7FE80850
          8ADAF6FB0821A91A64E6CDE3EBF583D9E01736B780D8B5A9585A2CFFDE42E0BD
          4A08F5D5841BB94A4C713E7DACAE73D341BE558286C6FACC856B991816232323
          A3E997EE9688307B2163CEAF3873568D1D5048F7B78E99CDDE9B24EE5C10F472
          8497FEA267802E2344BE07FFBE058A13184EE711EC2F1F21F424C6E0242CE57F
          0025395CBEB09C1C6543997A97CE8E257F2395F706FC78DB64BB2693CEB68C06
          0E0BD5928CC181B947688A10B8545509724407EFAAE04A25E92FF45C8384D41E
          0C2D4EE4C65D5DEF5AD8D6C61BA2F63B758AFDA9136DB4153D454A7E7BBDDE33
          16B5B0D6EB6B5CB601162323A3C35ADA8110B1F8C9312B768BABD4A252463F68
          4F448ABB170B066D42F89F2340CEA1945CAE144D4E35904CE00718AD8E6A3A45
          38819824F6AD44AA37611DDD326692334541520282CB497B738A29F915E8805F
          35445084AAB380B3F6AACE1F12CFBE4CFA53DBFAB67F8F310B826C1C9A938DE1
          3402B5922EED339B07E1D1F57DB07DA77FE5A947762E6C4C5AE74DD9306CA267
          70B65E8E17E7ED53015F3581034E81F1FA9A57C0008B9191D1612B1D4469736B
          F5AAD4AC1FFB4A26CA0108DD3D84B6F24CCEAD338B5E0455066094DDE2AEF176
          27DF4E710D626559A6ADA00A63F60CC92C07F7E87E208B9E00526A639B11C817
          04E47D0F12B1C8C5F6D0D0E38A8F2490FF2B72858F37F36438743AEF1060B446
          B882071D8D51F8BF3B7BE1E65F76835416F8414E3E75D29EB7FEFB7BE6FC355F
          808EA9E9E553DA4B74F6CE2E150984CAD525B030097BF6E9414D06588C8C8C0E
          715994953E83F10C39573C255F89EDFD1F602963E539F86995DF570B2ED3B01D
          A227F0931BBAB7783704A33C097A248EF429584D39B05FF757C41AD89F346E72
          8F08B6CC2D8AD0222149E0942ABD2B1905E2BD6D0DC9E1D141409A8AF9693CAF
          BA2E1BBD3DDDEBB36B6701162FB6E063EF9B0584D2A13024B97DEBCEFC07DB5A
          DC1F4E455C52F150E8E2479FCC2EDBD7EBAD192FF1DE8C4BF810398A42BDA492
          33C062646454FE83833078B27F0F6CD31301EA876D5D7AB5153BB179CEC79BAD
          682C98D619832BF192C87140434E192031B4D8E9FEFC355CB1418B1E680A8822
          205D050D1FFD3BC839BB406575A67D35C23F70D029D721B0117CE97994E63A16
          6F9BDD983C013F2FABD4BB42B17CDDD9ECF5FBF2B94DA30DBAAE8D422070A795
          9F577D38540888E2A6230D168CDC85E6370EF26625C41BF1023FB7E657A60A07
          E1900BCF69385F48B5A65EEF73874AF8438F036B77E50DB01819191D9A524442
          338B40BA27870F110650870D4429159A34F9353A9B7E170DCF3416B11258A115
          6EABB22E24ED5DC866BD3F756DCDFF42E7961B5D39A240A1F3F5BD903A633DA8
          C1CE832C85CE746B13FB4D94D08BF1631B96A001C1B501DFA7A04601C94A9134
          97EA6B4DA4382BF6C1C4C5F4048B20740AFC0A4E2E9304980E526A18BBFEF4C4
          93C297D7320781A546BCABEB7D88DFF428F39F334AEF6675E85DD145E4582D39
          4FC29EAC4298331E162323A343543A1871563C09A41D60435FF77E777D5D3D74
          F119BB2ED775939F91AFEF8C349C1DCCE830CD6AA0A4967034FCE0A7853B766F
          78DFB3AA27A0D6C1DBD041C76F3945C10AB2183C36D63E745A3175A90279EE94
          5D632AB82BE25A5BA3116B42C3AA67D1960025438B1DA69F45E40AAD3219F787
          24FC9AFE9112B211EB6349D5B012DE37720069FF2E42C857F19A7858A9FAE96E
          19290B0B3B1850B8A7AB09BA3202689DF4FC1A60313232AA5C490A8F756F059D
          B782419DC5B3E894F29E14B4DFBF6A7E34F5E740417C6680642CB0A875D06E19
          DB446394F70BD79DDBBAF011D2B6680C5220C05A0BD074FC43D035500025C7CE
          1312E536E5C4063545195145407F2A34559440C34CD130CE663260D06CB0765D
          16FC820CE35526855E2933EDADCE2F6677381F12A22AB0184006BCE56F4FA7AF
          5DB9D859EF5A4E5D7A25C3BA2412B2E0C0DD3D0DB0DBD3F022EAA66C06588C8C
          8C2A92AF04B4DB0978F7F29361BBB7BDE89A9F0E91627C43A92B17A4FFD4F6C2
          DE0F365BCDDF9C3A1B510E7C8C0716C3CB2B8599C97F1306D34AD8BA71EBDACF
          E60B19186B02BEC007587C1C40BC5981C846C7C96BA6C750D186A9821544833E
          420B0F6AE74FA9985034ABD6F8F5A0E7F2E10A5A120CBC48A9C9DA18441CF26B
          25E143551CCC9FB19EDE88E5DA90C9095044D5ED3D6D3105699FC30FFFCC412E
          71C0A1F9BA4AD06F80C5C8C8A862052A009B4460431F81A7FBBB61AA67A0D5D1
          0C1EEE7347260DC5D085C91144770D71B2E3FA2B8F38E5A4CE58E2CDBE94755A
          9BB402F8295FB95CEE6B8D0D0BBBC7643EA5E35708749CB90D44900625D878C6
          DF255C8FD7990A1EA52055B009417377D9BF4588267A1C2E65A30F2B543CC221
          19B7CAEAC2C4CB6583542A836F63151D0F956B09F13728BC37A2112C430CAF62
          412010F575F5598C40F780845F6E89C2E63E094BA9ACBBCE2A032C46464655C9
          9301BCA875319C8DAFE9907E88160209FDA20772E3CF0778B021A65DEFCB4BFB
          C50CECF9CF9BB0A9E89A996CBB33D57526438F81907E8612019C7118CB7FE1A0
          357FE8A93EE8D9D703CA1FDB44D8368DBEFC258D0D8E5D5D8E95B14F954E5247
          F6D822527EB7892A1A59328AB35C3C563AB431597ED7CE3EFCE92EFC5B761C4B
          2C4AE1E777F5D38F7F7917E850A002C2E02BCE89C1956F9E057366732878C529
          2366560438C2C9609EC0AFB634C0BA1D01C4EDFAECAF32C062646454034FCBF4
          3617193EFD9B5823E4958D0628D0234A267B266B43D8AF84FA043075E3D4C3C3
          F4247F2B6FDDE2CCCDA964D3DB376DDBF4939DFBB6F4717670BD79058095240F
          E7BF3605A2DF196F637A9E47474DD1707142491F752B319AC5482A5D2C3D924D
          1F73207D504C820741A5C52970B07632E04BA0EC0E12AA73DD40FF20968CEBF8
          10053FBE330DEBB73F0B57FC4B0B9C767C2ACCE4ABD4CC418BCEB43B1830B87D
          67036CCF12702D3F8C6332C062646464548B56F8D0881F972441A7100953C2EB
          A80AFDF01F9F59F458D29B84126F23849E36BD9E0D5A21884C012029795CAA21
          F6FD4CBE55CF4C2C479B260719257D5704E479BDC016ED01991D0B5AA4CEB962
          4D598D49E5054150757DD896BE2634C45437C1205E5B79A8209A4327B75B7124
          231FFAB00C3D2C303461B55EFEF8E6DDB071CF6E846F066A0647B0E1DEC19DBD
          00BA621D60E361FA757CDF1B603132323A74C1058A435A095A83AE9E2E486773
          E306E4EA56AC6359D1F6D6F6E8F4969256081753E3FD112A80C664CB2BE2B1D6
          2FF48AC2FB239CC3C8BE17DD4541B3147ABED50A70550F44DB33A0F2074E8D4C
          B121EEE8897DA6AAC608B178859BA7E131CA309EAA98B1B708B4B4C2B1F76117
          1307BB92D3A177E9672C35B8A309F77FF006FA7B66364E44D78887C81A696F47
          585190ABF3FBDD008B9191D1612002DC9668A8FA408D639824024BC26EBD060D
          D7B1E39B89A98A6999EE7D4C6CD2F5882E9BD2AB959F7EF4D6CD4FDE121AE521
          68114AC0CB66AD02674B233CFAA105B0FA53FD008B7681CAB9FB83555531AB2D
          9BC242A66885130FEA2E0E3DD5001F2A9D9E26200804F4E7FD30BD6D39D8A28A
          7066272D7776256529781256AD8888138F4DD4E76D43053CBA2F0E0FF6C4209F
          0DEAFE2E37C062646474E87B5AD0C836C49A21268AE3760F8ED6444365DB0B78
          A2F15FE58486703A40A2D27DD4127434B21168E0F16B1FDED7FB8735E93DDB75
          58AAC0A50DD4860B671D07C40920B7CD82DEAF1F090D1FF281CEDD0B348F9C22
          A936E4B1A98BBBD0C718B4694F5065BFA6A3AE8D61901120CBDCA4FEA9A4A415
          FF7456064FA047031544568CDAAE0235C3B1B69AE706A40D7FDDE7E095200E89
          FBDC008B9191D1612234544E63D805A0DDFF23A302242EB45DFE0534B20DF5E7
          F1986AD019C7CB821633CE9DB6FF5CF5E2CFFD62EB53AFD7730BE9AE9405F146
          981B6D804C90071691E0ED75A0F74B474370C133905EBC1EBCE85E888AD6A7E7
          A55AAFC59F1C8F1B9B87AF763DF1716D6C70D89D339F5AB405F4089D32E04243
          14D151396110F8F30E204E28A4A26E3842C897A2086CAA345F8B45D9423CCECA
          8634EB247D5E90CE7941312DBF2E1525787D727038C5F7333746482788DB38D8
          005904D0085587C41D6E80C5C8C8E8B0901E6DE1431EFEFCCC7D688EC4FE2E0E
          3F90B07CFE31972C4A2D795520820A406032A099F87B4E8BA373D050EEC3375D
          94B2BC2AFE204614B4A2FD6A20212C4C7F3755018D779B137BDDE58B8FF976A0
          C4FD3ACEC24263EA89E75BDCC416E023B490EF1E0776E342289CFB34F49DFAC8
          DE79A4F96AA573A64811C1A2B7799E3CC28990B954F195783817E04F8FA8A268
          2D54B2D3F10CFE6A52505161902E100BCB42827161061050145676BA50409E51
          7A68F6A45E0EA9EB9EB197F1E7E7002A5BF8BBDDA1578F84A9F9218F751B043E
          A4226E989365A646086954CA07F4904075032C4646468795C2A05ADB019A8941
          9F3F184ECAA83B3E3870A73199FA64E52331264BAB4FC7FC856EC053205BB7F6
          EEFEA547EDBB6396F5484C047D9168C297D8C80E84B4A94F9A022E8FEE0D72C7
          CD76E21742E8B1A0EE747A7FC2781E42DFEA21B04018DB4260B4F38170A9034F
          C1DA1783C48F4F44231E0575D166208508800739ACFA2D7E005B9C703CB1D286
          F9DF29253F23845E58A967C253F2155DFDDEAF8A4394C73FE72E824A73C28152
          46F1E8F816262C281428441A39C849E2647075CB06585D05AC40C4E1CCA60C72
          08CBAE4D20930B202DEB632C0E2187D63D6E80C5C8C8E8300116090E7760C9CA
          E3E08FEB9F011F0DAF36482BDA67BFB639D9BAC213D36324C29990857F579011
          3F8AD9F69D3BBBBBFA219E8298951A4D3D797CEDF4A5DCB93797FEBF761EFD2F
          A6E40A69F18B10515E8BA072746D61657CF861845CF45477D7AC7EBFB06B75E7
          52F0872CF4E8E916942D804806E4274741A6BB0D62AB9F0368ECC723E1210C68
          AF96CE7EEC49814BD88D0EAB0C588AF5482F1205718D9472D778865508027B0B
          12DA1A6C28351F9C82A11144783D049960FCB9909092B8C54F268E734C355310
          60555E1548B5C30FC44F2C8BCD78ECCAA12C032C464646878D7457C6ECB624FC
          73CB09E1848C68999843F915455819CA825A35048C3F0F1042D3FD0CE8270782
          FCEF051AD218B38B5D4274FCA6ACFE66FF905BA59E96F8C2CD7D19B7F53AC6E9
          C7F0AB05B53172134ECE183FAE69D67F6ECD0EFC51808A62A11C3C0E7761A2D1
          05421BF0F874EC4F8A72AEE70FBA05EBF6BBDDB7B741664D029A3FB006A0BD17
          A185810CBB67700B082DC83A0F03B3742AE264259E098BD3A6CED6E8957ED6BB
          868FB2547AB6700D2B56D486DDDD7E05102043B8125480CF4938E478F4199208
          C016A5EF86EA67D35960DBF4C7CCB2DF8075730DD6DFE3E64E35C062646464A4
          2D0D706C1DEB70154AC98BB0357DF2F3703065DD2B6934469F51527C011817DA
          1892EAFCED05A4AB1B7B0AB93B6CA09F4AB8EE3BA73AD6C1E5FC2DCB1B9ADF12
          0CED47275C5B186D8440E73419AA374A114A84E812AAF05D8802E4B653D8F3F9
          E5D0F6AEF5205ABBA06B00CDB1EEEF02DDAD14ECB6926A3382C7D195945DC758
          309B5EB17177F6BAED7BF3BB18428546070D80CD8D0422240EB3A374D26E9D89
          64531B541E419614424F8B4EE2A6CF9A1F0888DAB197BA36BFB856F5CE085FCD
          183D3B1125D76773DEB5B8D5EDE66635C0626464F40FACD08B82C6D6E64C77CF
          5C5E9A87A15223140EFDD8950FE43F6333FF615AC398803088588A2E2FEF5D61
          81F78863C7AE03429D2A696EDC7A9050CC553352C1A8B81F6DBC1965ABA24487
          AC124F8F9D917B1D487FE55870AE7E1CDCB63EFCD170C237A95D5AEBF0374757
          7A226D873405B9E897BFFD9DEE4BD9D0A09FFE41059FBD6636380DD56788D590
          A2BD5B0221685FDF20F40C78E128A3F616B7B13191BC5EE9190B6B368E272C6B
          D4A2D6D5AD29F21ABC543E80FBFFD94C8D292665E6A431C0626464547F0E8AF0
          315ED71DED0B0990F70D393048F185A880966628F379B88C5289268EAEAE8531
          1F6B5D9DEE3D2DBD9DE9746175C2B21FE761EEF5DAD65B38D2098FCACB656E00
          41F644630D3F154A5491A99756756514B39CD0A5DBF2D979F9C0DB18965033DB
          160AF23E342847674015EC21B8913077B67BC78279D6259566D92F1414AC5A1E
          79EDCDD7CDFBC3639BB67E331E7160DFF638743433C8E76B56C9E0500B412C05
          994C1A812B80851DCD5FB1185B1488DAA7CCD750685BBC1341EE5ADF9777E0A2
          F474DF40DA579543A8DF175821B818603132323AE43C13DA212E3D2FCCC751AF
          85A48C9E4AB9FDAE83ED0E3DE06FF9C69996B56ECCB2FABEF6E40317FD72C7BA
          C76F3FF952A096358573C228E855BBEE0894FFA60434FF541E3C05D0B498B921
          CF0FDF93CF1CDF5BC86E1CEEF652790AC7649A60F9093D0857CF174D4AF5AB82
          2FB73342E7546CE0A502C69CAF2C6A9FD385BBFB9FBD5B3DA8752D074241478B
          0B8B67DB4014F90CA1F66553012B23E507E267054FA467C2CBA1C7CFFDB9D006
          5DC2C1F7398043C4D76280C5C8C8E879A34F291A071B980CEAB88C64D14C97C1
          C27A2A0CA6DFFFEAE8BCBF9EBFA0039CBC07966583A4B5ED760A93A14909563E
          0F498A863BD3FB3399748F8248F463C5E468D39F4543E78B3921D97E76269BBE
          75785CACB21174D7E420DDADC089492CDA50CC0BA87E7C7713BEBDA69A3AC0BD
          D8EDA9D80F02290B4150B8BDD63E81104D848623EBABB8AF77C314C38ACE6BD8
          3D98FB6ECE0FC2114BD38A9DC283CDA20D9EE131682012F287D0F3C9008B9191
          D1F3C6411B2052E70D2E424E9AC9DD4718877BF63D77F3E79FB8F77B36E1611C
          4B7EAB0F11EEC0678F7D292C8FB7D5AE258CDB467E043BDA08DAA9A203517DE2
          7F9AABE0C5F8CD19D599E8CA0C25C732ED11DE8A3F0FEE2BC6F00C6D8D6CA1F0
          9275AD00476F016F688667ED714A93E0A6E664FCFDB86AA43A2F888C504A7E3E
          AFD3FE08FEFD72AD6290755C8EC5D92CCAE0739490374E7570336304F6EEF3EF
          7DEA29EFEFD3DD19432100DA10852D0D8D781EF1AC297A483D9F0CB0181919ED
          6FCBFAF8CAE183CCABDF7E6D162174D1D4F1D4E486DC17B28BEFE21FB8C47EC1
          012381B4A1EBDB2CC05B26F5E8A4AA2329F5B0ECA46EE91386C67AC411FB2A90
          AAF06EE646FF32FE337CB2E3A83CBB6F80974693E52C399E593121830C841E02
          092E82DC973EB11B9A2EDD038B660D2525C3D792F616ABA521191022ABCE4122
          A5B2962F8D7DA9E0CB177779FEBFE1A2BF579CD46DD80832FA9A58C4FEBC5264
          9E9A86AE50BD0BEEC81F2D5A6AABE96C17E898654F39F0177F0E04841E924F28
          032C464646439E031BD60FEC83F5D872AEC7A05B6D981CCA922FED58DCC629AF
          711CC3B0819EE4418E166670D0FBFA8AE6D63DC7B4B41FF4B54E759F4EFB5060
          02AA1D31842D7E20DC1DEFEBC714C8DF11A0E7970624E30148259E16A54761CD
          4E4512AB54E03FACEBC44203D81F7870C393DBE1CA0180B6235D387A4107969F
          CC4A45EC5B29510959A34B4A08051623AB67B5DB67E3FBEFD8167C1D173F5BFA
          7544C21725F4458EC53EC028595DF4AA4CCF358FD0B5DBB1E1B6592DA54C76AD
          07884BE0444F4B49ABBEC2EFDFDB08F94804682E7F884C776880C5C8C8680C35
          5A0E5C3C7B250C0685FAEC120A33C8936516A5CDB56F07D352CB905641700361
          BA6B666CC8D0F9EAA28C85E9E4CB35817A88ADAD7398E844776A287A639C8250
          C6AE559C9D274190C9CB4F6BB4FC797473A3C9A394140FEB0F31E6C0AD9BFF86
          465082CD08306A417B32DA81C0721B82CA2A59E36E96A1CD613593F774B4B97A
          E8FAAFB112EEA1201FC4F71B00C60CCDD013181E1F8BD03395C35ECA81BE484E
          F3E483E1ECCD52DDA87CD217CE75309981D6DE4EE1C0DA7C0A7A955DF9D58DC7
          D9D51540BF94106D11E01FA2CF28032C464646434F530536BE5C0AD3D6DA2CAF
          7CE1137F917EFC4ECF0E0FF63E08F0EE875466271D1E403D8E1C2CAC9F572069
          E98F584618F46607E1F1DE9DA0E4C4C198617A79A0F79ED8B9647DD28E1E2126
          0582D1C722270193E1F5C7F7C02846564A3294680D57F9D9CE678ABFC4B2445C
          9883DCF6BF44AAE3A60102E2F8E7122CC7250CB840ABB6C956642F01B20797A7
          F1FB0645493BFE9D85CBE6B90E2BD6608D214A43014750F5FCF1715A87F4E483
          C2F582054027995053CFA6BC2388C05A7F16EC0E5C04C1CA7D22DA4FB3D74B43
          928B43FA116580C5C8C8A86830D1B83AC8029EAAD3A85BB42F829059D337E09A
          1EF4C9F3D56D125BBC74F2A2824ECBA224814084567C92F515C2900049042C4A
          3494942557820A109CEE94E1ACC8E576ED94EA9199009A143B5677CFE8D89507
          77EE80270A7DE1728BD82DA7ADEABC4B7A64D50CCC44AC6964092574C968CFC6
          F3E556155E0B72025821D0D72FB7AF59D7FBAEB34E4A9E2002380E97E9E0F0D6
          E1756C8BC2E65D999FDDFDA7AEAD8458E3D62CD7738E4B06AA633ED80B9BB042
          1156F0BAB0AA6844D0D05B73E83FA30CB018191985DAE9A7E1AFFDBB2127EAD4
          618C866661A27965120DA4988119E4D05CE5FD1CFC5106A5C5CF68FB50C0FF3A
          12ED20236CC216BD4359882C89581292A4A11C88FB131AE0AB2BEF12AAC4A331
          94E9868A39DC0AA89E3668E9EBBAE1970B1A8106EEDC2397C57F4E055F55B7B9
          7C2A3DFB13D74946AAC26BFCA0F0A050E4B6822FC0E5D08ABF5A8CE072245E0C
          6764B2F2F8E606F2DFAFB9A0656C634C74D65D05BB45033C5668856E11013F9B
          06D79220CCE3C9008B9191D1F34A5911C8C8000AAA3E1F8FDADE4BA2BD0933E5
          E011DB9CA4788E94F51B09B3211A263FEBF1FD83EC9E46189B50581869001B58
          B1F55F168B9135B8BACEFC1539D8C0D6BEE74C6F312BBCE702DFFBB5CB22B705
          1E6218CD41EB8BFA60F6A2284403F7C51169BF20EF4B20E41FE3BED12E9DEE4C
          EEC37DB6F7E0DC2516A860FF8177E1F9C7177B5812F9BD6D7B3CD21C0F14A16A
          94112E5E143B4502366462D01D9B05BE9E964077409AC79201162323A383B52C
          D102A7372D4083549F1E1634031C1FFC4D33E15D290213D92D7DDB2FB7B76C98
          5152D481BC4A1F64C82D46812A8A464A1553F197A75D44C9BD84D0F953E55129
          1EBCD413F5DDEEC9C25D1BFABBEF8D02CDCE4F2223051CECCE1CD0583FF83D0A
          32E0FF0F75ECB7E2319E71B8DF2FFA32741D0A8AC30F0BB2F00D1504906A76C2
          AE4008C60446351A54F4823D2A059B55336CF15DC86733908A23E228651E4806
          588C8C8CC66D3D530208042048DD66B9D573E8CC1A6D08860250A71E98086CE5
          9C55B58D783406C3F11061D70A2BCE2A2D8691AC7C7958A4C12933CA20EE4350
          FB0108711BA3A457E729D15E203234665B3BE3F8EC2C3004165E88E05105998C
          3F707932D2F098102A7A38DF2F9C13787A7DFEF60DBB7297E7994E5C6485DD37
          67AF9213C620B12184ED4250D9A85A60A78C0DF9C302B088340F22032C464646
          9369477E001495E0F941BD66BA2D3060FF8B36FE551A5EC2A906271EAC536BEB
          DD5DFD4471246C9953A2A7400873C2552BED70AA914BEC00AFC08014700902CB
          6F7462B8F12E073DD2256DE560F7EE1EA085D490E741AE6F4BF26B66B5C7BEAC
          83720F37691661948265ABBBDF7DCDD64BEFFFB3B7BFFE2D4E61C3834B209924
          23CEB80E4416C090EEF4A483BD2A091B542BEC9249D0BD471C71555F06817904
          19603132322A4D1F79E6FE307FC84B3A161573B1D421B0D894FC0B55E4D302BC
          1728C9CE06C5CE4223B12CEC4B29D9364E16DF31F6F78C50C6AA24394F06E08B
          7C483F781CA013E055399286123D4D744D32971EB08D2ECAC86F54682270F36A
          6C73AABB3F76CA0158B7098DB2571C2524B1FA6291C16BCF4B2D3E2EE9BA6FF4
          023961AD3DEF8C20A00E81AE90002963EF60FADB73DB23EFCD7B2A7720D38EBC
          5E6471566465C1F65C236CB5383C87EF77AB444898167E678102D3F96380C5C8
          C8A8AC562341632AE0DD4FDE0BDFE5169CDE3217A1A56E43FE3602888D3D79FF
          C73243EC596DD155C28733082517A2913D058F263E710EF8F247D4E839730683
          7CFBE64C7FC5C1A4DA18CF71E3E0A7FB201E4B85AE119D7B4597B58A8E008B15
          BBCA6AE559295E0B7EDEDBB177B32595D2F19FD09E6C83643C75E035A38A16E4
          BEE776C1937BB0202312CD7BF8AB87FEB8EDCA7F7FC7C2939A9BD911C1389E16
          3CF44DBD7DF25AC2FDC71DCE3F138DF033EB195A6C9BC2E37F4FDFBD6E4BEF3B
          DE70910BCB1659D0D52D80B3E2F0F5A614019BAB909EF7F871D8E245609B1F81
          016101711842AA0A41C6328F1C032C464646D543CB5BD7DC0D5F3FEA1C38A77D
          21A4EB165AF687A76201D5A3C2938F328B7FD597DED240041F8BBAD1378C6FF7
          CA1F41A3B7C581CC4D295E611714B6A439074E2816B898E746C70C01C2A114C1
          284F4359F59004429BABF328D183C08A332B3FAB65DE7EB70A677CFF7A230F5F
          5902A2ED0134E3D7F480997108E4A437B8A5B7E7CDADAD6D77239D2546EDB4DF
          17E2DA7DBDDED784C77B9913C09EDDDEB98B16C63F63737275BD328BE74958B1
          CCCDAE58360B06D304BEFAE97907B0B186916E1587070792B04FD810281A0E57
          B687E65122E6316380C5C8C8A8B6D072D5DADFC10DFC7C38B9792EE482436070
          258561E7FA064AE9BB9592AB716163651E96B14CBE029BF239F362B118252453
          CE6F7D599C078672177CE54166C8E4AB2138D001AC4410F00BE5CD1613620887
          95944153E5B032DE85A0B296C5D4C8ED04885A1AB2980ECEC6726B03AC53F1BF
          FD2D31E00BE268CDDD51880690CDFA0FA5B3F92B6CCBBD990CF991A4923F978A
          7C3450629D902ACC5BACD90D97E5070B85F73B1EFB532C627D09575D589FF708
          3DD10B82985032A30174789872082308267F4758D9E547C0A122041523032C46
          464653082DBE94F0D9277E0B371DBB1AE28D6D1004F53FFB081A4210DA4010E8
          4583BA058D606365C67B9C1816CA663F9BDE776C6F21FB0029D11DE209014B93
          2D9072E268F0C5D8311ADA58EB3A2FE4C3E1B0AAD4698DB09876D43A9ABB6C94
          D76764F92B8B6D4184DA79A03FA0F89E521B16255B2197CB153D0BAE801ED607
          3090467AF1C7ACC941C8FCA855CE3D9213E7443F08AE6304FE77B8FE0ED80351
          61371356D92FD399E0C168947E8A12FA26D02949EA8B8EE74A295F2AA4B84D8D
          48E9A68F25272DE80D1858B4B25C4664F4F5A1AA45EDEA7E6780C5C8C8E89050
          80D0F2A7C7EE80638E3C1B66CF5A04BE5F7F9E16DDE2772807CB09E71046A367
          0F7B44B6201E1C5BD9639B8EB3949002D00BD6A5071FA025A5CE07986FC780A3
          919F30B13B1A25C609D80912C28A45DC12CBA9BD33F4E5077751556F9E88544F
          1249C6ECC388A3D98847121A2C20E01402E615476B91B1AF0F110E3C971FF5D0
          186B808B591426EA1CD1E08297DE1E21E43BB0D6BE41197F9754F06A4A215127
          680CAE6DBF4D86C032026811960BBE03193C8963CCADDC8297E84FF1B0932308
          4777122952743D09CE9960A9648050EBE1323D0369813B4E16E16E108F7D3B7E
          711DD663A6A2B3AB081C0EBE1E032C464646631B6842C3EE8C879EBC07CEE216
          B4B6CC05BF8EBA87283EC5F7604BFF6F3B761C38AD1F1AC66589D62797275BFE
          C99F303DFCE413FC1D6078715B4BE28D97345BEEC7D1A00413A384F68028680A
          F40CCE56712A8189204715E3640A8844DC433412B268D3278AE560742144A2A7
          D57A9889EEE678A47FD7A6CD993EA093945943CBE91B5BA0F1E42E10B9C9F1AF
          82188E3552A8B7F60F046B1B9BAC6BEBE8F6384708B55C29F9CCC873CE94072E
          4370517494F7881C830B5E3C2124EABC3CB67580178E5A45EF990EFAF604592F
          15BB4D9675C2872E223C4FD9BE00122D06588C8C8C0E5B6829C6B4FC61CDDD70
          DA51E7C0ACF68575012DFA914D99408822D0C49A460D0A5290E0CECEC933E296
          DA6D52041A1932025BD26CC5CE0984BA7B22FB10CE0B63E9A470D9A1D63629FD
          C0B80D79E11569605C60506073EB6DB51E21A415285958D6107F747172F24DAB
          3C05FB4F5110C73F5D1C36A42A0F2B658C849963F9509F583442C319ABF5FC3A
          8E6B795E0DD203E9EA0CF3E0E8389CE284947D080A03B8709E2AEBBE00271FA8
          57E70BF253236358741A641A969FC2C8943DB8647129851FDD6538BC0DFD07B1
          77B1C07BB1DC3A5061923F0BF269BC9E5A0FEDCE21032C464646933E24027C50
          3EB8F67770163BBF2E3C2D4A4A8412024AB7400F020E9DFF826C9235733DD011
          060588A0F23F10427E6B512E479A506D0C3DE183D2E35BF55C3AAE559181A58C
          434F5F97B631904826C6C8E2AB400AD9E030FAD6A948E221416C150AD695E275
          D23D70FE538D606F5F0C72DEB3E3F50A95042BDB76FAF0C4BA3C10C9C0B169D1
          BB13028684658BA2A9154B6DF0CBC8AE36C47A39DD1305C564C2837EA07652AA
          360DF4ABB58EA3EE639C6D0E643EEF70FE6B46AC936589C393B43704CB79C923
          7FCBFC27828F24C38E0C8483F4D202D0987DE0049D841D5D6D0E1F45E802A0B2
          E4E91B348A2A21A1BFDB8386660B214D1D16CF22232323A3493D2D3AA6E58F6B
          EE86338F3D0F5A9AE7423013D0A20D851060E5C404DE116DE8C4C310955D4068
          6BAD8BE030FBF4AEFE6DAF7B74DBDA9B396543C6014906EBA7B5B11396B72E05
          9B90AA5842B7B463560C648E40EFC06E70F5B0625224260F373CAB63F6BB18E5
          ADE3E72C916382DCC1CB0EFCCCB1DCBB0BF927FED4B52DD05E2139622D394E8D
          CB028115F7A760F1DB106C2BB824B4B7A329E9C209AB1CC8E6C401CEA6614A8C
          C769B3083D22A4C4CB8440FFA0B89533F26F11576511B87D9BDBF974DECB445C
          027DFD029A9B19305BC1DE5E1FBC82F7966573120FE1D5959C8C59B4E1D745B1
          2D78FAA8E511A65418ED53F44EE17EFF825F04E4C05C7E84D0E3AB86744A17AA
          302FEE64C05BEC8EA4C040E7D6F5105AD461329EDA008B919151C9D0A2635AFE
          F0F8DDF0C2635F062D8D1D20E4F42514D72D4B297390810290C8C44F6005AA27
          429CC729382FAD2C71CAF8712DBAC5DF186FBE36EBC61FDEDDBB6BA31E966C51
          1BEC680A16441BC3D14A357B4063119E0BB6C286C13D60110E9EF4E0C4A6852F
          5868CDFF37595672BCD1C733F6F105B8CD4616FDFDEAB665450F052D1EEF60E0
          838506D05301B4DA2E1CB06FB486EA41348A2B0988931E01962D152A14F88104
          2F10B063A704CE43C33E123B87DE4888387C4E39B959F094A85DBBF25F756CF6
          DC82050E1EEE81B3356948D2A3B6FD820F0FFDA917BA7A82A7BA8F26EF39F5C4
          E48DE3E59ED5F5A1B3F86632F23756847C4E10B877C15C777FBF8D4D253CD997
          04BF9BE979B7475EB851FC37A7DAFE2C44A0E6C9804D835AA6AF00CC55E05A24
          3C3787D3ACD906588C8C8CCA82963C3EFC37AC7F0C661FF74F65B9E86B236D0A
          EC03D044B7C0479B183D3C34B0C97DB6A35E5AA979184FDAD51FB3A32DAF9C7F
          DCB7FFDCDF7D8EE779AAADA9193A171D0F05E1A351AB30F7C9185E96881385D6
          96E570EF761F7EB26B3D9C14EB68B86CE589DF67944665088B958E7C1AFB773A
          B873477E503659F6906964408482AC2F20C1B1C52EC28E0638A0BB4D0F472E60
          B3FE5BC74104FFE44E280D5A7450B7E7016CDE9C053D1B0F19133C8B1E160489
          D6F6560B8212E726C2F5D62C591C79588FFDF603751004EA4906BB450C9E1C8C
          C113E0004B3F030F3CB9E3A6638F7557472DFB55456FCE8105C123FF5BDE13FF
          F5E893E9FF39E36404131FAFB1A0980D4E67B7ED0B6C585348018F1ED8898745
          582CC3493BABBE20125CE5B91A23E05B7B5402843FCB7660EBC64198BB3C0A87
          633A5D032C464646653F34F666F7C2AE9D5D605B6ED8029F3180A2DAF5CEC3C4
          63940CB76B65D8B2E481FAB5EDC2A741D53E0D858EE9B1EDE8D9A71EFFF2AF14
          06B2EF711251D8931F1832E0B5DB9D40F86168B0DFB1E818383E399B1E936ABF
          BE85BB2B7265C14A19FBC37D7544A3FFA5E7ED2E08F90D3229BE0D194CAEE376
          106EBE711C44AF28420BCD91093C604577C792F95138FA0836694F0F824D2C28
          63224549E4CD4118274D4278A5B208291CF7B36780C2DA5C33ECA229F0B1242B
          CE698245CA85656A0B64B3997F4D345B27289F2CD45EA4301BB1828D7B07D25F
          931EFF76AA8115A41835B121C2CAF6BD027EBB33018FACDF0B5448189E245343
          67EBECF8918B5735F26A2682D45E1221A071FB96C045684C93038108A24906AD
          CD91B044841CDECF1E232323A3B2BC2C9EF2E181CDBF08DFCF54289F36287312
          73A169E909D0E64620468726E9630E10163EB81FC3C26DC555174CC9FE350931
          78B71DB36CA9E415B5F1AB8C61AC4500292B1E7BF3A2E3BE9F17E2E22CC2CA54
          DA248BB006C4A4EB6C265EE42B85F801DDA5599322B4288416E75F01F2274EEC
          69D1313FFADA4967274DB2C639B3DACA30EE0341E0FF388CEF2145EF9B2EC5B6
          7C029ECC37C1FAED05F0ED182413042CDD55940FC8DAC1A4EA82F990FBFBDAAE
          9646EF0D679FD6FE6B3CB74FF7F679DF4AC5F9AD85A09001C9F6C343D11B2543
          6FCDC6420ABE764F1A624D04569DD8049974BE787E28EE5B1288C6EC45B24AA6
          1F1A15DF928859B3A4901B8613EF29BD0F7CCF35B59411E36380C5C8C8E81F48
          04D078CEE84CB3DAC790CFE5A1104810810A33C93225C2262775998696372341
          4C6DE6099D23C3B6DFA9A48AA2EDBA0A7462D75A6E1E2D55945B9D2E757F92F6
          FD33C2E0DE12506A6C742A0DA9866D2B23EC124AE44A9FC8B7E27E1F2AA9BC08
          2D2440C3FECDA2A7258BD042B363406F78E1D83AA1DCE480AC235084BA01EDF2
          6B2825470D7B36D4981E3702E98CF77FBDFDDE4E4A86C128809DAC1D1E27CDB8
          216DE0BD70CFC5F5D94B28679FB6B8FFB1C148FB6FBFF3FBEDF0D81D7B1F7CEE
          C1D4D12DAD7C5BCF4041362658185B43F65FF9122C3C806E8FC2C37D4DB083C5
          C19759706D8044930B4E82E3F14908FC6209B9C516D464424746ECC6049F4F02
          B9A1E859C1638960D9223604D942D57315E9DFEBA1DE52D6EF68226A1EBC4646
          4615218B4E7435932F5D063A4686136C7032C6BECC28FB1EE8C4AC532D3DD699
          C0651DD1F8039CD1736A052AFAC52CF68E25C9D6875C6A9F51FA306D5AE1E35E
          8E81A5F448CBE2BF6D7223572AA54A2A41082D439E96C85F4F44A33A1EF2EA71
          2C7CD217255C1684FF9F5E204E10101C8F96FA325FA8EFA2615D83B675606417
          8836BA3B76177EB06D7701B6EEF661F7DE3C6CEC8DC2EF77C78123C1D843E9FF
          F591588CFE3BE7FC0EFC7C8A13737F895F5F76F6BF74C0651F5BA2AFA92D169A
          6E9B1118061FFDD7B124A4C18107FA5AE0CEEE0E78629F0D0ED533300FD5E090
          9743C3CAE667FAE1B9B5BD90CD04CB28ADDEF3A1CBED47585B2E41211FA3E03B
          14020E08EBB26AC8D0BF77A37C5522E17C291AB75AAAE9BE321E16232323A352
          8C3C024A24CA6F5694FC53F91E88D2D7D761A7A3F3A3304257B5B8D1BBA59037
          283FF8322E5A0765B6ACF51148A5482291383712B13F6839F41C12A655AFD480
          8C37BC7934C08C5F27789CB1A4E5FC77BFCA9F2C047D2F2EEA99F438AC62F710
          5CAFBB87D0A09EB80B68C1ADF6147B580D8FE1DFC7D205FF873625B47F4074B6
          36592750461661FD9F8A86B671E76EFFA16C9684312B1965C1BA6823580D1428
          9E0B9DAD987188F1A4FB758488370F9F1E849E1896FA7B0D89085DFACF1D37FD
          B52F039D8301086F1FB405C511455D190E8FAD8BC1AE0529D89EA6616C8C4583
          31AF433DB478D1AA14EE53D894DA47D5CA6BC124CCD3B362EBE3C0EB2C44BE5A
          8010E5D685B66B7D3F16234D8926FBB42D4FF6BE0A0F63870116232323A329F0
          7270CE96306EDF8416E974286BC86FF91E0B320E1AA071678CD1B703A3AF47C3
          752B16EA662C8936B2BD230D1AC041F106362164814D232F21A05ED7D8D870FA
          0808AB42B48A65CF2B08F3C2386F8C72DE2AA5584D6192BE9C3063AF00E515A1
          C5FA048160D600408D52F70C3B341050B60901DBC2C092D0E526E19C3353E030
          017DC285DF0DA4803C17E8E8E5F00C11CA96C55A53DF27363F458D860802ACA3
          A5E946E5ABC66D1976ED2E2B09BBFB24024F0C92B928EC41A659B72503CBDB39
          302F80919144A3BA525CBC0E3AA5A2CB1465E7E1D2A6DA5DE8E44DB8ED3FE2E1
          3E837BECAEFEBE21BA4BF35F99CDBF829F2C7D0C8CD353161EDD7C4F5E04AF46
          9879C2008B919191518DA4836F152117C6DCE80D01A8B6F2E2052A0D959DEC37
          348646E5CD108DBE191BE7BB703FCFA27DFB3325748BEBC60619B374C7848B90
          D28A46E804FC6E8565B90B2C20E1348E358979A86D2D87C72C03F5D7A020CA08
          211520773308D6B40399B7AFE62667AC11313A666573C6817BFA5BA04F7B2594
          1F06A452CA2EA2947C0BDFB4C1781E0FBD1E812FBB51AB9332F901DD93935614
          3279075884829E187BF48CCAFA5CB931D6184958E7E055F1323CC767510673F0
          BD5BF3D3C0C81158823F31A07BA94B7FAF88BA1197DE030ACA8FC4D6E15036F9
          1AA3FCAA83AE5E4A8E8810FE3B9F05AF15AA70AF01162323A37A775BE87965C0
          1FF260D49BF4D892BCC8C3E244CBAB2336FB015A51A77C20A135029909D6273A
          07079D85F6E40C1D73D3106F1A052474D451D1EAF6577338DB5FC641C5D83768
          B4CC6E083D89E6CE8603B2E74C85F428669DBC6DCD4E0B1E815628480AB62540
          CFC9188DDA1F218C7D1681844C762DEBAF59DC7E3F2310C3F374150B33EE8F91
          EB472754A6E4F440D2D71E7D6AFB458C93393AF6639A0243DBC0A2AFA10A5E83
          EFD7508BDD4424FC02DF6F2DA5FB09CB98B0B87583A2E492B1EB200CEE6EB55C
          E74E25C8DB64D073B301162323A3BA559445E145CB4E84B45F807A4CEE108EA0
          8924CE6B72A33F15BA253FA621AACA4097B97E6940A06AD65D556AFAFDDA6C5B
          2AF15DA2D4EE72AF046A2BC8FD2D0E7C4B3BD0F69DB8A1486D8D1811617E95AC
          B4E069BF017EF2F73C74AE00B0998E5921CD4DADB1AFDB0EBF14CA8823216157
          1C79675B6BB28531F646FC653EC4C92290342AC25EE744D96B9D987D86A07A52
          CCE967FA11932B1E436D7E2D16F86358B8FB120DCE8F2825BF81B146AC854389
          E802E6BAB730464F9DA8CCC55C39C4B562CE0FE72C6C985DE82B7CDE008B9191
          515DEAE92003E954029625E7404E0475573E1A86BEF24DBEF27A09B0C67A2851
          751E8E723C20B58092D2B7CF81F462CBFD8B1545D45001AA9F43E1FAE510BD3A
          0BAC2907325F5D39C3A1C5249CAC01BA4502367B0DB0D58B409E58A06857188A
          8A5F2F8F5AF64F09214757D2C5160271D47915BE8D15947A2D61106F9D13BD9C
          51FE66AC9085232D7B5DF81F0982948257CE3B22F54A29E5B37800B7E0D25B70
          D933E1D585C046B87516A5EC07F8717EA955A2DB2A0DEDF1CF0D2A321B28B91A
          00662C532451EAD09FC1D1C8C8A84AF344E9980FEC53628D70E3F1E7874197F5
          999F41CF99927C27B7DC6F966F366419467EAAD2C255E331991EE974FD9BB25D
          9FEC2D0C7E426713AE54224BC0393A0D47BE7F1DB4364741E54BEB24D206332B
          0A580B145C5BEA81CEB0274B1154E2B03117853E16015F51E03A911BA3F0E45F
          F6C1A255C957D80EFF36C24A7BD557984E76EB054F53CE5A18A7ADF53AE4776C
          E88282EF89BB182737F4ECCECF6FED8C7E111757E6E2A2444FCD704B10C8CB55
          90CB2B4181B92C1C2E5EA9DE71F23D06588C8C8CAA07966168F9F48217C11BE7
          1D0B69DFABCFC213059108BD1F9F9B674D7DD36FA60062AAF73BFEF66D666DBD
          7DD7BAA3B6E7FB0759955D83220F70FA0BE3F0E2F70D821FEF01082607A06160
          D1DD3EBD2A061BF30DB033B0C32EA0704A0625F70F1BC23F2C9B0E3E134DF00F
          931A7663EA6D1DAAB65257832EBACE05538B4607D6F61FBD5CFA75082CDB0DB0
          181919D515B0CCE60EFCFCE88BC0C275842C0EDEAD372F0B61EC945432F9270B
          DFC82931FCD57A3FA613746AB72F1D24BCB76BEB87FD6CFAF39C31A8BEF38340
          B65F42F2D42C1CF15904169DEE5E4D6E7085CCC1763F0EF7653BC0937A0C78B1
          4B708C2367B6CD1F01A98E3577F594EAE96C26F772EED0670DB0181919D505B0
          0C43CB722705AF9CB302F42CB60AEA70C490EEBC9FB3FC4B0BA2A9AB3D296ABC
          F55AC24639DD50530634DDB87F3DA22A3ED9F12A2936ECD9B3F9847C213F582B
          8F85CE7FE2A618ACFAC63E60CD3EA860E2ED32AAA03FEFC3DD3DED30A01CE044
          4D60D0F40FC8ABA86BFDCCDCD553DC4C506ABB24E2343C7BDB2A069617FCB6AC
          F54DD0AD9191D1648D6258EFF5C3CECC00CC8FA5C0AF3910D400B8B08CBFDBF5
          ECC72E5DB0EA0297F2E562CC86D854E55CA9645B33D3B524A5DA207D75016105
          3DABCECB18B72F23404FA607E054F193CB38FC71EFE60F3ED2BD7D9031563B4C
          D573D6F42BB09EB660FE6900BE47263DB78F77A760A0978343FDC9374FC8FF40
          ABF56B65C1CB88698F4FDD6341A81CCBCBF4B4EED378588C8C8C26F2B00CB5A6
          602E77E01B4BCF00A144DDF95886CBD31E4DBD6C5673E75DA53CD6B4C3402AA9
          877E2648C5F0502BF09896A0DEE77C4F5EA002B58E5941781EA5E582A5C85968
          09FE056B643523AC5DCFCEA4EB6620C8DFDD9B1F3C7F4AAE379FC1F673B7C2D6
          553BC02EB049CF6D40D8FEF97A26BD16A4021E775745E677FE150D9C63EEEE29
          00073D637BB6709E4AE77FA3AA70BC5DF5B2078C87C5C8C8A8F60FA86D4101EE
          DCB119DE31EB5818ACC3005C6DD884AF7EED45FD9F5B11FBE2F11363E8C9E2C8
          5F83BCBAC1B7FD5FE745B0BADD8D5FA7E7F0293F68776A86114F01E46C43E85C
          8DB5B46EC4591D7EF3877490FF8327544B472471A627BC8B98228B1EDEB3F3DF
          9EEEEB02466B0F52CA5330DB56109B132F6988B3BDFF784BBE18FE0EF9F4FF23
          6EFCE3A6515EFB670121C12D82F9BF21A9E94508E3613132329AD4C352B4010A
          0D07879FCC7E252C8EA6202FFDBA3B0E11A64927F3531DB1C7F16D6A0C2CB86F
          9F97FD3A15F4762BCB7DD52020277C68E4CEEBB1126EB0287394AA65BE94E9D6
          98C1C15BB02E2EC4F3B756F812540050F4B020B8598EF6B0405AE40081053A22
          49E8CFF5403EEB41D46A47B0935352449AA3F0CCFBB6C0A6A3F681E5B1718FA4
          3A2424894824FE0CFE7EB6B9C36BF5A020101444F7FDB73F774C3E5DD80155CE
          427DDB57B7180F8B9191D114B46EF09F87D6EE1BF93FC057569C0D1C8D59BD35
          78B4E90B94DA9209E03FE22CFEF5708489528368FEEECDA5E577285777064482
          258BDD1EBAF416A1B0333BF8A3B4F2B3C724677DD79F74B2BAA982955A80103D
          E09D00F90C9EA37FC6A37DBAAC334D8A334407AAC6C0A287D7160874BFBC17F6
          1C9583884A8C6985C2A36014725241410FC525E58F4DC34B73904AF5D1282537
          9A6679AD3C1CE1E5F1E1234F6ADBA11B0795FA05F5762AE94A32C062646454C6
          138BC0EFBAF7C07D9B7B6175DB0AE80FF2F5E96720709D17952B07FDC14D09EE
          FE9212B2413B0B749F0FE163DA51F085F865A6AFB0C94EB11FA3C95C3E1510A2
          73F3928AB3D48E069A8901272FBD1F5320EF41F8E822F530145DC34A96C2BE57
          F5C1DA57EE06BB40814E00BC3AEF8AC529E48584AC10A195A3ACBCE3F040DEE4
          52EB522AE15C032D5536062C06FBF6A57F7BFBAD7FBF41032D25B4ECF32F44A0
          B326036376117EFED9008B9191D19479598AC6FDFDCFFD0EA2C481339AE6C3A0
          A8CB84722AEFCB2BF6E5D2108FD9F8B465A51D9B548FAB42EEA560B93712CA5E
          527D31E8A87D5493CB8596043852890CC2D747F6F803FFDDE936D4C9D9C0D2E6
          09F45E3808CFBCA2082B4492C97E129E9308D7B3241378F89EEDB077CB6068F0
          4A6D9DEB44696DB3E31F3C6DF5FC33855411730757DA4E21E067FDF48EADEBAF
          EE38B207CA0D6B0AE1047F936A6F828E96856073AB22EFAC01162323A3B21F5E
          0529E0ED1BEF806B179D07E7B72E8581A05077E5D4CFD44A32B32AA1B60B22CE
          6716B90A5B919FC2ED24CBEB18A9C59C40956C4BAF49366C4BF75F1A23E45155
          2FF9FD86BA81F65DDC0F4F21AC707F725839E0E7BA47085BF3C79F311BBC6519
          20F96226205242D5E81E2DC6C913221FFC9038FCED2666B332719BC2FA35DD57
          FFE52799B59496376D978E09D38073F2B97360D5E2B990971206837C45DD4906
          588C8C8C2A82161DDF70F5A6BB21C96D38AD717E5D424B151268DCBEAA947F5F
          06E0B32E65E711A0AC3498A865C06E798F7509EAD1B648EC513D3459C9C2085F
          45F145CADF64F5B0A2E7FD79651FACBDA834CFCAD8464F81651370E6C641E0EF
          BD40821B6125CF902C03F959AAD4EB60DC64794613C9F3825FCE3F32FE9DF99F
          39A90CF02FC2A6CE90CC3947685110087C616347A9CAD24F1A60313232AA185A
          7C6C2DBD6DC31D70DDE297C1594D0B212DBC43F258D4D0989491B11E4537B85A
          D33B58784D7B5B7433A3D05C0D4C54FE9BB20E64A5059685C6C06FA45C1BEA22
          7D0D9B073D2495535C1E4C3DB80C79567A5ED10F4F5FB4A7625819E96991F89F
          971390C90A1078AD896032DF57710E20DBE1F188E31073D756729F83D7BD37F7
          A13C5E33A54E7DA9CF4AB2C1D2B35DE36F343C0710862155992DD9008B919151
          55D0A253E1BF73E35DF09D6517C2998D0B0E294F0B0D830709442D077AD33DB0
          BB90816030070A8DBD9E47472190C59DF84ACE928DE575274CE449A964345089
          BF21B03C2878F39454CF8E1F67AB33E64920EE1412CB1801B6D5C0CA41860BCF
          4DE1998D90EBDE37617C125124EC4E8A9E74CCB510213190A64BA8EC7B9C11BA
          E5EFBD47F63ED1BD912956D2702D0DCA2B5F3E0F1A8F8A83EF0750AB9E38032C
          46464655438BCEE9F1CE0D77C2F54B57C3E9A9F9878CA7E5F1FEDDB0279B0E0D
          A03E86CDDA37113E1655E8D3D68EEB05165BDA89F812809A0026467A4F26838B
          29F5CC58CC764E640A9E9DCCB284997EF5A825526370A920C0B6FCDA50E0AC5C
          8A07B068C20050CF931023EC2D76CC79A932B0529164A0F8C9E7CDFD9E7A41EB
          0B03229F2425E45ED1754D230EF89EA8E95CA906588C8C8C6AE66979FBFA3BE0
          9B4B2E80735A16435ECF393434D443FA3E049E07C31E61C939483683C9D7F0A1
          6B59044E8976824C4E6CC8F001BD68E27C24A58DDEA9A10919771F3AC87840E5
          5EF674DFDE9F963294596F6951B20962B839AF846630956AFF48B1F160053C5A
          71806D39D71BC33A78E8D6CD90CF05082D07EF438F105A7E42CB519DA7777CC5
          2F08739356A12050CDA2D1FEC99D773F76DABE7D99413A41D74EA067786F6B80
          D5E71CAD23C16A5A0E032C464646353322DAB05FF5ECAFE193FE0BA1D58A15B3
          A9E2770DB33BA069DEE270C4804E48D6B4A31722FBFA2170EDE92DA37E09ED55
          5060C78A5E154A269B7C8F9C58093C3CFFDD48132FC3779CF0F09DD29189A1BF
          20548E80ECC3CF16AED70215E66B61949EEE62FB16F79B9BBC29AC80E53D4827
          2360636BD82A148089E78D3BD5751508840E19425E21E64260B1F151C8239079
          491F3C3D85B0325C8B8C1198B52A05BED009CCC818872669C7DCC4B7652013F5
          707FE8515BA326630CF10E7488D1F3F6D882113E8930B9611D388674772897E4
          A8172C5AF2D1BE48CF478A4E3932CEBA02522D8D53520E032C4646463585163D
          E4F9239BEF3DF08B935F0FA75CFD1A20F92CA46500C7F5A6E1553FF93D2C7C7C
          73082D924C6D3CA44E50C6F33E288742D0968086813C1A3D51B408138F5740EB
          4C1696EE5D19A3C5290ADFC202FC94281265D46E41006AE91DEC49D89605AE1B
          EB4640D8B4D7CFEDE9F3F23D4B13A97DC20F9610CEFF88F6A0ECBC213AFBE8FF
          67EF4BE0E428EAFD7F55D5D79CBBB36736BB493677C84508871C01E4949B2708
          228A3E4541F0FA3F7D3EC003C493439F3EF189A03C055114105110E4082047B8
          8204214008B98FCDB9F75CDD5D55FFAA9E99DD39BA676637BB9B4DE8DFE7D33B
          B33D3DDD754DFDBEF5ADDF11518CE9F31A1A66D960BF862BB02CC4B4E0B5B933
          E08E2507C111690CEF5BB91A422BDF04ADA35328281B7A6A4390688840F78406
          D8307B22ACA85161ABDD078AA60A3052DA6E941138AAFD4168112047BE1F3D05
          0A4E10B9F6F90AD8C82C519E4C28CD9816BB3C440247D8361B0F3F0D93DBEC4D
          86D14A42F94A4E6039677407069C1015B19CE0C28CAB021804C5A88C897F1788
          9135C7A46CB6AA9159E2FB6D7BBB0292B16A9911B90C1AE3BF364DBA0A79A6C2
          C6D0501B04CE2AFEB67CC0E28B2FBEEC7DD052BC3A8B8979ABC6B201C411B22D
          78AB26083FB8F814B8E4A97FC141F7BFE428471809D02243CA1332B0DD249901
          3565023774D8B1A81D9E5A341F9E690BC0E5AFAD83858FFD136C5D937B3EE5EE
          58AB69D052EDBA3F1FC0204484D2A61D7F58FFC61547364FEC991E8C89F25020
          E27C4FCF4E08072210D2020E83618B76312DD3617CFA097F4507F61303F0556C
          88CFCCB20F8873658E6884D7CAA90B6C51E898D808D79D7030B04010FE543F11
          FEBC602A346F980D4BB6F700D782F0AFF616D816D2A15793A0529473E72EE8ED
          4F3A80C52D4A6D9A2B7094002A680C3002561024373278E5A1AD05763872855F
          DF169D71F459137EB0B7C18A18FB6F600E7732C61E347BFBDEC435514EEC0C5B
          E518713B0D454AC09838FDA41C0BDD9D69686C094605D891CDFA4182F019E292
          1617B6668C7EDB381AB11A7EFEC49F379C8815CCB10B13136B0C40FB5906503A
          F26DEF03165F7CF165CCA54628CBA450ADDF3FFD70B83C1A85052FBE09B6B667
          2B722E6671923421D4D90BE1AE04A862C2B75515DE3A642E3C7FE40278665A0B
          EC8A13087577C0D5671C0E5F130AEFA80797395B1C9E13B442E60004EBAB54A1
          0500424EDE4251DD705ECBFC1E85A71C1770160D02C604B8421C3B9E54382400
          8B05A629ED0414B0E577FB539036D08D8ACA3E86119E54F99925984D80093287
          531BCA593C1A6906FF9C3B19D60BD0364F80A680B431220C3A8201F8CD216DA0
          0AA5DA6472A71D9B05E8A342F3F68A3A58A28A8AD4B92E0A93486D3B468A547A
          A2D43745E0B87366412EAF4D4E450682DA77C578088F59614AE5053B65DEC84D
          EB0135121A7696509469E45ECED8C3A2631F36813528087D5C9CBE8C2B68C658
          8316D9E6917AF5F863FE6DE2F96B5FDFFDC7FCC589C37A894E98B5B83103C646
          A16C3E60F1C5175FF68A688CC3D4641A7E7FF801A01D75C09E4DA48E61AF98D0
          122634C77B60E1D61D10EB4FC21BB3DAE1D986181862866FA41C9AD342F10AA5
          ABD91C6E3EE110685FFD0ED46DDC09542D9D0AA587908AD00C3D4F115666380A
          56FA6B502A759B4A293C77CC0278E38845B0550214A440ACEB58999C05BA0458
          9386ACA60417023834EEEE81E01FEF83C6175FED3AA0A5F5DA85756DBFB28698
          31D959A11308124FF71904AA0028BD4D21786C7A234C12E011C860FD75F1BCA8
          6827F97D45ACA139E20030FE4298C87A120172493D013395F14A93D093A8CA09
          01433B9F8DB15790933092B13785B2FEBE183A77718132BC5CE15105A4213FF7
          F8EA2E4AE97FDBBDE95F29B5C6C502217C8510DC3A967595EC8EA22A572BAAF6
          6751E712774031F660B4782D1FB0F8E28B2F7B996DB19D15FB9E4EA212B05862
          96DF1C0CC02BF3A738ABEE995A0D342713A00AC082F298148332E80828F0CCC2
          6970C4B2E56006F4522822BEDF50D37880511372E29654C7700C021846F90F55
          0BFA1E3B71315CB264211CD4D40891B425942A810DD1C9CE960AC96E595802D4
          A8A27CEBDB2782FED5CFC19902B4F0FBFFFABB74B4E1FF11A2CFAF32064C9F78
          F2FD5DBD3B6F57B5E00B9A16CA1AF5168A042B7143879B4E3B101EAA0DC251C9
          42C0B22F89749F3508710C703359803960855C2514F898222CE9A5D4D599FCB1
          06F02DAD46EB2DC6230EEB3500B438D0B428A7A638A03847527069B46E5ACE16
          653A2DFAC918346E966028FF96E2FEBD9CDA3F16EFEEEE8BE3EB8341F2D16ADC
          8D47A4CD05F08FC6F4B9738EAA3D3E914AFC3D9F65A90D47016C0CA305A07CC0
          E28B2FBEEC37221596CE194C349900410C02D88684C7B575023C3C77C87C38EE
          E8ED3075DD76481B6A895D80F8F7319BDA2D0861E92934B70AD595FB5E8742E9
          EF56CF6C84AB0F9D0E87DB341A35ED09622237A4858D6631E759591CC2884016
          84315B332DD3049EFCDE591FDEF5EDFEC9A9A9CBFE7145B055FB9B1B20CA5AE9
          0860465F62C0FF226E761766B08EDAA650DA866BE9540190FA8306DC74E622F8
          D5A45A6894EC0A907DBACFB98CA12300174B5A8055F23E82F1B1635A000C3B6C
          C62E4F24537F5235BDD4144BFC9F3239581602438C498A28B00405A4ABA5BC95
          130A00417FBF0D0D5105F40882B4650212FD8405C82CDE66114069CBA6B7BB3E
          367D5EED2B4658FF8E185FA1B1C897C404E0E7147D1E98F2F79C131CC20464F8
          25075A8D1276F2018B2FBEF8F29E145DAC02371B1AFCF7478F83AFFC7629346D
          D80196AE162A430E4B855A58CAB9AD8A15EC31C0F039E2F4D988A0D68CF27077
          6B46D4FE692A1CECFBCDB9C7038AD51C57438CDF0845348160496538CEAA48AE
          A81D84252103262C6381C96D1D616B2149BDFBEB96BE0FCCAA210FCDB6E11EAE
          C07999E76127D68A50173D49DBFA739AD2DF86B1FE847416CFED0079853F9760
          2529EAFB3F672D82FF9B5407286549CBD591078D02894957F1E1EB2C543693AF
          B4552AF85C7A80290492C4025521FF29772CC66483044B4684BEB6755DEF87DB
          66D5AE9299B8F3791DA9C039A660091092346DC76B2A90DD2CE115B7846020EF
          934CA3D093E8817ABD093226BAA808B438277FDCB9B5EF053D6CFC3918519A47
          7B8B48DE5D23EA29AA8AE68ABE7853560769EAA837B90F587CF1C597F7ACD4D8
          14DE8804E047179D005FBDFD7168D8B4B304B46445BA9E2EB54DBE9463F64D4C
          F1A984A00BC46AFE38013C0A56B5027C74A816FFC5DBAD75F0804EE07D145D00
          BA3239B3ADC48BA67D07BC4096E690872A6E150812BE78C592C38EDC9A54FF3A
          FFD167AF4E37D59C27B517E3F4951ED3BA33A218F7A7195D9FA41644B10E95C2
          A2E5C0CA4FCE966025065ADA066B14DAD3168D94B255B06CD3495238ACD5BB6C
          0884EB90A2FC4CBC6DC87014600A20161730A857D5793722CA76716EBD38B743
          BC26451F588A41EA11C6A78C055871A2049BF61BA6C93ED0DF6B6E2FC688723C
          2001A254A2834D69C19650452400A51E4019FB189A7793C22D4A9996B3BB23F5
          7CB8059F198A2A0F8853CDA30E1E144CB66C497F72D58A1D5F6D9F1583A973EB
          80CAC8B6A368EFE403165F7CF1E53D2D8D960DAF4503F0F30B8F83CB7FFF6439
          D092934E6AB2DF0905F9BB5D666286C9E8C9138DC83114D8310A521A376D5BFB
          CDDE5DDBBADF38EB32985CD700D8626D84B13C50C1CB6BAB2CCBB030103C61E9
          92B97F3D6CE56B6F8792F6B916563B38632F76A5922C12323241F0AA500E4A16
          ACDC74D622F8D5E43A01564633EA2B82B5A959D01A5A05CC59FA0F3DEA2FCBA8
          BC05E2CF478A95B603BE34240E92C9E04C32AD269EC27562200EA3EFC6EC3063
          0A5AC1B675FF1B4442DB8992DDA2C3482A710797DA9605727BA8B06532B98DC4
          F71584D12C519FF9E29C7499AFC9766502A9CA4EA0682D27688538D7EBCE3031
          40241B7138CF6E45C6A52108BD2CDAE57471EFFBC5EBA8C66E912EE34D2DC18F
          D7C75ABF870DB59B5AD5B73D87E119E6FA80C5175F7C79CFCB04D38665F56188
          7FE244CFEDA142ED93511826B3DFED3153EF3669C19F33CE6342614ED459CD4A
          D6520B8F4D9C0891DDFD04D544DABD810ACF53677CE0556E7B44913DFBA5D65A
          78FAF463E0B43F2CBD8FAB99F2E021C4AB916025956556461FAC006888C25AAB
          0D96D85108E21EA19486AE621CDB1E45F1B417CA9059DCE56B63035634CC3B52
          5B3BCE66BD7D1B79AA0F144E2010562195B221B9CD84F6457560BBD58BE003B1
          822F44583D1D344D0683538BD908AC67ECA8EA74B245BCBCA260F24781801EA0
          9CF7155C28000BC445EBF650C7385CC6A1B1990D2BB6AF8408A057224ADD3973
          EAA73E2D3E33469569C2A8490968B7886AACC8A24AEE5812CB0E42D95770763F
          79AED308226F1958FDFB701258F880C5175F7C79CF8A58D10A0090993A5BC5B1
          B2A1167EF1890FC097EE5C0A759B7640B2023890CBE23C00D1C519EB0AEA1178
          E9B0567877CD5B50835073E488A32621A265352D2A61524ADF675E6D8E26B7F4
          9ACADD7366D80B66BE0393DFDC0469BDFA695EA142811A6A15CCCAC86DA2C884
          035D34005B52ED3023FCAAD0B5781811CE64D85774341A87E34555B1F5D89DAB
          3EFDEE93EF6E9404924C4C4E6BC3604100EEFAD10A38FA03AD30E3B04628B4F4
          C64786C3EA7F90083A4B7C47E3B99D400FB09605027238B6EABA719668C4B551
          88FCAF00B1BF167DD5950FDCF8C604D4591CACDE0444CDED3095C741D922733E
          992F3312FBA232A1FE562B61C3A806924670BEF87BBEEB90761F6E4FA7ADB40F
          587CF1C5175F2AADDEB32ECA183099D2FFEEAA755632E918503A0C81F8FC614D
          816D0735C297376F82594C87F41066562D6DC2DBB3DBE0EE0B4E8556C6C56A9C
          2C22044538672EE084E7010654F25E3C767240E11393186DBCE1A253E0134FFC
          13E62F7B0D945E13708057002B0CAC4006ACDC32A5DEB159F1042B984458F10A
          7E0F65657A2EB486DF063E9C4CD008140DE3C5E311B05889F83513279187C21F
          9CEE6C51A91A86649F0D3FFBD272309314B4B3F33DAE781430FE9E8AF1E590DD
          1B1BAA038F63938DD0B46820F223CAD86729F02B996DDE971B42329F786B5081
          4D2B93F0D4F31C98599B05331C385EFFCBC5279A8B0E5C32E1F2F194FC5141A8
          BD06D490781BF7018B2FBEF8E28B9B6ACE641D9CA2456ACE23443D8F28CAFCF8
          AA4D1FDEF6D2AB0F4A77D27C55F31041D01508C14FFB5568B16C48AA95D5A74C
          01908C86E1E10F1E29F00FCB048601651AC79A0B9391CFB6B80119C7D6214411
          5EA001DBD8A3AB70F59987C309074F8763FFFC0F98B8B13BF33C97D81B326121
          C70CFE74D241704BFB149823C3E862F7383375A1C8C7C3C1E077C1A62F8B53F7
          8BE34171BE6B4FDA39886C58979A00BB5393A049DF209E33E404979384769F34
          AE80AEF4DAD1F0F37DFDFD374E3D28E204470319FBC56270DBD56F3960A50874
          CD2004FF41BC3B78249E9FD9F6413309427FC2187F4B3CEDDA011025807103E6
          3077668D187F2893E3096562D4846BF19594D2D3C465EDE3A8319B711A35239B
          ADF5018B2FBEF8E24BD11489113E0D013E470DA17300476B8506706249B49F79
          CE2D567FEF61C98E2D5B322C4B0600486BC53780C1374269F89A3211A6ADDF05
          E990BB4D0B11F7D19326AC9D31091E3EE54858366102B45996801D8634843C4C
          EA365AC2AA14B11C039F176B2A345D2ECE6554E0893687179A9B61F967CF8793
          D76D83C5CFFC135ADE7817B4B47C1613FA93836633C73BE5EFE71E0D5F7FDF6C
          38444680758DC9229F49DA6B43A11B44219B812893C4AAFC1C0C7883110CFF1E
          30BE4B5CF0FA701B3CCE15015A66C3E4D01A308798045128E6C5A2CEC1F10456
          6C8BD96F3FB3F54BA9B469E78C7F0311155E5EBA1D5E7D320183B6475C0EB663
          745DBF1346017439EEC3AAF62D20641A74A52F138F4CC840736A10C3A1B30C60
          6D0450083B60450AB5581F8F5BD72043BB9D8F87B4CF19D12D8DB771C27DC0E2
          8B2FBEF89205019AD02DE7EAAAFA0501468E1898AE59667BC6C9F543AD8953CE
          3DEF27DBD7BD7D9E2D60457ED668E9BAF1880031EF24D3F0BD7F05E1E8959B01
          8B953495068F1C81A620501349E88F18F0E819C7C06D071F00DD022C34A71339
          9761A4817660FEDA3B035EDCEC58780903230D29B9651FD2D7B52BE39992FDBE
          29DEDF1E2170EDE987C2976636C109AFAE81A86A40A226282D6A60D9C1B3E08E
          59ADF07E199C4E29655664845D6AA6B1AE876EC3809A291F7CB628EB142318BA
          8A73F665A11CEF178DF443717AF9505B5F06EC5B959A0C07D931082A7D021F0E
          01B420983FFED839FE6720F86545D53286B706817F3ED101CFDEB73D1B332563
          698A15652141E82F02D4D48E6679C4733ECEC3A09A4AD78566579FE3A1240BC0
          3B11744EA160A978C00D478CF2DFB6D4B75F1AD683478E17D04274ED10F14B7A
          DA072CBEF8E2CB7B974AC9CCC78AAEE8E76958F9AA8DE0A041E28297801AA9BC
          35C5F8507D53DB65ABD7BC79B39E67732141C7347174630217CE6D84EBC31198
          975685B6B021DDD903C19E5ED87DE46CF8FDA13361D9C4097040D2843ACB020B
          0D30050D06A0369E07486881616DFE765029887156EB2A991FAC09177C28F992
          8838DA85927AF2C0B9F0E4C18BA4078A00321C0C2D04EB1E7F008CE71F857771
          2948905B0B9833987ADA395F2301E5782A637B146D4F65EC6D40178AF9C30221
          7D1071F44BF191042EEBAB572C0C3AED106C4DB7C32CED9F4059F5B62C18E1A3
          C61758019B10F48385C734678D57B1139136D4BD0916B410405801CE6CD0EAEA
          1B271F37E99E748AD68E7AA198E8C790FE11D662AC48A577DF80B2AED5A2A141
          E53580A3E2A03C07B6242F73BD405A7FD98BC9208B59AB39C349DCE803165F7C
          F165BF102283AEA9E4DCA016F82A22CA623EC01CB879E20C6EC348A51D0CD5FE
          B0A16DE6F2CE64E2E562B7E1880312185CDFD60C531A84225039F4AC5F07F6B6
          1DD078C4E110322D789F0C98253D81F2EE2F14FEC1E2A82BB55DF12A8B4B9D30
          69E38A5A0B8C75E5E2B0E1AC5BAF0429CD9621141206198E5F1A6006591AB6BD
          F9067476EF7622E296E8B9541A261D72F809A168EC1AC6A90B682A118D23F81C
          45E8230280FD1103FE1FF1BDD5E260952C482DA1D8DFE99F09D3836F3A16A7BC
          BA806232B6FD8C710380451B5A96FD4032117F15C507B371ABAA06538E5E3060
          AC8D382344536FA70A99C5E8D880026EDB106869F81E9950B7DC62F489DCF9A0
          18285A51A03A06EC610A740506B468AF0340392E2D6827BDB60F587CF1C5977D
          921BD973664581C54445773989E2B89B816B2150C9301EB9643E38D850DF7053
          389D3C3A632D5B581E09160C4B03924E83C2B0784F212574769DF4BE1060853A
          A9A289C3D80CD608CD2FBC0D72298F1BBB32780D42B831B565DB022B99787A00
          48094565A692CE9651DDC22344DD078B8B2985E8842990DE9D026C16BAB33AC0
          6CF29C48FBB127DF845545A1B65DA63CC565E3759CA3CB6AA2B5A71143935B36
          FD95FAA446AA1751464A45BB4075CA4980A369E2E2D6F1343253D4FAA5892500
          B59D36979909D3DBBA2181B1934C4186C10F4D8C5D6A0403A74A1C37A6BF1AC6
          15C2D14F53163F284B0ACAB40DC004900A88F138486C614B80CDBF00E37B1DB0
          389E4F0A3E80D7E8E16AC6910F587CF1C597712532ECB8040F02380C13BC7099
          6325E940061975ADE81E83B623C5A025CB8670063AC2EF5375E3FB364D7F35DF
          F98621EE7CDFB2916BC8743B95029A4E80DA5097495E97BD3F027234AF0048CA
          1ADC3A7A0683120E1D60F5F53E4D51E6FA404B0BD4441AA0EBADD732514FF3BE
          2AB33ED7B44D026A27C0ECE9825C8221A9243851A0FDA40FDCA4D6371CC0A42B
          371A2CDBA061B05B1933D7C8E7988C6EA1A9749C54D147A6042D682BA0748780
          2B7AE51E9439810C7D21AA8968E3C5D642D4796D381878320C818126B1543156
          D5C800832100428D1A50AF186BB092EB2182605E54552E143D7C3BCA2B786F8F
          09E9949D3794D023750D816F88313B1EB25D36AA366BF2018B2FBEF8B26F712B
          72875DAC06ADEEDDD0BB668DC352B02146BA72980D45D9583FEFC09D44D39A06
          E39E64EE438BD89C8C822EDC9E71AE41E43F850A782ED96FDD4FB21B1912E828
          2AB86EB10CA80DB194451677B66640915B435C434A7E766704A5516DBD40CCE0
          7B592F019E8EE084DFA248C0605A0EBBA2859817F293ED00E1A38E859EBEBE6C
          503CEE9C6F6A6DBB3852D7F8092AC00A2F627EA8271335788E3B215BC8AA40B8
          A62A3441054869215DA09110583C545D3F123463DC18860A24B0636BE2E50D6F
          76A7243095A00FAB08DAE607002B19164F9634A81B1F270A99BC57CB8DD09526
          E37F9484500EAEA71314523DE620B021E8655E67AC13659FB1D79B98207DFDBA
          FE7A381A86E429E403165F7CF1651C8858E50783600B256BF7F7C170968042E9
          76D74E6E5F411A9B4F06CA3CD80B9E076010141B9C66320DEB3FA171FC74CAB4
          3B1176A2738152AB002A17E45C5C67A54DB0130908D4478051DA80389E801177
          F10AE22E20065C3E97DB380CD486E643714D9860C034220D712D960B7EE75514
          D0620DA069861385D7060661A24FAA09D7FEC0166504E4561EE4CAAA14022E07
          5CAE90F7AC26AFA12ABE1E547A1C6607F12A012842EDE387F5E3100E6BFF983C
          3B9BEA47D43B6D27A0D7DA05C471D5664EF4C148B0F5D3E380099AC3D2ECC454
          823E98EB3A2344A0A12102244B178AEAD8E2FC2B6208ED751B21B948D1C28AB4
          697FD9072CBEF8E2CB3EC7B2485624386B36846A6320F3E6A0212E03E50A1713
          E5354CE9C9D43592ECE02B1960150ABD74E46E1256604A6402FF656F5FFFB958
          D73246AE32C99E5D7E23445EA710E4D86522CCE70A3D11A6036C0E720106C5B6
          2300C58C8C7CA2509C537977779351D3D0C1A8EDD8A210EC9DE74886E0880502
          10CC46C517E55055C5B843B44F6331202A054C6EC1EC06DA8DA72DF35909A22A
          01CA4CDB9AA06A9D4EDD6995784580A1E9789C8C4949F46941B4AC2192D9CE12
          E004126906F164143226AD4CF4B7FA3E8DA8F3F73A2B243A99A6D9C73A3BE20F
          0E9A0603E8134380759CF1389345D4C8B34C850F23BEB7DB96C384A9E185E2ED
          1F7DC0E28B2FBEEC7BA045AEFCD326204A812A86036086E247E0000B8E9ED000
          BE3A084A781986C59DE991BA87288173749CF8C2FA7F2CBD09AB1AB41DFE7E50
          504E15640D07191B005B191B113C517CB1096C1E0315FD47EE7ED4D575199501
          2D83A021B34D8502D1BAE69B0926B79BD45E2994FA5AC6B9CD29F552FA406D0A
          89BE1EE7FF683876B538F9FE416C52CC2C812B1355DA7EA80B117503C195B59D
          808E60A014E8D00536C34E2B54EC7F51544CF0C1E36848F6501B6FE579B6C984
          21A8D1423940038AAA1DE504BFD9DB00807288C4B4F71BB1584CFCEB442A96A3
          536583A32CDB931BD038D87193849B95A64336AEF6018B2FBEF832AE8460B196
          D508285C190898360479432859197A34482B6A91E22DA34145CE04583282D11F
          985BB6BE90D8BEFDE5694B4E0601110655BAA2D4A835358760CE0FE281C00160
          E80BB0AACE86801E21E20654E8B09CB22F34682DB65F29B75D34F83FC1CAD9E2
          E56C5D0FA6C5EBBB0290AC08B6B5BD81105F2516D79256DF92BB980920830901
          2ADAD130424B344DBF62D0D3367FCBC7AB3CF9763F99F24B9B22DB4AAF49F675
          77A22AFA843AF637267087DE91ED599937418052164B7F0163E55442C8A99089
          DDB7D78431B6965AD6EE41252B73072985F00EE325E32580AC284733B1E87431
          00964B7E85487360441C8FA13C59431422BD89D4BDBC3C911E4E137DC0E28B2F
          BEECFBC21824127130AD1454EF35E418EB6EAB8DC4362A4499336848CA2B300B
          50F27FC663C508CD3CE3DC9B7B56AF3A9618019B26AC0311468709ED7B5A6842
          EB4250486BC6C89500118A81F31C2BC28B94374065D7E1D26B0AB792786E65AA
          8B6BE6114D99176869132B6BB9FCC73D2A57D7A9C0FFC9185DA645A3FF4208BF
          9E7E6775A876C141BF166D223E62AE4C53690C96D208BCD4C949EDB0484F1281
          90701580452A962484A193CF105AF429306D4DF48D00A05CAA518F4CC5089B29
          3B7587CAF53B6C664F268A7A0E0174AE00484BF6924AED4004B382D640243FBE
          89281A9E3CAE7E3708B571849767DE1227FD8469D9F905DE6A10A35BBC36EEDD
          628A516BA8D37DC0E28B2FBEEC17825505881284A1B8390BD8206667B45C8084
          39F9AAA790E5F0B21D29040ED44C43B8A5EDE0F0A4F617AC544AD30C342BE3B4
          8C32332EE30360C4F1A4F6885A5BFAEC3CE6A460DBA5105051D7F20D442F1537
          A5B967D60805B448BC5F4434FCA9E8CC594251D96B5A0F3B4A2ADB3CAF9B7241
          EB781930C5B31E42DAF29A68F57A2E2854FB1B702AECDE04D0DCC42144374354
          ED14E02E258E6CCB39008638E6AB99A7655E29E71B31A73FA1807F22DAE830F1
          F40B44939F253E9AEE5815B3D1A73504384D68BA92CF6008E045F3FB45D5100A
          20343EF24ACB72F4D8C958C24A3AC353965757746808C732E3C5311443A680F5
          324B72E3D8966DB08C4E3B26E85BC97EF3011FB0F8E28B2FFB07C92226B70009
          380A7F8806B84F8AAB3F56CC12948F8552FAB9C420D24E84523A5F4EB4858C8D
          1B23E11E5385BA46932DF6562A071AC0F5735270EFFCC8BD5239A1E95EBC0129
          5B26E402029D2DB2BECE74E20519DA5FA90240CA35BD3455B50351786AD32C98
          507720B01D1D10AB4750A7C741496C82266D07D4892380768301DD02B4B8C76A
          118F7C49FC7D096C768D28E191A9143D3B14D5FE4D94B565748D5D392DBEBDAE
          28C54D336E74A86C8B100AA83ACE465C469973BDA95EC88B7B6B8734233D1620
          CBC9B124018A188F96C93A44795EE8EC483EA41BE49F7DDDE9957DDD66DA072C
          BEF8E2CB7E237420A819075CED24CBE145C8C42DD3BCBD60BC404BF62AEE84D6
          2F614648C1964FB5762883CFF10ED0E6750E793CABD8CBC98D3D2AB64B293638
          E66580D1E03D325B42685D04AB9BAB039A52D54B5B9AB4A82F8510B1414126A4
          10860EDE08BD5C87CE6403E82C0051A24210F5C014BA1AE66B7F110A49769BBB
          7905E2D027C0D823FD7DE947888AAEB6E2F60723F5819F48EFE95161F8305688
          8A1D46C0197A42F19A8954864DCB58AE32A4A86CBC302C3201E2AE6D8954CFAE
          D4C0392D88203C19E7F24349068B19AA6EAB12488C26481162A6F95BA984F998
          78D0D28EF57DCF35B7853ABB7726A1B6C9C8248A24436F371FB0F8E28B2FE35E
          10CE3862D0EA2E5FA5005F27C0C56C3A0032BC400B72051783C6BEBCE0FBEEDB
          3450027A48F56575014C5E7636A500ABD4A0D71BC5B97B23410500978DE10178
          19530355E55C96C91531A26031ABA40C3AD8024522080800A339015735E8851A
          586E1D05491C8339702B849534A46C0FD022FA4502574D41BBB0A1FC52DCEA2B
          E2B6B34743F9C77BADE0A6D5DD0E5C93ADA10A05DB3E330CC4091AE7B48BAC60
          72BCFC4664DC9896F6F08E89ED9101F420A330A7BAFA9D1409D97E46C4E08811
          34E4B00195C18A785E9A3DD7D39DBACF36E9D30CF88AEE9D29BBA935ECEC5E3A
          762B2413CF66B8E203165F7CF1651F100E493301B69C7715A582C2043B84022F
          641459FE564EB172466518914296C71B68B83324B488A929BD17AA82E5000F00
          3308A24AEBE69DFDB9621A008F08BCD26BAB6BFDDA17933B775760B91C431708
          4F6A05A3B6B1EA7E755818948477D85CD84EBF000775FD025ADA1232C113F0A2
          F878C97E13C4CA1DE2FD2C535B8B75AB591664E4D902DEA86A52BF229EA91A82
          6E9E06CC7281D8388BF0E00E655C44BA77B6302951F0162C531DCADF81133D4E
          07A351CB4FDFA088FA18A3D1604E1C241DFF4F3269DFC36C069A411CE097615D
          46E6793E60F1C5175FF609090602D0FFCE3B10DFBE3D4F71E64264E54D9C329F
          CF84D6659103E67F021C2F9A1CEB510EBCB8011137C55FEEBBC8458978B9357B
          313483EF0B0D720BC106F5045FE0513E5E0660A1F2208C31169AD8F246B0B969
          A0A573202C13902C977911437CDB160844C260333AE4FE95715B3AD51970C3B5
          3BE1E805EBE0835F38188C00063399290B16C064CBFA38F4F658B095F73B6AF9
          80C58DDBF5065DACE04756014BB6420FABEDB5B3488D0026DD030C51DC064C07
          15340AD92FA19072E2DE0E1C27BBC3B658EF1BCB767750933AFD8332C1D9A065
          6A046C3B83FC44FFC9A448A3E22E2E9F69EDEEE9AD515390363958762817B668
          C4C4072CBEF8E2CB3E218832501A264238181393A38C3121567462452F130E3A
          C040519D18245279A881E0EB8ED619F44FF050F25E515DA10243E1C5D4946EEB
          50971400C5CC0E29F00AF272B946655917F72D25340410E6CEF48866DF02A6FA
          A6635FCA07AFC43255B122D6F10A07C6A9F89F80BD6327B0E6966127DFD6B00D
          3C65C3637774C25B2F3D0317FED70298737023C4FB6DB0457FCF3CA43E937B60
          80B2E2EF8C34581968250675B57AAC1911D43DC0DEA90226A529E4CC5838C1CB
          C743EE2396C18B2B5BDA03BBA56174CE4B480912E84F5B03848A8AD02C432175
          A362BF227F77A1408F1AD020DC80209E040136EDCCCFD0072CBEF8E2CB7B49A4
          E1A01A8E8211AD7714A425547C500F40CFDAB74011E7ECDE04908626D0555D82
          160958B68B997BC2D0400A540156CAB125A5F1564AED590AED43063F2FBC9F77
          F6643770E1650753AE4E00DE61FA075929A10037519B261CDB832C58B05349A0
          7DDD109EDC2ABE668AB23227BA2D227BBE3D82B2C6989BDF4EC18F3EB31CBE7C
          CBA130F7B04648262C0148A53B779ECB3842DB60946C5E31414AE7AEF8ACBE9E
          D42A2CDB4166CA3634689A101E54C2089E167F6570B9FABD0CE7019B7479AD46
          B993FFCA4927C1C18C4837EC9C0BB9EC4B328703192D2B616A29A43F97B80147
          00EA740C569C01B547866AC1FE34E88B2FBE8CA9607C065194A5AAAA9ECB381F
          DAE4C9988C31E2B81BB3DC914E8BC9D886545787588225C525BDC052BB34B1FA
          1D709B24AE71477819E59D031BD57A0079AF22E940198AE3ADB879ED800B1041
          50189DD60DF8941ACB668C2ABDCAC58BBE8FC02DB09C13E1163135DDDF11E03C
          0E5A5006D4A340744B54C8863D7390719EA111C017138DDC2B00D1A4829A4B2F
          2D014E7EFBFDD704584901563920CC0A0E8EA173B486A9F410DAB12179DC1377
          6F8227EFDD0C4FDCBD1996FD6D0B2485F2B5150CB6CCDF83D06ED1468F8C0B38
          4FAD3F60558C585136A213E8E90778E3A91E782B7BAC7AAA0BEC3E5842460DAF
          408A60E89559C5E521CDA6030681484C81FA566344B6ED7C86C5175F7C19AB49
          552AA18B88A2DE06929D0672BCC2F9D39CF22BC5FFCF0FFBAE397B0AE9092156
          BE48D32E4044BD9630984C8BBC7C4AED58CA45BDCDCF030465C042F139F7ECC7
          D4F53AF0607C8A9427B8D9AD00B847D01D888A5B2D6800AF28BC72BB83607268
          B0A1F96944E1338CB1158C4351A0BCE18D054CD4E309C6378AFB2CCEDE6A8178
          7F2AA7F6DAC19220D8B6360DCFDEBB1E4E38AB1512712B1B77376BE4A9293B50
          4D0846233F8E6D5298B6207648E38C080C669112AFE924A0443A33DE24EF42F0
          FF9070EDF94E889ABDC1AD48DB9164FAA1F8EECE1773FD2EC1AAA60760F6BCA8
          130725B350404620AC9DC0462FE85E2F62B41B15A175F9F39CD01A845442322D
          7BF6EC6137309ABB4426A9BA451C4349562527A6EBF7B15956D6EF3A719CE8F2
          990CCEB4D65744BE0C7BDA7EF3D9F1518E51DE87E7665A7A9B9C2D66AF5F0A10
          A1E6949D985C8F11CB3119E8ED67E2DFEF8B720C6BC58C9C44746A4C25EA758A
          AA5FE2808DAC8B49BEC1AB7B987C006F3B94E20CCFE5EC3D5005B00159B21C15
          95AB183894DE87960DED0FE0E68A3C183BA6D83B29DF25DACD88B8147829BA71
          88E89B2781D99F111AF0DE61116B3CDBA29C4F0A45635F17FDF469926D122766
          2F82591A21F718B5B1932D55DDCD6D7BA018F7FC741D2C3AB20E22B51AD8565E
          5B60D8367ABF0981AA55BCB05ED35AB182B63874904A60EDAA0E78FC4F2BF2B3
          1DBC74CA878F78AA6552F444DB6663FEDB95BB70CB1FE9F8F68E0D7D32768C03
          508C8806C75D3001744366FB46D9A682A319C1EDA3E35125734DD99DE68EAEB8
          DBFD9D51290640631D07BE07B06E4F10E1DDE29836C4EF48C52F3349DEBA8FE8
          93D830EBE98B2FFB94A0B6B6519BF5B5702D34CE9C7B3601FE7B13F2C3990E28
          515D4C785FD1D5E0D97634F25D01626E1FCA23989339999E5E3777C18FC47767
          3BAC0078D98DF00A2C492980C8DDABF2FDDCED62E80050718FCD52DE7B899705
          436EF528B689A11E00ABD46EC61DA80D025A544BB0720F42EC660125FE4BB47B
          FF90FA89A0B041C81730265FC48A324102987C9771C9DA206A2D3EFCBB373CD8
          BF7DDB99CF5FF4A15D2C9B91DA329900095BE0DFAF5A0CE9D4602B0A78B056FC
          B75D7CB97994D88B9A9EDEF4B99BD7C77F8A50CE1B87C0922507426D9D2AF01B
          725A3812C05731C68F06F008D73B4A22DD8619F0DF1E764AF34B08659A403228
          76C202DB34C591FF3B0C9E83D1C8C75F1960BB087E0737D5D172CC5B9888F6A2
          0C92BDF6B01649C3022C68EE92D81E28F183F7A179FC441FACF8F25E10E5D24B
          46FC9E969CB72C0A072E3E76D1849696DFA453C960A922CE4D784C6A83199186
          E6DF30CE3ECA18FB2F717A45C5878855784DDBE4AF82A67F9F13A438C9080BA2
          C072F0DE7AC9674EDC988572132A2A0234DC839DF16248F20105F200315E315A
          DC801587529767AFA48AA8CABC4AA56C92C3846072996A0417333D25D31FBC5B
          19A930892C3E186D6AFE36C5783ECF2A50B77A3B60331C3D3C60B33B0333E79C
          9ED8B685229A69892797A661EE926D501353056818A87B57434BE8E548AD76C6
          686D7510862EC609F37F5525E3D02CED336AA78421D81A06D3CC302A29CA978B
          E75F1340E8BAB1F21A92C6C9891E7BD3C6E5DBBF2A5914C73348B4B551A341DB
          8151E0F6201CC41C370A70F321349A65E3FC79CDE5B75D889239C8B035F5138C
          C1ADAA3160586245FF9F248EC7CB5C2FB78E2ED907E7F1FC7A3E9EADA72FBEEC
          7732B3E6F091BFA998CB4313D894DA9AF07DA699AE2D5586A58C87A311103E49
          4CC6CFA8C06F10FFDC040371300A881BE9C6690046B7AA91E8459265E18C5560
          3FB8EBE7D4F53BC500C03BAB312DD9C6F1DA5672031AEE2088168017B768B6E5
          A2E016B771A10D0C7575D14650CE1EA6185C62557B5FA0B9F959D1E6978B53F7
          B9335F0E58995F336BCED58AAA9DC744870DDE0E79B6814C3AA905831F5872F3
          1D3F7FE99FCB2EEDEBDA0E4C5104F6C5F0ECBA55B064FB136073358B8528848D
          892F47EA1ACF188D84881204D5341A0BD7AF42A72D7F62CB039810C79DDE4A53
          98B7B01EE62F8A39C6A42833DC6FE0F5C14510522F188BE48C2A41F6BA0D9D17
          DF7FC7CAED722B486E8B1295C3FBCF9D03B32201C706C7199FD4495E792910D4
          00A35A2CF47AC6AEA702AE110D158C2AD08887EEF3E31BDDFAE28B2FD0342332
          D2CB2DC0A086B5B0FE574ED8D4CC6AAA3AC623FB795821EAB7C5EBBF734ABF25
          CEDD99FBC0592462345557D5DBC5247C341D002A6E86ABA8024B52DEE8D4FD7E
          DCA5BC082ABB1C431E2B53989388B8DAD778D9BAA0B24C50F19650694668F068
          F762D005252C0D1900680E53D30C98FCC9E6F0438132BE2E4E99B915BC5045CD
          9A61FC1722E4B3464D2CE8F4112FB7BD854A1829A229972C58785077477CD715
          12904A52A5132F8246017D5BD4B7C16699DD178694C7990DD78ED66F83890AB6
          4D8F5C93D8020F226E739ECD381C517A21B02308C80607C4C814D34C239F4421
          A5862338158D32664925ADCFB74C4C3CF6959FCCC82873A1CDDF7A2D0D5BB6A4
          E0815FBF9DED350E0D4DA149879E3CE92B9C8E2ABBB29D59E965D55E2ECD9334
          6DE88FF101CBC888DC3A7A2CFB5E1AE14EF79BC4977D49502835A26085089525
          00C7CD62165F583EDA25AFA03CD134A1F4EE1093FFA78149E0024F0AB0B24455
          D1EF3142934AE7E0FC248550A46C91477E9F7276285046C17B6DBB548ED9526C
          044B2B64921E040AC580A29445A2AE19A18B010D776562C0D5FDDBDD9D3A770F
          84C87FAA445B2C40C92718469BC5998B54157F972134592AF64240C9CB3CA788
          6911DFAB09D7FC572A9D7A79F9CAE5F71A62459EA004FE1E9B04171EB44D0C2B
          94F30E5A8B81C994C4D1D1F86D50CAA0B62974F0A213A69E6DEEDC79BFA266D4
          A634EA4E251210C46159C9CC304790628C7F0859FCFF40C71F7682CB8D204EC8
          068413A8897F5EDCF616796F69842CC90A1BEB30716633D44E620306CE32FE49
          20AC7D5314AE7634E70F018C0458A1BD30040A870FC33ED9072CBEF8E20BF499
          F688DD4BDEA9560D7E5301F563A5FBF9E5B634DCCEE75C74D13162C9FD0441F0
          4F84D06CB1820DD102055C080EDC82AE514F06C64B79832BCB50FEFA4AF5AD94
          D3C7BD0C6E0C490E7810972D248062A3DA423B94C280769582CE15BA79933C1B
          A15C190468395E21F81F3573E66D259ABE447E9635D4756997628FA85280963B
          67511BEAC2B5FF77D0B439EB53567A39450AA4A101766E79091A9B33E5E0D4DE
          8655BC12637CC4E8B12C0C9448F42726E5CF75F6A477E612F8F13082FE1E51C6
          3472F20BA24C15123C492FB0387F45B4C9B78882832365D72230DC1A9A4C7E06
          EBFA938320864132492091888A32284EBC1AE75AD138F54DDAD1C120FE38A5A3
          BD4585EEC15AF9A4D97C04C2BFF880C597FD4D0ECEB25DD2FEE81571DC933D72
          EEE76B2063482D3DD52EF59B2B237581BA919BBAB8B4F5C2DFE69C55C15A70CF
          5576E1B649F67A0C8B7991D2CB78E1948B990265405225C3D672F977BC43E897
          C64D296665B807882967EFE2E6628D4AD8195A31943F1AB8CE9D752A9702A090
          B12962B1A69160701A66DCC365BB12CB56DA064EBE1E85441A5BA6DEC12DBAC4
          04AD7302DF0CB033253E0B3A2C0B46E4380120A68CF66F44D394299BBBC98FFF
          F0DD7F7DCC311ECD86BF9729AC4F3F6B261CD41E85742EE48938D7DF9DBE1183
          FD78B821F45D9528A7ED1168114D6A52FACBBEDDE6B5B5213EE0CA4D647A0A55
          837B7FBA155EFCFBEA81407EF251ADB38CE855BF3AEA560678543D973863BBD2
          DB773E26ED7D505E37CAFAE69263201905D976F10C3AD4072CBEBCB7E53C1834
          963E1806E3E8DC03FB8E3BFD984BC7DAD523B3021420450B851A9A274C8141B7
          55EEC91C14C73629350E2D6600DCB62FAA31442D6764EA1503C5CBAE0595615E
          CAB912A32246A81C582ADD3A29042995EAE7F67929E391CFDC14822CB7362E04
          14048ABD9FB86379EA0D56CAB12DBC683CE4BB3B3B236BEA0E331E35696FE761
          81474141A6B822040AC15F5430F9D158E832D3A430697ACD47BFF89D839EB7D7
          75FD2F96963A6290F74D209056EB20AD68901FC10E210C964D5F4D58A9D32310
          3E03712E0D5F8F812AB6AE248323153DA3BC0B037B74C78EBE9B9480FE9C9302
          016542E7C9CF5329005DA985533F5907ADB19590EAEACA0004438545FFB6F0E7
          81B03627677C3B5A22FA6B25AF09ED420C89F24AE35F9AD98A5210742638E8B5
          0C4258F4554F4F2631A9CFB0F8E2CB80C4CA0099F3FCE67197B4A18E106011CA
          1AC15DB6651EA229EA974B1550A172A7458A8C7A78B978B334BC8C6D0AB828D8
          7C6054CEA6028A80959BDD0754C1CCB82C950BC0517986A19849AAC4ECB80329
          7069D3522FA6EA54490E58F02CB355EC49E5E5125E1CA8AE10B8E5FAD08DED91
          0AD802FA794325EB4F36EE8749F014C4F5C0144294FFC5989F3E96BF131943C4
          686DFC118FD5AFB66DF35145512145E3607609255D1F009E4E00C8EDA3ECFE87
          932432F3C378D0A6F4415199C90A87A318C1C70B6C3347547D16C2280883B6D2
          0951DFD5C97E736532C596C6EAB467B9696DB54C0B14432FE84DA7CD689D002D
          1826B487A1FD330BA1CF122D9C8E43B03E7A050A843E6AA729001ADD36C1984C
          17E0EDA8784FFCB9A46D404013B04AD43F2863AEC8AD41940160D2D0664F8BE2
          03969191C761D487852F4314B90524B77C2EF1002A5D7E130D8A151DC1DC6D02
          B4AC4927BE3E33D07834B6CD434B5D59DD3C518ABD5978261B2E028032314CA0
          C403C67D6BA5983DC877131E7C8E373B432BB01F958D61BD80893B7B43A052F2
          43B7B628BE0E950133E0F11DAF6B0AEF470756D7E5005BE1B38BB7F74AB7965C
          1838A1E4FA3B7B7FF7EAEAB76FFBF894D76166C34B90506ADE1F9BA0DD2E3A6E
          F2DEF8AD30C6751EC07F60363E9322F41C8F33670C21E9EE2DC67ED7AE24C46A
          0DC7FDDB05D66EE49C8A83DF25AE86BE9DE958B45E0F13825571CEA20CF56B1A
          EA128005BABA2CA86FD433AD9297B449263774B6CA68E63D42CE7E11985C01AA
          19323CEFA79916B88ECB183163A095C4586D23C1E063B6852E4B76A76F776C79
          46C9AD7BAC00CBA5E0DB0BF8B27780A43CA6E5312C0767C1CA3D7EF30C4AFC9E
          0746F47E62C24A6D686CF864FBE9A7BC8488343A645029205BB142735C453D95
          2A874A5B33C453B116457145C50ABD5CA459AFD0F6DE7145DC405671B87E5A12
          33C50DF078B94D73286FCC5B496B95337C051746C41D44114F00C3CB94193C41
          98BC9FC9D8BACE94F2C5F3A774C0C2FA17158AC3FFA96BDAB542636B7BF3F782
          38976920FECA193F578087A78A6BC67502460A8355217BB5F87E97DBE2490294
          FC24850E407182BD20B018019DE04C40BE02F60740E095CF11A2DF2499A03163
          9D32E50D846A02BF1108AA211D4FFC88F3D1C9ABEC332CBEEC6FE2068E25DB72
          3DEC7B79ACC64CDA661D537E5539C4B4BCD889ECA6ACA409F69F5A14FFBC3A27
          0554419956022E85D7518FAD13E2FA991BEBE0C616948B5E5B3D3B424B6C3606
          AF1B9AE78E1B93329CCFCA81AC5CB95059B0E19675BA704BB01CA82A65A82810
          B337892E3AA9E1A1CE03824FB6725EF30B84F11930469164AB903A4CD0C38AA2
          FC3FE0F62D454004C251157ABA18F46EA710992CDDA387425222078F2027E60B
          9206BFA0AB0AA8218054DC8640A8A4FD10D7F1F7B082AE82BDD03C125049E01F
          8AEA3FD40C32BF67575CCEC1A60F587CF1C59711979EBA5E77A02226A234CFB8
          3C932182162ABEBB7543C7CD73661C704C3010BE803A06775EAEAEA88A557939
          855A9EE5C86707E81EE415F2064FC59171BD4046B1BBB21738E29EE572673A50
          1946C80BB470973C46DE00AE14E87945127603315EB634EE00540EB544DABCEA
          C0FEBF3F37B7EDE9D338847E3E169E404357D4604402E15F68F5D60102A45C8D
          382FF821C95C3E569201129A16498354A77E387BB8582365E3B61015838239D8
          694B686902757551F18A2161D990FF33CC60373C9168CACDE2CD59682F62B9DC
          B3554DF9F7BAE670CCEE495C2CCAB77B249F81C751DF5F91F74BAD74DC52E57D
          F2AF3B31FBD92D45F7BADBE357EAF67D5EC5676B2AD4F3BCEC35B9EB1FCB964B
          1ED3CA94BF52FD867A9DDBE7B1ECF9EB8AEA7A85C733E4F6CAF22AFA6B0DB867
          BB1E6ADFDF0DDE46B5B9F2AC19C2BD46622C9633E4BDA45279D0DC25F2B8626F
          FFF85ADB67BB1EEDD367C394E933A0A57512D435368AA3A9EAA3B1A9191A9A5B
          209E4C5D6A5BD6EACC3EFC200BE1FE930370DB3A22258ABF92E129770106BC0A
          46A7920D0A54F99D5C997945E6A27A7B13B740701CAAF78E2A0558D4B3EDDCCA
          C2AB04945034CCDD5CBADD805FB6DD30825442B9777E6AE97F1F5CF3E0E7110E
          3C28BE37EEC0CA404F8A2A1911ED4B58C52F81A69C97EFBAEB78ECE08C32CFB8
          F7C2006091BE3EE198E62430E44E645F0CBB37F741EFAE1484EB54A89F80C18E
          A76483B8262C946EC4E198717130167819EF65B0522C4451CE26D1D0D39A4E0E
          A423C8888D1786E5C4AC92AC56A422C8D1FC5085029B5601405C0163B35D7085
          4B3D4FCC53E6D7EDA5F697EDD459060CC872C99826C5F9A2AACD643D2D7BAD8C
          00DC55459B94EB2B5946AF9C4E43C9ACEDD5EF431D8BB97AAD75B9CF2D55DEE3
          3A015A80BFF9EC5EDBB2D214772F21194F224C0C48A21474EC5E0BA69590712F
          C481A1DAA896DDCCEE35D0A4CF85EA9A1F014A114071FE1D2FC623B772733C8F
          4A14A5AB5B6D59805129C01BF76001CA6DCD543262F5729FAEC63308CA0011F0
          286BA5ACCE5EEC891778813CE6A8D8253D9B0C91E7DB01F10A0C55393B1BEEB8
          027315AFDD98ECFFDCA2D47A48AB90C46C1F7068903148309ACD0DE3EE68BD7A
          9F787F2370FE82C398943140D5743CD87B02D1586906B6CD1C435A3488704A18
          18717E09D7C8D755824E19645AC613F324E3C3E0B9750DC147FB53F07171EA91
          FD8961397118DFA9C645F5E02128D4D196697B119054D34EB12AAE296EFFA1B4
          5B0CDC13609E388CB112F3383F6D04C6D0488DC513C7E03730A2138CDBE1B829
          332A564C04DAA6CD81D6B619CEF49A4CF7434280978415AF7898340D6B37BCFD
          58DFEE6D5F578852815D2855C81CB9330EEE4909CB6D9554E38A5CCEB68257C1
          F00014C638E179EC5039A0532996CC90D7FD2E6C87F7561AF588D3528EC9C981
          C59C2717C9DE8B94ED07E4C1C064E296704AE36FDC7DD7456BEFFDC98E77763F
          0FAF6CDD7017C57C3D42FB8613A6046FBAA19C83317A1614720F51F1999AA1C4
          BC0045F179178C92772D8A69063A231056FF2ADAFC1F02149DC2F9F8032BF96D
          21A4296C041F400ABE9263829D1C02F9C73E0A58F215D0AD793347F171A9C777
          AA11B902BE327B4CCFBE569AB9F29FF77899B20C47A95D9A77AF93B2E5797C2F
          F7C32B796D5407E503AD55DB67B70EA1CF2EF5B8C7F432CFF6EA6BAFF29C54E1
          3EF9E7AE2C739FC78730A6AFAC623C8F6B91E0C5A636684614DAA6CC86964933
          A0B5611AB435CE81C913E6426B85A3BD75A15064911FD8697EB7A4FC8B999252
          3ABB344E09295AA59312458A3C8046B99FB81B60024FC5EE0E68CA6B0CB7B0F9
          EE20A2B01EA42C10E355B046E0F1DDFC7254BBD553FA1C52C49878DBC2A02AC0
          A158910B6D9D4CA4AE323BBA964DE94B4274F35AB0D7F625DE7D79C30D18EF3B
          5123B25B428471F850B4D1F8EB84C9E1D728E5B709D075AE383FB59CDE95DB3C
          3C2FF99600EB53C4F7CE04826FC598BFA61BE40123A49C096C5C997394072E08
          A9028B2EA02195DBD100E41F4395FDDDE8562AE0F3A194AEDF1B92BFFA2F8EBA
          9A73BF955B0243D922192919AB30F531F0651F1731192B2A186A007ADF590B66
          3006BB766F73F68E708555B0C5180443E48B3316CE3D54D38CA97420EA25CA63
          51BC92007AC7EA7057B4EEDB13E55D73CB6D4D950F16478A62BB786D4F795FE3
          6E90EBE671E41D291755C19214077A2B0411A4E4B3D26D31F7206F836C59695C
          9CD248C6C8F12A19BCC6B9A7CDEE03ACFF6CE6655F81487C13049E13D33635C1
          4E077E2340C097C485B3F7C55F8CA8E624F1F753E2EDA700912447F08E38B74A
          9CDB226ABF0332478A53AEC51A038D6A003749435A3D189A2194FD3CF1590808
          CA6364F8BE335BC8787136DBCDBABAAEE0CCE47BCA91BC1700CBDA715A2E5F7C
          D927C5513694013128B4CC9D08B03E01EFEEDC04CCAAE0C528E6AA643FDB1ED8
          A05E3879FADC2784C20A20EEE5020CAE0C0B2D70B3F552D2DEC1D5DCF3FB7885
          A177FBDC2DEE0877CDDF530A62BC18212FCF269E67EB535C0700A8E066ECCE10
          8167DB94F76A1A8C3B430BCA88CAB888BBD51B41718C1DE71E8CBE69A6AC4F29
          6268A5FB7AA031D005275D3041F22E323C7DD2B2EC6F0875750F637C5FFFF904
          04583950B4C2813934936B25514FA86932B2762A8E4DCC3E3F571044607762D7
          55F164D76684C81EDFCF776BF6C5179F591A9E30196A4583C9D316424DA81656
          DFF51B489BA98A5FDB425F7AA1E6FC8BAE8DCD9E7B1DB3AC0A8A0EF2004AB9AC
          C95EA0072A286954E5F5A5E5A203F629F9DB21034A9933CEB78AB7AF0BDDBC81
          73B64500B477913C87711A397A5FAAA602E646114D6A88FF27093D369B323451
          28F61902E7CD172BD55846BFE1EC9643252F1DAFB628CF18D10280880A8C9AA9
          EBF55EC6C36EF9A1BC5832D4DF93485EBC3B1DEF912C1D95B9FA56AF81BF3DFA
          2E30A488967400CE9F162F99F46CACD958C26CBE7FCE1228B325B4DF5447F465
          9AA597EDB4BB6EA3110C23C10CF980C597E1CAADE027132C27F9CC9EDCE693DE
          51C55E40B7F2379FDDA7DBD0B16DB1D260042330EF1397400FB3A0BFBB3BEB45
          E4AD40FB10BA219A4A7E0A2BCAAC41A3C172361DE53C78C085D5C84F1AE81539
          16C03DB78E1BB0F16635F2589B55A22EAF02B39EC60C3F2FF4EA3AA2A11E593F
          CA981366BE327B3508CF982D4A8E2998963D81288199AAC24EB4CDD4FB14555B
          2C147B2395F773B6D55059B0463C8D6ACB058E73BBB69CEB35F2DC6EA39E6D99
          7561EEE9F91BEDD8FE422CCB369858830664C194F628503E9068986B047D47B4
          E523FED4B22F801531342D60EFACDB76F58E783F5346882DF2018B2FE564BCA4
          54580BFB5EAE26094E72A900A45C977D7FFEFEC9B630B03983C6C689D0505B27
          56C4CCB3CBA89327082FC4884CE0BC5CCE9F4205EC1EA1B6D873A8D4AE8396B5
          15A9145DB7783B287B2F99C84D0211C99C70F82BE3FC6ECC619978962973CA20
          8E466CC822CEB701836D1CF167529D3B2154D7D46C137292DDD77B9116AD3956
          5CA267521FB86F0BD132B62C199764AFD835BCA4DEC58926BDD31F940B9897D7
          0F8C83120CCDB19B6A34817E9D3D452EC0EE0EB400C8730F00EDDE20949FE694
          F38D973B1E5B72F6F4C79ADA4227518B812FE357A491744F3CF97F1B5F8D2F65
          CC8091F2F2F2018B2FBE78CB75B06706D08740264E4BCE434CBECA407B27C17E
          997C913B09DF6C2A9597EE3949513B05868E7E88118A168313EAC9ACB819B516
          DB990C25C01B2A0360CA47B295F5B2FBE3AF0A45FF4BA4AB7FC41C77F2216DD1
          EC8122C818AA6E67967567DFEA5577D62E58B480A7539F5622910B05F86B288C
          A782CABC666BE7995C125CBF57DA5F9562DE9477D396A04851B503750E97EDDE
          B5FD7F149CB173E8E21A34CC3F0D8E6A7C084CA60DB22C41E51B02AC9C00B0EF
          78C9BC174580F86DE15AE51BA77F7CA6135366A4C4072CBEEC89E482A34DF39B
          C25324A392EFF9958B0E2CCFEF77C6D78AAA42C7BB6B60D753AF80A2941AD9D9
          A605538E3BE6B3A1396D2752CB2E624F00AA0BCCC6CB9C730322A55B4D856C8D
          7782C3DCE703517A197D922BE4E7FD1B37DC0F91A81D6E6D2997B27894D10B01
          6E59AFA753892F9170F846A1172EA2885F2A40CB145AC4B6108FE06FDE19B4CB
          3125DEAED86EE21EFE7FB07C94D9505BD7F42DD5083F9236ADB7E5EE418D38DF
          01ADD0A56F8769D1D7C196A63D1945F89282F1AF0568B9B8DAF823997C3C3CC1
          005E469C4F16FF4FF5A7A5D1956D5B7ABF9E48DADB2B62F8F93E60F1656C442A
          DEC7FC66704047253B14B93DB41606D3014CCB032DFB55D6684E29841A63906C
          5020DDDD53C0B2C8ED9FDAD9ED5363531B7EC0ECC2BC42D435847B3985E89587
          C6FD9C3B20F28EAE5BA270297DCB8AC7BFA9058D3F71C757135774E31E93F646
          28D7C69BC57F3F104DFCCB24B53EA713F5CBE2B3683E9351994101F036462ED7
          37DE0C4A61DF7A313E8ED40AB0FBB39E44F264C68139999A45BD5EDDF93EE878
          F44130ED8CC1B1DC42520DF5DA234E99FE11454541EE825A10CAE4229206ACE2
          E5A978B2EF1E86D0DF834A702D67D6F4604DF0E1549ACEE436DFF7369AC7489C
          31C591EC0A3CD4EF99367DFE5FCB77DD11EF4E57DE0A1AE206F9580116B90ACF
          45391DAB981FBE8CAE9CF71EA8E3953072291B243039240BF2725E4377A3B94B
          AEDC9B21F9475AA898E2742300B199D3C1ECEECCB38FC8B84347DBA75FC375A3
          164C2BEBD2E9B66A770727852EB4E5BE577A5F5A922DB912F041598F53D493E8
          EDF9294B257F04CCEE51438171DCFA4EBD779966F25A8877DFAB35367D4BD4E1
          43987BC57FA99CBCB0BCC13354C1B654C3D864A22AEBAA7A427334760146E4F7
          D2185766084FD34300CF3805DA7A1E041BD538998B09814D7632758BA206FEC3
          5561A6ED0DB60D8F8674F41BC6D9B2B49504AC1AA0280836BFDBBFA6B7ABE7D4
          B619350F44EA8D03A47BBE2FA56D9848251E4AF725BE565B5F3F478096CB1052
          8E05A8DC561CE114DBB2E58B47CDE53622068C74CC189F61F165B812AB52B1E7
          83559F8D19B46B1930C615A0E560015AF61B635C4629D42F5CECAC88519E51AD
          D03587880F2F6202AC4820531A14CD5D91968BDE405CC048B930FF5E41DA8AAF
          71169896F50F50D42F24D2A9D70DA10165B6DCE18AC3C6385E3D552AC881D0E5
          C3DB6FB22C6BA506F4BC547FDF697A20FA3371AFA9DE0C49392F20AFB62CE765
          E4C5840DF62775392F870AD6C995FD6BDFBD9726E28E012EC52A6CD30E86E953
          B6430D7A4380181D1857C04AC6BFABD7062F00CA5BB2C092D98C3EA330B863D7
          8EEEFBEC7EDE1D9B13004A2D50902554AD065A508167FFBC111EBF7BDB9A4F5D
          D57CCAB1171CF4448AA1E988737F662AE831FC446FBAEFC32C15EFAFE175AF31
          4EFF687376AA86C94711462789F66E92A0A6C4059B08B0B873F7F5E9DEBEE578
          0FC6AE0F587CF165FCC8DA3CA625973FE83C99B1797F615AE48E89954C82D5DB
          03C1965607B4D832DE0AA35F430E8A296639CAD990708FA8AC00852EB3C5D153
          5D4BE6712E4F59632223A880D91BFF4EBABFE7DBA189ADB6041B72B55F0D5CC9
          50E945F3B898BC93DD3D40D32908B74C14CD200D93852225EAC0F3E5E4CF6470
          16664BA601929DBB0051024A4D18F830146A6EBB2A65A61F623471941E08FC50
          D3940B6996CDF06E87722C4AB9048B6E01E2DCBEC35DEC68F21412C20BBAB66C
          F9C8E68D9B6E57A5279600789D6D5380CCFE36CCB29F86E93D0F43D0DE0ECC42
          9D6C57E29BA821F0EFF1AED4DFCD78F2D170337F99580A300172FA5913BC4B0F
          85788A4098BE0851A503341417F8330318916D6E4CDBE63908E97F13A56A433E
          66C9F416E38F334C3F2C5ABE9FE78526B0A9FDB0E89B8709E5CDC9143D873174
          5130A21C51300218AC87B07EA336B5256BCC3DF2E203165FF60591361F6BF2FE
          77CB8E3CDE249F597263A0A4A79034C4BD22075A606C32868F1968B1E3FDB063
          D9D3C0D36988CC987974A0A5F56C4EED72DF2AC38CB8ADEA0B818D7C6679C6A5
          58B9E61BA3666C2468BC7FABC5EC2F59BBBBEE4586360484907173E696E9B874
          32895BB028092712B1386085767503B44E92FB66656F25018EB5AB13682A25F0
          531B687A509CB3A1D0BBA73A8D903538ED6036FFA8CD532F22A27C9F1012A29E
          B628E59249963230C52C59B1DB73F1FD4BBD980AC18F4D294C3AF6F8AF4F32AD
          FB4419FB9CA61500CE4EDBF02F741CACD3E7C334EB5FD0BAFB1988DA1B6FC34D
          EA6DF12486CEFE49D0D9344F009509B0253615B688C160A42640578280C64E84
          C9F64638C0D80489F4DA6CBB60D13FF0AFFE2D7D27056A02BF570DE520FE1E67
          5A28B76FE626FB8AA26B492FC02120CC7633496F5EB7AAF7E63987D59FAEABF8
          B3A235CF40628CF7EDECFE028D27E3C3496AE803165F7C195DC96748866BEBF2
          781E6019AFD170E51C111287A4E8D390DDC8664E787E6FCA976495E5CE7827F4
          26E2308FB65F2556FD98569568D0CD7BC78D09708BB95289357067681CE24721
          AFF56D58773E8D04DFD195A18115ABA70B702008F1D56F4170EA1C507545800A
          5AC8BC0C6522CFCF662BDD6664CB711588A282958E03271A0CE662AA02B80885
          92ECD9F553AC8596EBB19ADF0363534A0D92CB81482F86ABB05D69D928C4BCEC
          F65D0ECC10DB9E295E3FC329FF6F69CB826DDB4908A88AE1D7A7456079E307E0
          4575214C263B40EDD2A1430C4D3E61B2008B61909B3FAA58EA1365A7E8C1B41A
          402829D5EC5A7B06ACEE5A00D62205D07D5F0446D3CEB69F95B0DF06D5FC00D1
          D09DA2BD4F7EAF312D125C0BA0267ECAEC8AB46DDDA841E5F0F98E5173A69DFE
          964CD87FB34D3803A713537B57AF7A90233CEA93912FBEF8F25E1785BA800799
          C905FF5A4C6B272142122A07B9E2ED621CAF56757D156B6ADC8638DFCE042E11
          93D86E01487664418D036888A643FBA2C321D5DD7564CD94E927B274DAB96D69
          345A37F0920F32DC92E979C551710B155F0A6EF295B41357259D7A0A8371A1F8
          B7C36D5BA7589CFA6513D189B6016BFB36501A1BB29167474FEBC9B25956126C
          C620D236C9D95E424370EF157F9725766D3B3954537F1756D5C5D2A6867ADAA3
          200F36C50D0496F32C421EEC56A13130CD0741182E17CAE9E7E29A543E1FA570
          0A2A4D420F4281CDCAB47A85066229D2591755D40908D29308E273443DE74422
          35B50A218120A6579A967D8F8A6C313253A01E7E02243FF955D14FD70F8241E0
          3B79C23E5351C98FA84E3EFF9E012D32CA709CAE17A3FFF344277F1B2A83EABC
          CAEDDE347B30BEA30F7067278CB6E39C0F58F68E1C3CCAF78FE5ADFE7DF1A5A2
          C8557BC15C2615B2A2CDC35AF063346B389B4958876442B36391A1803E79AA13
          721E11E0381C8C230874080DBA2EA068DB11C23B2118DA019AD2A7D5357C9EDA
          963A68BB522E4C3E94012E5EA0053C156E69BC1594C70CA0ECBC8DEEEBEAEDFC
          68ACAE39558D9FAB5C43124D05AA10C76BC569168C9D6D1A3646AECE5880A440
          732BD044027838E4B02D4A15C9E564F9682AF50E0DA48FB7CCF41F8C70E41470
          DDA62B6C57E2E90DE4B5AD542EB64B7EE6EAE20497036076BA001E578A46FDB3
          F8272CDAB65568C3B9E28A36716D6B241C9E850135716406F4409838090307EE
          26FA8464549B11C45FD10CFA27C7C2C2016DFD30F3A20B21BAB31358EAD50115
          28FAD064A6FD05AEA017C5D8FDB1B845C3FEFE9B1743E1C1775EDD7DF9C4A9C6
          A6D8C420803DECFB384C4D9656F501CB7E22F93617D25E41DA378C441E99180C
          DA4A9C370660A89C5C02835B1BD3C0F70EDA6744AE900A008C0022B575B51F31
          34B1FE2A513E0E8D2CC3D20F4C5942A184859A98293E9FA9086521958E128964
          BE61049CF819E502B37979EF94BA32830B9B52FC5971E45CF7B8214A66A67D4C
          1C17090090AAA69D9C846EBB77811AAB03AAE919AF9FBD147355DA0349E042C5
          F36DCB0445D133F1475079CF2AA95C6CCE7BB6AF7AE39CD659F31E24E1C8F1C5
          29128ADB9756DCBE2BB7D557CCD27807A3CBB76F1163EA1AF17275266C5FCED3
          0C6715171EB89673E45A2EEA806B7C589F955C68517B45EE0A1B2BB0A2E61C68
          E5DB0430DF2ACEA883DFB5D99D8CF09710C6378AA79EB69FEA4853FCBEBF295E
          6F302DBA4F65851E6E67148715DFD300625D454AEF92619461BC8B042757E429
          F45BB2C79E0284F1000AF634843D0CB14D2AF5FD34A88E97EFAA706EA4EA3552
          F71935894E6C2E9C18380A1245F950A121A2D71640A9727380462EAB302F5EB1
          17DFCBCB3BA55C7E1A00F70CC1A5DE2A6E86B8721B279EE85FDADDB5F33C8271
          22954E41AC616225B8029CA8904E2541D14380C7C9D681EC2327FE48220EFD7D
          FD6034C500A96AD99F80160CC1E647FE965C7DC3F7CF3BF6B7F7DCA769C6B1B4
          249122AAF267542E3271A5BC4650763CD1127F9381F31E8C4F0900422155FD08
          456CC5E0FD19985007ABD919308DDDE2B0891996853BCABBBFDB7C67FBE6C427
          A6CEAB5FA3A850B71FD9E23231561E1203E6FB9CD3E71D3E0BED5B91F386B536
          E06F3EDB05C3F7D2700B47FEF830EEB3AF4508956D361201F3AAADF7E3A35C9F
          91F2D2797C18D777799C5F3B026DF9F830FAF5D62AC7F9DEECAFB2A261927728
          80147CA05015B369D9BC3ABCCC8ADC4B29419955382F021BF94A10B99C0717C0
          537ACF628F18B95D406CBA62DB9A77CE5DB16C69CF2BCF3E0E3B56AF02DADFE7
          0099924912490F2402465DE300CB327450C19CEDB3AC4823E61671CC13C762C8
          04286F154764A0A0F25AC686F80CEEE471DAF0E8DFA1EF9D55A085232E757198
          8B8C6BB3A28065263AE3E9C4071942FF42A85C503937668557780F03AC8A77DF
          41853131D4CF4BB7AE30563F88881E508806994387A028D41AEB5088470E83A0
          C180EB04A8AE38DF0F4535983A2F76881826FB135891E3F67718B333B10ACF13
          15035130EC6BF5DB13BAEBFCEC6A78285B10577A4CEE8F673FAB76152AEFB12F
          BA80E6A29D4AA665B89162D7E6B57D2CAFFD720A2FD72EF219A369C7726BB6EF
          CF2B52DEF9FD723D540E1C777D1E0B514DFB5D5A614CDE0DD5E536BAC7630C0D
          652CBE92BDB6CBA37D72F5AAE40174BD58045CB93707A68C065A006014FD3842
          B007C3812A2A89F2CA847BACE0CB8588F7BA7E884A4DE6DFA174C7F21F7EE763
          3B1EBCBF2717346C97389E0CDF08733E7339C48E3C2A2FA827072B1D068D2980
          65E0B8A1CFF031B1AC9DAB85A27315553B4C80100104511351D45AEE001724E7
          602AF05042E8D01E05A9BB29A077B458EDB334957E8322F4BAF87C67D5A0C530
          60F75B2B61F3437F03A6FF37D4CE5F00D41CB0D571DC867775ED86E7FB77033B
          FD54800F9C04CF6FDFD835ABBFFB63D31A262D458AD2281907EAD1A7A586B750
          F45929E0A115123096022180EA02FCB98D4597F188D14C33993CD0B4D32FE483
          CD14D7201DAD052C808AC50AC719417821EC47820882DE5DE9BE1D5BFA337D22
          C0B016509C58886E2926783691E9B8ABC79EFA9EA3B94BC0971195FC4479EFD5
          3406F96DB05F67FB1040655C9463D695DFC82835A9AC3086C9C79CF88A51135B
          5CBA4D50CEADB83C80298ED151A8E0CA29B44246A7F03ED5E4C2C9331CD5746B
          D3AB2F9CFAFA8FAF5F8A381F604B9C79502873BDAE1EE67DED1A30D2CC7105E6
          6822A47670501B18D4B420C7FDB96FDB26205A10B81600CDD0405574E879E74D
          301AEAA177E33AA89931BF4633F41300C3B9029CBC5FDC7EA2FC9E540C85ED59
          266712CEB24AB6BD5DB4D15281A0EE54107932DDB92B45C106AA87201C8CCAC0
          256023DBF15A829409BD291BDEBDEFB7D0F3BBDB9DDB4CFEE46760E6459F0522
          809ADDB3037A5249D8BA7D83F33C559CA3D25058D45BDA23CD9E39EFC4686DD3
          C33615E8ACA2AD1154008E6EFDEB062CABF9790F67CC157A23252CF34A8BDAD7
          E71B455B5C8553943FC114F20F51CE6021AE55955F09D472F1FEC3AE0098697A
          6F3A619D97DB58915994359D38290BB8B46B6236108A1C83F2AE6437B0BE24C4
          1A9BC56F83424A8C3343D11C6B9F9E6E0BD6BEDD03730EAB17609882196790D8
          B91B60FDEB4336BABDE69AA18122DFE8D697F12ED360FC0789DBE7A5E5C493B3
          8045CE39648EA607E751CF2D09B7F0EDE5EC5B8AB7898AED104A23AB7A87ED2F
          5682A8023B93F51B91FFAA0A745989EFBC35A979A97ED34F41758919111775DE
          6899D0DE6F034A34836D49BB065E71B5EF182133DA5ED33EE3B302C45C80099E
          925F5F674B882370F77842A5ED970D7B4E3096C645178A77178A8E790369FA6D
          427FFC9F0028BD9E2452DE2274E3AF7F09C9CE5E58FCE5AF417748002B83436D
          F302C725DBCA5E2395907CBF85D1C719B7BF5D4BD46F5319FB0415038072C912
          4BC1077565C5DCD9356FF0EA3606DCB60B01BCB34923193DF86C86D8F5F91B7E
          69E9DE66A9A058ACE09EA2AF302864111F8C37B2EF2F8C443D548D4C55552223
          4DB3FC66746CA0E438C0BA183CCC197BB5460CB0382C66C1783273F1018B2FE3
          51F2ED3FD6C0E016A00F5C4649703AE4BC4A3DA919E878B1C2D707E7F0F2C1C0
          4AAF411556CB00E583C621970063D5ACBEBDC0945C316BD0BF65C3732B1FB8E7
          4643687CEC11E02A2489964000AC833E0C9884C4646D57DC65E2D49E166E9BF4
          1F44512F4281408D0CA8472B46EB2DC74E2097767042EACFD7A2B53FC6D4BA4C
          A3F62FC4FF378B4F52DEABEA8CADCACEBFFC119EE9D800FAC10739518719F7DE
          B6EB43E4C605679EFF81404BEB514E3A050F06889418BE56624FBCDCD2BD5D9C
          CB66CFAE185F67F079D96B0F240CFF7FF6BE04DE92A23AFF545577DFEDED6FDE
          ECFBB0CC0C18766411158428066250A362444D4C4862628C46833111352E891A
          31311223FE5D224130685414228ABB20B2A9C836C0CCC0CC30FBBCFDAEDD55F5
          AFEA7BEFBBB7BBABAAFBCDC23C86FAF85DE6BD7B6F6FD5FDFA7CFDD539DF5923
          42F5C6366929886F4F7882C4395541D89AEFCA488E012FEB77F2C71D817E2CC7
          52600BC5E9DFAE16C85A3680A8396A218DC37C4E25E65AC2F2F441E693B4ABA9
          64E05D6387440B994722A7C2DAF91F97B7C6CF8ED921026AF55871C44D9A38E4
          779A1D7EB932D0AAEDEFE3AA884EF2374DF9C4D7C353968906ADA8ED7B7C593E
          4D7A07DF74F499E7D7888608C91BB59CB2698CE7C5BAFAC41B69C6141C3908BF
          4D44B8BF273D3D43A1353FA5905649A51E2793021179FA07829D631071AEE294
          BF5630AFBF450C7E68222D1295BBEE8442C060D52B2E057F6A52AB60088253AB
          EEDAFDC7EEC0E0DDC8F57AA2790CDD04C3442EE2A40440958BD42971CE42763B
          E362321DA489319D5967D125F88514B18DED25892C01AF10A83788202C68E6EB
          C592BB1E0DA0FCC1B2EA0F7D08E706F9E901DF5F0E8C6ED78D73FC8A6B5AABE0
          39739FB284C562AE409292CF74DDD1AE69BDDA49BBABC14E0F1D32B8A5A61705
          E25C4A2D2724E5FCEE52633EE3F3D13D6DA36F5298A684E8D415AEB98D260DCB
          A2242A1A0465FEC6C49E9DEF1F1D1FDD40067BF42A1392B6EE0BA090EF07E6D7
          F58325A7CA10599CF7DCABC5BA7F2F7C1665619AA22668EBD494B4645443DF24
          1EBAC19E2AB67F1B04ECBD94051F34074D04A3BFBC1BAA1E81E1F35E048D6A55
          73F3178FDFF7DFF9C851F3FA3F30B464D54768C0C1EC80CB35044D9573145755
          4C8A9D4A7151FD0C19C6AB797D04189D8F38FBDCCC528295371A14A647A5DB6F
          670F732E7F3E1CA466C32D95EB01F1CFED8CF21EF1C6B0787B99D8ABC562D7F2
          6283CDD2A4E6348D64C852D692AAD984F8ACCC31EA137F9307ED410D3BDE1962
          0CEE9CE551006101A0CC65EE96B01C09586D8760BF70AF1D82438FDAF6AD6100
          F10AA5537283C38B3937291C48116C3898BBFCEA541653FE8BB9AAA8DB844C37
          3D219F0EFD6AE5CEEDDFFAEABFD52627C346846A50C8F7AF80A1135E090C37F4
          9A8A1818B7A7EFB773A5BECF108C57D20C66695145481DBCD5CFB92A6522BED7
          22B43AEE073C70CEAE57EB6F12646ABB61E7A17EDF7D30F0AABF80F9A79F0B7E
          BDAA0E6AB2B026F0FF55B0B05712E0A7512331D1EF9BBAC43D2DD91629143295
          2A159F9A42A9040671FC5C56976E7FCDF6110DEE42FF6009562FE9153F973AC7
          0FE8444E0F3C304B6525F0B9FFEB3BB6BEF198E3E7DDDB3F90079F872A96C3EB
          FE60AE37DFBBE389F11C13EC73C9CA612A500F6850A39C56F36EAEC665F15EB9
          3CECE472F720C759890E864C83E0D4C67EB4527690138EF3E1260C96B03C7DD8
          14232FFB6B6C666171D031BD715398DBC0162E3AA138B21035F317D481349CFA
          40B3C92F493E41EBF310784AE0EE7632D511846800C32EF9F05197BEDED7E5AD
          C896034C1CEEC43611CB1AF251D7F8A7F9D27CDFD05731E705AA5544D29E4467
          D3DC513515973C5E41CC5EE2148AB779985E18F8C1936D729520388D3A3CFC91
          7700BCF59DA13B6ED3EB25792E19678DD2C8FC7F9E7FCA73BF0694823E870965
          38FF59A67AC04036A23D87BA9733F7368AAD91E0555E912D173F3E161216414D
          0207433D60E077961BCC617290DCC2113468F0799FE37BEBB4D94DBCB519691E
          2D4BD5F7F8B5A0794EE30933F2EF8B5098A84CEEEB213D1FEBC9F75D4DFD83A2
          6E9CD0F003576CCE9F3D6F6161FB87C399D26209CBD387B657CAF9B35CE6D908
          6E2F97A7177D679E0B52F47579F083CAEE1D37E486465E138D779DD2608A4C4F
          DA694FDDBAA094547388D2D114417AA33DD40AE208FC06FDDE548D7D1B8B2744
          A2D455209C32A2FB3C415A38602C1B3EA2D85E7219C065C07905E2E8DA265901
          D0BBF542970A84806A136DB982D8E97341A821B84B7292CBE5D6E5FA0BFF57EC
          E9B9A4E27A1B9247D20A3B7BF7C286CFFC07AC7BF35F850A94CA6F0385B94CB9
          6F8803FFA938867374792324A270A579ACA84CE7D2AE1743E9B772BC92FB4042
          02C677F8F5EAC7C123DBE4674C1CB7C32BB060FA511104E56447D08E886BA087
          8C1C949B18673B0954DE77FAF3070551644005318A2B7CD25917B1E43060714D
          DE7DCBC3B075C313E079CE17CFBCE4CCB70C2DE95DCB8203F346117F13C7B88C
          2FE38C6EDA1FE6E18B9D0DD8E1BB3D5BC2F2F44226924A63B32C0CFE5DCF32C2
          228DDC2E378CCD3560F3570E9DC2526E169B501E3C58D9BCF1D20543F33E8718
          FDA008E6CF4D76D44DE7978837AD4474C9A55493EFD0BD4EAAFD2C6D3A62E6FB
          AC562EBF8FD6FC30E543B5EF81D8C9EA9E1AB032969E7209BB7DF928EC111706
          F343E788F0FF65F19CEC51A5AA9256DA0B4AF5479FBF1157A7B881F074480BAB
          55D79DF8FA3FFAD6D80B5E734E752FDA8509529C9BE6BA87D68F40AEDD603A86
          50CD618C058DC60708C6DF4D2A3CED26922A154DA77801649F0AE329245877ED
          74B61556BB70F0034EBF048CBDBFD2A86FCDBBC5F0BAF4B903CFA177C208BE5B
          5CF345F15DD6B4E677DC17B5963B30B2225B25D46A1F08EA74A77885A4309777
          C5FA73A919B8B2D753BDD6800DF7FB30393A4F662C55966D2E7F64FE8ABE2F34
          8203FE53F772456F85D8BD4DFB775CB2AD03875D5B0E8F4BAE252C4F2FE44572
          AA1D0625C6ECD81C3EB4FB9FE1B6E2C0E86D88053F6614FF2126FCEFC45D74A5
          3A70AA1586A4DC6C0ADABAA765931263DA87760067B7957AE18E52AFAB8B0C22
          A854E1B12D8F429DF9B27F525281A114960CCC5FBA7CDEFC6B45D0F3A8460120
          0922A62ADF3505EDAC3D76E2EF45D71356117985A30757153FEFF7EDBD98FB75
          268FB39B8849535739FD373AF12478E23FF9B9BED4196E1BC8F7DFE96172064D
          3D374843527409C590A29E81E19AD08F61D8009289C3A6FC66F1DEFBEA2CB847
          B69CE838BA62284215564E7F0BEA741A02E4CF1039D7E917B4C29529D4FB5D1A
          232F2312B08DB8C2AE75983BB36BB299367279AA7CCCC4D6732E86CBFEFE8466
          1764499C1BF4EB8D2A7DBF38E4E507F2774E0481DDB5ADF2DC7DDBCB3FDC6F95
          468C8CD89799FB85252C16161673013EF7836BCAFBF67DBD67D142A97EFDB578
          0E9DD749FECBE2561A2FE53539D322CD93B9C9C5563DB520B7576DD43FD96008
          883A5935FCCE9EBA0FC535AB605871EB95B92C399C2BAEE95B708388222BA821
          B0EA134B39647586357BB2E8C842E7DFB69A131AFE39F0D2E1FEE227768FD1B7
          06610B4094582DE3043C9FC0BC811E60FAE9018E11F914E3E88CE82375D27F87
          40B7A57F5ADB04D3540E4F5168D4CA5B58C2CD42E7C39BEAFBF65C154C4EFEB8
          77CDD122BA06B1732FCB736AD03B1F89619A0F6EDBF955FC570FE83FA2BAFF4D
          44C8EF218C5E2756B95F153A759FFE0DE764AA4938A47A838106ADA9B67092D1
          4008A069FE17D4836EC5724210AE0F8935ED57C3DC766935A57C6268303FD53B
          E81D908A24ADFEB12055B5067D5A6F4896B058585898D517CAF688A7C60FF913
          135F265EEEFD389FFF032E1324521D69E3C1946B0297AAA3725AD2AA3E20CAC0
          4529DD0C01FF514EF3A04CC2268018FA9D3E18504C179190AD71E8CFE5AE105F
          3D9B729E4224D29247D3FD454CCD24F595541A05874903C0FC5FE573C14FA626
          6B5F2338B97D3932B532C0341D17C1B4AC0D606255DFEB1D5A388A72F921CE4D
          E4CB54158652CE9B7A9A2D99C79424316D752B08E8AF825AF983D8675F0BF733
          088CE49031D4A2A5A8ADC9C96935CE19FF1542FC5701E31F7308BA485C4F978B
          0F5FD0B529B3C242D92D15C4BF897A48D748B72ACC280B550EEDDF9A8BE0F107
          2660E7E64A846486CB7AE4DAD35FB8F88A7CCE59CD66391F13F84C1C137C592C
          76236AB02748AFA392416789A7BFD790252C161616E6DB126ACEC9FBF5DA66C2
          D8EB03D7FDAC83D0BB30C22F55928144AE8B29E9B49D0B813204C23455A2B53E
          2C9EFCF6EDFBEFA9279E28EB4CE2E41C98B77A0538A5525829138F4432401401
          9FECB8B97770AEF34B313DF5EB7C4874DF4F23023CA12051E5945A67BFA4D232
          D45FFA647F29F7438CF8A8FA49D981A92737C2C4134F681D4D29E3BB7327F67E
          235728FE1150DE451290C28747754EC0A0A6712369A15AD2D7222B58F642628F
          720A57D7F6ECB906F7B8B5B03059F6483AF07296B238F75F1144EE2B0CF153C4
          3A5F255E2F13AF639B5E38CAABB151F5F9159825CF69488F4289C5B05FE28097
          2FEF83A54BFB549F5645C0FEB8D8F2D5262525A45E2C245FF7228CBE4B1BC12D
          63FB6A770C8EE4196A13787E10DA0E1C866A214B582C2C2CB2DD9F42552294DD
          7F5A67FE4F1D84A56CFE1EECB82777DFBCF54A493CAF2319B0D58A4DBC7248F7
          79FB71925256C85D5F587BAC3268C95C063C3D05FEE828A07DFB120F9A7256C1
          C97938BF68E9BF12E0459A41D5D1F7413255F7E8498EFE7B1CF4C9CF0A028561
          B118D5BFAF4EB0BF513F503370068E8679671E0B8ECBF589942CB80E53FA4734
          B17D75CE09317E274D39E31A5526FAB9388D95DAD8C4BF92BCFB518EDC09C675
          7551070E19FC430240F0FB6BD3FE05AE8BFFD0C9910B1C8C8BE26A9BF9FBA8D1
          FA977657763D4010D168120C163923E06AF653AA3E4ECED11E4500FC4B88C13F
          884D2D520D9F20970F06C8FF4E79B4F23587BA77F52F2CD1801F39459796B058
          5858EC17021A7C0335825BDD82FB16CEE9DBC4CD7C6132F8A8A632A2791D4D5F
          97EEA7745D25098F59B96BECDE39FF85202A8FC815638572C1C413EED607EE86
          DAB66DCA9E4201A3B070D9EA4B0697AD3987D3A08B48A9826752E1A10031DB79
          1D3951111E15E9D155E2983A20B73C68E4EC90037FEE95D035627D1BD4A5DD14
          B01384D100E903FE5DE278B68A78BB2CA99624A76CD2D516D3E7B1B272DEF430
          E92E11479CDDCA037C457574FCD7A545C361B7E1A789B457AA15FACDBA5BFFA6
          C3E0A8C604B974DEC2C2CBC447A7304AC7FDA776BD6F2868682B86C32699D571
          20FD0349654430E59F7D73134C8C563B59F00942C3A78F3B75E13FAD7FEEC24F
          FA3E6DFEED70FE0871F177B66F9CFA5F4CEA77790BDDBA1FC8EE48475E78B784
          C5C2C2E2405005863E5ADBB5FDABF9858B6E7788B390822E39531D6839E2DAA7
          ED6EA2909C06D17A7F7CBBE0E4B95A51084B4860D959E709E2A27E0A16DB280C
          78C5F749B24213BD734CE4439584AB2326BA6AA2CE1499BA675316C5229A4724
          826C01E7F87B1AD5DAEB5466725285E2350EC18E09A03EEDAAA6E9569DF87461
          A8FFFBF9C18137524653C95374DFD39268CDE4A74366DB64857F579CC30B193F
          3CED09A592D274B1658FEFDA56F9C0F002F7C394E3D33865E0F60C3CE518CE8E
          1C7E596A1EF7BEE1BC994D73D68B97425A6E88D8FEA7FD7A301F73BE7B7AA2F1
          7370F1037D83F99A34A1231E839CDC3F4047E4CDC612160B0B8BFD40EB091EC9
          7C010A85454B7648D7B568CE81B923B37EBDF12EBEDDEA8AE9693DCCB76180E1
          3B3A07FE66C0A6506AB675536E1F21E71C42D9F13492F4C90D6A11A41C8B8968
          A8AAA8BA494F9A4F0B37744EEE4CCF04805E35BDE9F1F7372AE5C754B92AE1B8
          D4A6C1219EF298E4E7C45D796B7E78E88D4AE396843F0BCC926899DC6A632670
          8CFBF5BAE4B90CBC526F98B3D439B74F2771817602ADCCC9BE53D227279F4B5D
          4E4E0BE9FA1435CF4D6A6E6F208EF53D200892204DD0F6DA094DE8D0917DD7B1
          84C5C2C2A279D367294F76D2588B3793705DE286C983615E4B33B0CC1321A32F
          9ABB604AAC4C9B1E401A1522FA59F7D449986819047B6BE3639B78B38C29192C
          C471566A55A04C1D31641EC4F0C8C2CB7205B7CBE0CB645E675250D4C749948A
          4D1AB1D3E7B6A81353BB894FE8FAEB0EAD5FFFBBE2BB1F57292882A980BF6F14
          C67EFD2BC03C69D72FD751D9B6FD9ED2E2150D4EB087B84E6DE25A126356A754
          AA5392F084E346D062B780C24BCFEB19080900A2089C82D7AEC7397C343E0369
          428080C3C1EB04FD6C82252C16161600D529605EB16930160BE6CDF70449E91B
          08DDAF9CAE84C276B0242161812255068CAC2EA800666F175530EE0E80187810
          3CC6F6EE9A50290EE171781E94162F0DA73D540EE3E2FD45392F7F713BF050E3
          FEF018114140530266D4AB244A2ACCD533EA691395FB6C327708853911BC1EBC
          FEC9DB7FF809E6FB2C4E5A7073AE02E63FE779400A25B1285305DAEDE2FF3B05
          5959AEDE9E59456AFF4CB4240B6955A448DF240E0B8200C9B6DB53DD9F39FDC3
          C0FC405CA8088289BD3379200C358935264EEBBC73403376FCB60B88252C1616
          16CF28F06D1BA177EDF1C09103DEC088E02C1408C6E1139CD3D303AC5A835657
          1D60018D54D684AA8B439662EC207352A93A59569FAB311B3BF7A6353DCE79B7
          F7AC3F4E2D2249BBF4208072BD2E6E7C3CB13919BE7298BC487CAF9F1A1522B5
          832D05D02844BC4B0D31A94D3AC758BD12659E7AE96C3BF4F170DCE3E62D5979
          62E0FBF725A78578E84BE3E45DC879AEB2BF904045BCB688EF2E579779EB8F3B
          3906A69E50A055645ABDAC061947C3E290A62293277297713383C4EB1D06E81D
          04BFE10316E7DC673E4C6EDC0085C141E859B20C6AAC173607E7C13AF7AB6192
          0CCB66B16261098B8585C5E1866C82E7C8A7505952B978B9CC28845CA907A6F6
          6C81F2CE5D4D774E75100B8366CFA2452714172F8376558DD99BC4E4DEAA7A2A
          5727BC462B7178E829B2EFD7F73F587E6A8BB6D1617ED56AF0060744C052F47A
          1611D0199A7F116BDB822AC904803A4727AE1C7493315D350F37AA48CDF5A159
          2CA3FA1DCD904A701CD2B76EED0B03DAB84F59EECD9BF37D9C07DAF32CF6E96E
          F1CDE7C54BB7414BD600740EB6C4D89B4A35C633DF2FB804E6310E4FC48B6948
          8BB9B01671A18286B2C9C9F0F7A96D4F82E7E542E22A3FB937F86DF1690E8E77
          BED2DA1EB637024B582C62582D5E1BF76339D938F19A035C9F5C5E3619343555
          BC42BCFEB9F5F3BD90ADBF8F34A51A6CFD7C6A6B398B67A2D2124EFFB0F0DECD
          2985E2C2C500FD03E0891BBE572CB57ACE24A77C049959D0242BE9391771AF15
          AA0C54A64EBCDDD3355D6EA0627FFBD71EFB64FF314735FD621484A42E2DCF25
          7181A4BA226E86AEE37AA7729EACDA49FA8A248FAB19D0B9C2E1374D7951077D
          F5B8006477D98D2928D2B38CC37918DCAB748B30A40FDB245C063DD6212FD173
          A72720AA73DF2951EF10B32CD381CD9F11E525A9A8C429749B20124F4E71B1F0
          9803D4F2DE1184B69DA02BB7E5810FF705E789E3A5709C738378276F6F0096B0
          581C24C81E129BE0C03A385FDE7A7D049ADDA055D81423435908D860D7EF96AC
          1C51048643A32A6DDB65396901824A104E13D1C893B9081425548A36A2EDAEEC
          40B16A1F806C531E6955387125869709C61B3B4129AE107099941BEE64A0503D
          18422B05D15912556E90825475826F8738B54946DC565E472A4CDD9793E67359
          92594962CA29FA9DD63A8F629CCA8E7CBE6A8C42DF16AA1F73711DECC6D86D1D
          7716A3BB64F26E7CBA8A6AAB87D4D748D8272A6079EEB358D2298280B390547B
          8E2B484AFAB553801AFC529016470CC7B1EE370479B1534396B0581C2C9C7280
          84A55B45010D69E95EFF608B906C4AD9274B568E6084F90EBCF9D4CAC563B694
          E1E35E9C822314305797D7AA733B4CC1097505C868CB9368626B22C88D8A3D19
          538626D454084AC4311DE7F1527C49EB7BA43EAEF8E7AA045C5DB54C775F9CE6
          7254632807DAF755BE2751E2429BE3399FD791742DDB93642B186AD393307AEF
          EDC0194BA85452A1CA0F8FEC1E39E32CD92F2785404673758886F499FB27A9FD
          5BE47ADC0296FF45CE6F38A325F68BCABC95B03C3B13250F9596BB830B0589CD
          C3D1E85AB1050C60898B252C164A5C904242BE275EE7CF627D6B3404E3F21651
          59DD455A6E536C7BACF51AEC525036A5282C2A75C6E248535B64D0773034C647
          01E70AE0164B33659C82CA18F47455D96B9A7BAB3A90996DEE615A84AC865A19
          8030A9B4198CB8EEF81622A542A0272D7A53B4B44ED62A0F15A4501B744D1739
          E81A015283A3AE38C67E27479628098B0C0883FDB0F4C5BF63BA0A76734AE518
          7BEA6ED16A221A9D42CAE2D88B3424ADF999388BC39145E42C26F7434394D9DB
          B148D25287FB83174019B9F05BF826F17B59ECAB9D22B284C5E270E19A1639B9
          A78B8C5CAE214BF77691A43455C74E073DDB4003C0010BC94A334153968DE202
          359215B3CB69F7F409E9CA6FE83CE5F30459884EC984EFD71072D419A31841A3
          5C86E98951B5ED39E350E8ED1F2EF6F683B923B1494D00D0FBB3805219A15AE2
          A3FA7EBA2F0D4D9D4213AC2DA02394316D627223D0279F8A65C6DD12AE22843C
          32CBA695E686983AD762758598205ECB80F96183478C1CC00CB7EAD6F79B8E8B
          636BC0C3FC7930468F86E7E09B613EFA85D872C186494B582C0E13A40222F357
          DA49B53AE5A69BB00CA6ACF314ABB03CBB105AB987792C0C1A75F1748A45F0F3
          F03CA2ECAECB5314946E47DBE4CF7AF2C3554FF45A638D30E1D4CB4169609E36
          50BB8E5392953234B5349BA79032DDF19ABA3BEB8239D79020DD36754EBA1DA5
          03B9B8A46BAF17060447DFC9579CF7BA202B8D78E274D20F268DD8410AD18B13
          A54E05962CB7AF8DEEED05E280DBDB279B5A1DB46B5BE6B4EC8179F063FF3278
          0E5909C7E25BC0154486DA5069098BC561C1BD1A75A41B631A42A2C26AABB03C
          BBC043C7DBA6572701BC9832FF0207A163F5B99AAA401D2735A63258C81AA0F5
          7B20ADE51D12BE0C374237D95A40376D653276EB6CB3AD1045ADF7D3CA80554D
          1D4DEA892E2137AEBECC900E474F0CC4209472ADAEC78AC6913239B9DEE054DB
          42218B095CF473A224A9D1718F539280D21788E5D6891F1F3ED8D7B717E62323
          B897BE08F6F21570AAFB5528E2CD1084B39E36B7C512168BB94C6A4C9542835D
          9F8F5985E5D94056C42DDBF58E01C7B95090954B9C1C3F81A3FC8054E3A936E8
          EA148A2CD540C97C866419EC0C69304613E935A3232C61506494CBD268BDA2A1
          538F926EAF4D83334890053D99D3DBD14342CD68AB25F171016D5512CD50FA2C
          93ABA9EFC3E803BF097D7898CA0DD7716170DD7A8C1D27830DBDCE442E3AA6E9
          C9C931E2C52814E72F38456CFF3E44D93D1CA31B39839F8A6FFC1AA40078507A
          0AC90AA22A6C632B61ACFE97709CFB035843BE03C8DE022C61B198F3846530A6
          BAA8C88C252B472A4991498E08AD13F1EBC52216BCC2ED1F3C190314F98C82A0
          9B0A42A0EF33A322243A750512C1374A5ADAE668DC03E61350E57F6202F5BDBB
          61E2C927B5EB2D2E5E5CEF59B23C667ED7AD90A44D6F414C11C89AFB62CAE548
          AA5354B30E73355644F969E8751A39E5E286793E4869DF2F8BD7C1D5285C609E
          AE329D5B5503485D4E4BD37347BC9F17D7DFF3C48E3E8F60C163B8F700017A33
          73DC9BC5877743AB749B69FA4A65555B6AE2707FD1B818C69DA570BC7393F86D
          8BD84FD7DE182C61B1982350550AA9A67B6C49F3910B19984E411C2EE9E91B78
          1E46F824415072A8551E4C3375294E2BE9D5053953D0D32B061C4181B8AEAB26
          2C189C6209728343CAF5C960ECE68B93CD1C96B8778C8A0C988E3B4B4E4B5C71
          4A5BA78920E9EDF14984404198FFB1EB17774C56F6ED4D34CE937CC4F572B0E8
          BC0BC0C9E574CD308702DF2F36450CA451CB403185A5DAF7B43271007D8973F4
          BAA1E126D1090E71E4EBDD62DB0F89B3FA1BC2F90F1CD7FB29307838901E3C29
          0D3E5520D2B81FD5E0517A22ECAAAE1437C36FC352FC2360F61E61098BC59C52
          59CE4F212C835661394254946604CA8B00702AF19C57104CCE1741E0785954E2
          211C510DA8D23A1D298270E7F7A8453D4F512CDADF418644CE686E87FC975156
          9AD8B4D9A38CD58882B0F8E569A88F8D85413B8EB0116210ECCB0DCF8B11A2B4
          1E4600E69C1698F95D9DAB0186800C1A850A6528118E1381D6D41263F5A1134F
          DE368FAB5521125E0B0DF06BBE8E3CCD47C871CDF6FB4863DBDF7D4ED5D6FBFA
          314E1BABB8170DAC17FFAE4708BD5A9C539F37FCBB468E3DEE569273FF8771B6
          81ECC7E48E2C7D9EA6BDF0CBC2EB601C1D03C7D0EB00B19D905E976061098BC5
          D34D58204561B184E5992CA7CC9FFF37C4F3DEC4115A171A99720CD152D9EC95
          3024E127925C07D5568C20505501250374B4143AFC17A101542C0C134A2755C7
          E8E606A1B064B1E060581904B19BDFD1EC54AD26099DDF7906D528A9A0E89D6B
          D39484E432FA06825182A0502DF61127B753170C02EA032D9795E7596ED373BC
          795EDE35F40032930D6A54D9742A0AA490470053D236E2DCC59E77F6C8DAE3CE
          66347837A7F4468EF815E2931DB3FD3BC1108456FE9BF973610C96C2D2DE2F80
          C3B789774BF62662098BC56144168B7E5B217484A0B860E16B01E375C0595749
          AB2A70E8F25178EC891E20994CC2B524473FCD013182A3224EAD1C16420A289F
          5F53AF57372713469B49A585BE7E705C4F99302AF6F57EF1FEB4F8B14747D048
          C2244D97646C72A8D52B13E6646594811CE9C99D1C93A05EDFD1181B2BABAE01
          F939764548C879CD7C95184868BE8716A8CF5B94E4A9ABA2D08CC78EEE731D79
          D593479441916936EEA441534524985C4619DD285EEFDFDFBF170215D8871740
          65E9DB6099FF5918741E13A4C5B337124B582C0EA3C2A252525484C556083DF3
          6F05D3CDFC0D9D51992E40A455FA2489887A3AC8A432A883228D9BC8110CF5AD
          DB164F6DDD022E4A4E2FF8D25AFEB433808C2C68256DC69F9E613BC2B04504E5
          F5C92ECBED6A1DBD174A9428F094634D1B4FAE5097403366F18AA064D0A7AD1F
          396DDCE34FEEE35C219449A28A0706A1303C62C8F5E04775727C780A194D1E17
          D57AE8984ABD4D2D0978825052A5574E373113FBD10052AF41AB7C7BFF80A001
          9390839FE3DF870B86FF4DACAB06DCDE482C61B198930A4B77D343ABAE3CC381
          312AEB890AC49EDE4D56F59D8EC5BAA044B54DFED4EB4B9F7AE9540E9162710D
          260802945C47D8D8AF5A05E407CD26888A58060EFE1971DDF5661334503EF953
          A51A629AFED125E04697A3C68A1BD53634FE278C83932BFDACEFE8E3B5D74120
          2279BD5AD6BA8D10CF3B45968753A3B19F2E574745404043524D64B69B08C69B
          54A6BB144B75CD2979BBBC1E7CC07F377222681C8E828DE465703CFA72D8191A
          32D424F90D4B6D2C61B1389868AB266D6212EF29642B848E20306093EAE2CF28
          51A04A1520FA1E4D04657D10514F197165E04FF6C9899196C087FED5479F555A
          B33674DF8FBBB57242A0B16F173C75FF3DCDE4D2582C93E5AFA5E1919B87561F
          7D793497252D88EA832E551292B44A2893E70B1814AF783FA104C19A0A68F023
          16F8DAEB80735FA380842812F056269532B57BB13AEF47A7A681E1DC27495132
          E15847E092E45812AEA92D9B9F60D365C3B99D9DD6F2531882325E0503FCB14C
          25CF8B1736A03050B4371E4B582C0E22EEED5257561B5497313B54CF708505F8
          184FB929475514F59449FAB2A684559E4159D1E775485185517AD4F4C60D79F1
          6F4D799C82B40C1F7FA2CC77D134C9E33F12CBEE102B5B140F86245539309117
          9DAB6F9AB53ECAF0593CA159353608EA34B873CBD8F66DAE224833CEC0232E2C
          1E5CAC3F8B08164098C392D60052773D208342659AFE4319141A48BDC6BACF5D
          AED4BB37F07207EDEF478EE96FE0F599BEDB1061F7CCDCBD7032FF56CA715858
          C262311BC41595EE2688B6E9E111041AE05DD2C1842A9EE889A2C2253DE9D454
          BD0289A75EFD9371F73675E5B06D75209CDA5A9C1B1A5A2222F0C6B882122A2E
          188123C80A96EC46FD703DC980DF8000BD2DE91392A58A05148A07D2944927F3
          2FA2DB4A1B3F9E89109216DB286F7CFC8BBDA3A3CD630785BAB47C0530820153
          B5BE2288D0A99E88F534B18F3AC2113D7FCD560500A6293ED35845ABCF92C9D0
          54393E4992C839F7BDFEC171EF30FAD6FE86FE36F4F90DC8A3FF16FB5DB03720
          4B582C0E3261899B0DD829A123496121ECA14E9F145D12A73EE782441C582116
          64F44A045506B9B4C67FBAC02DF908F6F2F3474E17EF6DD4319240048AA9C0D7
          356D0682C90D7D6EFE6D54E1A5A2B7E3070D89E19A1C1D55AE8A6A8CD4AEB8A8
          59B193A248017439E3EEF372EE6D4E6F2F70A456C1DC62AFD2A3A6BD6F98B3F3
          CD0A9A39299B23AE2119691550F1B2F02499A3A09A0AD31292328360EC70AA1B
          2E09E0CEE042584D9F84A5F023F1CE88BD0959C2F28CC0F7E6F0BE997A0A7557
          08D929A167384430D94C8DC107669ED65541861A0989A96C15409F87615230E2
          4FED5DC7E2FB17D6CA53D79B8EB7942F01715C5D05CF3D8CF31F0042E7E98888
          FE893E1DC9E9348064C51152F405425DE72BCDABA4F39E9C0E2A4F55AF29F7CD
          DB8D0793E9B4F273549D86EAA6C701531656D144C8AC5C9543F243C71FFF7CE6
          7AD0994B4B2391D97D69DAE79B6AA705D3A792A24A9D6E8A49CE1BB2AD7EE08F
          1EEEBF393FE0F078FFEFC2406DA738FE71F0ADDDBF252C4718EE3D8CDB3B25A6
          B6ACB6EACA910311A4F612E035D99F451540D56A818E50643556D30538AE08E8
          EA64D278E0965E228CC3F9E5CD4FF4711A4C22A4AE12E95FB10AF8BC614054E9
          C7C280D32B3DE49C4BC3CC9864F346BDCBACC921971B8F59FD99C9874435EEBC
          A5BE748800636CF7D4CE1D574D576BE02864A58031189A3F0FE61DB75E3AE16A
          24387412719CB54DFF1A7D326C7A7F24F575A3EF21A4BA7E9041C5430605ACFD
          33DB44180DF861EE6498E314687E101E2CBE0516FAD7423F6C14C761BB415BC2
          7264E04F219A43F274929653620A8B358C3BD214164A77718C778A00BF321A50
          4C4990694FD5667544BF0C522A0F543B3D1325238EEB2E1AFEAD139F57A3EC16
          D5B48F0C7095A00EF5CA141812386F1F724BD7798EF33AD0B608E060EA484C12
          DD88CDAA4AF79851EDF74CA4A7F979271037095C3D60EFEF5BB2746FAFE6B439
          08834B9AD34C04C795B7667E0BC1F8956AF5CDD48D5937ED93964C9BD65B294E
          30D5D750B4043F32D63B64D2F55CE8BCEC200665DE073FA9BD1A5EE45E23F679
          8FD84B1B962D6199BBB8E0301191ACD8D4A5AE9CD24560BA3FB7788663A25AAD
          F417F04339425652A3FBAC2E48E9CA4A7592FE81840BAE79CAEE9AA20AE81B6A
          53E55B74D334729AA3805DC889974A5390C19B52F64EE801392DB4581D34B3F9
          C374DA15C4552AA451583A6346661488B452E74ED047AD2EDA4D7585DF5DAE57
          AE619AD92A691658E501381AEB10B91C26A4AFBFD8F74A95836EDAF56156A2D2
          C86A37E9E1A9E428BE0E55C9BC54DC2A81FFE0B4DF50E6301D1E34603B1F8042
          70119C43BE606F4696B0581CA0C2F2FB5DCA8AFCDD56081D6170E51327E74F50
          23B9D0254776DE6F074B35746425EB5489BECCB9937429B6CF45B076C84B5D8F
          2D659C6D53ED8FDC4F2CA234C1A499A3A1C64EDFF7DFEDBADE17754FF7DDFB11
          AF70E93692A3CA3C1E0E6925BAD43866FA655B63519BAC8CBE99047E4094644A
          9C7784A151AE82CF9986D088F7F3C533506960390DBF63CA23D21139D5F56452
          EC4C5D9C75D7A369FAADB32DA9C05106F7396284F01CFAFBEB43016C0CD6C2F1
          78150CE18D82285A9B7F4B582CF65761812EC202566139F2D09BEF9137F0FB9A
          F9950402CA669E483937118E68A068920353522D40B47BF36C5D6DD5CD0F3B6A
          46F3338C714F6F61E0A2468DFD27D654C520718853D3A330C9C6C1D3922CF8AF
          E1C1C52FCA7BA5CB02458F25D2454C6866AF157D934012213A265529394E6D05
          A44DD0EA55FA8E4695DC43347911727F8B2502BD0BFB8099820472DF48B99E44
          76C84A16652D6D0C544A9D692A322DA7A6F36F6B586A2537B7193908389A4B7F
          811C6A3C0F3BE17418E61B006C5F224B582C0E1A6159DDF599AD103A02209F36
          45D0FA060A82E2D4AE3D0B8A0B171F0B8C2E0902DAEF39EE80086E0382BC149B
          4D6878E8163AD3405096C2B22C5D753B2483A6A8276A63BA68C04EEB65C300BD
          45ECDCE7C4AEF93A65A4581C007F2C27BE5652FA9348F5A03A91FB93DCE2DC0A
          12549EDF494A554D3B8041595007E3783938D54E7B98023B40F7F48B3C8C80D1
          4FD528BFDACBF5A8CFB724A27E0546C7F768A746A4995C3E57583734BCE4E5ED
          4DABAAB292E4D454F20D0A32A29B5E4C73C1D595D687DFAD8BFF4D887FC71147
          130CF856DA68DC4F6B95BB707FEF0EC2F81CFC1BF4619C8F0063362C5BC262B1
          BF50550A9DA2F8CCE2190FBE8F06C1BF97B76D83C2A225C0020AB57D7B1D6FE1
          E2822010F3AAA3FB96BB7DFD0B10C1C3F5A9C9F95EB174B4202B2B68A5328073
          F97E4168E454614F33B041ECC91B62013E1E946663D2A66A3A18537A44604504
          D6BB25F472C7CD7D8513F504007108D07203367CFEF321C5514E6731562F2ECA
          BD6ECD6B5EFD13AFD8B392329AF274AF236DF1A688BA7E4BA6A9273D310A9B17
          BA8E386EE7073E9BFEDB82EB6BCAAF9BC1BD070F02E6C3A073A565BEE0792C78
          2BE61DB3B8CEF8F01495234BE933CAA01E757E9624591CDFA4201E7BC5F99E12
          FB35257667B7386D1B29467B03BF3E4A1C6F4C9C9F7D2EC64F89B3B907C9141D
          C07524886650AF835FAD40BEBFCFD090F2F021D08E9385252C16B3252DED4AA1
          D51AF5C5E248515B0889DF476539CD945FAF6F26BC359D3335092C97177C85C0
          F4A38F909E63D615B0EB0D60865EC25D740D47DDE5C0A600A7CBE9883F81EBF2
          579022F874053B8CFF61E71D3FB9A93ABAA7AA5450441064B401BB7FF25FC0A6
          CA0641006D9D77C10B2F1AE9E9BD9130B48E2A8996AA99A3BA12862A4B6ED3A6
          C2E25552D1CFDD9C07A30F3D70EB03FFF1894B995FAF7239E795C8D460E0D7EA
          B0F8ACE7C3D071274ACF1AE5E1CA63E859B67CDDC0CAA32E0B6800E9533E7A42
          99912CC78E353A36F272F22BD37B2B5B9E38BBB4E698ADE2BCD6A47910C7B2C2
          ADA918F9E2581CE286554DEA5388942A9A85252C164716DA9542F209FA7C4B58
          9EA544A6FB66DFED88CA1815C160DAE7C13445ECF305F0FE5E7C61A55E2DC8E4
          469A41B540339DA1750D0545483BDE5B30FCFAA0803E83903A9743BABB9E7AF5
          67E1D71FFA47A86F780412DE2D3241D775A557CD837B766D7B497F69E066A750
          3CBE392516CDB1A0C60A1E00F39491EA093B4B927233A053C7F9D6D8C30FBC6A
          E2EE3B6BA651EC39ED0CC8AF3E1A26C7F6E9E9036750A08BDFCE1114CD044357
          39A63A862C9F99ACFEF11DE0E41F95C34E147E30DC92114B582C2C205A29747E
          EC7D8B673998ECCD239B0992701E88895F7E231E7357EA7D4AB27872E802799B
          A4E8724892817770F5BA77E66BFC069FF3095DE226CEE561DD3B3F08BFF98BCB
          80D6ABA0329C9384ADDE686C099CCAF938E77DC641E465E604595D25505AF33E
          80EC8DFE90245C7C6AE7D64F508CDE45F279BFAD2624C78283B76A259CFC8FFF
          08F99111607EA0DD3601EF6402E47534ECEC9C56D5A35784547DA8D2FD7C92E4
          4E965FE77A7B6ECEAF5F17B6560873A8FCB026CCFE015AC26261915058DAB053
          421611A525989A825D0FFF265421643223EDEDBDB57FC5AA8B294B0BD8AAE920
          DD537C741DD1E44FF3740AA3C11A4CD987EAE3C15F6A52594440AC4269C95A38
          F63DFF068FBCF7CFA5911E8086B430CE77D5FCC6EF11C77D47013B1FA6A0F354
          377986A41311156989E7A41080ED5313A37F3EB5E3A99BDCF9F39544A54D5670
          4F3F9CFC4F9F00B77F1EF81315D359158746FE5D0C72DE4C4A78AA6246338F8B
          6A3D6D233C0441406BE38F3D722BB408942C472F2E5F054E216749CBB3E97663
          87E05987EE92E4AC153EAAC4DB7BC156083DAB111206C680AC5802E5FA14D4CA
          E3305519877265EA565999435A8669C9D2DDEC014F35BD42DBDB56AA1190D89E
          F45971F3F8CF0B0538175322829D9B7821E201D41B30EFB9E7C18A3FFEFBB66B
          87F1F82963FF22C8CBB9E27B3F372B475C5158CC33FE1E256D0182D6749CF49B
          61D70AF67406F51B3749222555071D594122C01F77E547A16FE97A6053629D41
          5EF9E275493ADD376384CF52779536D9EF779FDF2CD33FDC70AC9DED60F13B66
          F46E5C9DDCC2ABD380AA53402B1361EE114736845985C5E248855447AEE8FA3D
          ABC36EBB7C79D0AA2B169DC084A0EED7A0B47819F42C5B19CAF6D20A5E44924D
          8C057760445E4013A4832B5C5B4D4FD83AD521DD742DD2C997032EF415AED9BC
          F5A133773FB565AFABEB4A2CF63F7FEC5218B9E4D5B0E7EB5F912E2366D2C6F9
          EDE2A85FC010FE53311E7F2682F571C99267A4B08FEF564D00A85175E9CAC9A1
          1458BDFA1D37E7FD47C0F9B764291432E56E48B222FE71972D83C9FBEF82C97B
          EFD07ED5A7010CAC7FCEDA552FBDF88372DA45AD802103A96AAB2AC9160554AB
          A60098AAC542C22BF3555CEFDBC3A79CC52395648D464898A9FD53B484C5E288
          C315AD5737E9B86616CB6F8AA933367FE5590C1924EB22C04D3554530B9C15BD
          E275A57CF10530E38EDA559EAAF4F2408A20A82336D140DE296B8EE7BE44CBA4
          89878F1A2EE28F3DF58BEFFD618D53C08E3BD39938245B4120888D0B03CF3909
          4EFABBF7C2234383B0E90BD788436069C3E10BE2F22904E8F301D03760C06F02
          8C4F9939A21917595580471AEF95D67B825821B1BCD8BDBAF8F93BB5DD3B3F3D
          F5F863B72E7CFE0B01EAF5343205983870DC1557C2E039CF87E9ED4F40BD3605
          AADC9130BFA55822830B567E1A02BF4FAFFC00A437B4D411D4A852D3F1DA49FA
          D174C626BC5EEA53F5CA8DACCA95C1CBC379709F5193055972982C2C61797660
          63C6EF7D0466D7C3C8F610B2E8841BF1A45F65754102D4B7101F055F678C7E08
          213C120F6E1C65697CC841EF029B9C228A2EAFAECA61F506F41FB5F68D675FF9
          CFBFAA3426FF2D284F77B62E08985B2A01097A808E8D4163721C56BDF2B5905B
          B602367CF483406BD52CC352A1C03E2D56F6D9EAE4D8D9792FFF5A41324E439E
          B74E1C723E3A6D124D4695040ECD98F285144AFEBCB73131F61BE2157E821C7C
          0370F711A928489525F5FCC8F2732F0FEBDF7525AC7CD9AB05B7A940305981C7
          3EFF39A8356A80BA4BD7E5B45E2E07A7BDEDEF3E9C1F59F8425AAB297888AA54
          1965388FBAE57857DB019391A0745AE637630E9BB1821C05E23B5EE89FF3CCF8
          BB218C348F1D5BC262098B455648B2F2AE592EB329E5778B678BBA220DCA0A25
          C83157DB918571D8CB30BF5E3CE0FF95BE7B6EF2893DEA6312551D686692A3AE
          40E2CD8E86E078DE55640FDAF4F3D7BEF65BACDEF45E7157AC82733E771DC81E
          3365EA8701BF519D8679A79D09FD9FFD12FCFA131F0126A749BC7C96110AFCC0
          FF31F5EB3FCE718472F3161C0D9C9D22D6792C42E854F1D602C6798F602639C9
          4C10E78120803542C88418B7CD7EB5761FA2FEA3EEE0C0DDA38F3EBCAB6FF55A
          C8F7751C6B4DE5BB6DF7E1DE934F83632EFFEB7039BF5A06DAA84371FE6258F7
          A6B7C193C118B87D8570FA8B88485F15CBAC2C0EBDB16768C1DF52A9DA201349
          312906A67602594AB8935384F250A71AB54FFB8C82AEBF7299D620EF60F3D4D8
          9CF8BBC12129B564C512168B6C90534037C2FE7587DEA4505C2C9E65909E259C
          53F07A7B5BC4846B03184670ADF8E12FC5EF383A35A00F78DD4FDADD5306E66A
          9BF87A74C1B1955B1250ECF6143EB7F6EDEF3C9FD6AAF7532C1371C5B61B3E60
          1C2DF8A122D89796AF84933E7495202C75284F8E01CE73489B2492C153FEC742
          7A07D23BE451B9100F85130E010B3C8738E1FD37A09455A7C683DEA1E140CE1E
          35EA0D4022087BD238588C7756B3B336591939FF4238EE5DEF01566980BF7B7B
          840CE607066015F3C0192A424E902F79FE5C8ECF7048F19310693B601A5F3090
          98E8B4577A7E4E9CF044B72188DC768FC11D0439897D688E8B9C36432143E634
          98D36485309B207CD8090B7FE8677614671FF8D11C5E9F0E373E4DDBB1987BB7
          DB66AE8708688DC969A03C00CF7580FA3520851220D22431F2A6DC4E8194015B
          84BF7B08E97954FCB636BDC437F939CD90C74252BFA778F217C7E114BC91D52F
          7FF5370579B9041CF2ABEAEE9DA1FAC2144FBF529D40AE0B39D713C15D2C2E9E
          E6C39C97031BD446EBA5186D347BB540969097A761C139E7C28217BD38CC9B69
          D42795C72E5F39960712E4E4F89D2ACEDFD72863BDBA2A1EBD974A9A9D3ED258
          E067296986F0BAAA4D4C7E7DDFA31B2A72CAC709AFC1D0D61664797AA35216FB
          E6803BB2488C5753416A560DCDAD345C495410B764C52A2C1616168794A83463
          A10FB851815CC181AA202CB8E0017509346A3E7839D9DFC583465003873BE132
          815F0FCB84E9C4F851FD4BFA7A9A0D03514AC032F993A8F2524CDD7F75EA4AE7
          293E9CF2A9545622CE6FE10D743EABD51EC25E4E3F1222503211350B03C32139
          6B0812C3DA25C69C1DDED324C637BF701114FB06003C071015B491A7076D418A
          8E16AFFF15A3B2B8A90240CCDBA645D8544118E2D37B7C66CA866ACB94D50492
          44F2903AE7098BE3C8F7F50DCF3FF934EC73C925C57155C605D92C897167501F
          1D17C72AC61FE7058799845CFFA0B8F61878C869AA4DE8F027B736A7812C5939
          58B023696161917C5A0F1140A12448486D5404866A3300C829213413F0348B73
          D954F0ECFE9185DFA78C2F8D920864505900D49E2A9DE985E877512C68228D5A
          83342A40980FB288607C9338AE5333256E0A7220933F65A5935BAD823F31DE9C
          FE390CF913723F24718220809E454B81144B613234E73CE5F4869F9F2C8EFBFF
          38E2CBDA63927EFCA67E3FDDCD1C1180B257523BB138BA2EAA3C6F2D1283E135
          0E62D7B93C1820E23899208EE131CAC4E3965A34B3FFDDC72DD824A228DC1E3A
          4C9CC54E0359C262616171C8D49466E0754A1EA0FA189060121CB77DFFCF9E47
          E1E58BBFEFBAEE77994B9647839D7A4A88689591E8CFB4EBE93E8BFF4AF23DB5
          111A656C4D7E60E8FB5EB174718612E6E68D534E7909B230FAD003D0989C0C9B
          08B69B461E4AF222C757768B962EC2151A34098BF839242119F65D5618E50BA5
          DF76BDDCF7C5DAD6C48905498C57F70BC5CE459AB15C37496C93227317671223
          3B61DF208C5FE310FC3D31E82B66DB659973044D1ED334D663FCE9612F96AC58
          C262616171A86E04FE14207F1A309F8681158BC4537B1D9A5327B35887243B08
          FD41215FFC6F8448B1930EA252383A4A8ABA2A484F46A8926C8186A0A89382E3
          CEB304933EEC901B89E3FC19CE78D0B8D5FD9755AAC0C56BF49147C3902BBB1B
          B79FF6F181064859C6DC5E875477FAFAA077ED7150AF36C4383098555A9958DE
          EDEB7D5DA1B7FF7F01E301D5540F4D49AA2591B15519C921C5F823852AC3C3A9
          A0B87A932442BCB94F189FEAE6BDEF08D271D4FE1272CF2B42BE6F5810711496
          171FDA970DAD96B05858581C12305A0DA77D9A2665B3EDA22C1FF21938AEFB6E
          922FFC3765CC4BFAA3743F41EB54111D6989138CAC96F148F3733B30774F3F48
          AB7B942379F4E9DCBCC16B4460ECEF4C8DA53297701DD5D109417C3C98DCF020
          E49D3C10E402725CED14CD4C950B40E23B92E8C8F7F2FD03C01D2CCE0F6D06F9
          7C1EF2F3E66752532223882027EEF61FF7FA8AD722D72975B6975E55D569B110
          2F39871871D1E51FA90910D52A626A022AF6796D5FDFD0F71121E7EE4F6E8A9C
          8D72BD7C6B9AE8D0BE2C2C61B1B0B0386440B0BF456052E52FB9858F128C3EA4
          0F5AAAEECA711544D54F07299EBC4D4133AED6F08CC7DEC98320C5D29F60D7FD
          312994CE9E0D3140ADCE8ACCF74560CC01112FD4D72B7EE710D07A381D121AC4
          B54CE2AA8DBA78DF0F898B972B842484D10058A30AA43408BE58CFC0D16B018A
          79396DD5ACBC92448666AB82694F1389F5FF1626E4FBC4416F97EB49F2271453
          3B92AA07358E9DE97DAE2196AA9C23DD75D0E94925C678B9EBBADFF6BCC2458C
          CEBE1A8873EB8162098B8585C5B3EFE621ADDF117209C65F7488FB4E75B0024D
          E0D2053D5D8F2055722D285419938B6E36A7D630A86172426160F0076EA1F83E
          718CF9598D0B423381B19DB2C162F6FC581296CA34D4FD7A981F94EF11C42624
          138260F000C0F39AD3498CED5FD228934EB71E76FB7ADF8C10FF99203B6753AD
          42C5954EB3C49807A43A37DD39286984465549D4F99D28896E735C11C2458778
          5FF34A3D6F94267AC872104B582C2C2C2C8C3111E17ED7F3BE2A08CB1B684405
          51998065794257FBB1E8D7C733FE0B0692A3275794512F3F38FC5EC7CDDDE920
          F21A7C90936991764A081D70EE8BD8D78B7B86876EEF5DBAFCEA8006BDEAFE3F
          71F287942441AF482555116AEC33A42291A05455A8B19B75F3DCF4CC1BF9829B
          CF7FA039256761098B85858545E2E19DCB5C9725A5F90B6FE184FC2E8D3D2913
          A5891880BA3BB36ACA40474EB8E6491F6948499CF4F058158CEA093F4A6A9A8D
          0BD10905CFBBDEF3BC9B39E267CFE5732348D07389E37C2D97CBDF248EF58C80
          730D41030371D04DCDE8CEA1093AF2089AF38C32109DB663710085C1817F280C
          963EC928B3ACC512160B0B0B8B6EB6C2C02D968E27F9FC6D8890B3A201851B94
          13C8F03968141604266F0F7DCE8C22C8699373C1B85EDA24032F4508FF942374
          8338F68BE4FDB39D0C7BD86EE03C346C73C5EB771122D713C7BB1D307E398D1C
          ABBE6F93DA904F4B8740EF6F0386B1D4F9E3E8A6924C8429BA9D3091D6256F29
          0ECDBF1171E8B15D908F6C58A75B0B0B8B4C681640A01716FBFBAE17817A018F
          38BCC6F321E24FF44DB3358E10E82DE0415959A40A56D1EFCE5A87D0FCAC6A15
          90F857FEF06AC7CDBD1AF70DDE5D5ABEFC7318E19BC47B3B387D7A2DE1C59EAC
          710A85DF758AC537704027348B5374EA53F731A86CF34D4A988AB4E872594C86
          803A728A62ED15F44A0D5178C0C8DF49BEF80AC6D8901893370862B9756EFF25
          5931C812160B0B8BFD4680BCF4DBAC8B8A3D8B8A5F6C92159EA29E24A75CA264
          2509AA0C8CEA65A852D9499B7A42CA209842D394013C4C8E75DCD37A57AE390D
          1A8D0F00A3DF298ECCFBB6F8E487C0D89E70AB07FF611F61848E22089DEBE49C
          97E5B0FB7C84705355E069D33769534226A7E16EEF14D4D5C4926BCE559B58F0
          2EDB7D532B056ED817D53590DCAEBC1E1D84CFA51EBCCFF7EB6F9AAB134438CC
          A3663326831696B0585858CC96B01037CBD7CA8E035FF738BC952A5509AE0C5E
          694A49928098C988BA0370DA937D74FD9D4ED09051594806FD90B4D100904346
          C41A2FEB3F66F56582B8ECEA396AED43C4731FE43EFF9108DC1B18806C993C9A
          A0099C2B9D575BEFC976D8F3C56BA987C999DC25270146C738E01C2BD659688F
          599238EAC8184F3D9EEEF7A20D0FD50423F99DCE3AE8CC796D2B6BDC48A6E24D
          2C750A1AD5AA148218610C134F6EFC9F46B90C680E1216DA1AB3D28AE5201B75
          DB126B4B582C2C2CF60339B798ED119FC3550CC39B4404EA493E11CFE6293E1A
          D8F40A88AA8BB34A09D06D4BBD4E9A9A38AAAB206A37EB8B9541CBDF9B53420B
          BCBEFE05E231FADC5C2EFF9754724104FB30CF3D8E10DEC1118C8A6F4F71826A
          F94231408448D544B0455E108FDD3D0491FEFCD0BC0588C01AF13C3ECC01E5E5
          AA9D2E02408DC4CC4418518A62018AF38234E70B294AA1D53E396A1FB558D54F
          8CA852659E91BE0BB793CBC39E5FDD77DB5DEF7DE7AD407D9893E999E2FAC08B
          16C1D91FFD244011B7AF170B4B582C2C2C66752F9D9ECCFAD52DDC753F9ECB15
          DE4B53498A8A1020050148BA9E26BB01A7A90569E5B4AAFD0050F9B674D4179D
          219D8ED4B49661B42BE8228723BE00105910D943B191BC5384A6836B7379D9EB
          262427B91C449D6855C4CE34158622E308A04AC0D527CA120329EC56A692E3C4
          0DA43199489B5468A23936FA6B243E4505E13C4B7EE1A2F79CF0B7EF93ED2160
          AE5101D222B68F7DE5DAD02C30676F3996B0585858EC1F76EFDE96E97B6173C3
          5CFE13234B56FF3941683E4D7952D79181EEA920BDF48F8C4A4B2268A5A839DD
          EBE958CD270914352A2CDD09A25988916E9A6CA6643A11CCDB04C6BC2E3090AF
          6EE502B4A441CED270A453BDD4067C345639A5AF303211599D7BB19EF4EAA6A7
          E4FE38AE07D5BD7BBEF5E44F6FBBD3CDCD452A80A021CE75FFC842282E5C0C88
          5965C512160B0B8BFD575846E667FE6E85B3898946E59F86F23D9F006EF255D1
          F58FE1B127F32CCA899E18D119D2C20D8A4B525DD04D7B6457729225BE4D12A0
          4B4E8514158A7791B0389942064522FE6FB63C9E4E5511C408A52EA747451C4D
          89CF2A85C4942794AC6422896B257A5EA5F91EAF56AB4FFDECF677D31D63611E
          CB9CA32BBC39D6D3A39361EB055B2564098B8585C501A030ABAA05023E6DFC47
          40FDD710EC3C373DDF40E7D1D255E5213B3D132734038B063955C5489264649B
          9EE20AB2129F628927F59A55123509E84E204DF3A8511317AA384E6ACCDBC912
          04D3088829F9981BB6C753D49E4EA5901C5B86504C45D2ED27572A609129214C
          6092FA1FA92E9EF790B364DE9C2403B22268EA9EBBC00D8835E5B584C5C2C2E2
          8015967A6D763761CE1B9394BFB5BF6FF86752958F3E15432429354E2250D8AB
          0743337F0355C5EFF704BEFFF5C99D4F1C3FB07CD51FB5F337A8513D30055E5D
          F04590CD3FC46C62A6AF8EE119D421D0AC574D6892D5325CE145625295D4C44A
          4724A9D2C7C5A48880721B4499381BB673004EF9DB0102C15BF0EF0982779AF8
          BCA43E6F6675CB11EBAA4F4D3CBE73EBA68FBABD25C0686EB2013C6F1EB83B9E
          02D8BEDBDE682C61B1B0B03860C2D2985D89A52F8B621AD55F149DE9ABDD62CF
          5B3B4FCC2A09BF6BBA411215CEEA4179FA37E038D73BAE777340830D729947AF
          FF023EE52FFE66D8ED1F7A59B7D292EE449B963B8152D41E1E2102541BFC5555
          4AA675EAAA714C39363CA6AA241D6569EAB1438C5C71835A649AC63327DD9AD4
          9D6E45A5BDBF8EEBC2F8BE7D1F19DFBDFB13CBD6AC96F5DBFF560FD89A1CE117
          22E25CCA113A419217D4D53C5237BD15564917F2507B72DB7B835F6EA812715D
          CDB5226179ECB56A15E8C23EF18B95562C61B1B0B0382868ECAACE7A998031D8
          3B091F58784CCF25E2E6BC9C2A3D343A153F0D80FBD8C4F88DF9DE9EFF9DDCBA
          E9516F703EF42C5824F88B0F88615870FA6BD9F80EF207FDB9DA771DD739AB93
          1E331B47D6B47E39281100DB419DA696689BAA614CDFD705F6EE3C0D93520331
          C2C0415F51A32B4386943149AA5944519D440D667EF1F7BAAF03CFCBC3DE07EF
          BFE6EE0F5FF9AEFCF0202CFEA74F822BBD7F18DF08887E0A10F914C27C15E7EC
          62C6E15508E1B35A25DF40C575169FA6C382FC4C3CB6E186A92D5BBF3CB87AD5
          1CFC8B6A567D8D2C59013B766C82F2DEEDF62663098B8585C5C1C0C21356ECD7
          7288B37D0D27786B917B5F875642A10C6AE28939EC3B245E5B29C2B7D4F68E5D
          878BEE1DF5A9719A2F15653BE18E848F45C89E9E8627FEEB2350DFB7B73C72FA
          49979EFA4F1FFF31AD5557721A555ACC96FC49B5248B2F0C552A1C69813DFA79
          27C9966BF6579708CB53F633BA0FFA0ECADC488ACC9545F1A4E5F8949CEAD891
          823C45095558DC2D5827CEE5800CF47D9356A6DF1C3CFE2834A61686D7067312
          FBBA9938F893638F3DFE49DC533AB577DEC24B1BF5DA454EA9E718DA95DCDDBA
          6C763CF1D8836FDFFDE8C3E2F2997B89B6826AC9CA2538FA989301AD59656F30
          96B05858581C2CDCF7B10FECF7B28CF36FACBBF015FFBAF0E4D3FFBA11346448
          79A8BC63DB77CAB4F1BDFE42EF9DEEE0FC71DA0800E7492B7725163AC5CDDDAF
          55A1BEF97E90CD04C71EF1B64C6C78E8E585E1919BDD5269118D9481A63DD9EB
          4A6601B224E366AB624992186A544300CCD358BAA922642065D0A58440C278CD
          4CB854AD0E4C792BEA6A2EAA18DB782590242BA30FDC7FCBAE3B7FF6FACA139B
          C28F69A30EDCF7C56785E4B524D9889C0E64EC9EEAC4D83DE3DBB7BE67C1734E
          7E2E70FA22719D5C2CD6FD1C71C1A1D1A93D7FD87BD2493B864F3D0DE69A0DBF
          B4DF47E2B8F7DEFF2B80A7F6850D2A2D2C61B1B0B03848985CB67CFF17E60C36
          ECDEF2AE9ED155BFF0F7EC7EBCFF98B5BF2E6FDBEA574B05E8F70A6140312644
          3A2E549FDA1A9215F9357FCB26B8FDB597FC72F8FC175F74E687AFBA096AB525
          3492D3D1ADA0987230D2026F3A1950F7B6814C2A8C9AC42045B0371125537595
          CAB5378DA8A5A92DBAEFCEBEDA491AB805987DF7FE6F5CFFAACAB76E2ACF7C54
          9E06EAD79BE44475C4A8593526AF19F19D8A20283F449CFD506CF94A0739274D
          9727E7DD79DF1DB7BA8C039F836537545CC703F3E7435FA439A885252C161616
          070568FEFCFD5E5626485631AED76B951BF8E464186C1069AA29322865299846
          3C4A2CC275EED87E1F65F46211DCBF2D02FDE2E813BC2E20C7F328BA0DE27401
          5C17E8B3047B504CA7A89C60758EB5D1C458BD5F499C4C21CDF64DC765AA544A
          1B079DC2A4F75DF103FF8E095E794DC5C1E5A6928666DA18F0FDABE8910CE0DE
          D070CFF78109C242E764D3200AAE1FD89B8A252C1616168784B0B0FD7F1A0C83
          1026CD80B41FC65DE11375ABAF4A376FE1E2295CE097E2B3F328C1B788BD5C1D
          0DFCA6409BF6BD7867E134C5451D9429A83C5BF45326C9E99CAC8A8F4AF10048
          F6FD81592828DDFBA1CAB55177604EB60648265B33CE7F52AB975F46F3DE38F8
          8DCE75223F0B7C8003ADE991BE3D08F697F81C5248921E205B1564098B8585C5
          918746038A4B97C18A375EDE4AA86C3E89F72C590A34A032006CC01C3E213EFB
          F7F4691E95019C49650083CA800C0A473C29354984CC24A49BD4C4EDEE01CC0E
          B4A68683AA291CB5D36FF73E991D74214565EA9EAE6B9E511AF87F2C58EC785E
          AC78CDF3CE83C6E0C2E6144F98849B17FCD6B3DD8A2D2C61B1B0B078E6403EB5
          FB2C80E292C570DC5BFE3A1A062903BF5A69FD8697B55AC8417A0F1F5D9E0868
          148AB4A0AE6EE2A76F1298659A29AD7A493795A4260E44DB815A57E5639AFE52
          9314AA2DE1E611850521E456AAE5136BB5F263B26BF2C87127029C745A9704C1
          61BA568192EB42D8A8DAC2C212160B0B8BB90D0EB5601AEA4C9012396BD0184B
          7C43565860440673EEC0653AA543D7A4505F8EAC6B98A85A07D206779AA10C5A
          DF98D1D40D5AA7DCA8DA14C4A79F4C8D17D39492E8E7C90EC9BAE9B128A111E7
          0C157A7AFF02E7F08D4A52264DD4DC0204E083C3B1FD33B0B084C5C2C262AE02
          814B0894A77D11E76AE113B716E2B362AF7BB9E3E14501D7131253B26AD2BB05
          6530898B077DB53A63B6DF87149759482113666336BD72840C448C6B885E725B
          5499ABC253D49AE6721E769E8FBDE21988C39D46CA2ACEA93C43E17411D82922
          0B4B582C2C2CE61068A3017B5C043B6B6350AC94B5DF0B3883815C6164A467E4
          1D51ABF66410A5CAA01E6F24389BEED0260F94B4D269557007CDFE47B71D5764
          C80CF1512D9FD5B7258DD480413D49EB80DDDECFEE04E770FD888273C544A376
          89CC5B31059A407CBF20084B8FE7D93EC61696B05858581C7E84E5CE32AB163B
          B07070312C04309A6AC940471CE715E2F17B5ED3E9549DB3A16F06D8C9AB2089
          291CA4210026E201198277B2496332BF846B49525C91894EC99815A068622E18
          F65747FC74A42D6DFA48EDE6EB025CCCB87F1C65F4C1B46BA32A96C9730772C8
          86240B4B582C2C2C0E3761A9D7807A082AF52920EDF267A40F800E718BC542CF
          DB38E731A5243AD5A2AE70E90EF2F1E98DB4AEC6DD813B8DACA8540953134230
          2837C6D10373C2AC4E05E229EB349C04EDF451DC6326A9DAD0E6226461A1FFCD
          94B1BFC8727DC8F1611CCB760F315F1E0B0B4B582C2C2C9E2EB2E2BA50DEFA38
          341AB54C56E5525DC98FCC7F65E1A875913E32D1409BA682A8CA8401F49D924D
          813C9BFF886A1BA636017A55C45462AD265B6A3F165DDFA374D75FA2ED7314ED
          C84D6264323AFEEC32BFEA7F44849A2D3CC37C0F92694D6E3F7885922C6EB77F
          381696B05858583C3DC058DC621C0CCE500FF42D3C055C84533A08B70217654E
          8EE3B706A1A15D9680AE0FE6EA2919A4211C3C83BA115516B2110550AA19FAC6
          8B6A57DBE8F1A4ED6B7C7FB358F4777BC26473CBA586668C8890DEA036F5575B
          EEBBFF1D18410A49EAC0DDE3C1C8A261FB076461098B8585C5D37073C104C69E
          DC047BEFFD19D4A90FD9A63E006A9CC1CAD5EB5EB66CDD09279380299C649131
          A0ABFD58E28A469A595BA78B71B45F8FDE7C4DAD0299823D68541F04FA9C12AE
          A886CA4A90745D982152654540658AA7AE744A7AD1C4942CC621D797FB93F947
          2DF877F1C693992F1ED981D9CB815B2A357399EC9F9385252C1616168702B2C3
          322914A0BF7710FA172C81D958B1CB9C15AFB7EF4F6433449E29B74317F893BF
          AB7D45F444826A8CDCD4EB4F0BF026C506203ED54512D33C59AA824CEBD7919C
          A84A4413DBD39765EBC94AF37D792E8997EB1B3C7AED1B3182F7C32CEA80E435
          9417D70091229BCC79B2334496B0D821B0B0B038989009936EA10485429F0856
          F966E8CA18A764BA8AEB3A677AF9DC05326099158B2C84010CA4041908902AB8
          9B9A26EACCDF745E2A3C753F75954FE96D0420A39293652CD31C7111A4272E0B
          34FC37ECFEE52357D15A638ACFA276592A2BB237CFD0BAA5E00E0D37DB1F5A58
          C26261616171C0600C02EA43DFB1C74253219925D9910FD384FCAD580F4E4E39
          A8D4110075FF9CA42A212BAAC5137F45FC545413136408CC594CDF3ADF41BC4D
          D278065548A55EF00C4A8D8A78984898EA3B896D4E02C67D10698689528E816B
          C85087848A75AEEA3D66E9EB1B7EED6A34CBC68072F9C07180F90D28929CFD1B
          B384C5C2C2E259CD3368B0FF0B8B8842110E0356A3A707266A55607CF68FC298
          CB244DBCDE43B9DFE9A80C3A5BFA2CEA42F3B390A850E6531ABC8323F47F98E0
          D761C06F108462459CB4106DDF1E00BD015CA7F3727B3AA54356543D8AD2BC5F
          C0703C2A1502192A91CC09C3CDF1C1829FD00780C1677940BFE137AA7F9CEBEF
          7F4FD381388BE95DBCC752B24BB6249E5E4FCF9BEB35F87F82B0D4674B627DC9
          5A1A7528165A84455CAF54EC1F3B145D91B1B83A906D1960098B8585C59CC49A
          E547EDF7B2D2A9D4230E1406E741CFB2D5E20DBA5FEB09FD561AB53F153FBAD4
          98879185AC4442DE28AD942FADD72ADF2D0CCA6905F6DE80A2AB00B38B88432E
          471C9E8F0911019029ACF4BBC3A62917258BCF0A6A258F2283778C8E2821AD42
          428D4A4877526DE77382894C66A510F8DF6A4C8C5FCD07FA7F22585683C88693
          931357A29CFBB0EBE63EE7205CE826431D233E95FF4DF738746DABF55D8CF1FA
          1EA7EF223FE05FDB9F245AB98E6A8D439DB9307F6415103E9BA9B0EC64A55299
          8089F2A8252D96B0585858CC45149FDC72C0EBD8FEF846D8DFCC48F930EF092C
          78C1F917A15CAE95AB90B4A1D757A5A8BD5810E7A38DF2E425E2A39FC4363911
          70761D04C175625B2F8672F066A754BA4846553EA30EA597FE9A3FD7F9C264F1
          5589AB286965C626A2D5555984C3CE3D63E5BDBB6FC05EFE735E3E776F50AF89
          F7FA2364A6562D5F8F11A9BA5EEECB62A942BB35029D495EEEF8B4A8A7EDDAFB
          DD297B964EC71CD15708C2F8B5FDB94ADAF4A1E4E6E1B7D69E0CFC10882B0E71
          61CBE6076062724F588E6F61098B8585C51CC36F3E78E561DF074C48307CC2E9
          57E6162EF824203AD4F18BEBAE66C916A5649E8458FE09CEE9A59C0677228DE5
          7B188811B975DF638FDE3AB866CDE99EE3FE1929165F2202F32213695113A72C
          9547BA9E3DAAEFA8DC7C75953B6665A79957C31EA413D5FFA5FDA5FF57D9BD73
          8B54C4A05800554E891BB651806F54AAF5573808FD17C9BB239D7E4E6886B444
          CBAC93C745BBF28768BDF12BC721FFE2950E06113834D9B7C461E038B61CC912
          160B0B8B390B840E6FDBB9B06BAFE7B1BA1F5C07637B7EEDE54BD7A15CFEB738
          E760EA0CACB3C16FF8FE26CAE88582803C1AF6304A0B54B26C96067751DFBF0B
          F5F61E4528BD47BCDD9FF4808118815099CFA5F9ADA8159A64C7E9B4B2656E50
          5750845C3518BB85068D97D7F6EEAD97FA4BE1F1A69E73F19DFAE8F8FF3568FD
          77FA572DFF3F1A040627377DB7EB568ECC572ABB775D5E9CBF60129CB9EBAA22
          93A591E52B731656F3B2B0B0984377242C9EC4AB0FD4ABB50B58107C1DA16652
          68F632E1701DBF6C54A62EA08DEAA328431E42A8C6500AE59D3B6072E776987E
          EAC95D94315F4F389249C0349590A47755A65AB2134FD09D3DB914246E170152
          CF0F0E355B2330063C4B8B04144E03DDCD38BB506C776BE75C00E85B18744DE1
          611234C6C73F509E9ABE146405928585252C161616470AC227720EBBABB5F2CB
          EBF5DA9B2108EAD140195553667E765C60D5CA77A7F7ED3B8F13B2294B60C792
          28040DF0962D809ACBA0EA71982E8FBB9C37CBAABB03334975978DAA25668525
          AA1C1123C1892F1F7F3F9383B02B7353BCBE12202E48604F2F10CFCB445A5A42
          CCDDD5C9E973FD4AF931792E48E41CA854A1F0F72D75DAB8D0F76B576216F0C3
          ADE25958C2626161617168880B21501EDDFDE9D14D9BCE17D1EE01624A4A15C1
          B8BC7BE797FD7AE5F7985F1F4F0F8E28B47C97054DB4C1C12B0DC3D092636178
          E95AE85B720CC698200A2CA2E0441510B3891C4D10AAB842125DBE539E8B1464
          C734E503A036818B962423C932702BF78431E85DB21CDC8141D9B32913699115
          33D56A6563636AE22580F1FD803BA1A33BE1B639EED2929F7D9353FF799405B7
          C9F71858B26271E0B0392C16161673163298B286FFB346AD728EE7E5FE451080
          3FA233D15A100E14364A8480C355539B36BEA3B47205CF568E4AC3763532BFC5
          2DB82A4501D45E293A22A19E0A9AA990E1681C71F86A683633B395D02146EE03
          628D1AE2327942102FF1DDF9183B2FE548B50FF12AA8E631A8F72DA2F4201A59
          AEF939270E7883F34273B6B434D6908C60B4499C8FDFAE9427AFEF19183A9732
          16D92F16F8E238F1C768C03ECCDD4350766C61098B858585C55C056E06E471F1
          D4FEC70CA1FF41803F2E82F9F1A14119C2DC2F4FBFD3AF071F47AE9B8D04C9C4
          0C2C833951C653A24C9689570275140FD2E53DA24ABE95BBCF7CFE05C6E1ED4E
          AEE5FCDA7D7CE27BB5DA343022D6E5E405F9229073C943E2ED754972D2BD9FF2
          F8E3C429FAFB8C270A82088DEB2EC022F95C58571ED22264F6D091FBDA68D477
          EDDDF0F0C5C5D3CFBC562C7149F318B14CE4BD65DF03BFFE9BDE55C73CC21DD7
          5EB81607FF5E6087C0C2C2E219A4B87C37F0D9F338A51F15BF3D59DDB1F70FA9
          202B2CF541BE39A523A7993091C9A0C617D27B7C24A75F6844B789121C12122E
          1C8CDE77E797B67EFFDB104C4D87D3577130D474C7E5E27F934100D5A0F19FED
          4ED1ED7F3BEEB9BA468E5CAB0C09B223EB8240F50A2B63C4F6B13876ECE2D041
          36357010529E981CFB7D4ED9C71DE23C32B56DCB9F96C7477F4790CA47EC556A
          6115160B0B0B8B66F09D104FF957D4A6C73FE8D7F1945BC8A7CE3CF0A602D00C
          FCD9F24C91AA5C9A2A540C5597E56E4251F7FD5BC9FAE37ED52B365C751CF018
          D31C17024710AA2112AA13D752E0EF12EF2E523BCA46951D75997364FF11CB62
          EA27C629D7D7075556072FFDDB82DBB07788C37AB73F39D5C0D2361FDB67600B
          ABB058585858C464093A85B3549E300E5EBE0885FEA1F0E766A9B4F1859204A1
          6349AFB7D16FBE28743BC2CA4D069F2E7A2E14F31EB848762E08D4554422D83B
          C469AB3C6388F36B3A0424B94DAA51808882BD71A45758222FF1AD82202C7876
          BDA01A90C5D7C5C2C212160B0B8B67A9D692F17BBC35E58113E4C2F042F175A8
          D69BCC67891318FE28A78D1F31DE90892CE08B7F7DDA48900D1C2A4004021E00
          6FBD02EE5F4F241988EC577C9B69A67608666BD326139D3DAF00D812108B3906
          3B2564616171E43E91C9F91FE9CF823B9531D99950B284992AADF55564A1492A
          38A757795EBE9C2405545022D2F96E9083C077224446AC7D032FB16FB81E7E15
          E7AAC4DAF83E72C3BF622832F20F798C5EB1279C42A336485858C26261616171
          E821935973859ED9B6646CC919AAAA209DAF4AD2E00D71B69DFAF51BA8D2F00E
          03F10ACD6503C9A9BC26B98AD21A7028FF77F1F6ABBA4910683B594382607555
          2D216B396F61098B858585C51C465B599845775FC564888E18A8F24B9AFD7382
          5AE333D3E5CA846A6A459AD6F5943078C502D4AB01040D9E989FA7E21DEEF33B
          DC1CFF11C6E8859DBE4ACAA3049502D3CCBB099373F16CBB1B333B236461098B
          858585C5D383902CF0594B0B5D62445A5FA0F8EF2DE2C058AD4EEB5F849CA3CC
          B491CA479956016AE2738A81B8EA9BB360198CD7F8C77101BD9026084A73DB4D
          1545EF02DC527866ADB0488F3B4F4E0B05569AB1B084C5C2C2C2E2D09295FD73
          5A454A91254E4A12EF77BC5728673FAE22D822CB8403C386EAB40684E8F7B155
          AB731BE2F94D0891D5AA69285DD9732C8F65F605168C43B1AF00DC274019B317
          9485252C1616161607133280BBB2EA86E0705A83CF9AB484C6715826E946BD4E
          4C6A4B8724C8ED073EFA543FEA354EABC8391A2A8B808C9426444D90874F1302
          1FA39A6D4A447D621209C3B3262C72DACA2D14000A454B582C2C61B1B0B0B038
          D8E09C41AED40B616743466795708BC3E91C2A1DEF1926444150404154204A68
          187F98D6E8AD7226CAC412244D4144100187034DD9AF6AA3F6A552BEF47704A1
          A1A4595CB46F918ACC80C2082F1B6969ADC7E6B35858C2626161617128488B6C
          BCC3669DBEC20549A98EEED94EA7A6CEEB3F66ED4B98EF9F05089F213E1A90F4
          A5AD9824CB8C9B9C40FABD70CCAF767AC1E7293E263824192E20EE65B911EFF6
          317CD105787B347BB83D0D85C24690382CA50ED59040ECE22318D89D62A7EFA2
          8CFD9861BADFE3A96A27606161098B858585C5E1253B9CD1E06EC6F9DD8C5140
          04168BB7D75286CE67D45F2F48C229D87517497A13272BB4517F6A74CF8E2F75
          5C71F508A7AE04EF21D227269559717011F9149937F297E0385E348116C9299B
          AAA02A8F07B5FA3DE0E46F2798FF1C017B94631C488184DBBC590B4B582C2C2C
          2C8E40D2125547B60B0EB31D38FE417D7A02E8D8645F61E5AAE598C3311823A9
          BE2CE3882F16C46360F7DD777E6AE3CF7F32259598B49B6B2088C6E0FA636160
          F90AA0816FFCAEF4682923D89C1FE8FB57D771CF619C4E09A2B24310972728E6
          B737F6EDDE44CBE5279C622F25250F20377B875B0B8BB90EC42DF5B6B0B0B0B0
          B0B0B084C5C2C2C2C2C2C2C2C212160B0B0B0B0B0B0B4B582C2C2C2C2C2C2C2C
          2C61B1B0B0B0B0B0B0B0B084C5C2C2C2C2C2C2C212160B0B0B0B0B0B0B0B4B58
          2C2C2C2C2C2C2C2C61B1A36061616161616161098B8585858585858585252C16
          1616161616164734FEBF000300B031890C83AF8C0D0000000049454E44AE4260
          82}
        ExplicitLeft = 22
        ExplicitTop = 11
        ExplicitWidth = 556
        ExplicitHeight = 324
      end
    end
    object PageSheet5: TPageSheet
      Left = 0
      Top = 0
      Width = 607
      Height = 374
      Caption = 'PageSheet5'
      Color = clWhite
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 396
      object Label17: TLabel
        Left = 312
        Top = 138
        Width = 127
        Height = 13
        Caption = 'Email Para Remetente NFe'
      end
      object Label36: TLabel
        Left = 312
        Top = 18
        Width = 93
        Height = 13
        Caption = 'Mensagem do Email'
      end
      object Label32: TLabel
        Left = 212
        Top = 18
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object Label31: TLabel
        Left = 12
        Top = 18
        Width = 69
        Height = 13
        Caption = 'Servidor SMTP'
      end
      object Label33: TLabel
        Left = 12
        Top = 61
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label34: TLabel
        Left = 137
        Top = 59
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label35: TLabel
        Left = 10
        Top = 104
        Width = 122
        Height = 13
        Caption = 'Assunto do email enviado'
      end
      object edtnfe: TEdit
        Left = 308
        Top = 154
        Width = 282
        Height = 21
        TabOrder = 0
      end
      object mmEmailMsg: TMemo
        Left = 308
        Top = 34
        Width = 282
        Height = 99
        TabOrder = 1
      end
      object edtSmtpPort: TEdit
        Left = 212
        Top = 34
        Width = 51
        Height = 21
        TabOrder = 2
      end
      object edtSmtpHost: TEdit
        Left = 10
        Top = 34
        Width = 193
        Height = 21
        TabOrder = 3
      end
      object edtSmtpUser: TEdit
        Left = 10
        Top = 77
        Width = 120
        Height = 21
        TabOrder = 4
      end
      object edtSmtpPass: TEdit
        Left = 136
        Top = 77
        Width = 120
        Height = 21
        PasswordChar = '*'
        TabOrder = 5
      end
      object edtEmailAssunto: TEdit
        Left = 10
        Top = 124
        Width = 249
        Height = 21
        TabOrder = 6
      end
      object cbEmailSSL: TCheckBox
        Left = 10
        Top = 151
        Width = 167
        Height = 17
        Caption = 'SMTP exige conex'#227'o segura'
        TabOrder = 7
      end
      object cbEmailTSL: TCheckBox
        Left = 10
        Top = 167
        Width = 167
        Height = 17
        Caption = 'SMTP exige conex'#227'o TSL'
        TabOrder = 8
      end
      object edtSSL: TEdit
        Left = 183
        Top = 162
        Width = 49
        Height = 21
        TabOrder = 9
        Text = 'edtSSL'
        Visible = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 1181
    object bttconf001: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 100
      Height = 51
      Align = alLeft
      Caption = 'Principal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        1F900000046B4944415478DAC4974F881C5510C67FF5FACFECF6CCECECBA6618
        4224EB2111CF12444FC1A024064F210611A217039AA0064505A36B5014954413
        10CD41104408EA4509040FC68B78F0905C3C28A8AC494CB24C5C26D999D99DE9
        EE571EA67776BAB7673789070BFAD0D555AFDEABFADE57D5A2AAFC1FE2023C7A
        F83000812D222A4C394D66E2129FBDF942D65E9E78FDE80362632FA534469BA6
        F903D01DD40771C09D4E9BBFE2221B9D565F3F3D3DDD0B3C4C9E7CE37D8852AA
        03A81C4724A554558A71F128D0DFA9DF8DE9F86B9C7835D17490CD32CC0ED97C
        33A9366B19088289C2A5D7DA7043AD218A3821A2B71ED8AC5428C82A8195DA90
        80E646955FCEC4C57F8077064EB80E3821CAFDC333C306E06B602A5155809766
        E2E205E0A76C59B335DE09BA3B39C22BC47210F8565DEFA164A1044C96B0D301
        C02B1410E9EF7F17B1BB13F8A6EB3B3B04C67AC960FD4C54DAEF5AF7585E605F
        940F321B292C6F045AD71BB4AE3508BB9D9491E7172856C6298E8D038C20BA27
        0703878193C06C3FD545028A51F13960535E1AE328E4EAA50B34EAB32B820284
        DD0E8DFA2C572F5D205E0662562A9109DF8D254ED5B886F05A9EB5B531F58BE7
        E92CB4D7446A67A14DFDE279AC8D8701612FF4706200C4CABD4039CFB6519F25
        8EA31BBE9F711CD1A8CF0EC5A035F18E7EE0A6699D16D1233D1C2CCB62BBC542
        733E6F81332A1C54E1207026FB71A139CF62BB954732A74C141D1F4C75177851
        C53C08FCDD4F5D8E332AEF01DB800F93675BA24BA73DEDBB20AACF008F00F5BC
        7BFCBDA08F2FBD743B8BD9F566E7CA7268AEB4EC365732CC95E5D0125A737D95
        69E0E35C02516B10ABA89A8941B4A60A249C034280A81B1175FBB50F936FE4FA
        1ACA6A0419A03617A06403AC51340CC173AE19EDEDC775BDD4020A1BC7E7631C
        917EFF9B6C5A6255D4C8C61433B9039DD332EFBA96D0BAE0FAB9943969D4ECEF
        1343A19045C7DDC0F61CB06D4FBE91EB2BECA647A9B95CBDD3B8DE2FC0AE3E95
        15465792BBC849605FC2E335605FA24B49C6774B149BB309285381F788722ADB
        F682B10AAEB7A29B57144E789E7BD9F3DCCB0A2706791CC0F57C82B14AD66F9D
        A8FD0ED8D20FAC60736FBB0813D5DA4DCF5313D51A22B92383636D2C8327FE4A
        851FF32CFD91D1DE4266CD99013186896A0D7F647448CFD62F809FFB81AD3AA8
        9A671972F2A05CA1BA618AC2683034686134A0BA618AA05C1966D2B2EABE0CDE
        8AB6780EE55384A7B22404145CCFE3F6F57710855DBA9D45C28420BCC2087E61
        248B854EAFA5A6F2F1F6202B1A0027EAE0441D240E5F051AC9D5390B3C86D31A
        47E5F925BDEBF904A5312A93552A935582D2D860D04B88ECF59DD66D204F037F
        2439FEB3DCF08F54AEBB54AEBBB9F7B88E23F709BA15B82769DC8BC031DF914D
        C0B5554AFC5BE00477019F036DE09329A7B5D98A3C2CD6D99A6461D5F1F6D7E4
        C9CA55908BA0C38AF83BD0CCB673E0F42D8DB74917A51B5BC05E5965CABCD28E
        DA606FEC9768CD819E2885E42BC8B0AB447F53A12DFEC7C08EF406D765798BD8
        CE67D94195308ADC8F56FA0F5FFADF0100269C93FD4DAB78A90000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bttconf001Click
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
      ExplicitLeft = 23
      ExplicitTop = 4
      ExplicitHeight = 45
    end
    object bttconf002: TAdvGlowButton
      Left = 100
      Top = 0
      Width = 196
      Height = 51
      Align = alLeft
      Caption = 'Formas de Pagamento / TEF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000068E4944415478DAE4975B8C556719869FFFB0D6DAE73D330C7B2887
        61B050445AD3928648A9A6D88BC66834B1A246E5C6266A9478E581DA6AA5694C
        F070556B895AEA854D5A538C179A366A6A6A854E6B02365850CB491C6698C39E
        D9B3CFEBF47F5EEC618641E4C218B97025EB6AADF5BFDFE17DBFF75B4A44B811
        97E6065D370CD8569E7AF47740F17F8CDBB0CAF7EFB9F6B3FF56EFD5B533B6AB
        56CC01FD4BAF291CC25C12123B8756EA3F82732258AD19B0011A852C4F64CE62
        CCB20F52A0EB12BE77CBDD6C2BAE643E0E97D5402B45D17894AD0FC07C12D148
        639CC8B2DCCA5EC0F1C6340F9D7B9D406BF45574B25C212705349398412FE0A3
        831B18CC97214E96608D070A2E34AA8CD6A7007857A9C2F0C0DA5E5469BC545A
        CF724B50E43B178E331D75295B7F59CEF64A500734E32E1F1E1C61C066986F37
        49C42140561B0297F2D8F9633C397192A9B00592B22228B077CDAD3CBC7E1BA1
        4BE9B81405D858336033ECEA5BCBA1F13F53303E462D316731FF964B98E836B8
        B33CC43746EEC421C4E2003040DE063C78EE75F69F1B653AEE50F6328CE4FA71
        08FBCF8EF2E0D9D7C8DB80CB8D8BC511E3F8FAFA6DECE85BC3A56E9D461A230B
        496A05D492088B66776523CF6CB997B7658AD49268B167652FC391DA38072FBE
        499F9F67476988AF0EDFCE6F6FFF10F79457037070E214476AE394BDCC6205E7
        9390E1A0C0336F7F2F7B566FA1603C1A6984007636E9F2D886ED7C70E5AD0CE7
        B218033331282F8034C14A87541CCF4E9DA699848C64FB988EBBE48DE5E6F200
        466994F168265D9E9D3ACDF65205AB348938148AD9A4CB70A6C04F36EF622C6A
        F38B99B3EC3B3B8A8D9CE3DD035BD99887E6E44F89BAE7B128245887147661B3
        EBA885F39CE9D4C95A9F5012CEB75ABC3A3FC917E374912C59E373A653A79684
        E4B425912579CE25219E320C17FBD9110D113987557680B9D9E761ECBBB8FA09
        BC85B3C480041B311B7E402BB897B1A885A7340A856F2C596D97C9C3539AB1A8
        452B4D2818EFAA11A248C4419C301B8768A5D0A80C7AECDBD03E01368BF825C4
        2F81CDA23BA7D16307F08CA6683CDC759CCC8950341E9ED2D79D796A91D5DAA1
        AA65A86A487D30AA77A73EAA0A325DA2E4C1BAA0B02895581CA1EB9526742922
        8E8E4B58171428D9E5010A82518A012F00DF52343E0EC12A05CD520E26347A46
        2FF01C70828A215A5BA4E8C1CEF22A9E9B7A8B14A1DF066CCDF743C6F08E7C3F
        2FCF8F534F4276968628DA80B9A8D33B0221AB2D051BF062F53C2FCC8EF14673
        863E136025859C9B859104D71554D48B567C501A5C3C493B824F5536F1F4A5BF
        70BC3EC55D7DAB994B420E9E7983AE4BC96ACBCDC5329F18DA442789B94CB940
        1932DA70E0EFC7F8D68563D49388405B567A19ACB2303B5B8629831E0457E801
        AB0EA831502343341554BC0C8F6FBC9B3DA75EE268ED22476B13904620C28662
        85C737EE64859F653A6CA39542809297E1E9F193EC3B3B4AD1FAAC09F2C84225
        ACA4501C6C43DBC19C464F2CF426233000D23F8F76508D3BECEC5BCDAF6E7B1F
        4F8CBFC96BF54900B69786F8FC4D5BD95A5C41356A2FBA59415BAA519B27C74F
        A294A664FC650E6551A0AA0AF2E0D6A72CCEBC14A40AC1ACA1EC03920149D952
        1EE2FBE521C6C21E4357052002D30994BD223E0B46E17B9CAF4D722E6CB0C206
        57DB225694EAAF157230A9D1D3CBC995758A970B1D1EFAD311BAB12254168B70
        AF39C527BD3FB2494DD096907157E415B7999FA577E180225DACB6CC441D4484
        409BAB55D56FD324BFAF22B5CFB1211D918EC002B9F0C16485B9C6F485D14B7F
        3BF440F0CB7AD645770426FEC0C7CCD1FE4D34163D7A4860371072C7A5BDF1DE
        1F914AAAA581D51E152F8BFB576577D5C32FECE12B933F7FCA68EFD3E90048F6
        32B91466161A49E6879323C5CFBEB3F4D67DC4ECA7C36DB19FCD757C1F92A5A9
        604D4AAED9AC1EEEEC1CFC48F6CBE46833E05AB87FB3FA28F98DA2630A2F462D
        7B9FAE81EAAA4572B93E0872F1F319E9EC6E06F938CD2BAB2F2A54552315D70B
        52D30BA0ADB1334CE4C2B94D87CBEF697DA6F20016D763EFB576AEE6783F58CA
        BA92222320971DDA81EE4272C92F35421F32825E25485FAF1D6A4AA364A1D602
        92F0AA836F764CB975FFECEF39E9AFE191C18F73533C7D6D601D0AD2E1115AF6
        C72AEBD6C9C27C5731D0D1FF50CE1DD01AA4AEBEE45AEA519D9392780B433706
        843F68DCD762635F51B89E2814E45D885C676DB74A0B4EAB5FA7A2BE605BEA7E
        1C9B0194E6AF8951878DE5258323D6E60971AAA5EBBC1F5883A183E1588A3AA4
        8413A82B36620591B2D75D91D5FFDDBFD33F07001265E36C61A899FA00000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bttconf002Click
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
      ExplicitHeight = 74
    end
    object bttconf003: TAdvGlowButton
      Left = 296
      Top = 0
      Width = 100
      Height = 51
      Align = alLeft
      Caption = 'Imagens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        89504E470D0A1A0A0000000D494844520000001E0000001F0806000000F06C7D
        07000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000004134944415478DAE496BB6F1C5514C67FF731B3EF57B24012C77120
        29620A9051102890A044042221220A28A082920A0989927F0151D15220A0A526
        40010D110151F192120271429C5D7BBDCFD99D997B0FC5DA491CDB1B13D969B8
        D2163BD2DC9FCE77BEF39D51D71ACDCBF97C76BF31A62B22ECE4514AE19C2B0D
        06C3799BCF652B1F7CF8B1F9E5D78BD54AB9B8A3E076A7C7A3B38778F79DB72A
        D658C36FBF5FE2FBF33F53AFD77614DC6CB6D05A61ACC18A08E57291FAEE2ABB
        6A951D05B3C21211ECFA3E80F7D0EE6BFA91C218A8143CF9ACB09D165807761E
        FA91E6F863439E3F1AD16C1BBEF82ECFB5A6A55CF0DB065F076E750CAF1CEFF3
        FE9BCB98A20781A76647BCF7D12E9A1D4D21BB3D647DFB9F61ACA8141DAF9EEC
        63B2C2F20D4BBB69993D1273E6E98851AC909D905A04AC19FF481522E36778C8
        041EA5B6AFC76B2ACE86C262DBF0F5852C8442ADEEA83DE868DC307CF3630E6B
        40ED44C55A41B9E0F9F45C91C148F3E2930396BA864FBE2CF2C77C40B5E8EF9E
        4E7EDC0CD1EA3F480D640201A5F8EC5C81CFBF2AE005020BD5E258EA4D5DAD40
        B9F1254A4089E0AD623353AC73B517088CB0AB7C6B6E577B3B6994542AD84498
        9F2B92869AE90B5DCCC89366344AB600BE334CB614FE1E8291E7FA6C9E852305
        442BBC86991FBA044321C9AA7570BBB59B41A51E1D7B5CD68CCD20B7FA130C3D
        8DC339AECE95B0B1473BA1F5700E176A66CE7708234F92D39BBB7AB3B275E4F0
        56D37FA48C4E3D2A959BF60E23C7E2C10CF373257422E8444020EC3BBA7B33FC
        F96C856151130C3CB7CF84BE5BA5A69F8081E60BFBF9E7F543741EAF637A092A
        F58403C7F2DE902B47CBA015269135F316448E5E3DE4D2892A83AA2118B89B92
        4F94DA7612924AC8C2CB330C0E97312347F3F41402D4BFBD4EE7408EBF8E5510
        AB3043BFE19087916358B15C3C51A5DCEB12447E32D87613867B72DC383BC368
        4F9EA01D8380CF685A27A710A368E463D25013461E9960C4A0EF497386CBCF94
        59762126BE732D2A504E30BD84C1A1320B670FE24A01B6938CAB51A0471E09A0
        F5DC3EF4DF4B049D1E3E34A84999A6C00E3DA3826161AA7047C54AA112C1F462
        3A73759A67A6F1A1C67493B5122A50C958AECC43556C2CF4E23E12DA0DE7F5F6
        F774BA926A6AD55C4AA1628F1E39968EEFA5F1D201442B4C2FDD389C57E0CE80
        99AE51C816207613E5BEE9E695D4D582C244292AF5344FED63F1F41438410FDD
        E48DA08055F8548D42260FA314D9E2E2B43615AEBA3E3F9D2AA29FC8621ACD35
        737AD7130156A3772BDC958464A9056693977BCB346A7BD04A6187A3116FBCFD
        1AC7F2310531E0E4DE769FD1985921E90E48F5C6570CD298E9628D284D50579B
        CDD603A54A35F066FC9577CF5F908C2B357AE2F64F929446AFBD6C358AC56E87
        FB79B4525BC8EA9D82FFEFC016680325A07B9F9825A0FDEF006C4FB804D8C979
        A20000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bttconf003Click
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
      ExplicitLeft = 241
      ExplicitTop = 4
      ExplicitHeight = 45
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 396
      Top = 0
      Width = 100
      Height = 51
      Align = alLeft
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
        A2000000097048597300001BAF00001BAF015E1A911C000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000003CA4944415478DAEC974D4F545718C77FE79E3BEDDC7961B424C498
        1989347DD18DA921DAC60DE95770DB453F423F83E9E768BA7021686448648569
        D8985663534920032E1406C80C638432732FC3CC7979BA80A1285690FAB2F149
        CEEEE6FCF23FCFFF79B94A44F81011F081E223F8BD450830FDFB1FB9A1C1C15F
        0B85C2F7D6DA77030A433637377F7BB2B4F4E3C877DFC62180B3FEE7C5E5D5AB
        5F7EFA09F96C8EF6F6364AA9B7021411A2749A5612B3B8BC7AD559BF02FC1400
        28158C349B2D1E3E9A214E12A228E26D9499881045117192F0F0D10CCD660BA5
        8291FD39967C3687B3C2BDFB0F8893846C26F3BFE022423693214E12EEDD7F80
        B3423E9B0390FD60E7BCE364A180F770777A9A3849C81C132E226476A177A7A7
        F11E4E160A38EF00DC01575B6B3935308042333935C5567BEB8D95F7946EB5B7
        989C9A42A1393530C0CBA63D504EDD6E97C15209E784DB772669773A4786F7A0
        ED4E87DB7726714E182C95E876BB47AB63D3357CFDF91718E3181D1FA7D3E990
        39C4702242268AE8743A8C8E8F638CDBB9A36B8EDE40BC788C355C38779E384E
        B8512E63ACFD4FE53DA5C65A6E94CBC471C28573E731D6E0C5BF59E7F2DEE345
        B87C719867CFD7B97EEB26C69803CA7B4A8D315CBF759367CFD7B97C71182F82
        F7FE782DD31883568A2BC397A8D5D7182D97B1CEEDB9BDE75EEB1CA3E532B5FA
        1A57862FA195C21873FC5EAD548088B06DBB9C2E16999D9F67AC5CC65A4B944E
        13A5D3586B192B97999D9FE774B1C8B6ED222228151C1F9C0A351B718B27ABCB
        10049C1D1A626E6181B189095410A08280B18909E61616383B340441C093D565
        36E216A9501F3E240E2845914A856CB49A2CADD5F0025A84289BA5582A315BA9
        509E9C0460B652A174E60C51368BB7162FB0B45603E064BE0F632C821C0E5640
        2A0C596F6E526DD411EF09B54600EF1CF9BE3E8AC5227FCECC00502C16C9F7F5
        E19C4380300870CEB1B4564344F82C5FC05873001DBE985345A8357F27CD3DA8
        D6FA05073BE7C8150AF4773A00E40A851DE83EA76BAD71CE516DD4090245219B
        C7BEF44DD0038222A5779E77B15EC3BF04DD0F17EF39D1DFCF89FE7EC4FB57D6
        B6D61AEF3D8BF51A1BAD26291DEE247177DC86BBE020D4011B71936AA3860884
        5ABFB64BF52E785D370BB5C6794FB5514329C5895C1EE77DB0077EBEB19E4A47
        11D5467D4779A88F3C180E5B18526188DD7BF680ED763BB5F7D4738F2BB34F57
        AAB00B73D6E29D7B2BC7F5A692084F57AACC3DAECCEE29DEB6E6DAB346E3AB30
        0CBFF1EF68C10F94C25AFB971177ED5F570741C53AF78BEFD81F4085EF66AF14
        EB95BA8E0E2A00EAE32FCCFB8A7F0600A20D6BB60D6CC5FE0000000049454E44
        AE426082}
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
      ExplicitLeft = 366
      ExplicitTop = 7
      ExplicitHeight = 45
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 920
    Top = 344
  end
  object XPManifest1: TXPManifest
    Left = 904
    Top = 231
  end
  object qrconfig: TUniQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from config')
    Left = 632
    Top = 461
  end
  object dsconfig: TUniDataSource
    DataSet = qrconfig
    Left = 679
    Top = 456
  end
end
