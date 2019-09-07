object frmvenda_serial: Tfrmvenda_serial
  Left = 471
  Top = 311
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'VENDA | Seriais'
  ClientHeight = 285
  ClientWidth = 194
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 235
    Width = 194
    Height = 3
    Align = alBottom
    ExplicitTop = 239
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 194
    Height = 233
    Selected.Strings = (
      'SERIAL'#9'28'#9'Seriais')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 238
    Width = 194
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object bitbtn1: TAdvGlowButton
      Left = 45
      Top = 1
      Width = 113
      Height = 45
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
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
        89504E470D0A1A0A0000000D4948445200000020000000200802000000FC18ED
        A30000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032069545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
        312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
        2057696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E
        6969643A45313334394633303539453931314532394537334231414446373130
        413237412220786D704D4D3A446F63756D656E7449443D22786D702E6469643A
        4531333439463331353945393131453239453733423141444637313041323741
        223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374
        616E636549443D22786D702E6969643A45313334394632453539453931314532
        39453733423141444637313041323741222073745265663A646F63756D656E74
        49443D22786D702E6469643A4531333439463246353945393131453239453733
        423141444637313041323741222F3E203C2F7264663A4465736372697074696F
        6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061
        636B657420656E643D2272223F3EBDA47AE8000001F94944415478DAEC56BD4E
        024110DE45209C064D3C6930C49218A968C197D027C047B0C7427A5FC127D0F8
        0E72AD15C6505018238D8201A290433DBFE3E76E6E77EF8E9F40E554E476E6FB
        D899F96696B3BB065BA545D88A6DE504D17097ED7821BD75BEA71D691BD9CD18
        3ED4BF868FFD9FABF7BEF1DC63FDEFE0681E54033D7173B87BA22702E26F5B83
        D3A7366B0DE64C518C9772BA554C07A3C3E00037382364E61BC4F87D61BFB813
        9F2BD7D58E796CBCB2A115768385D0610841A07C0F91A094DD5D00DDE1407860
        8A46095DB22F79B5496BEEB9017A460EB878E9F15A4B01546BE148FE2E80101D
        6851B96700517978B3E1CC5F2B9F72D1F11147A3DF9799A4D057900EEB9AE20D
        0A0749F9EF543A133FC0F11193832E3A1083301537805665572BA7E3BF4FE0C0
        31259B1C67927090A30065B00F91009340593464863BA034E9402749A346A1DC
        148DE78C1F07F3263A005D805AE3B8C68CF46D6D5255B9E6B25128970013381C
        1D897272E5CF41A15C02CC77A59A3C3D934F79EAE1A3410AE51218CD4FD9B5EC
        CC255255CA51560D2E7B112994DC35B13D04318F550A3509FD6EF76E3C027441
        C6E31544D7DC7A871D0ECE1A9D65D0ED70EFFA1475705D6F5755E365C6A586F0
        B08D36B4B0F916E09879654E39E6CA159C95E8EB78B6F0F0B7A916C5AA503FBC
        209DAEB9C4C3EBFFF16BDB9F00030055DCFF4CF82584B10000000049454E44AE
        426082}
      Transparent = True
      TabOrder = 0
      OnClick = BitBtn1Click
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
  object dsproduto: TDataSource
    DataSet = frmvenda.qrproduto_serial
    Left = 208
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 24
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
end
