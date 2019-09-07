object frmloc_banco: Tfrmloc_banco
  Left = 505
  Top = 213
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Localizar Banco'
  ClientHeight = 336
  ClientWidth = 355
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
    Top = 30
    Width = 355
    Height = 2
    Align = alTop
    ExplicitWidth = 353
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 32
    Width = 355
    Height = 304
    Selected.Strings = (
      'NUMERO'#9'7'#9'NUMERO'
      'BANCO'#9'44'#9'BANCO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsbanco
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
    PaintOptions.AlternatingRowColor = 14671839
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitWidth = 345
    ExplicitHeight = 294
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    ExplicitWidth = 345
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 4
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
  object dsbanco: TDataSource
    DataSet = frmmodulo.qrbanco
    Left = 216
    Top = 144
  end
end
