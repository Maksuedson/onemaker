inherited FComandaCadastro: TFComandaCadastro
  Caption = 'Cadastro de Comandas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbtCodigo: TDBText
    DataField = 'Codigo'
  end
  inherited dbeDescricao: TDBEdit
    DataField = 'Descricao'
  end
  inherited DBCheckBox1: TDBCheckBox
    DataField = 'Ativa'
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  inherited dsCadastro: TDataSource
    DataSet = DMTabelas.adoComanda
  end
end
