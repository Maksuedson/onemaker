inherited FOperadorPesquisa: TFOperadorPesquisa
  Caption = 'FOperadorPesquisa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 273
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVA'
        Width = 50
        Visible = True
      end>
  end
  inherited dsLista: TDataSource
    DataSet = DMTabelas.adoOperador
  end
end
