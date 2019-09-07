object frmloccliente: Tfrmloccliente
  Left = 511
  Top = 276
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar cliente'
  ClientHeight = 442
  ClientWidth = 700
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = gridKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lpesquisa: TLabel
      Left = 10
      Top = 12
      Width = 96
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F3 | Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 112
      Top = 8
      Width = 581
      Height = 19
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = LOCKeyPress
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 37
    Width = 700
    Height = 405
    Selected.Strings = (
      'CODIGO'#9'6'#9'C'#243'digo'
      'NOME'#9'31'#9'Nome/Raz'#227'o Social'
      'APELIDO'#9'18'#9'Nome Fantasia'
      'ENDERECO'#9'20'#9'Endere'#231'o'
      'CPF'#9'17'#9'CPF/CNPJ')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = dscliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
  end
  object dscliente: TDataSource
    DataSet = frmmodulo.qrcliente
    Left = 280
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 248
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
  end
end
