object frmCartao_PGTO: TfrmCartao_PGTO
  Left = 659
  Top = 436
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CART'#195'O | Baixa'
  ClientHeight = 222
  ClientWidth = 349
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 167
    Width = 349
    Height = 55
    Align = alBottom
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 451
    ExplicitWidth = 938
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 85
      Height = 55
      Align = alLeft
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ExplicitLeft = 20
      ExplicitTop = 42
      ExplicitHeight = 63
    end
  end
  object pnl1: TPanel
    Left = -31
    Top = -4
    Width = 380
    Height = 166
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label4: TLabel
      Left = 51
      Top = 60
      Width = 107
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data:'
    end
    object Label1: TLabel
      Left = 51
      Top = 84
      Width = 107
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Recebido:'
    end
    object DateEdit1: TJvDateEdit
      Left = 163
      Top = 56
      Width = 115
      Height = 21
      Color = clWhite
      NumGlyphs = 2
      ShowNullDate = False
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object rvalor: TRzNumericEdit
      Left = 163
      Top = 80
      Width = 113
      Height = 21
      Color = clWhite
      FocusColor = 12713983
      TabOrder = 1
      OnKeyPress = rvalorKeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Panel2: TPanel
    Left = 888
    Top = 416
    Width = 572
    Height = 41
    BevelOuter = bvNone
    Caption = 'Cart'#227'o : Baixa'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 152
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
end
