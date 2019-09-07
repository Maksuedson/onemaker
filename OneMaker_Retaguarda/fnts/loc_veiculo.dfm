object frmloc_veiculo: Tfrmloc_veiculo
  Left = 226
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Ve'#237'culo'
  ClientHeight = 299
  ClientWidth = 347
  Color = clWhite
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
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 37
    Width = 347
    Height = 262
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#211'DIGO'
      'NOME'#9'29'#9'VE'#205'CULO'
      'PLACA'#9'14'#9'PLACA')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsveiculo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
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
    ExplicitTop = 77
    ExplicitWidth = 353
    ExplicitHeight = 247
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 39
    ExplicitWidth = 353
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Localizar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 7
      Width = 265
      Height = 21
      DataSource = dsveiculo
      SearchField = 'nome'
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
  object dsveiculo: TDataSource
    DataSet = frmmodulo.qrveiculo
    Left = 216
    Top = 144
  end
  object popupmenu1: TPopupMenu
    Left = 136
    Top = 112
    object E1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = E1Click
    end
  end
end
