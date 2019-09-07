inherited FProdutoCadastro: TFProdutoCadastro
  Caption = 'Cadastro de Produtos'
  ClientHeight = 240
  ExplicitHeight = 274
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbtCodigo: TDBText
    DataField = 'Codigo'
  end
  object Label2: TLabel [3]
    Left = 19
    Top = 132
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object lblCodigoBarras: TLabel [4]
    Left = 19
    Top = 105
    Width = 82
    Height = 13
    Caption = 'C'#243'digo de Barras'
  end
  inherited pnlRodape: TPanel
    Top = 178
    ExplicitTop = 178
  end
  inherited dbeDescricao: TDBEdit
    DataField = 'DESCRICAO'
  end
  inherited DBCheckBox1: TDBCheckBox
    Top = 157
    DataField = 'ATIVA'
    TabOrder = 6
    ValueChecked = '0'
    ValueUnchecked = '1'
    ExplicitTop = 157
  end
  object dbedtPRECOVENDA: TDBEdit [9]
    Left = 128
    Top = 129
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRECO'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBCheckBox2: TDBCheckBox [10]
    Left = 280
    Top = 131
    Width = 145
    Height = 17
    Caption = 'Produto vendido por peso'
    DataField = 'Peso'
    DataSource = dsCadastro
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dbedtCODBARRA: TDBEdit [11]
    Left = 128
    Top = 102
    Width = 320
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EAN13'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited dsCadastro: TDataSource
    DataSet = DMTabelas.adoProduto
  end
end
