inherited FPadraoLista: TFPadraoLista
  Caption = 'Padr'#227'o Lista'
  ClientHeight = 331
  OnClose = FormClose
  ExplicitWidth = 518
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 86
    Width = 502
    Height = 245
    Align = alClient
    DataSource = dsLista
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ToolBar1: TToolBar [2]
    Left = 0
    Top = 49
    Width = 502
    Height = 37
    ButtonHeight = 36
    ButtonWidth = 69
    Caption = 'ToolBar1'
    Images = imgPadrao
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 2
    object tbInserir: TToolButton
      Left = 0
      Top = 0
      Action = actInserir
    end
    object tbAlterar: TToolButton
      Left = 69
      Top = 0
      Action = actAlterar
    end
    object tbRemover: TToolButton
      Left = 138
      Top = 0
      Action = actRemover
    end
    object tbSeparadorSair: TToolButton
      Left = 207
      Top = 0
      Width = 8
      Caption = 'tbSeparadorSair'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object tbSair: TToolButton
      Left = 215
      Top = 0
      Action = actSair
    end
  end
  inherited ALPadrao: TActionList
    Left = 32
    Top = 112
    object actInserir: TAction
      Caption = 'F2 - Inserir'
      ShortCut = 113
      OnExecute = actInserirExecute
    end
    object actAlterar: TAction
      Caption = 'F3 - Alterar'
      ShortCut = 114
      OnExecute = actAlterarExecute
    end
    object actRemover: TAction
      Caption = 'Remover'
    end
    object actSair: TAction
      Caption = 'ESC - Fechar'
      ShortCut = 27
      OnExecute = actSairExecute
    end
  end
  object dsLista: TDataSource
    Left = 96
    Top = 112
  end
end
