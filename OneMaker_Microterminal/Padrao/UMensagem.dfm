inherited FMensagem: TFMensagem
  Caption = 'FMensagem'
  ClientHeight = 222
  ClientWidth = 335
  ExplicitWidth = 351
  ExplicitHeight = 260
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensagem: TLabel [0]
    Left = 8
    Top = 47
    Width = 322
    Height = 106
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = False
    WordWrap = True
    ExplicitWidth = 409
    ExplicitHeight = 138
  end
  inherited pnlCabecalho: TPanel
    Width = 335
    ExplicitWidth = 335
    inherited imgCabecalho: TImage
      Width = 335
      ExplicitWidth = 335
    end
    inherited bvCabecalho: TBevel
      Width = 335
      ExplicitWidth = 335
    end
    inherited lblCabecalho: TLabel
      Width = 287
      ExplicitWidth = 287
    end
  end
  inherited pnlRodape: TPanel
    Top = 160
    Width = 335
    ExplicitTop = 160
    ExplicitWidth = 335
    inherited bvRodape: TBevel
      Width = 335
      ExplicitWidth = 335
    end
    inherited sbCancelar: TSpeedButton
      Left = 233
      ExplicitLeft = 233
    end
    inherited sbOk: TSpeedButton
      Left = 130
      ExplicitLeft = 130
    end
  end
end
