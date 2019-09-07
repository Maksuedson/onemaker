object frmloc_funci: Tfrmloc_funci
  Left = 500
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FUNCION'#193'RIO | Localizar...'
  ClientHeight = 320
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrid1: TwwDBGrid
    Left = 0
    Top = 30
    Width = 413
    Height = 290
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'NOME'#9'54'#9'Nome')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsfunci
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitLeft = -1
    ExplicitTop = 66
    ExplicitWidth = 410
    ExplicitHeight = 282
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 36
    ExplicitWidth = 410
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 59
      Top = 3
      Width = 337
      Height = 21
      DataSource = dsfunci
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object dsfunci: TDataSource
    DataSet = frmmodulo.qrfunci
    Left = 280
    Top = 216
  end
end
