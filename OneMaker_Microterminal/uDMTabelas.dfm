object DMTabelas: TDMTabelas
  OldCreateOrder = False
  Height = 412
  Width = 488
  object adoComanda: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from MT_COMANDA'
    Parameters = <>
    Left = 40
    Top = 24
    object intgrfldComandaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object strngfldComandaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object intgrfldComandaATIVA: TIntegerField
      FieldName = 'ATIVA'
    end
  end
  object adoMesa: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from MT_MESA'
    Parameters = <>
    Left = 40
    Top = 72
    object intgrfldMesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object strngfldMesaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object intgrfldMesaATIVA: TIntegerField
      FieldName = 'ATIVA'
    end
  end
  object adoOperador: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from operador'
    Parameters = <>
    Left = 40
    Top = 128
    object strngfldOperadorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object strngfldOperadorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object intgrfldOperadorATIVA: TIntegerField
      FieldName = 'ATIVA'
    end
  end
  object adoVenda: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    AfterOpen = adoVendaAfterOpen
    BeforeClose = adoVendaBeforeClose
    CommandText = 
      'SELECT R000001.*, mt_mesa.descrica as DescMesa'#13#10'FROM mt_mesa, r0' +
      '00001'#13#10#13#10'where'#13#10'mt_mesa.Codigo = R000001.Codigo'
    Parameters = <>
    Left = 32
    Top = 264
    object intgrfldVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object dtmfldVendaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object strngfldVendaHORA: TStringField
      FieldName = 'HORA'
      Size = 10
    end
    object strngfldVendaECF: TStringField
      FieldName = 'ECF'
      Size = 10
    end
    object strngfldVendaCOO: TStringField
      FieldName = 'COO'
      Size = 10
    end
    object strngfldVendaCER: TStringField
      FieldName = 'CER'
      Size = 10
    end
    object strngfldVendaCOD_FUNCIONARIO: TStringField
      FieldName = 'COD_FUNCIONARIO'
      Size = 10
    end
    object strngfldVendaDESCMESA: TStringField
      FieldName = 'DESCMESA'
      Size = 30
    end
  end
  object adoVendaItem: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnCalcFields = adoVendaItemCalcFields
    CommandText = 
      'select c000025.produto, R000002.* from R000002, c000025 where'#13#10'c' +
      '000025.Codigo = R000002.Cod_Produto'#13#10'and Cod_mesa = :Codigo'
    DataSource = dsVenda
    IndexFieldNames = 'CODIGO'
    MasterFields = 'Codigo'
    Parameters = <
      item
        Name = 'Codigo'
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 96
    Top = 80
    object strngfldVendaItemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object intgrfldVendaItemCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object intgrfldVendaItemCOD_MESA: TIntegerField
      FieldName = 'COD_MESA'
    end
    object strngfldVendaItemCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 10
    end
    object bcdfldVendaItemQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object bcdfldVendaItemUNITARIO: TBCDField
      FieldName = 'UNITARIO'
      Precision = 15
      Size = 3
    end
    object bcdfldVendaItemTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object strngfldVendaItemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object intgrfldVendaItemTRANSF_MESA: TIntegerField
      FieldName = 'TRANSF_MESA'
    end
    object intgrfldVendaItemCANCELADO: TIntegerField
      FieldName = 'CANCELADO'
    end
  end
  object dsVenda: TDataSource
    DataSet = adoVenda
    Left = 80
    Top = 264
  end
  object adoProduto: TADODataSet
    Active = True
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from produto'
    Parameters = <>
    Left = 40
    Top = 192
  end
  object adoTerminal: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from MT_TERMINAL'
    Parameters = <>
    Left = 32
    Top = 320
    object adoTerminalCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object adoTerminalDescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 255
    end
    object adoTerminalProtocolo: TIntegerField
      FieldName = 'Protocolo'
    end
    object adoTerminalDisplay: TIntegerField
      FieldName = 'Display'
    end
    object adoTerminalIP: TWideStringField
      FieldName = 'IP'
      Size = 255
    end
    object adoTerminalPortaImpressora: TIntegerField
      DisplayLabel = 'Porta da Impressora'
      FieldName = 'PortaImpressora'
    end
    object adoTerminalPortaBalanca: TIntegerField
      DisplayLabel = 'Porta da Balan'#231'a'
      FieldName = 'PortaBalanca'
    end
    object smlntfldTerminalATIVA: TSmallintField
      FieldName = 'ATIVA'
    end
  end
  object adoComplemento: TADODataSet
    Connection = DMConexao.Conexao
    CursorType = ctStatic
    OnNewRecord = adoComandaNewRecord
    CommandText = 'select * from MT_COMPLEMENTO'
    Parameters = <>
    Left = 120
    Top = 32
    object intgrfldComplementoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object strngfldComplementoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object intgrfldComplementoATIVA: TIntegerField
      FieldName = 'ATIVA'
    end
  end
end
