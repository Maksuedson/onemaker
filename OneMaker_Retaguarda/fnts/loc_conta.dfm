object frmloc_conta: Tfrmloc_conta
  Left = 264
  Top = 163
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PLANO DE CONTAS | Localizar'
  ClientHeight = 366
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 353
    Height = 3
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 44
    Width = 353
    Height = 304
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'CONTA'#9'44'#9'Conta')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsbanco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 9
      Width = 265
      Height = 21
      DataSource = dsbanco
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 348
    Width = 353
    Height = 18
    Panels = <>
  end
  object dsbanco: TDataSource
    DataSet = frmmodulo.qrplano
    Left = 216
    Top = 144
  end
end
