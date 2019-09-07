inherited FOperadorCadastro: TFOperadorCadastro
  Caption = 'Cadastro de Operadores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblDescricao: TLabel
    Caption = 'Operador'
  end
  inherited dbtCodigo: TDBText
    DataField = 'Codigo'
  end
  inherited dbeDescricao: TDBEdit
    DataField = 'NOME'
  end
  inherited DBCheckBox1: TDBCheckBox
    DataField = 'SITUACAO'
    ValueChecked = '0'
    ValueUnchecked = '1'
  end
  inherited dsCadastro: TDataSource
    DataSet = DMTabelas.adoOperador
  end
end
