object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 476
  Width = 800
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 24
    Top = 16
  end
  object qrMestre: TZQuery
    Connection = ConexaoMestre
    AfterPost = qrMestreAfterPost
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 88
    Top = 16
  end
  object qrUsuario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000003')
    Params = <>
    Left = 152
    Top = 16
  end
  object qrconfig: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 208
    Top = 16
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 272
    Top = 16
    object qrrelatorioLINHA1: TWideStringField
      FieldName = 'LINHA1'
      Size = 100
    end
    object qrrelatorioLINHA2: TWideStringField
      FieldName = 'LINHA2'
      Size = 100
    end
    object qrrelatorioLINHA3: TWideStringField
      FieldName = 'LINHA3'
      Size = 100
    end
    object qrrelatorioLINHA4: TWideStringField
      FieldName = 'LINHA4'
      Size = 100
    end
    object qrrelatorioLINHA5: TWideStringField
      FieldName = 'LINHA5'
      Size = 100
    end
    object qrrelatorioLINHA6: TWideStringField
      FieldName = 'LINHA6'
      Size = 100
    end
    object qrrelatorioLINHA7: TWideStringField
      FieldName = 'LINHA7'
      Size = 100
    end
    object qrrelatorioLINHA8: TWideStringField
      FieldName = 'LINHA8'
      Size = 100
    end
    object qrrelatorioLINHA9: TWideStringField
      FieldName = 'LINHA9'
      Size = 100
    end
    object qrrelatorioLINHA10: TWideStringField
      FieldName = 'LINHA10'
      Size = 100
    end
    object qrrelatorioVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object qrrelatorioVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object qrrelatorioVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object qrrelatorioVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object qrrelatorioVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object qrrelatorioVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object qrrelatorioVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object qrrelatorioVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object qrrelatorioVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object qrrelatorioVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
    object qrrelatorioVALOR11: TFloatField
      FieldName = 'VALOR11'
    end
    object qrrelatorioVALOR12: TFloatField
      FieldName = 'VALOR12'
    end
    object qrrelatorioVALOR13: TFloatField
      FieldName = 'VALOR13'
    end
    object qrrelatorioVALOR14: TFloatField
      FieldName = 'VALOR14'
    end
    object qrrelatorioVALOR15: TFloatField
      FieldName = 'VALOR15'
    end
    object qrrelatorioVALOR16: TFloatField
      FieldName = 'VALOR16'
    end
    object qrrelatorioVALOR17: TFloatField
      FieldName = 'VALOR17'
    end
    object qrrelatorioVALOR18: TFloatField
      FieldName = 'VALOR18'
    end
    object qrrelatorioVALOR19: TFloatField
      FieldName = 'VALOR19'
    end
    object qrrelatorioVALOR20: TFloatField
      FieldName = 'VALOR20'
    end
    object qrrelatorioVALOR21: TFloatField
      FieldName = 'VALOR21'
    end
    object qrrelatorioVALOR22: TFloatField
      FieldName = 'VALOR22'
    end
    object qrrelatorioVALOR23: TFloatField
      FieldName = 'VALOR23'
    end
    object qrrelatorioVALOR24: TFloatField
      FieldName = 'VALOR24'
    end
    object qrrelatorioVALOR25: TFloatField
      FieldName = 'VALOR25'
    end
    object qrrelatorioVALOR26: TFloatField
      FieldName = 'VALOR26'
    end
    object qrrelatorioVALOR27: TFloatField
      FieldName = 'VALOR27'
    end
    object qrrelatorioVALOR28: TFloatField
      FieldName = 'VALOR28'
    end
    object qrrelatorioVALOR29: TFloatField
      FieldName = 'VALOR29'
    end
    object qrrelatorioVALOR30: TFloatField
      FieldName = 'VALOR30'
    end
    object qrrelatorioVALOR31: TFloatField
      FieldName = 'VALOR31'
    end
    object qrrelatorioVALOR32: TFloatField
      FieldName = 'VALOR32'
    end
    object qrrelatorioVALOR33: TFloatField
      FieldName = 'VALOR33'
    end
    object qrrelatorioVALOR34: TFloatField
      FieldName = 'VALOR34'
    end
    object qrrelatorioVALOR35: TFloatField
      FieldName = 'VALOR35'
    end
    object qrrelatorioTEXTO_GRANDE: TWideStringField
      FieldName = 'TEXTO_GRANDE'
      Size = 300
    end
    object qrrelatorioTP: TIntegerField
      FieldName = 'TP'
    end
  end
  object ConexaoMestre: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 24
    Top = 72
  end
  object ConexaoLocal: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 24
    Top = 128
  end
  object qremitente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 336
    Top = 16
  end
  object qrcliente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 400
    Top = 16
  end
  object qrfunci: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 456
    Top = 16
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000015')
    Params = <>
    Left = 528
    Top = 16
    object qrcondpgtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgtoCONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrcondpgtoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
  end
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 616
    Top = 8
    object qrcaixa_operadornome: TStringField
      DisplayLabel = 'NOME'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfuncionario'
      Size = 30
      Lookup = True
    end
    object qrcaixa_operadorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorCODFUNCIONARIO: TWideStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrcaixa_operadorSENHA: TWideStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TWideStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
    object qrcaixa_operadorDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object qrcaixa_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000044')
    Params = <>
    Left = 104
    Top = 72
  end
  object qrvenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 176
    Top = 72
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 240
    Top = 72
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 320
    Top = 72
  end
  object qrorcamento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000074')
    Params = <>
    Left = 184
    Top = 184
    object qrorcamentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qrorcamentoMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrorcamentoMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrorcamentoMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrorcamentoMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrorcamentoMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrorcamentoMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamentoCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrorcamentoRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrorcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrorcamentoMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qrorcamentoDAV: TWideStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qrorcamentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrorcamentoDAV_ANTERIOR: TWideStringField
      FieldName = 'DAV_ANTERIOR'
      Size = 100
    end
    object qrorcamentoATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object qrorcamentoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 184
    Top = 240
  end
  object qrorcamento_receber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000076')
    Params = <>
    Left = 328
    Top = 184
  end
  object qrecf_comando: TZQuery
    SQL.Strings = (
      'select * from c000072')
    Params = <>
    Left = 680
    Top = 296
  end
  object qrecf_item: TZQuery
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 632
    Top = 360
  end
  object Conexao_produto: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    HostName = ''
    Port = 0
    Database = 'C:\OneMaker\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 32
    Top = 240
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 304
    Top = 288
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35')
    DataSet = qrrelatorio
    BCDToCurrency = False
    Left = 376
    Top = 288
  end
  object spGen_DAV: TZStoredProc
    Connection = Conexao
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptResult
      end>
    StoredProcName = 'SPCODIGO_DAV'
    Left = 160
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptResult
      end>
  end
  object qrveiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000054')
    Params = <>
    Left = 248
    Top = 120
    object qrveiculoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrveiculoNOME: TWideStringField
      FieldName = 'NOME'
    end
    object qrveiculoANO: TWideStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qrveiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object qrveiculoPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrveiculoUFPLACA: TWideStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrveiculoCOR: TWideStringField
      FieldName = 'COR'
    end
    object qrveiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrveiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrveiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrveiculoCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qrveiculoCOTA_UNICA_IPVA: TDateField
      FieldName = 'COTA_UNICA_IPVA'
    end
    object qrveiculoCOTA1_IPVA: TDateField
      FieldName = 'COTA1_IPVA'
    end
    object qrveiculoCOTA2_IPVA: TDateField
      FieldName = 'COTA2_IPVA'
    end
    object qrveiculoCOTA3_IPVA: TDateField
      FieldName = 'COTA3_IPVA'
    end
    object qrveiculoLICENCIAMENTO: TDateField
      FieldName = 'LICENCIAMENTO'
    end
    object qrveiculoSEGURO_OBRIGATORIO: TDateField
      FieldName = 'SEGURO_OBRIGATORIO'
    end
    object qrveiculoCOD_MARCA: TWideStringField
      FieldName = 'COD_MARCA'
      Size = 6
    end
    object qrveiculoCOD_MODELO: TWideStringField
      FieldName = 'COD_MODELO'
      Size = 6
    end
    object qrveiculoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object qrcliente_veiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000063')
    Params = <>
    Left = 312
    Top = 120
    object qrcliente_veiculoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente_veiculoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcliente_veiculoVEICULO: TWideStringField
      FieldName = 'VEICULO'
      Size = 30
    end
    object qrcliente_veiculoPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qrcliente_veiculoUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente_veiculoANO: TWideStringField
      FieldName = 'ANO'
      Size = 10
    end
    object qrcliente_veiculoCOMBUSTIVEL: TWideStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object qrcliente_veiculoRENAVAM: TWideStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object qrcliente_veiculoDATA: TDateField
      FieldName = 'DATA'
    end
    object qrcliente_veiculoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente_veiculoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente_veiculoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente_veiculoCOR: TWideStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrcliente_veiculoCHASSI: TWideStringField
      FieldName = 'CHASSI'
      Size = 40
    end
  end
  object qrservicos_periodicos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from servicos_periodicos')
    Params = <>
    Left = 464
    Top = 304
    object qrservicos_periodicosservico: TStringField
      DisplayLabel = 'SERVI'#199'O'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'servico'
      LookupDataSet = qrservico
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SERVICO'
      KeyFields = 'CODSERVICO'
      Size = 40
      Lookup = True
    end
    object qrservicos_periodicosproxima_manutencao: TDateField
      DisplayLabel = 'PROXIMA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'proxima_manutencao'
      Calculated = True
    end
    object qrservicos_periodicostecnico: TStringField
      DisplayLabel = 'T'#201'CNICO'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTECNICO'
      Size = 40
      Lookup = True
    end
    object qrservicos_periodicoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrservicos_periodicosID: TIntegerField
      FieldName = 'ID'
    end
    object qrservicos_periodicosCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrservicos_periodicosCODSERVICO: TWideStringField
      FieldName = 'CODSERVICO'
      Size = 6
    end
    object qrservicos_periodicosCODTECNICO: TWideStringField
      FieldName = 'CODTECNICO'
      Size = 6
    end
    object qrservicos_periodicosMARCA: TWideStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object qrservicos_periodicosMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object qrservicos_periodicosSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 40
    end
    object qrservicos_periodicosSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qrservicos_periodicosPRIMEIRA_MANUTENCAO: TDateField
      FieldName = 'PRIMEIRA_MANUTENCAO'
    end
    object qrservicos_periodicosULTIMA_MANUTENCAO: TDateField
      FieldName = 'ULTIMA_MANUTENCAO'
    end
    object qrservicos_periodicosPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
  end
  object qrsetor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000052')
    Params = <>
    Left = 320
    Top = 240
  end
  object qrfornecedor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 512
    Top = 136
    object qrfornecedorCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 100
    end
    object qrfornecedorFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Visible = False
      Size = 100
    end
    object qrfornecedorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfornecedorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfornecedorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorUF: TWideStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorCEP: TWideStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrfornecedorTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrfornecedorTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrfornecedorFAX: TWideStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrfornecedorCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrfornecedorCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrfornecedorCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrfornecedorCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrfornecedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrfornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorIE: TWideStringField
      FieldName = 'IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorBANCO: TWideStringField
      FieldName = 'BANCO'
      Visible = False
      Size = 30
    end
    object qrfornecedorAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Visible = False
      Size = 15
    end
    object qrfornecedorCONTA: TWideStringField
      FieldName = 'CONTA'
      Visible = False
    end
    object qrfornecedorOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
      Visible = False
    end
    object qrfornecedorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrfornecedorIM: TWideStringField
      FieldName = 'IM'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Visible = False
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
      Visible = False
    end
    object qrfornecedorREP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_UF: TWideStringField
      FieldName = 'REP_UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorREP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Visible = False
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
      Visible = False
    end
    object qrfornecedorREP_FAX: TWideStringField
      FieldName = 'REP_FAX'
      Visible = False
    end
    object qrfornecedorREP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_IE: TWideStringField
      FieldName = 'REP_IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Visible = False
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Visible = False
      Size = 100
    end
    object qrfornecedorCNAE: TWideStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrfornecedorIBGE: TWideStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrfornecedorDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object qrmarca: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 616
    Top = 88
  end
  object qrservico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000011')
    Params = <>
    Left = 720
    Top = 16
    object qrservicoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrservicoSERVICO: TWideStringField
      FieldName = 'SERVICO'
      Size = 50
    end
    object qrservicoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrservicoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrservicoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrservicoSALARIO_BASE: TFloatField
      FieldName = 'SALARIO_BASE'
    end
  end
  object qrserial_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 400
    Top = 376
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrserial_produtoDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object qrproduto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 24
    Top = 328
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TSingleField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TSingleField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TSingleField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TSingleField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TSingleField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TSingleField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TSingleField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TSingleField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TSingleField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TSingleField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TSingleField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TSingleField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TSingleField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TSingleField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TSingleField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TSingleField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TSingleField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TSingleField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodutoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrprodutoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
  end
  object ZFilial: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 264
    Top = 400
    object ZFilialCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object ZFilialFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object ZFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object ZFilialENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ZFilialCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ZFilialUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object ZFilialCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ZFilialTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object ZFilialCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object ZFilialIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object ZFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object ZFilialFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object ZFilialOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object ZFilialOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object ZFilialCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object ZFilialSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object ZFilialEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object ZFilialOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object ZFilialOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object ZFilialECF: TWideStringField
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
    object ZFilialNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ZFilialRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object ZFilialCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object ZFilialBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ZFilialFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object ZFilialFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object ZFilialFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object ZFilialFARMCIA_DATA: TDateField
      FieldName = 'FARMCIA_DATA'
    end
    object ZFilialFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object ZFilialFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object ZFilialFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object ZFilialFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object ZFilialFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object ZFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object ZFilialINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object ZFilialFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object ZFilialCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object ZFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object ZFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object ZFilialEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZFilialATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object ZFilialCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object ZFilialCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object ZFilialCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object ZFilialCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object ZFilialCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object ZFilialCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object ZFilialCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object ZFilialCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object ZFilialCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object ZFilialCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object ZFilialCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object ZFilialCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object ZFilialINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object ZFilialDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object ZFilialCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object ZFilialCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object ZFilialCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object ZFilialCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object ZFilialCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object ZFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object ZFilialFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object ZFilialDFIXAS: TSingleField
      FieldName = 'DFIXAS'
    end
    object ZFilialTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
    object ZFilialSERIE_CTE: TWideStringField
      FieldName = 'SERIE_CTE'
      Size = 6
    end
    object ZFilialSEQ_CTE: TWideStringField
      FieldName = 'SEQ_CTE'
      Size = 6
    end
    object ZFilialCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
    end
    object ZFilialPAIS: TWideStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object ZFilialHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 100
    end
  end
  object XCONEXAO: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\OneMaker\Server\BD\base.fdb'
    Username = 'sysdba'
    Server = 'localhost'
    LoginPrompt = False
    Left = 576
    Top = 232
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qros: TUniQuery
    Connection = XCONEXAO
    SQL.Strings = (
      'select * from c000051')
    Left = 672
    Top = 240
    object qroscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODATENDENTE'
      Size = 50
      Lookup = True
    end
    object qrosterceiro: TStringField
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTERCEIRO'
      Size = 30
      Lookup = True
    end
    object qrosveiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVEICULO'
      Size = 30
      Lookup = True
    end
    object qrosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Size = 30
      Lookup = True
    end
    object qrossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SETOR'
      KeyFields = 'CODSETOR'
      Size = 30
      Lookup = True
    end
    object qroscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'BAIRRO'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UF'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CEP'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qroscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object qrosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrosDATA: TDateField
      FieldName = 'DATA'
    end
    object qrosCODATENDENTE: TStringField
      FieldName = 'CODATENDENTE'
      Size = 6
    end
    object qrosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 7
    end
    object qrosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 30
    end
    object qrosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object qrosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object qrosSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrosATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Size = 10
    end
    object qrosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
    end
    object qrosOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
    end
    object qrosDETECTADO_DATA: TDateField
      FieldName = 'DETECTADO_DATA'
    end
    object qrosDETECTADO_CODTECNICO: TStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object qrosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 35
    end
    object qrosCONCLUSAO_DATA: TDateField
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrosCONCLUSAO_ENTREGUE: TDateField
      FieldName = 'CONCLUSAO_ENTREGUE'
    end
    object qrosRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Size = 30
    end
    object qrosSERVICO_SUBTOTAL: TFloatField
      FieldName = 'SERVICO_SUBTOTAL'
    end
    object qrosSERVICO_DESCONTO: TFloatField
      FieldName = 'SERVICO_DESCONTO'
    end
    object qrosSERVICO_TOTAL: TFloatField
      FieldName = 'SERVICO_TOTAL'
    end
    object qrosPRODUTO_SUBTOTAL: TFloatField
      FieldName = 'PRODUTO_SUBTOTAL'
    end
    object qrosPRODUTO_DESCONTO: TFloatField
      FieldName = 'PRODUTO_DESCONTO'
    end
    object qrosPRODUTO_TOTAL: TFloatField
      FieldName = 'PRODUTO_TOTAL'
    end
    object qrosCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object qrosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object qrosDESLOC_COMBUSTIVEL: TFloatField
      FieldName = 'DESLOC_COMBUSTIVEL'
    end
    object qrosDESLOC_REFEICAO: TFloatField
      FieldName = 'DESLOC_REFEICAO'
    end
    object qrosDESLOC_HOSPEDAGEM: TFloatField
      FieldName = 'DESLOC_HOSPEDAGEM'
    end
    object qrosDESLOC_TOTAL: TFloatField
      FieldName = 'DESLOC_TOTAL'
    end
    object qrosCODTERCEIRO: TStringField
      FieldName = 'CODTERCEIRO'
      Size = 6
    end
    object qrosTERCEIRO_CONTATO: TStringField
      FieldName = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object qrosTERCEIRO_VALOR: TFloatField
      FieldName = 'TERCEIRO_VALOR'
    end
    object qrosTERCEIRO_COMISSAO: TFloatField
      FieldName = 'TERCEIRO_COMISSAO'
    end
    object qrosTERCEIRO_TOTAL: TFloatField
      FieldName = 'TERCEIRO_TOTAL'
    end
    object qrosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
    end
    object qrosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrosMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrosMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrosMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrosMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrosMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrosMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrosCODSETOR: TStringField
      FieldName = 'CODSETOR'
      Size = 6
    end
    object qrosCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
    end
    object qrosST: TIntegerField
      FieldName = 'ST'
    end
    object qrosCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object qrosCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 10
    end
    object qrosCOMBUSTIVEL_NIVEL: TFloatField
      FieldName = 'COMBUSTIVEL_NIVEL'
    end
    object qrosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
    end
    object qrosCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrosDETECTADO_HORA: TStringField
      FieldName = 'DETECTADO_HORA'
      Size = 5
    end
    object qrosHORA: TStringField
      FieldName = 'HORA'
    end
    object qrosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
    end
    object qrosDAV: TStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qrosDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
    end
    object qrosDAV_ATUAL: TStringField
      FieldName = 'DAV_ATUAL'
      Size = 15
    end
    object qrosCODFUN: TStringField
      FieldName = 'CODFUN'
      Size = 6
    end
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 664
    Top = 192
  end
end
