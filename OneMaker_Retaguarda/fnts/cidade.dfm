object frmCidade: TfrmCidade
  Left = 384
  Top = 352
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cidades'
  ClientHeight = 384
  ClientWidth = 549
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
  object Panel1: TPanel
    Left = 672
    Top = 375
    Width = 531
    Height = 41
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    Visible = False
    object bfechar: TAdvGlowButton
      Left = 437
      Top = 4
      Width = 94
      Height = 32
      Caption = 'ESC | Sair'
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000271494441544889
        B595CF4B545118869FD7B92B2504A145FE03D524D44C08416D74220C6A716F3F
        74D92A5C39D3A6949432312910E6EEDA15B472D10C41A510D63FA0F79242919B
        76B92842B268A3F3B5F028379D9944C7B339DC7BBEFBBCE73BF73BEF2733A3D6
        C816CA69A017C801278056B7B4022C02B3C05454F43FD762A89A40265F4A4B7A
        6466178126493233934432DEBD5F035E49BA1315FDA5FF0A64F2A57E605252B3
        FBF88DA49299CD4B5A76F1ED40A7A4C0CC7ADC267E9BD9401C064F6B0A640BE5
        5160C43DCE00856ABB4A0E778C21701EA800C351D19FD82190C9976E4A7A6266
        156054D27854F42BF5E089AC53921E98D92080A41B51D17FBE2590C9978E02F3
        EE58EEC56130B61B7015A187C0A0A455333B1587C117CF293E065A806949E37B
        813BCE087006E8923401F429932FA5CD6C0130491DF54A6E97599C941499D93A
        70CC03AE034DC0EBFDC201E230F8902D94DF03DDC0350FC8491250DE2F3C31CA
        927240B7071CB78D529A6BA0C09C63A63DA0CD65F0B58102CB8E79D803B07A86
        B4C7B1C9F4801F401B1BD7FF7B83F847DCFCCD033E0167812CB0D02081D36EFE
        E801B392CE015780670D1208DC3F7877E0176DD38B5E029725CD98D9A5380C2A
        890F0EC561B05A0D962D945351D15F4FC4A680B792BACC6C2A0E83BE4D2FBACD
        46D7EA917417D832BB5A708024DC71C6802EE0A7A421A86DD7F79D5DEFAA7C33
        F95293B3EB2127F4AF5D27521E35B31117346D66B7E230584AACB798D99F6D47
        980642493957FBC37118EC6C3809483F300934036BC034F0029807965D583BD0
        095C052E0029E017301015FDDA2D33B9AB036BFADB85805E49DD66D621A9D5C5
        AF008B92665DB5D42CEDBFC465552860CF4DD40000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bfecharClick
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
  object grid: TwwDBGrid
    Left = 3
    Top = 53
    Width = 542
    Height = 326
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'#9#9
      'CIDADE'#9'30'#9'CIDADE'#9'F'
      'UF'#9'2'#9'UF'#9#9
      'CEP'#9'10'#9'CEP'#9'F'#9
      'IBGE'#9'10'#9'IBGE'#9#9
      'ESTADO'#9'10'#9'ESTADO'#9#9
      'MUNICIPIO'#9'10'#9'MUNICIPIO'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = dscidade
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 783
    object Label1: TLabel
      Left = 7
      Top = 15
      Width = 69
      Height = 13
      Caption = 'LOCALIZAR :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 78
      Top = 11
      Width = 443
      Height = 21
      DataSource = dscidade
      SearchField = 'CIDADE'
      TabOrder = 0
      OnKeyDown = wwIncrementalSearch1KeyDown
    end
  end
  object qrcidade: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrcidadeBeforePost
    AfterPost = qrcidadeAfterPost
    SQL.Strings = (
      'select * from c000006')
    Params = <>
    Left = 704
    Top = 344
    object qrcidadeCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcidadeCIDADE: TWideStringField
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrcidadeUF: TWideStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object qrcidadeCEP: TWideStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Size = 10
    end
    object qrcidadeIBGE: TWideStringField
      DisplayWidth = 10
      FieldName = 'IBGE'
      Size = 10
    end
    object qrcidadeESTADO: TWideStringField
      DisplayWidth = 10
      FieldName = 'ESTADO'
      Size = 10
    end
    object qrcidadeMUNICIPIO: TWideStringField
      DisplayWidth = 10
      FieldName = 'MUNICIPIO'
      Size = 10
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 344
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object dscidade: TDataSource
    DataSet = qrcidade
    Left = 688
    Top = 384
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Cidade'
    UserControl = frmPrincipal.icloud
    Components = ''
    NotAllowed = naDisabled
    Left = 616
    Top = 272
  end
end
