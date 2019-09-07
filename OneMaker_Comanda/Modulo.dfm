object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 318
  Width = 480
  object Balanca: TACBrBAL
    Porta = 'COM1'
    OnLePeso = BalancaLePeso
    Left = 48
    Top = 136
  end
  object cdsComandas: TClientDataSet
    PersistDataPacket.Data = {
      540000009619E0BD01000000180000000200000000000300000054000A49445F
      434F4D414E44410100490010000100055749445448020002001400064556454E
      544F01004900100001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 152
    object cdsComandasID_COMANDA: TStringField
      FieldName = 'ID_COMANDA'
    end
    object cdsComandasEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsComandas
    Left = 144
    Top = 208
  end
  object Conexao: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\OneMaker\Server\BD\base.fdb'
    Username = 'sysdba'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object query: TUniQuery
    Connection = Conexao
    Left = 120
    Top = 32
  end
  object st_Mesa_Abertura: TUniStoredProc
    StoredProcName = 'ST_LANCTO_INSERT'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_LANCTO_INSERT(:CODIGO, :DATA, :HORA, :COD_F' +
        'UNCIONARIO)')
    Connection = Conexao
    Left = 240
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftString
        Name = 'COD_FUNCIONARIO'
        ParamType = ptInput
        Size = 10
        Value = nil
      end>
    CommandStoredProcName = 'ST_LANCTO_INSERT'
  end
  object st_consumo: TUniStoredProc
    StoredProcName = 'ST_LANCTO_CONSUMO'
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_LANCTO_CONSUMO(:COD_PRODUTO, :COD_MESA, :QT' +
        'DE, :UNITARIO, :TOTAL)')
    Connection = Conexao
    Left = 336
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'COD_PRODUTO'
        ParamType = ptInput
        Size = 10
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'COD_MESA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ST_LANCTO_CONSUMO'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 368
    Top = 184
  end
  object ZFilial: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Active = True
    Left = 56
    Top = 240
    object ZFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object ZFilialFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object ZFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object ZFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ZFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ZFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object ZFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ZFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object ZFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object ZFilialIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object ZFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object ZFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object ZFilialOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object ZFilialOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object ZFilialCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object ZFilialSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object ZFilialEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object ZFilialOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object ZFilialOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object ZFilialECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object ZFilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ZFilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object ZFilialISS: TFloatField
      FieldName = 'ISS'
    end
    object ZFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ZFilialRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object ZFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ZFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ZFilialFARMACIA_RESP_TECNICO: TStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object ZFilialFARMACIA_CRF: TStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object ZFilialFARMACIA_CPF: TStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object ZFilialFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object ZFilialFARMACIA_UF: TStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object ZFilialFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object ZFilialFARMACIA_EMAIL: TStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object ZFilialFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object ZFilialFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object ZFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object ZFilialINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object ZFilialFARMACIA_NUMEROLICENCA: TStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object ZFilialCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object ZFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object ZFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZFilialATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object ZFilialCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object ZFilialCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object ZFilialCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object ZFilialCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object ZFilialCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object ZFilialCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object ZFilialCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object ZFilialCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object ZFilialCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object ZFilialCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object ZFilialCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object ZFilialINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object ZFilialDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object ZFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object ZFilialCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object ZFilialCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object ZFilialCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object ZFilialCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object ZFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object ZFilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object ZFilialDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object ZFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object ZFilialSERIE_CTE: TStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object ZFilialSEQ_CTE: TStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object ZFilialCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
    end
    object ZFilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
end
