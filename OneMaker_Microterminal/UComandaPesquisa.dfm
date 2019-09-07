inherited FComandaPesquisa: TFComandaPesquisa
  Caption = 'Cadastro de Comandas'
  ClientHeight = 268
  ExplicitWidth = 510
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Height = 182
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativa'
        Width = 56
        Visible = True
      end>
  end
  inherited dsLista: TDataSource
    DataSet = DMTabelas.adoComanda
  end
end
