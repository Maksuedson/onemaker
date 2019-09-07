object frminventario_ficha: Tfrminventario_ficha
  Left = 390
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | INVENT'#193'RIO - Ficha de Inclus'#227'o'
  ClientHeight = 215
  ClientWidth = 488
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 60
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Label2: TLabel
    Left = 13
    Top = 84
    Width = 43
    Height = 13
    Caption = 'Estoque:'
  end
  object Label3: TLabel
    Left = 13
    Top = 108
    Width = 32
    Height = 13
    Caption = 'Custo:'
  end
  object Label4: TLabel
    Left = 13
    Top = 132
    Width = 28
    Height = 13
    Caption = 'Total:'
  end
  object eproduto: TRzButtonEdit
    Left = 69
    Top = 52
    Width = 129
    Height = 21
    Text = ''
    Color = clWhite
    TabOrder = 0
    OnKeyPress = eprodutoKeyPress
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = eprodutoButtonClick
  end
  object enomeproduto: TRzEdit
    Left = 205
    Top = 52
    Width = 265
    Height = 21
    Text = ''
    DisabledColor = clWindow
    Enabled = False
    TabOrder = 1
  end
  object eestoque: TRzNumericEdit
    Left = 69
    Top = 76
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 2
    OnExit = eestoqueExit
    OnKeyPress = eestoqueKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object ecusto: TRzNumericEdit
    Left = 69
    Top = 100
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 3
    OnExit = ecustoExit
    OnKeyPress = ecustoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object etotal: TRzNumericEdit
    Left = 69
    Top = 124
    Width = 81
    Height = 21
    DisabledColor = clWindow
    Enabled = False
    TabOrder = 4
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object Panel1: TPanel
    Left = 0
    Top = 164
    Width = 488
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 5460819
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 291
    ExplicitWidth = 696
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 73
      Height = 51
      Align = alLeft
      Caption = 'Gravar'
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
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
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
      ExplicitLeft = 8
      ExplicitTop = 32
      ExplicitHeight = 70
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    ParentBackground = False
    TabOrder = 6
    ExplicitTop = 48
    ExplicitWidth = 485
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 56
      Height = 13
      Caption = 'Movimento:'
    end
    object Bevel3: TBevel
      Left = 77
      Top = 5
      Width = 100
      Height = 20
    end
    object Bevel4: TBevel
      Left = 221
      Top = 5
      Width = 100
      Height = 20
    end
    object Label6: TLabel
      Left = 184
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object eano: TLabel
      Left = 123
      Top = 8
      Width = 45
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edata: TLabel
      Left = 227
      Top = 8
      Width = 86
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object emes: TLabel
      Left = 83
      Top = 9
      Width = 30
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 107
      Top = 9
      Width = 30
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '/'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 384
      Top = 5
      Width = 97
      Height = 20
    end
    object Label8: TLabel
      Left = 328
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Posterior:'
    end
    object eposterior: TLabel
      Left = 392
      Top = 8
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object etipo1: TRzNumericEdit
    Left = 205
    Top = 76
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 7
    OnExit = eestoqueExit
    OnKeyPress = eestoqueKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object etipo2: TRzNumericEdit
    Left = 205
    Top = 100
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 8
    OnExit = eestoqueExit
    OnKeyPress = eestoqueKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object etipo3: TRzNumericEdit
    Left = 205
    Top = 124
    Width = 81
    Height = 21
    Color = clWhite
    TabOrder = 9
    OnExit = eestoqueExit
    OnKeyPress = eestoqueKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 248
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
  end
  object qrloc: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 608
    Top = 216
  end
  object qrloc2: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 608
    Top = 232
  end
end
