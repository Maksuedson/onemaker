object frmMesa_consumo: TfrmMesa_consumo
  Left = 154
  Top = 90
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consumo da Mesa'
  ClientHeight = 458
  ClientWidth = 751
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
  object grid_consumo: TNextGrid
    Left = 0
    Top = 72
    Width = 751
    Height = 339
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    Caption = ''
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 0
    TabStop = True
    OnKeyPress = grid_consumoKeyPress
    OnCellFormating = grid_consumoCellFormating
    ExplicitLeft = 5
    ExplicitTop = 87
    ExplicitWidth = 739
    ExplicitHeight = 321
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'cod_lancamento'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      DefaultWidth = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'X'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      ParentFont = False
      Position = 1
      SortType = stBoolean
      Width = 19
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 67
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
      Position = 2
      SortType = stAlphabetic
      Width = 67
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 255
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Produto'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 255
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Quantidade'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Width = 65
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 63
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Pre'#231'o'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Width = 63
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 68
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Total'
      Header.Alignment = taCenter
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 6
      SortType = stNumeric
      Width = 68
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 181
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Observa'#231#227'o'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      ParentFont = False
      Position = 7
      SortType = stAlphabetic
      Width = 181
    end
    object NxNumberColumn5: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'cancelado'
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
  end
  object Panel19: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 919
    object Shape1: TShape
      Left = 214
      Top = 22
      Width = 35
      Height = 32
      Brush.Color = clRed
    end
    object Label1: TLabel
      Left = 255
      Top = 32
      Width = 81
      Height = 13
      Caption = 'Itens cancelados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 97
      Height = 49
      Caption = 'Mesa/Comanda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lb_mesa: TLabel
        Left = 7
        Top = 16
        Width = 79
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 112
      Top = 10
      Width = 72
      Height = 49
      Caption = 'Abertura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lb_data: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object lb_hora: TLabel
        Left = 8
        Top = 31
        Width = 3
        Height = 13
      end
    end
    object GroupBox3: TGroupBox
      Left = 533
      Top = 2
      Width = 218
      Height = 68
      Caption = 'Valor Atual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object ed_total_comanda: TRzNumericEdit
        Left = 5
        Top = 16
        Width = 205
        Height = 43
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 411
    Width = 751
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 537
    ExplicitWidth = 1330
    object bt_cancel: TAdvGlowButton
      Left = 306
      Top = 0
      Width = 153
      Height = 47
      Align = alLeft
      Caption = 'Cancelar Item'
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
      TabOrder = 0
      OnClick = bt_cancelClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
      Layout = blGlyphLeftAdjusted
      ExplicitLeft = 347
      ExplicitTop = 14
      ExplicitHeight = 55
    end
    object bt_transf: TAdvGlowButton
      Left = 459
      Top = 0
      Width = 153
      Height = 47
      Align = alLeft
      Caption = 'Transferir para Mesa'
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
        89504E470D0A1A0A0000000D494844520000001E0000002008060000000540C8
        7F000000097048597300000B1300000B1301009A9C18000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000005D54944415478DAA4965B6C5C571586BFB5F7B9CD8C677C498C95C4
        09B669C16E5448A10D147842425C520968697800350805847828414845A8452A
        E2560428543C4420908204A24A8BE803A10DF0002808517241A535491BC5CD05
        3BAE938CEDF165E69CB3F7E261C6511BDF06B38ECEC3395A5AFFDE6BFFFFFAB7
        007CECC143DC3EF81E66E7A6400501549462D8C1F9A933FCF9E9EFF191FBBF46
        A9671B596381B54200514130FB0CF2054586814CD0131EFDBE17FF474531B411
        8A62C384302AB6910B46CCCF8D98C388EC16A122C226443E60C4FCC1A83CAC28
        C1BA9544B036E4FC0BC788935E86DFB6078FC3E50D5C9682C84DE9F22531E681
        D5CA19B1DF0CBC9C0EDAD9B188303733C9F5C9718220A4AF7F2771D245A9DC4B
        A33E8B7A8FAA03241231FBD7AB67C47C2E68AFD510172A7837CFC4A5534C4EBC
        88216170F85D746D1E228E4B181BD2A8D746106E6BA3DE7BDB026E662B622C61
        94E055999F99E2A57F3D832D7492746EE1CD83EFA4D2D39F7BEFC8B3C5F5AAD9
        F6816F6A7D14158993887A5E67726294C5C973F46E1BA96DD9BEAB56286D2A37
        A5A1AB31FF39C306435B25AC8D488ADD8471F289F10B27CF5C1EFB7B6E6C9089
        985505E7557FB66160B42933C1BFA9238A4F0551FC04C67CA7EB0D439B82303E
        AADEAD0029A8BAC79DC98F6C1C58302272A81015CFD5AEFE677666E6EA5609EC
        370075B8BDAAFA55E07C2BDB89CA29A7EE534EFC0160451D6F0322E022E06E26
        58EB8CF7152BE5C3626818B1F75CBB3A71B458AED0B5A9176DE6648A3E26CA0F
        14D902E4E0AF00FE86A4007CF3FB5E833965455E3622672CE66581031E6D3E0A
        3634B75A6B5E8C0B85C3AF4E8E7DFBCAF82B491C178EAE4622206B6D60FCB5A0
        00A650EAA6D3767C57D5FFDA20770005201264D0E30F566CE989625812708F9B
        207E29CBF45531BEBF5EAF3D9CA5758C0D964DAF7622F8FC979FBC2F8CC28716
        E6ABCBE673E6327ACA7DF78E8CDC5DAD56CFCC57AF757E289DE7D99DBB13FEDF
        08C2A4B0DFF9AC2590D7AF5CBDC70BE1D0C8FBB2CB978A6FBF32717AD2E59067
        2137E4A237B485A22D7B5A9798042E4FEF6E26CACABEA45028F56CDEF9D68FF6
        160BBB26272E9CA5D431876194300A7164202544138C2A7869BE2ACB4B2E51C1
        0B8188AAB6B1C43CF3DADD65D02CE07AD5D1DDB999280949FD2CC800A28275D3
        E041F3254F7F0D98340171827A21F0CA7111EE596D342A509B19BF367EF1F4F4
        E4C5174095A0D03405EF3C8269AA0583B648B626D75A47613AD2E0C76593E059
        2E092F4289289D3AFB3777F9D2C9E7A3A4E3E34952C106C9925E371CE62F8CFD
        F6DF6EF2D198E0752B1581442D6376EE976315D75734F1A130B24F9A509E0319
        5075A8FA3698B40AF09F82939CF0E7BE9EF8E083DEEB5F812A30EBBD8E165DF0
        D9E7CDF867FED951A56CC2472E8C653B16EA1E6B190BA3E4A0B121A8DF989CA0
        08C488E8B13CD363C6D06D8C0459A6570955D100BC45041A8B7A29CBF3DD3ED7
        BD36AAFCCA181EF43EBB0FF46958B1F521D01A992C1F99374515986AF16AB9BF
        88E03D47E6A61B56713F52677FD3B3393A5EEC30DB5CE6973A1F025F31C85911
        2E8870519013089F5C0BB83D3356007FA0B1E806BBBB88CB5DE165A7E65114AC
        3547C4C8630A834B370E853BAC955F58637E886E1478693A8901AFAFD4E7B2BB
        D2B471BF237B68FAFAF96A9ED5F788B12BDD9E10235F0C42D96B366EC702EA71
        2E65B13E4D962E3CB575C73B86FB87765BEFB3702DD219C3FE0DDDB9543D693A
        4FDA8020ECA46FCB76DE38F26E2ADD3BCAEAF3729E2DAEA97355B92BF85FF6A8
        EA68D4E789838452B9975B6EBB93EE9E21C2A8840942D2FA6C28ED59A40BDA05
        6DD4678184ED03773270CBEDC4493749B193B45EC3FB14D7584444464518555D
        FB6E2DA2C74DBBAD2D96FBE81FD8C55B767E988EF256442C0BB5EBE4598ECB3D
        DE09DE917AA73F5D6DD34BFFBDE327413BDAF13E63E0D63D8CF40F335F9B224D
        57F2BA1B7130147689C8032BB1DA7B7D24CBF477A65D06BBAC4EA3BEC07ADE20
        02CEE93EF5FA6945FFA14A4D956BA0BFF75EDFEFBDFF9618F8EF0018A5981332
        1654E80000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bt_transfClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
      Layout = blGlyphLeftAdjusted
      ExplicitLeft = 515
      ExplicitTop = 14
      ExplicitHeight = 55
    end
    object bt_marcar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 153
      Height = 47
      Align = alLeft
      Caption = 'Marcar Todos'
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
        1F90000002CA4944415478DAE4974D48545114C77FE7BEEBA436A4A1956D5C46
        B52B82168515A4530415A2A5EB3E408836615B7557868B8AA055D0AAA2826C91
        159554A6D5DE561124B5B2043FD3E77BF7B468667C334DE00C4F5C74E06EEED7
        EFFDEFF9B8F789AAB21A665825B3008D275E00E0070B600C060507AA82F11CCE
        092A3418E40B9E7ECB2C3EDE79B068A0089CDF9558B6E246519E2A6E10A88BFB
        A8AB806D05E6A480C740056A3E8D333B31CE6C496A0B81ABFCD07F2698B7C08E
        C8F861E7A41F280779FCC3CEB4027E645C4B686D591F47F6A911C74B0C4D401D
        A20F81443EF44CE7B178820B984C7889941FFACF44D9AD8E977F54FE0DCDB37B
        C5029D335FF315E7C0D3319803DD102609BC30BA4F5B5C793C99F01229153EE4
        436B83B5D9490FAE3C8FE7A8E799C706166B2DC0E4C22F699A49CECC67A03561
        65C17C2CC5C40480CD55BC1864DD3805F8A3F75BA95D82F6012DB156AEA8F9C1
        026018BDDF1AEDBE0E9C53551FF8088CC509DE0BEC04AE9597BBECC9003744A5
        0350453AF2A0A504D730309601D72BE1004812A8002E03B2AF79E0262A67D3D0
        D3C02D8096CE26D297DA9DA27D8C698F82C744A44F952E412E81AED9DFFCA45E
        9553F9D095F071B708A8D205D293569403DD6467D87B31A76AB5171FD66EB850
        7045E0B950E73BB030D4DB1F85DF8DF321D0AD4A77141AE0E54C18EAED8FF905
        3291CDD99E0CB42C5CCCF4AD87A52F18EAED4795A29B0B6D61C5D38B6EE9AE92
        ECF0462F216FC683CADB51789C05C4028129AB6471610A63D7006C2A2378056C
        57A4FA271575C0F7A39D4DF145B556CFED21E4183097EEDB1C78F615B015F826
        A17700EBBE47D694125C578191A502A27A019164D29A01E008B0CE6838086CC9
        42E1334044EDC9A283CAB847C048C6896346CC21601A6870E1DC0B6BBDD785A0
        2B5140DE814B8179FAE721202C032A71E5F18888A4D2D7E28A28FDE7B508BC77
        EA1A3D5736B1525000F9EFFE9D7E0F006EFB4172396455320000000049454E44
        AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bt_marcarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
      Layout = blGlyphLeftAdjusted
      ExplicitLeft = 19
      ExplicitTop = 14
      ExplicitHeight = 55
    end
    object bt_desmarcar: TAdvGlowButton
      Left = 153
      Top = 0
      Width = 153
      Height = 47
      Align = alLeft
      Caption = 'Desmarcar Todos'
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
        1F90000002E34944415478DAE4973D4C145110C77FEFEDEEDDC2718788081CA2
        6863C44BF0ABC0A8A150A3264609056A414362A2AD76C658DB9850586862EC8C
        91520B2D6C4C2888891FC54534C400E2470C82CA87C0EDDD1B8BBD3B0FD13BCC
        5D4E13A7D9E4CDECFFB73BB333EFAD121172ADBBBB9BCF4E359616C4680062B1
        58D6BF6E7D0B1A7346294E008870C7A0AFBD7D339A8D89C7E300286D4819458D
        F795FEFEFE251C9BFC66011863AA320BC6A47628257DA9945C00D05AF5199157
        C698A739F7CDA6AFA9DF092F032B04A05944767A5E3206E0BAEEF68C3F9998DF
        A69CC0E4E497C9EB00B5AB6ACF27BDC40DD7759F67623C2FF90CC009A838A827
        0A192F084E2827023C985F48B656852A00688C36A2D27E114144080682B7002C
        CB8ADA76259595A14D0002B815812E80D9B97982C1C08B84727603D379C1334E
        B8578B69DD1EDBC281BDED00BC7C3B81527E3E32160E458E0378C9DC6C0A2270
        B6E724000F0706191A7EDD3AE3847B81BEBC604B4C8700A78E1DA17D479B9FFE
        47838C7F9CC018C9FB4168AD68AEAFE36887FFC075AB6BB874E52A96988E8260
        030905789E975D3BB46717E31F3F618C2900D634D7AFE147ADBDAC66C11AA7CB
        84C96933C7B6D9D4D4C09F5A8EC6B25469FE92FD7F607B2541DF1616FD604B13
        709CF28147DE7D00205215A2B9BE8EF7139379E3A375B5A5012F26FCB648A687
        C5C2A2579E37DE10AD0720984EF386E8DAF2806BAB234BA79BD6E501A7D2EDAF
        55EEB42E03F8F2903FF1B6565B7436598CCCE59FD91B43AA34E08B8F7DF0C116
        9BCE268B9EC1C5BCF103FBDDD280630D16006D357E6DBBD659E549F5BD7D4100
        AA6C3F85E7363BE501B7844A3F59FFA94D42F9AD537CE3E468A882600D0100A7
        049B414623A399B7C629A51F69319DB7EFDE6762EA7351E087038359CD82E0B0
        377373D60E9D7E161F6A1D1E192D0A9C39DE86BD999B05C101F1A681C315AEBD
        73613E112B065CE1DA71233C496BAEA89DA694526396A522C58095620C61EA97
        BE9F7FDACA65DF0700F50CF658F33699B70000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bt_desmarcarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
      Layout = blGlyphLeftAdjusted
      ExplicitLeft = 178
      ExplicitTop = 14
      ExplicitHeight = 55
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 192
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      ShortCut = 113
      OnClick = bt_marcarClick
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      ShortCut = 114
      OnClick = bt_desmarcarClick
    end
    object CancelarItem1: TMenuItem
      Caption = 'Cancelar Item'
      ShortCut = 115
      OnClick = bt_cancelClick
    end
    object ransferirparamesa1: TMenuItem
      Caption = 'Transferir para mesa...'
      ShortCut = 116
      OnClick = bt_transfClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bt_sairClick
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 120
  end
  object query: TUniQuery
    Connection = frmModulo.Conexao
    Left = 160
    Top = 312
  end
end
