inherited FMesaPesquisa: TFMesaPesquisa
  Caption = 'Cadastro de Mesas'
  ExplicitWidth = 510
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 264
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
    DataSet = DMTabelas.adoMesa
  end
end
