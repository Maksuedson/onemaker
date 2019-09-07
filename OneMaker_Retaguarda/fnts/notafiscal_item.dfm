object frmnotafiscal_item: Tfrmnotafiscal_item
  Left = 192
  Top = 211
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'EMISS'#195'O DE NOTA FISCAL | Edi'#231#227'o do Item'
  ClientHeight = 298
  ClientWidth = 740
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 241
    Width = 740
    Height = 3
    Align = alBottom
    ExplicitTop = 252
  end
  object Bevel2: TBevel
    Left = 0
    Top = 38
    Width = 740
    Height = 3
    Align = alTop
  end
  object Shape1: TShape
    Left = 8
    Top = 50
    Width = 721
    Height = 15
    Brush.Color = 3355443
    Pen.Color = 11982812
  end
  object Shape3: TShape
    Left = 8
    Top = 64
    Width = 121
    Height = 47
    Pen.Color = clGray
  end
  object Shape4: TShape
    Left = 128
    Top = 64
    Width = 129
    Height = 47
    Pen.Color = clGray
  end
  object Shape5: TShape
    Left = 408
    Top = 64
    Width = 177
    Height = 47
    Pen.Color = clGray
  end
  object Shape6: TShape
    Left = 584
    Top = 64
    Width = 145
    Height = 47
    Pen.Color = clGray
  end
  object Shape7: TShape
    Left = 256
    Top = 64
    Width = 153
    Height = 47
    Pen.Color = clGray
  end
  object Label11: TLabel
    Left = 325
    Top = 51
    Width = 90
    Height = 13
    Caption = 'Valores do Item'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 37
    Top = 65
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 149
    Top = 65
    Width = 64
    Height = 13
    Caption = 'Valor Unit'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 309
    Top = 65
    Width = 40
    Height = 13
    Caption = 'Subtotal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 469
    Top = 65
    Width = 45
    Height = 13
    Caption = 'Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 631
    Top = 65
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 15
    Top = 126
    Width = 23
    Height = 13
    Caption = 'CST:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 13
    Top = 150
    Width = 31
    Height = 13
    Caption = 'CFOP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 527
    Top = 126
    Width = 94
    Height = 13
    Caption = 'Classifica'#231#227'o Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LUF: TLabel
    Left = 228
    Top = 9
    Width = 17
    Height = 13
    Caption = 'UF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape2: TShape
    Left = 10
    Top = 178
    Width = 338
    Height = 15
    Brush.Color = 3355443
    Pen.Color = 11982812
  end
  object Label8: TLabel
    Left = 149
    Top = 179
    Width = 29
    Height = 13
    Caption = 'ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape8: TShape
    Left = 11
    Top = 192
    Width = 70
    Height = 47
    Pen.Color = clGray
  end
  object Label9: TLabel
    Left = 26
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape9: TShape
    Left = 80
    Top = 192
    Width = 86
    Height = 47
    Pen.Color = clGray
  end
  object Label10: TLabel
    Left = 101
    Top = 194
    Width = 42
    Height = 13
    Caption = 'Redu'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape
    Left = 165
    Top = 192
    Width = 92
    Height = 47
    Pen.Color = clGray
  end
  object Label6: TLabel
    Left = 173
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape11: TShape
    Left = 256
    Top = 192
    Width = 92
    Height = 47
    Pen.Color = clGray
  end
  object Label13: TLabel
    Left = 269
    Top = 194
    Width = 67
    Height = 13
    Caption = 'Valor do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape12: TShape
    Left = 350
    Top = 178
    Width = 172
    Height = 15
    Brush.Color = 3355443
    Pen.Color = 11982812
  end
  object Label14: TLabel
    Left = 369
    Top = 179
    Width = 129
    Height = 13
    Caption = 'Substitui'#231#227'o Tribut'#225'ria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape13: TShape
    Left = 351
    Top = 192
    Width = 86
    Height = 47
    Pen.Color = clGray
  end
  object Label21: TLabel
    Left = 358
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape14: TShape
    Left = 436
    Top = 192
    Width = 86
    Height = 47
    Pen.Color = clGray
  end
  object Label24: TLabel
    Left = 448
    Top = 194
    Width = 58
    Height = 13
    Caption = 'Valor Subst.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape15: TShape
    Left = 524
    Top = 179
    Width = 87
    Height = 15
    Brush.Color = 3355443
    Pen.Color = 11982812
  end
  object Label18: TLabel
    Left = 551
    Top = 179
    Width = 38
    Height = 13
    Caption = 'Outras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape16: TShape
    Left = 525
    Top = 193
    Width = 86
    Height = 47
    Pen.Color = clGray
  end
  object Label19: TLabel
    Left = 553
    Top = 194
    Width = 31
    Height = 13
    Caption = 'Isento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape17: TShape
    Left = 613
    Top = 178
    Width = 117
    Height = 15
    Brush.Color = 3355443
    Pen.Color = 11982812
  end
  object Label15: TLabel
    Left = 664
    Top = 179
    Width = 17
    Height = 13
    Caption = 'IPI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape18: TShape
    Left = 614
    Top = 192
    Width = 51
    Height = 47
    Pen.Color = clGray
  end
  object Label17: TLabel
    Left = 620
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape19: TShape
    Left = 664
    Top = 192
    Width = 66
    Height = 47
    Pen.Color = clGray
  end
  object Label25: TLabel
    Left = 684
    Top = 194
    Width = 24
    Height = 13
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 512
      Top = 11
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label7: TLabel
      Left = 592
      Top = 10
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
    end
    object DBEdit30: TDBEdit
      Left = 145
      Top = 7
      Width = 362
      Height = 21
      Color = clWhite
      DataField = 'produto'
      DataSource = dsnotafiscal_item
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 559
      Top = 7
      Width = 30
      Height = 21
      Color = clBtnFace
      DataField = 'unidade'
      DataSource = dsnotafiscal_item
      TabOrder = 2
    end
    object eproduto: TRzDBButtonEdit
      Left = 56
      Top = 7
      Width = 87
      Height = 21
      DataSource = dsnotafiscal_item
      DataField = 'CODPRODUTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 0
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyPress = eprodutoKeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 117
      AltBtnWidth = 15
      ButtonWidth = 24
      OnButtonClick = eprodutoButtonClick
    end
    object restoque: TJvCalcEdit
      Left = 649
      Top = 6
      Width = 79
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      Color = clBtnFace
      DisplayFormat = '###,###,##0.000'
      Enabled = False
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 244
    Width = 740
    Height = 54
    Color = 3355443
    ColorHighLight = 3355443
    ColorShadow = 3355443
    Align = alBottom
    TabOrder = 23
    object bgravar: TAdvGlowButton
      Left = 1
      Top = 1
      Width = 107
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
    object bretorna: TAdvGlowButton
      Left = 616
      Top = 1
      Width = 123
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
      OnClick = bretornaClick
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
  object FlatPanel2: TFlatPanel
    Left = 120
    Top = 77
    Width = 17
    Height = 21
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
  end
  object FlatPanel3: TFlatPanel
    Left = 248
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
  end
  object FlatPanel4: TFlatPanel
    Left = 400
    Top = 77
    Width = 17
    Height = 21
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 3
  end
  object FlatPanel5: TFlatPanel
    Left = 576
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 4
  end
  object eqtde: TRzDBNumericEdit
    Left = 15
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'QTDE'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 5
    OnExit = eqtdeExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object eunitario: TRzDBNumericEdit
    Left = 143
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'UNITARIO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 6
    OnExit = eunitarioExit
    OnKeyPress = eunitarioKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object esubtotal: TRzDBNumericEdit
    Left = 271
    Top = 82
    Width = 122
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'SUBTOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 7
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.0000'
  end
  object edperc: TRzNumericEdit
    Left = 429
    Top = 82
    Width = 54
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnExit = edpercExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '##0.00%'
  end
  object edesconto: TRzDBNumericEdit
    Left = 487
    Top = 82
    Width = 82
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'DESCONTO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 9
    OnExit = edescontoExit
    OnKeyPress = edescontoKeyPress
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object etotal: TRzDBNumericEdit
    Left = 601
    Top = 82
    Width = 115
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'TOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 10
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object ecfop: TRzDBButtonEdit
    Left = 56
    Top = 145
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CFOP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 13
    OnEnter = ecfopEnter
    OnExit = ecfopExit
    OnKeyPress = ecfopKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    AltBtnWidth = 15
    ButtonWidth = 24
    OnButtonClick = ecfopButtonClick
  end
  object DBEdit2: TDBEdit
    Left = 139
    Top = 145
    Width = 382
    Height = 21
    Color = clWhite
    DataField = 'natureza'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
  end
  object DBEdit3: TDBEdit
    Left = 139
    Top = 121
    Width = 382
    Height = 21
    Color = clWhite
    DataField = 'cst_descricao'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object ecst: TRzDBButtonEdit
    Left = 56
    Top = 121
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 11
    OnExit = ecstExit
    OnKeyPress = ecstKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    AltBtnWidth = 15
    ButtonWidth = 24
    OnButtonClick = ecstButtonClick
  end
  object ECLASSIF: TDBEdit
    Left = 624
    Top = 121
    Width = 105
    Height = 21
    DataField = 'CLASSIFICACAO_FISCAL'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnEnter = ECLASSIFEnter
    OnExit = ECLASSIFExit
    OnKeyPress = ECLASSIFKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 20
    Top = 210
    Width = 53
    Height = 21
    DataField = 'ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 14
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 90
    Top = 210
    Width = 69
    Height = 21
    DataField = 'ICMS_REDUZIDO'
    DataSource = dsnotafiscal_item
    TabOrder = 15
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit10: TDBEdit
    Left = 171
    Top = 210
    Width = 77
    Height = 21
    DataField = 'BASE_CALCULO'
    DataSource = dsnotafiscal_item
    TabOrder = 16
    OnEnter = DBEdit5Enter
    OnExit = DBEdit10Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit11: TDBEdit
    Left = 262
    Top = 210
    Width = 80
    Height = 21
    DataField = 'VALOR_ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 17
    OnEnter = DBEdit5Enter
    OnExit = DBEdit11Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit14: TDBEdit
    Left = 356
    Top = 210
    Width = 76
    Height = 21
    DataField = 'BASE_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 18
    OnEnter = DBEdit5Enter
    OnExit = DBEdit14Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit15: TDBEdit
    Left = 442
    Top = 210
    Width = 75
    Height = 21
    DataField = 'ICMS_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 19
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit13: TDBEdit
    Left = 530
    Top = 210
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 20
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 618
    Top = 210
    Width = 41
    Height = 21
    DataField = 'IPI'
    DataSource = dsnotafiscal_item
    TabOrder = 21
    OnEnter = DBEdit6Enter
    OnExit = DBEdit6Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 668
    Top = 209
    Width = 57
    Height = 21
    DataField = 'VALOR_IPI'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 22
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 610
    Top = 146
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 26
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object Pop2: TPopupMenu
    Left = 700
    Top = 93
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bretornaClick
    end
  end
  object dsnotafiscal_item: TDataSource
    DataSet = frmnotafiscal.qrnotafiscal_item
    Left = 720
    Top = 117
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 176
    Top = 88
  end
end
