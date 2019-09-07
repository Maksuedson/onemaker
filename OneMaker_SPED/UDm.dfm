object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 559
  Width = 889
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\OneMaker\Server\efd\'
    Arquivo = 'EFD.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 800
    Top = 12
  end
  object FDConexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'Database=C:\OneMaker\Server\BD\BASE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 12
  end
  object qrEmpresa: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from c000004')
    Left = 24
    Top = 68
    object qrEmpresaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qrEmpresaFILIAL: TStringField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
      Size = 50
    end
    object qrEmpresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
    end
    object qrEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object qrEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object qrEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qrEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 25
    end
    object qrEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 25
    end
    object qrEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 14
    end
    object qrEmpresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
      Origin = 'SEQNF'
    end
    object qrEmpresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 25
    end
    object qrEmpresaOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object qrEmpresaOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 100
    end
    object qrEmpresaCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Origin = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrEmpresaSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Origin = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrEmpresaEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Origin = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrEmpresaOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrEmpresaOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Origin = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrEmpresaECF: TStringField
      FieldName = 'ECF'
      Origin = 'ECF'
      Size = 1
    end
    object qrEmpresaTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrEmpresaIPI: TCurrencyField
      FieldName = 'IPI'
      Origin = 'IPI'
    end
    object qrEmpresaISS: TCurrencyField
      FieldName = 'ISS'
      Origin = 'ISS'
    end
    object qrEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qrEmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object qrEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 50
    end
    object qrEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qrEmpresaFARMACIA_RESP_TECNICO: TStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Origin = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrEmpresaFARMACIA_CRF: TStringField
      FieldName = 'FARMACIA_CRF'
      Origin = 'FARMACIA_CRF'
      Size = 10
    end
    object qrEmpresaFARMACIA_CPF: TStringField
      FieldName = 'FARMACIA_CPF'
      Origin = 'FARMACIA_CPF'
      Size = 14
    end
    object qrEmpresaFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
      Origin = 'FARMCIA_DATA'
    end
    object qrEmpresaFARMACIA_UF: TStringField
      FieldName = 'FARMACIA_UF'
      Origin = 'FARMACIA_UF'
      Size = 2
    end
    object qrEmpresaFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
      Origin = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrEmpresaFARMACIA_EMAIL: TStringField
      FieldName = 'FARMACIA_EMAIL'
      Origin = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrEmpresaFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
      Origin = 'FARMACIA_LOGIN'
    end
    object qrEmpresaFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Origin = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrEmpresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
      Origin = 'CONHECIMENTO'
    end
    object qrEmpresaINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Origin = 'INDUSTRIA'
      Size = 1
    end
    object qrEmpresaFARMACIA_NUMEROLICENCA: TStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
      Origin = 'FARMACIA_NUMEROLICENCA'
    end
    object qrEmpresaCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Origin = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrEmpresaIBGE: TStringField
      FieldName = 'IBGE'
      Origin = 'IBGE'
      Size = 10
    end
    object qrEmpresaPIS: TBCDField
      FieldName = 'PIS'
      Origin = 'PIS'
      Precision = 18
      Size = 2
    end
    object qrEmpresaCOFINS: TBCDField
      FieldName = 'COFINS'
      Origin = 'COFINS'
      Precision = 18
      Size = 2
    end
    object qrEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object qrEmpresaATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 40
    end
    object qrEmpresaCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Origin = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrEmpresaCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Origin = 'CONTADOR_NOME'
      Size = 60
    end
    object qrEmpresaCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
      Origin = 'CONTADOR_CPF'
    end
    object qrEmpresaCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Origin = 'CONTADOR_CRC'
      Size = 15
    end
    object qrEmpresaCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Origin = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrEmpresaCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Origin = 'CONTADOR_CEP'
      Size = 10
    end
    object qrEmpresaCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Origin = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrEmpresaCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Origin = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrEmpresaCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Origin = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrEmpresaCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Origin = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrEmpresaCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Origin = 'CONTADOR_FONE'
      Size = 15
    end
    object qrEmpresaCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Origin = 'CONTADOR_FAX'
      Size = 15
    end
    object qrEmpresaCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Origin = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrEmpresaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object qrEmpresaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object qrEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 10
    end
    object qrEmpresaCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 1
    end
    object qrEmpresaCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Origin = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrEmpresaCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Origin = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrEmpresaCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Origin = 'CONTADOR_UF'
      Size = 2
    end
    object qrEmpresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
      Origin = 'PERMITE_CREDITO'
    end
    object qrEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 60
    end
    object qrEmpresaDFIXAS: TSingleField
      FieldName = 'DFIXAS'
      Origin = 'DFIXAS'
    end
    object qrEmpresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
      Origin = 'TIPOCALCULO'
    end
    object qrEmpresaSERIE_CTE: TStringField
      FieldName = 'SERIE_CTE'
      Origin = 'SERIE_CTE'
      Size = 6
    end
    object qrEmpresaSEQ_CTE: TStringField
      FieldName = 'SEQ_CTE'
      Origin = 'SEQ_CTE'
      Size = 6
    end
    object qrEmpresaCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
    end
    object qrEmpresaPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object qrEmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 100
    end
  end
  object qrUnidades: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from SPED_0190'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM')
    Left = 28
    Top = 120
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrUnidadesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object qrUnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qrUnidadesDT_INI: TDateField
      FieldName = 'DT_INI'
      Origin = 'DT_INI'
    end
    object qrUnidadesDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
  end
  object qrC400_ECF: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_c400'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM'
      '')
    Left = 28
    Top = 172
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftDateTime
        ParamType = ptInput
      end>
    object qrC400_ECFCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC400_ECFREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC400_ECFCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'COD_MOD'
      Size = 2
    end
    object qrC400_ECFECF_MOD: TStringField
      FieldName = 'ECF_MOD'
      Origin = 'ECF_MOD'
    end
    object qrC400_ECFECF_FAB_SN: TStringField
      FieldName = 'ECF_FAB_SN'
      Origin = 'ECF_FAB_SN'
    end
    object qrC400_ECFECF_CX: TIntegerField
      FieldName = 'ECF_CX'
      Origin = 'ECF_CX'
    end
    object qrC400_ECFDT_INI: TDateField
      FieldName = 'DT_INI'
      Origin = 'DT_INI'
    end
    object qrC400_ECFDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
  end
  object qrC460_CUPONS: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_c460'
      'Where CODC405 = :CODC405'
      'order by dt_doc'
      '')
    Left = 28
    Top = 220
    ParamData = <
      item
        Name = 'CODC405'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object qrC460_CUPONSCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC460_CUPONSCODC405: TStringField
      FieldName = 'CODC405'
      Origin = 'CODC405'
      Size = 6
    end
    object qrC460_CUPONSREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC460_CUPONSCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Origin = 'COD_MOD'
      Size = 2
    end
    object qrC460_CUPONSCOD_SIT: TIntegerField
      FieldName = 'COD_SIT'
      Origin = 'COD_SIT'
    end
    object qrC460_CUPONSNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
      Origin = 'NUM_DOC'
    end
    object qrC460_CUPONSVL_DOC: TSingleField
      FieldName = 'VL_DOC'
      Origin = 'VL_DOC'
    end
    object qrC460_CUPONSVL_PIS: TSingleField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
    end
    object qrC460_CUPONSVL_COFINS: TSingleField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
    end
    object qrC460_CUPONSCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 14
    end
    object qrC460_CUPONSNOM_ADQ: TStringField
      FieldName = 'NOM_ADQ'
      Origin = 'NOM_ADQ'
      Size = 60
    end
    object qrC460_CUPONSDT_DOC: TDateField
      FieldName = 'DT_DOC'
      Origin = 'DT_DOC'
    end
  end
  object qrC470_ITENSCUPOM: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_c470'
      'Where CODC460 = :CODC460'
      '')
    Left = 28
    Top = 272
    ParamData = <
      item
        Name = 'CODC460'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object qrC470_ITENSCUPOMCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC470_ITENSCUPOMCODC460: TStringField
      FieldName = 'CODC460'
      Origin = 'CODC460'
      Size = 6
    end
    object qrC470_ITENSCUPOMREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC470_ITENSCUPOMCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      Size = 60
    end
    object qrC470_ITENSCUPOMQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object qrC470_ITENSCUPOMQTD_CANC: TSingleField
      FieldName = 'QTD_CANC'
      Origin = 'QTD_CANC'
    end
    object qrC470_ITENSCUPOMUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 6
    end
    object qrC470_ITENSCUPOMVL_ITEM: TSingleField
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
    end
    object qrC470_ITENSCUPOMCST_ICMS: TIntegerField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
    end
    object qrC470_ITENSCUPOMCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'CFOP'
    end
    object qrC470_ITENSCUPOMALIQ_ICMS: TSingleField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
    end
    object qrC470_ITENSCUPOMVL_PIS: TSingleField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
    end
    object qrC470_ITENSCUPOMVL_COFINS: TSingleField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
    end
  end
  object qrC405_REDUCOES: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_c405'
      
        'where CODECF = :CODECF AND DT_DOC >= :DT_INI AND  DT_DOC <= :DT_' +
        'FIM'
      'order by dt_doc'
      '')
    Left = 137
    Top = 216
    ParamData = <
      item
        Name = 'CODECF'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'DT_INI'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrC405_REDUCOESCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC405_REDUCOESCODECF: TStringField
      FieldName = 'CODECF'
      Origin = 'CODECF'
      Size = 6
    end
    object qrC405_REDUCOESREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC405_REDUCOESCRO: TIntegerField
      FieldName = 'CRO'
      Origin = 'CRO'
    end
    object qrC405_REDUCOESCRZ: TIntegerField
      FieldName = 'CRZ'
      Origin = 'CRZ'
    end
    object qrC405_REDUCOESNUM_COO_FIN: TIntegerField
      FieldName = 'NUM_COO_FIN'
      Origin = 'NUM_COO_FIN'
    end
    object qrC405_REDUCOESGT_FFIN: TSingleField
      FieldName = 'GT_FFIN'
      Origin = 'GT_FFIN'
    end
    object qrC405_REDUCOESVL_BRT: TSingleField
      FieldName = 'VL_BRT'
      Origin = 'VL_BRT'
    end
    object qrC405_REDUCOESDT_DOC: TDateField
      FieldName = 'DT_DOC'
      Origin = 'DT_DOC'
    end
  end
  object qrC420_TOTAISRED: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_c420'
      'Where CODC405 = :CODC405'
      '')
    Left = 138
    Top = 264
    ParamData = <
      item
        Name = 'CODC405'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object qrC420_TOTAISREDCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC420_TOTAISREDCODC405: TStringField
      FieldName = 'CODC405'
      Origin = 'CODC405'
      Size = 6
    end
    object qrC420_TOTAISREDREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC420_TOTAISREDCOD_TOT_PAR: TStringField
      FieldName = 'COD_TOT_PAR'
      Origin = 'COD_TOT_PAR'
      Size = 7
    end
    object qrC420_TOTAISREDVLR_ACUM_TOT: TSingleField
      FieldName = 'VLR_ACUM_TOT'
      Origin = 'VLR_ACUM_TOT'
    end
    object qrC420_TOTAISREDNR_TOT: TIntegerField
      FieldName = 'NR_TOT'
      Origin = 'NR_TOT'
    end
    object qrC420_TOTAISREDDESCR_NR_TOT: TStringField
      FieldName = 'DESCR_NR_TOT'
      Origin = 'DESCR_NR_TOT'
      Size = 100
    end
  end
  object qrC490_ECFMOVDIA: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from Sped_C490'
      'Where CODC405 = :CODC405'
      '')
    Left = 140
    Top = 316
    ParamData = <
      item
        Name = 'CODC405'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object qrC490_ECFMOVDIACODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrC490_ECFMOVDIACODC405: TStringField
      FieldName = 'CODC405'
      Origin = 'CODC405'
      Size = 6
    end
    object qrC490_ECFMOVDIAREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrC490_ECFMOVDIACST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      Size = 3
    end
    object qrC490_ECFMOVDIACFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object qrC490_ECFMOVDIAALIQ_ICMS: TSingleField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
    end
    object qrC490_ECFMOVDIAVL_OPR: TSingleField
      FieldName = 'VL_OPR'
      Origin = 'VL_OPR'
    end
    object qrC490_ECFMOVDIAVL_BC_ICMS: TSingleField
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
    end
    object qrC490_ECFMOVDIAVL_ICMS: TSingleField
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
    end
    object qrC490_ECFMOVDIACOD_OBS: TStringField
      FieldName = 'COD_OBS'
      Origin = 'COD_OBS'
      Size = 6
    end
  end
  object qrCMD: TFDQuery
    Connection = FDConexao
    Left = 724
    Top = 32
  end
  object qrItensMov: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'select TIPO, COD_ITEM, DESC_ITEM, COD_BARRA, UNID_INV, COD_NCM, ' +
        'ALIQ_ICMS'
      'from'
      '( select'
      #39'E'#39' AS TIPO,'
      'CODPRODUTO AS COD_ITEM,'
      
        '(select produto from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS D' +
        'ESC_ITEM,'
      
        '(select CODBARRA from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS ' +
        'COD_BARRA,'
      'UN_COMPRA AS UNID_INV,'
      
        '(select NCM from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS COD_N' +
        'CM,'
      'ENT.ICMS_ALIQUOTA AS ALIQ_ICMS'
      'FROM C000088 ENT'
      
        ' WHERE ENT.CODNOTA = (SELECT CODIGO FROM C000087 TENT WHERE TENT' +
        '.DATA_EMISSAO >= :DATAi AND TENT.DATA_EMISSAO <= :DATAf and tent' +
        '.CODIGO = ent.CODNOTA )'
      ''
      '/*'
      'UNION'
      ''
      'select'
      #39'S'#39' AS TIPO,'
      'CODPRODUTO AS COD_ITEM,'
      
        '(select produto from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS D' +
        'ESC_ITEM,'
      
        '(select CODBARRA from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS ' +
        'COD_BARRA,'
      
        '(SELECT UNIDADE FROM C000025 WHERE CODIGO = SAI.CODPRODUTO) AS U' +
        'NID_INV,'
      
        '(select NCM from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS COD_N' +
        'CM,'
      'SAI.ICMS AS ALIQ_ICMS'
      'FROM C000062 SAI'
      
        ' WHERE SAI.CODNOTA = (SELECT CODIGO FROM C000061 TSAI WHERE TSAI' +
        '.DATA_SAIDA >= :DATAi AND TSAI.DATA_SAIDA <= :DATAf and sai.CODN' +
        'OTA = tsai.CODIGO )'
      '*/'
      ''
      ')'
      '')
    Left = 292
    Top = 240
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DATAF'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrItensMovTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrItensMovCOD_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object qrItensMovDESC_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_ITEM'
      Origin = 'DESC_ITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qrItensMovCOD_BARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object qrItensMovUNID_INV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNID_INV'
      Origin = 'UNID_INV'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrItensMovCOD_NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensMovALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qrInventarioTotal: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'select  SUM(E.ESTOQUE_ATUAL * PRECOVENDA) AS VALOR_ESTOQUE from ' +
        'c000025 P, C000100 E'
      'where E.ESTOQUE_ATUAL > 0 AND E.CODPRODUTO = P.CODIGO')
    Left = 288
    Top = 188
    object qrInventarioTotalVALOR_ESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 7
    end
  end
  object qrC190_Analitico: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select'
      ' '#39'E'#39' AS TIPO,'
      'ent.cst, ent.CFOP,'
      'ent.ICMS_ALIQUOTA,'
      'sum(ent.ICMS_BASE) as VL_BC_ICMS,'
      'sum(ent.ICMS_VALOR) as VL_ICMS,'
      'sum(ent.SUB_BASE) as VL_BC_ICMS_ST,'
      'sum(ent.SUB_VALOR) as VL_ICMS_ST,'
      'sum(ent.ICMS_REDUCAO) as VL_RED_BC,'
      'sum(ent.IPI_VALOR) as VL_IPI'
      'FROM C000088 ent'
      
        'WHERE (select DATA_EMISSAO from c000087 where CODIGO = ent.CODNO' +
        'TA) >= :DT_INI and'
      
        '(select DATA_EMISSAO from c000087 where CODIGO = ent.CODNOTA)  <' +
        '= :DT_FIM'
      'and ent.CODNOTA = :CODIGO'
      'group by TIPO, ent.cst, ent.CFOP, ent.ICMS_ALIQUOTA'
      ''
      'UNION'
      ''
      'select '#39'S'#39' AS TIPO,'
      'sai.CST,'
      'sai.CFOP,'
      'sai.ICMS,'
      'sum(sai.BASE_CALCULO) as VL_BC_ICMS,'
      'sum(sai.VALOR_ICMS) as VL_ICMS,'
      'sum(sai.BASE_SUB) as VL_BC_ICMS_ST,'
      'sum(sai.ICMS_SUB) as VL_ICMS_ST,'
      'sum(sai.ICMS_REDUZIDO) as VL_RED_BC,'
      'sum(sai.VALOR_IPI) as VL_IPI'
      'FROM C000062 sai'
      
        'WHERE (select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA' +
        ') >= :DT_INI and'
      
        '(select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA)  <= ' +
        ':DT_FIM'
      'and sai.codnota = :CODIGO'
      'group by TIPO, sai.cst, sai.CFOP, sai.ICMS')
    Left = 292
    Top = 296
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object qrC190_AnaliticoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrC190_AnaliticoCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 5
    end
    object qrC190_AnaliticoCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrC190_AnaliticoICMS_ALIQUOTA: TBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Origin = 'ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_BC_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_BC_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_RED_BC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_RED_BC'
      Origin = 'VL_RED_BC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrC190_AnaliticoVL_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qrInventario: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'select CODIGO, CODBARRA,PRODUTO, UNIDADE, NCM,PRECOCUSTO, E.ESTO' +
        'QUE_ATUAL AS ESTOQUE,(E.ESTOQUE_ATUAL * PRECOCUSTO) AS VL_ITEM, ' +
        'ALIQUOTA, CODFORNECEDOR from c000025 P, C000100 E'
      'where E.ESTOQUE_ATUAL > 0 AND E.CODPRODUTO = P.CODIGO')
    Left = 280
    Top = 32
    object qrInventarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qrInventarioCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      Size = 13
    end
    object qrInventarioPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object qrInventarioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 2
    end
    object qrInventarioNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object qrInventarioPRECOCUSTO: TBCDField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
      Precision = 18
      Size = 3
    end
    object qrInventarioESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE_ATUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qrInventarioVL_ITEM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 7
    end
    object qrInventarioALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Origin = 'ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrInventarioCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      Size = 6
    end
  end
  object qrNotasEntradaSaida: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'SELECT TIPO, STATUS, CODIGO, NUMERO, CODFORNECEDOR, CODCLIENTE, ' +
        'MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, VALOR_NOTA, DESCONTO, ' +
        'TOTAL_PRODUTOS, FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, V' +
        'ALOR_ICMS, BASE_SUB, VALOR_SUB, IPI, PAGAMENTO   FROM'
      ''
      
        '( SELECT '#39'E'#39' AS TIPO, '#39'6'#39' AS STATUS, CODIGO, NUMERO, CODFORNECED' +
        'OR, '#39#39' AS CODCLIENTE, MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, ' +
        'TOTAL_NOTA AS VALOR_NOTA, DESCONTO, TOTAL_PRODUTOS, TRANSP_FRETE' +
        ' AS FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, VALOR_ICMS, B' +
        'ASE_SUB, VALOR_SUB, IPI, OPERACAO AS PAGAMENTO  FROM C000087'
      ''
      '   WHERE DATA_EMISSAO >= :DATAi AND DATA_EMISSAO <= :DATAf'
      ''
      'UNION'
      ''
      
        ' SELECT '#39'S'#39' AS TIPO,NFE_SITUACAO AS STATUS, CODIGO, NUMERO, '#39#39' A' +
        'S CODFORNECEDOR, CODCLIENTE, MODELO_NF AS MODELO, SERIE_NF AS SE' +
        'RIE, CFOP, DATA_SAIDA AS DATA_EMISSAO, CHAVE, TOTAL_NOTA AS VALO' +
        'R_NOTA, DESCONTO, VALOR_PRODUTOS AS TOTAL_PRODUTOS, FRETE_CONTA,' +
        ' FRETE, SEGURO, OUTRAS_DESPESAS AS OUTRAS, BASE_CALCULO AS BASE_' +
        'ICMS, VALOR_ICMS, BASE_SUB, ICMS_SUB AS VALOR_SUB, VALOR_TOTAL_I' +
        'PI AS IPI, '#39'V'#39' AS PAGAMENTO  FROM C000061'
      ''
      '   WHERE DATA_SAIDA >= :DATAi AND DATA_SAIDA <= :DATAf'
      ' )'
      ''
      ''
      ''
      '   '
      '')
    Left = 284
    Top = 80
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DATAF'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrNotasEntradaSaidaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrNotasEntradaSaidaSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object qrNotasEntradaSaidaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCODFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCODCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object qrNotasEntradaSaidaMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaSERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE'
      Origin = 'SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrNotasEntradaSaidaCHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrNotasEntradaSaidaVALOR_NOTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_NOTA'
      Origin = 'VALOR_NOTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaTOTAL_PRODUTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PRODUTOS'
      Origin = 'TOTAL_PRODUTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaFRETE_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE_CONTA'
      Origin = 'FRETE_CONTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrNotasEntradaSaidaFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaSEGURO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaOUTRAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaBASE_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaVALOR_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaBASE_SUB: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_SUB'
      Origin = 'BASE_SUB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaVALOR_SUB: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SUB'
      Origin = 'VALOR_SUB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI'
      Origin = 'IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrNotasEntradaSaidaPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object qrItensNotas: TFDQuery
    AutoCalcFields = False
    Connection = FDConexao
    SQL.Strings = (
      ''
      ''
      
        'select TIPO, NUM_ITEM, COD_ITEM, CBARRA, QTD, UNID, VL_ITEM, VL_' +
        'DESC,'
      'CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST,'
      'ALIQ_ST, VL_ICMS_ST, CST_IPI, VL_BC_IPI, ALIQ_IPI,'
      'VL_IPI from'
      ''
      '('
      ''
      'select '#39'E'#39' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,'
      
        '(select CODBARRA from c000025 where codigo = C000088.CODPRODUTO)' +
        ' AS CBARRA,'
      
        ' QTD_FRACIONADA AS QTD, UN_COMPRA AS UNID, SUBTOTAL AS VL_ITEM, ' +
        'DESCONTO AS VL_DESC,'
      
        'CST AS CST_ICMS, CFOP, ICMS_BASE AS VL_BC_ICMS, ICMS_ALIQUOTA AS' +
        ' ALIQ_ICMS, ICMS_VALOR AS VL_ICMS, SUB_BASE AS VL_BC_ICMS_ST,'
      
        #39'0'#39' AS ALIQ_ST, SUB_VALOR AS VL_ICMS_ST, IPI_TIPO AS CST_IPI, '#39'0' +
        #39' AS VL_BC_IPI, IPI_ALIQUOTA AS ALIQ_IPI,'
      'IPI_VALOR AS VL_IPI FROM C000088'
      'WHERE CODNOTA = :CODNOTA'
      ''
      'UNION'
      ''
      'select '#39'S'#39' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,'
      
        '(select CODBARRA from c000025 where codigo = C000062.CODPRODUTO)' +
        ' AS CBARRA,'
      'QTDE AS QTD,'
      
        '(SELECT UNIDADE FROM C000025 WHERE CODIGO = C000062.CODPRODUTO) ' +
        'AS UNID,'
      'UNITARIO AS VL_ITEM, DESCONTO AS VL_DESC,'
      
        'CST AS CST_ICMS, CFOP, BASE_CALCULO AS VL_BC_ICMS, ICMS AS ALIQ_' +
        'ICMS, VALOR_ICMS AS VL_ICMS, BASE_SUB AS VL_BC_ICMS_ST,'
      
        #39'0'#39' AS ALIQ_ST, ICMS_SUB AS VL_ICMS_ST, '#39#39' AS CST_IPI, '#39#39' AS VL_' +
        'BC_IPI, IPI AS ALIQ_IPI,'
      'VALOR_IPI AS VL_IPI FROM C000062'
      'WHERE CODNOTA = :CODNOTA'
      ''
      ')'
      ''
      'WHERE TIPO =:TIPO')
    Left = 288
    Top = 132
    ParamData = <
      item
        Name = 'CODNOTA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
    object qrItensNotasTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrItensNotasNUM_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_ITEM'
      Origin = 'NUM_ITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object qrItensNotasCOD_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object qrItensNotasCBARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CBARRA'
      Origin = 'CBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object qrItensNotasQTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasUNID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNID'
      Origin = 'UNID'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrItensNotasVL_ITEM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ITEM'
      Origin = 'VL_ITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasVL_DESC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_DESC'
      Origin = 'VL_DESC'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasCST_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_ICMS'
      Origin = 'CST_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qrItensNotasCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrItensNotasVL_BC_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS'
      Origin = 'VL_BC_ICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasALIQ_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasVL_ICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS'
      Origin = 'VL_ICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasVL_BC_ICMS_ST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'VL_BC_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasALIQ_ST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ST'
      Origin = 'ALIQ_ST'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrItensNotasVL_ICMS_ST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_ICMS_ST'
      Origin = 'VL_ICMS_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrItensNotasVL_BC_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VL_BC_IPI'
      Origin = 'VL_BC_IPI'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrItensNotasALIQ_IPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrItensNotasVL_IPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qrContaContabil: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from SPED_0500'
      '')
    Left = 136
    Top = 168
    object qrContaContabilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object qrContaContabilCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 30
    end
    object qrContaContabilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qrContaContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
    end
    object qrContaContabilCTAANALITICA: TIntegerField
      FieldName = 'CTAANALITICA'
      Origin = 'CTAANALITICA'
    end
    object qrContaContabilCODCTASUP: TIntegerField
      FieldName = 'CODCTASUP'
      Origin = 'CODCTASUP'
    end
    object qrContaContabilGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
  end
  object qrParticipantes: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'select  TIPO, COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, ' +
        'SUFRAMA, sEND, NUM, COMPL, BAIRRO  FROM'
      '('
      'SELECT'
      ''
      #39'F'#39' AS TIPO,'
      'CODFORNECEDOR AS COD_PART,'
      
        '(Select NOME FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS NOME,'
      #39'1058'#39' AS COD_PAIS,'
      
        '(Select CNPJ FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS CNPJ,'
      
        '(Select CNPJ FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS CPF,'
      
        '(Select IE FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) AS' +
        ' IE,'
      
        '(Select COD_MUNICIPIO_IBGE  FROM C000009 WHERE CODIGO = C000087.' +
        'CODFORNECEDOR) AS COD_MUN, '#39#39' AS SUFRAMA,'
      
        '(Select ENDERECO FROM C000009 WHERE CODIGO = C000087.CODFORNECED' +
        'OR) AS sEND,'
      
        '(Select NUMERO FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR' +
        ') AS NUM,'
      
        '(Select COMPLEMENTO FROM C000009 WHERE CODIGO = C000087.CODFORNE' +
        'CEDOR) AS COMPL,'
      
        '(Select BAIRRO FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR' +
        ') AS BAIRRO'
      'FROM C000087'
      'WHERE DATA_EMISSAO >= :DATAi AND DATA_EMISSAO <= :DATAf'
      ''
      'UNION'
      ''
      'SELECT'
      #39'C'#39' AS TIPO, CODCLIENTE AS COD_PART,'
      
        '(Select NOME FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS ' +
        'NOME,'
      #39'1058'#39' AS COD_PAIS,'
      
        '(Select CPF FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS C' +
        'NPJ,'
      
        '(Select CPF FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS C' +
        'PF,'
      
        '(Select RG FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS IE' +
        ','
      
        '(Select COD_MUNICIPIO_IBGE  FROM C000007 WHERE CODIGO = C000061.' +
        'CODCLIENTE) AS COD_MUN, '#39#39' AS SUFRAMA,'
      
        '(Select ENDERECO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE)' +
        ' AS sEND,'
      
        '(Select NUMERO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) A' +
        'S NUM,'
      
        '(Select COMPLEMENTO FROM C000009 WHERE CODIGO = C000061.CODCLIEN' +
        'TE) AS COMPL,'
      
        '(Select BAIRRO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) A' +
        'S BAIRRO'
      'FROM C000061'
      'WHERE DATA >= :DATAi AND DATA <= :DATAf'
      ')'
      '')
    Left = 133
    Top = 24
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DATAF'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrParticipantesTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrParticipantesCOD_PART: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PART'
      Origin = 'COD_PART'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qrParticipantesCOD_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object qrParticipantesCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesCOD_MUN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 0
    end
    object qrParticipantesSEND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEND'
      Origin = 'SEND'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qrParticipantesNUM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM'
      Origin = 'NUM'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesCOMPL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPL'
      Origin = 'COMPL'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qrParticipantesBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object qrProdutos: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from SPED_0200'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM'
      '')
    Left = 135
    Top = 72
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrProdutosDT_INI: TDateField
      FieldName = 'DT_INI'
      Origin = 'DT_INI'
    end
    object qrProdutosDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object qrProdutosREG: TStringField
      FieldName = 'REG'
      Origin = 'REG'
      Size = 4
    end
    object qrProdutosCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      Size = 60
    end
    object qrProdutosDESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Origin = 'DESCR_ITEM'
      Size = 250
    end
    object qrProdutosCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
    end
    object qrProdutosCOD_ANT_ITEM: TStringField
      FieldName = 'COD_ANT_ITEM'
      Origin = 'COD_ANT_ITEM'
      Size = 60
    end
    object qrProdutosUNID_INV: TStringField
      FieldName = 'UNID_INV'
      Origin = 'UNID_INV'
      Size = 6
    end
    object qrProdutosTIPO_ITEM: TIntegerField
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
    end
    object qrProdutosCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      Size = 8
    end
    object qrProdutosEX_IPI: TStringField
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
      FixedChar = True
      Size = 3
    end
    object qrProdutosCOD_GEN: TIntegerField
      FieldName = 'COD_GEN'
      Origin = 'COD_GEN'
    end
    object qrProdutosCOD_LST: TIntegerField
      FieldName = 'COD_LST'
      Origin = 'COD_LST'
    end
    object qrProdutosALIQ_ICMS: TSingleField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
    end
  end
  object qrProdutosAlterados: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from SPED_0205'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM and ENVIADO = 0'
      ''
      '')
    Left = 136
    Top = 120
    ParamData = <
      item
        Name = 'DT_INI'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object qrProdutosAlteradosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object qrProdutosAlteradosDESCR_ANT_ITEM: TStringField
      FieldName = 'DESCR_ANT_ITEM'
      Origin = 'DESCR_ANT_ITEM'
      Size = 60
    end
    object qrProdutosAlteradosCOD_ANT_ITEM: TStringField
      FieldName = 'COD_ANT_ITEM'
      Origin = 'COD_ANT_ITEM'
      Size = 60
    end
    object qrProdutosAlteradosENVIADO: TIntegerField
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
    end
    object qrProdutosAlteradosDT_INI: TDateField
      FieldName = 'DT_INI'
      Origin = 'DT_INI'
    end
    object qrProdutosAlteradosDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 648
    Top = 364
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 648
    Top = 408
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 644
    Top = 456
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 716
    Top = 464
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 764
    Top = 464
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConexao
    Params = <>
    Macros = <>
    Left = 704
    Top = 276
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 776
    Top = 84
  end
  object qrReg1600: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'SELECT SUM(MEIO_CARTAOCRED) AS CREDITO,  SUM(MEIO_CARTAODEB) AS ' +
        'DEBITO FROM C000048'
      
        'WHERE DATA >= :DATAi AND DATA <= :DATAf and numero_cupom_fiscal ' +
        '> '#39' '#39'  and SUBSTRING(numero_cupom_fiscal FROM 1 FOR 1) <> '#39'9'#39)
    Left = 292
    Top = 356
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 41640d
      end
      item
        Name = 'DATAF'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 41671d
      end>
    object qrReg1600CREDITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qrReg1600DEBITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object qrProdutosUsados: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 436
    Top = 16
    object qrProdutosUsadosCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 10
    end
  end
  object qrUnidadesUsadas: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 436
    Top = 72
    object qrUnidadesUsadasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
  end
end
