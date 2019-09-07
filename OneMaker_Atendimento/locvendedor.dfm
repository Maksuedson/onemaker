object frmlocvendedor: Tfrmlocvendedor
  Left = 288
  Top = 362
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Vendedor'
  ClientHeight = 320
  ClientWidth = 420
  Color = 5460819
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 48
    ExplicitWidth = 450
    object lpesquisa: TLabel
      Left = 8
      Top = 11
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 72
      Top = 8
      Width = 347
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
    Width = 420
    Height = 283
    Selected.Strings = (
      'CODIGO'#9'8'#9'C'#243'digo'
      'NOME'#9'47'#9'Nome')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = True
    DataSource = dsvendedor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
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
    ExplicitTop = 33
  end
  object dsvendedor: TDataSource
    DataSet = frmmodulo.qrfunci
    Left = 280
    Top = 192
  end
end
