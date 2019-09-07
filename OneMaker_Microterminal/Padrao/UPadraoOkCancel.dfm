inherited FPadraoOkCancel: TFPadraoOkCancel
  Caption = 'FPadraoOkCancel'
  ClientHeight = 254
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodape: TPanel [1]
    Left = 0
    Top = 192
    Width = 502
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      502
      62)
    object bvRodape: TBevel
      Left = 0
      Top = 0
      Width = 502
      Height = 2
      Align = alTop
      Shape = bsTopLine
      ExplicitTop = 40
      ExplicitWidth = 320
    end
    object sbCancelar: TSpeedButton
      Left = 400
      Top = 8
      Width = 97
      Height = 49
      Action = actCancelar
      Anchors = [akRight, akBottom]
      ExplicitLeft = 320
    end
    object sbOk: TSpeedButton
      Left = 297
      Top = 8
      Width = 97
      Height = 49
      Action = actOk
      Anchors = [akRight, akBottom]
      ExplicitLeft = 217
    end
  end
  inherited ALPadrao: TActionList
    object actOk: TAction
      Caption = 'F2 - Ok'
      ShortCut = 113
      OnExecute = actOkExecute
    end
    object actCancelar: TAction
      Caption = 'ESC - Cancel'
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
  end
end
