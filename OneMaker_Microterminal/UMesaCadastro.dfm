inherited FMesaCadastro: TFMesaCadastro
  Caption = 'Cadastro de Mesas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbtCodigo: TDBText
    DataField = 'Codigo'
  end
  inherited dbeDescricao: TDBEdit
    DataField = 'DESCRICAO'
  end
  inherited DBCheckBox1: TDBCheckBox
    DataField = 'ATIVA'
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  inherited dsCadastro: TDataSource
    DataSet = DMTabelas.adoMesa
  end
end
