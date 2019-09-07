inherited FProdutoLista: TFProdutoLista
  Caption = 'Produtos'
  ClientHeight = 465
  ClientWidth = 514
  ExplicitWidth = 522
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 514
    ExplicitWidth = 514
    inherited imgCabecalho: TImage
      Width = 460
      ExplicitWidth = 514
    end
    inherited bvCabecalho: TBevel
      Width = 514
      ExplicitWidth = 514
    end
    inherited lblCabecalho: TLabel
      Width = 466
      ExplicitWidth = 466
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 92
    Width = 514
    Height = 213
    Align = alNone
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVA'
        Width = 50
        Visible = True
      end>
  end
  inherited ToolBar1: TToolBar
    Width = 514
    ExplicitWidth = 514
    inherited tbInserir: TToolButton
      Enabled = False
    end
    inherited tbAlterar: TToolButton
      Enabled = False
    end
    inherited tbRemover: TToolButton
      Enabled = False
    end
  end
  object dbgrd1: TDBGrid [3]
    Left = 24
    Top = 320
    Width = 465
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited dsLista: TDataSource
    DataSet = DMTabelas.adoProduto
  end
  object DataSource1: TDataSource
    DataSet = DMTabelas.adoProduto
    Left = 120
    Top = 336
  end
end
