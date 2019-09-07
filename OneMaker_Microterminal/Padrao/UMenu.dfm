inherited FMenu: TFMenu
  Caption = 'FMenu'
  ClientHeight = 194
  ClientWidth = 419
  ExplicitWidth = 427
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 8
    Top = 55
    Width = 95
    Height = 49
    Action = actComanda
  end
  object SpeedButton2: TSpeedButton [1]
    Left = 8
    Top = 110
    Width = 95
    Height = 49
    Action = actComplemento
  end
  object SpeedButton3: TSpeedButton [2]
    Left = 109
    Top = 55
    Width = 95
    Height = 49
    Action = actMesa
  end
  object SpeedButton4: TSpeedButton [3]
    Left = 109
    Top = 110
    Width = 95
    Height = 49
    Action = actVendas
  end
  object SpeedButton5: TSpeedButton [4]
    Left = 208
    Top = 55
    Width = 95
    Height = 49
    Action = actOperador
  end
  object SpeedButton6: TSpeedButton [5]
    Left = 208
    Top = 110
    Width = 95
    Height = 49
    Action = actTerminal
  end
  object SpeedButton7: TSpeedButton [6]
    Left = 309
    Top = 55
    Width = 95
    Height = 49
    Action = actProdutos
  end
  object SpeedButton8: TSpeedButton [7]
    Left = 309
    Top = 110
    Width = 95
    Height = 49
    Action = actSair
  end
  inherited pnlCabecalho: TPanel
    Width = 419
    ExplicitWidth = 419
    inherited imgCabecalho: TImage
      Width = 365
      ExplicitWidth = 548
    end
    inherited bvCabecalho: TBevel
      Width = 419
      ExplicitWidth = 548
    end
    inherited lblCabecalho: TLabel
      Width = 371
      ExplicitWidth = 500
    end
  end
  inherited stbMenu: TStatusBar
    Top = 168
    Width = 419
    ExplicitTop = 168
    ExplicitWidth = 419
  end
  inherited ALPadrao: TActionList
    Left = 128
    Top = 8
    object actComanda: TAction
      Caption = 'F2 - Comanda'
      ShortCut = 113
      OnExecute = actComandaExecute
    end
    object actMesa: TAction
      Caption = 'F3 - Mesa'
      ShortCut = 114
      OnExecute = actMesaExecute
    end
    object actOperador: TAction
      Caption = 'F4 - Operador'
      ShortCut = 115
      OnExecute = actOperadorExecute
    end
    object actVendas: TAction
      Caption = 'F5 - Vendas'
      ShortCut = 116
      OnExecute = actVendasExecute
    end
    object actSair: TAction
      Caption = 'ESC - Fechar'
      ShortCut = 27
      OnExecute = actSairExecute
    end
    object actProdutos: TAction
      Caption = 'F6 - Produtos'
      ShortCut = 117
      OnExecute = actProdutosExecute
    end
    object actTerminal: TAction
      Caption = 'F7 - Terminal'
      ShortCut = 118
      OnExecute = actTerminalExecute
    end
    object actComplemento: TAction
      Caption = 'F8 - Complemento'
      ShortCut = 119
      OnExecute = actComplementoExecute
    end
  end
  inherited imgPadrao: TImageList
    Left = 168
    Top = 8
  end
end
