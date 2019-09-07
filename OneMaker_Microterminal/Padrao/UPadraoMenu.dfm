inherited FPadraoMenu: TFPadraoMenu
  Caption = 'FPadraoMenu'
  ClientHeight = 298
  ClientWidth = 442
  OnShow = FormShow
  ExplicitWidth = 458
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 442
    ExplicitWidth = 442
    DesignSize = (
      442
      49)
    inherited imgCabecalho: TImage
      Width = 388
      ExplicitWidth = 442
    end
    inherited bvCabecalho: TBevel
      Width = 442
      ExplicitWidth = 442
    end
    inherited lblCabecalho: TLabel
      Width = 394
      ExplicitWidth = 394
    end
  end
  object stbMenu: TStatusBar [1]
    Left = 0
    Top = 272
    Width = 442
    Height = 26
    Panels = <
      item
        Width = 350
      end>
  end
end
