unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, frxClass, frxDBSet, frxExportMail,
  frxExportText, frxExportXLS,
  frxExportPDF, graphics, windows, messages, forms, DBAccess, ExtCtrls, dialogs,
  ZAbstractConnection, Bde.DBTables, Data.DBXFirebird, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrBoleto,inifiles,
  ACBrBoletoFCFR, ACBrBase, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppDesignLayer, ppParameter; // NeoKeyUnit,frxExportImage,frxExportRTF,

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrLog: TZQuery;
    qrUsuario: TZQuery;
    qrconfig: TZQuery;
    qrFilial: TZQuery;
    qrcliente: TZQuery;
    qrregiao: TZQuery;
    qrfunci: TZQuery;
    qrfornecedor: TZQuery;
    qrtransportador: TZQuery;
    qrgrupo_servico: TZQuery;
    qrservico: TZQuery;
    qrbanco: TZQuery;
    qrformapgto: TZQuery;
    qrcondpgto: TZQuery;
    qrcondpgto_parcela: TZQuery;
    qrgrupo: TZQuery;
    qrsubgrupo: TZQuery;
    qrmarca: TZQuery;
    qrgrade_subgrupo: TZQuery;
    qremitente: TZQuery;
    qraliquota: TZQuery;
    qrproduto: TZQuery;
    qrpreco: TZQuery;
    qrgrade_produto: TZQuery;
    qrserial_produto: TZQuery;
    qrreceita: TZQuery;
    qrcomposicao_produto: TZQuery;
    qrinfnutricional_produto: TZQuery;
    qrCFOP: TZQuery;
    qrentrada_produto: TZQuery;
    qrentrada_produtonatureza: TStringField;
    qrentrada_produtofornecedor: TStringField;
    qrproduto_mov: TZQuery;
    qragenda: TZQuery;
    qrplano: TZQuery;
    qrsaida_produto: TZQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    qrpedido_produto: TZQuery;
    StringField12: TStringField;
    qrcheque: TZQuery;
    qrchequecliente: TStringField;
    qrcontacorrente: TZQuery;
    qrcontacorrentebanco: TStringField;
    qrlancamento_conta: TZQuery;
    qrcaixa_operador: TZQuery;
    qrcaixa_mov: TZQuery;
    ConexaoLocal: TZConnection;
    qrvenda: TZQuery;
    qrvendacliente: TStringField;
    qrvendavendedor: TStringField;
    qrcontasreceber: TZQuery;
    qrcontasreceber_pgto: TZQuery;
    qros: TZQuery;
    qrosatendente: TStringField;
    qroscliente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrsetor: TZQuery;
    qrossetor: TStringField;
    qrveiculo: TZQuery;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    qrorcamento: TZQuery;
    qrorcamentocliente: TStringField;
    qrorcamentovendedor: TStringField;
    qrrelatorio: TZQuery;
    qrnotafiscal: TZQuery;
    qrnotafiscalfilial: TStringField;
    qrnotafiscalcliente: TStringField;
    qrnotafiscalnatureza: TStringField;
    qrcliente_veiculo: TZQuery;
    qrconfig_cobrebem: TZQuery;
    qrconfig_cobrebemcodigo_banco: TStringField;
    qrconfig_cobrebembanco: TStringField;
    qrconfig_cobrebemagencia: TStringField;
    qrconfig_cobrebemtitular: TStringField;
    qrboleto_impressao: TZQuery;
    qrconhecimento: TZQuery;
    qrplano2: TZQuery;
    qrplanogrupo: TStringField;
    qrnotafiscaltransp_endereco: TStringField;
    qrnotafiscaltransp_cidade: TStringField;
    qrnotafiscaltransp_uf: TStringField;
    qrnotafiscaltransp_cpf: TStringField;
    qrnotafiscaltransp_rg: TStringField;
    qrguard: TZQuery;
    qrconvenio: TZQuery;
    qrusuario_funcao: TZQuery;
    qrecf_item: TZQuery;
    qrecf_comando: TZQuery;
    conexao_ecfserver: TZConnection;
    qrfiscal_cst: TZQuery;
    qrfiscal_modelo: TZQuery;
    qrfiscal_ecf: TZQuery;
    qrfiscal_classe: TZQuery;
    qrfiscal_classe_pis: TZQuery;
    qrfiscal_classe_cofins: TZQuery;
    qrfiscal_classe_csll: TZQuery;
    qrfiscal_classe_irrf: TZQuery;
    qrnota: TZQuery;
    qritem: TZQuery;
    qritemdatahora_ini: TDateField;
    qritemquantidade: TFloatField;
    qritemsubtotal: TFloatField;
    qritemvalor_venda_bruta: TFloatField;
    qritemvalor_total_geral: TFloatField;
    qritemtotal: TFloatField;
    qritembase_calculo: TFloatField;
    qritemreducao_base_icms: TFloatField;
    qritembase_icms_subst: TFloatField;
    qritemvalor_desconto: TFloatField;
    qritemoutras_ipi: TFloatField;
    qritemisentas_ipi: TFloatField;
    qritemoutras_icms: TFloatField;
    qritemisentas_icms: TFloatField;
    qritemipi_nao_creditado: TFloatField;
    qritemoutras_despesas: TFloatField;
    qrsintegra_r60: TZQuery;
    qrnotafiscalendereco: TStringField;
    qrnotafiscalcpf: TStringField;
    qrnotafiscalrg: TStringField;
    qrrentabilidade: TZQuery;
    qrrentabilidade_item: TZQuery;
    qrindustria_produtos: TZQuery;
    qrdespesas_ind: TZQuery;
    qrdespesasitem_ind: TZQuery;
    qrlote_fabricacao: TZQuery;
    qrlote_rentabilidade: TZQuery;
    qrmemorando: TZQuery;
    qrmemorando_notas: TZQuery;
    qrservicos_periodicos: TZQuery;
    qritem_baixa_produtos: TZQuery;
    qrbaixa_produtos: TZQuery;
    qrbaixa_produtoscliente: TStringField;
    qrbaixa_produtosvendedor: TStringField;
    qrestoque: TZQuery;
    qrinventario: TZQuery;
    qrproduto_estoque: TZQuery;
    conexao_adic: TZConnection;
    qradic: TZQuery;
    qradic2: TZQuery;
    qradic_orcamento: TZQuery;
    qradic_orcamento_produto: TZQuery;
    qradic_contasreceber: TZQuery;
    qradic_mestre: TZQuery;
    qradic_nota: TZQuery;
    qradic_nota_item: TZQuery;
    qrprod: TZQuery;
    querylog: TZQuery;
    time_gp: TTimer;
    qrautorizacao: TZQuery;
    queryagenda: TZQuery;
    qrcnae: TZQuery;
    qrpedido_industria: TZQuery;
    qrpedido_industria_item: TZQuery;
    qrpedido_industriacliente: TStringField;
    qrpedido_industria_itemproduto: TStringField;
    qrpedido_industria_itemcodbarra: TStringField;
    qrtamanho: TZQuery;
    qrcor: TZQuery;
    qrpedido_industriarepresentante: TStringField;
    qrpedido_industriarepresentante_fone: TStringField;
    qrfornecedor_codigo: TZQuery;
    qrfornecedor_codigofornecedor: TStringField;
    qrfornecedor_codigoproduto: TStringField;
    econexao2: TZConnection;
    qrNCM: TZQuery;
    ZQuery1: TZQuery;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    qrCSOSN: TZQuery;
    qrloteproduto: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_produtoestoque: TFloatField;
    qrlotelocal: TZQuery;
    ZQuery2: TZQuery;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    timerKey: TTimer;
    qrclientevendedor: TStringField;
    qrclienteconvenio: TStringField;
    qrclienteusuario: TStringField;
    qrclienteregiao: TStringField;
    qrdespesasitem_indCODIGO: TWideStringField;
    qrdespesasitem_indCODDESPESA: TWideStringField;
    qrdespesasitem_indPERCENTUAL: TFloatField;
    qrdespesasitem_indVALOR: TFloatField;
    qrdespesasitem_indLOTE: TWideStringField;
    qrdespesasitem_indORDEM_PRODUCAO: TWideStringField;
    qrdespesasitem_indANO: TWideStringField;
    qrdespesas_indCODIGO: TWideStringField;
    qrdespesas_indDESPESA: TWideStringField;
    qrdespesas_indPERCENTUAL: TFloatField;
    qritem_baixa_produtosCODPRODUTO: TWideStringField;
    qritem_baixa_produtosPRODUTO: TWideStringField;
    qritem_baixa_produtosUNIDADE: TWideStringField;
    qritem_baixa_produtosQTDE: TFloatField;
    qritem_baixa_produtosUNITARIO: TFloatField;
    qritem_baixa_produtosDESCONTO: TFloatField;
    qritem_baixa_produtosACRESCIMO: TFloatField;
    qritem_baixa_produtosTOTAL: TFloatField;
    qritem_baixa_produtosCODORCAMENTO: TWideStringField;
    qritem_baixa_produtosVENDA: TFloatField;
    qrbaixa_produtosCODIGO: TWideStringField;
    qrbaixa_produtosCODCLIENTE: TWideStringField;
    qrbaixa_produtosCODVENDEDOR: TWideStringField;
    qrbaixa_produtosSUBTOTAL: TFloatField;
    qrbaixa_produtosDESCONTO: TFloatField;
    qrbaixa_produtosACRESCIMO: TFloatField;
    qrbaixa_produtosTOTAL: TFloatField;
    qrbaixa_produtosOBS1: TWideStringField;
    qrbaixa_produtosOBS2: TWideStringField;
    qrbaixa_produtosOBS3: TWideStringField;
    qrbaixa_produtosOBS4: TWideStringField;
    qrbaixa_produtosTIPO: TIntegerField;
    qrbaixa_produtosFINALIZADO: TIntegerField;
    qrestoqueTIPO: TWideStringField;
    qrestoqueCODPRODUTO: TWideStringField;
    qrestoqueQUANTIDADE: TFloatField;
    qrestoqueVALOR: TFloatField;
    qrmemorandoCODIGO: TWideStringField;
    qrmemorandoDATA: TDateTimeField;
    qrmemorandoMEMORANDO: TWideStringField;
    qrmemorandoNOTAFISCAL: TWideStringField;
    qrmemorandoNOTAFISCAL_MODELO: TWideStringField;
    qrmemorandoNOTAFISCAL_SERIE: TWideStringField;
    qrmemorandoNOTAFISCAL_DATA: TDateTimeField;
    qrmemorandoDESPACHO: TWideStringField;
    qrmemorandoDESPACHO_DATA: TDateTimeField;
    qrmemorandoREGISTRO: TWideStringField;
    qrmemorandoREGISTRO_DATA: TDateTimeField;
    qrmemorandoCONHECIMENTO_EMBARQUE: TWideStringField;
    qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateTimeField;
    qrmemorandoESTADO_FABRICANTE: TWideStringField;
    qrmemorandoPAIS_DESTINO: TWideStringField;
    qrmemorandoCODFORNECEDOR: TWideStringField;
    qrmemorandoCONHECIMENTO: TWideStringField;
    qrmemorandoCONHECIMENTO_MODELO: TWideStringField;
    qrmemorandoCONHECIMENTO_SERIE: TWideStringField;
    qrmemorandoCONHECIMENTO_DATA: TDateTimeField;
    qrmemorandoTRANSPORTADOR_CODIGO: TWideStringField;
    qrmemorandoTRANSPORTADOR_NOME: TWideStringField;
    qrmemorandoTRANSPORTADOR_ENDERECO: TWideStringField;
    qrmemorandoTRANSPORTADOR_BAIRRO: TWideStringField;
    qrmemorandoTRANSPORTADOR_CIDADE: TWideStringField;
    qrmemorandoTRANSPORTADOR_UF: TWideStringField;
    qrmemorandoTRANSPORTADOR_PAIS: TWideStringField;
    qrmemorandoTRANSPORTADOR_CNPJCPF: TWideStringField;
    qrmemorandoTRANSPORTADOR_INSCRG: TWideStringField;
    qrmemorandoSITUACAO: TWideStringField;
    qrmemorando_notasMEMORANDO: TWideStringField;
    qrmemorando_notasNOTAFISCAL: TWideStringField;
    qrmemorando_notasNF_DATA: TDateTimeField;
    qrmemorando_notasNF_MODELO: TWideStringField;
    qrmemorando_notasNF_SERIE: TWideStringField;
    qrmemorando_notasNF_QUANTIDADE: TFloatField;
    qrmemorando_notasNF_UNIDADE: TWideStringField;
    qrfiscal_classe_pisCODIGO: TWideStringField;
    qrfiscal_classe_pisCODCLASSE: TWideStringField;
    qrfiscal_classe_pisALIQUOTA_PIS: TFloatField;
    qrfiscal_classe_cofinsCODIGO: TWideStringField;
    qrfiscal_classe_cofinsCODCLASSE: TWideStringField;
    qrfiscal_classe_cofinsALIQUOTA_COFINS: TFloatField;
    qrfiscal_classe_csllCODIGO: TWideStringField;
    qrfiscal_classe_csllCODCLASSE: TWideStringField;
    qrfiscal_classe_csllALIQUOTA_CSLL: TFloatField;
    qrfiscal_classeCODIGO: TWideStringField;
    qrfiscal_classeCLASSE: TWideStringField;
    qrfiscal_cstCODIGO: TWideStringField;
    qrfiscal_cstSITUACAO: TWideStringField;
    qrfiscal_modeloCODIGO: TWideStringField;
    qrfiscal_modeloMODELO: TWideStringField;
    qrfiscal_modeloSIGLA: TWideStringField;
    qrfiscal_modeloSINTEGRA: TWideStringField;
    qrfiscal_modeloTIPO_REGISTRO: TWideStringField;
    qrfiscal_modeloSEQUENCIANF: TIntegerField;
    qrfiscal_ecfCODIGO: TWideStringField;
    qrfiscal_ecfEQUIPAMENTO: TWideStringField;
    qrfiscal_ecfSERIE_EMPRESA: TWideStringField;
    qrfiscal_ecfSERIE_EQUIPAMENTO: TWideStringField;
    qrfiscal_ecfALIQUOTA_ISS: TFloatField;
    qrfiscal_ecfTIPO_ECF: TWideStringField;
    qrfiscal_ecfBD_ECF: TWideStringField;
    qrrentabilidadeCODIGO: TWideStringField;
    qrrentabilidadeCODPRODUTO: TWideStringField;
    qrrentabilidadePRODUTO: TWideStringField;
    qrrentabilidadeUNIDADE: TWideStringField;
    qrrentabilidadeEMBALAGEM: TFloatField;
    qrrentabilidadePERDA: TFloatField;
    qrrentabilidade_itemRENTABILIDADE: TWideStringField;
    qrrentabilidade_itemCODPRODUTO: TWideStringField;
    qrrentabilidade_itemPRODUTO: TWideStringField;
    qrrentabilidade_itemRENDIMENTO: TFloatField;
    qrrentabilidade_itemQUANTIDADE: TFloatField;
    qrrentabilidade_itemVALOR: TFloatField;
    qrrentabilidade_itemCODIGO: TWideStringField;
    qrindustria_produtosCODIGO: TWideStringField;
    qrindustria_produtosPRODUTO: TWideStringField;
    qrindustria_produtosUNIDADE_PRODUTO: TWideStringField;
    qrindustria_produtosCODPRODUTO: TWideStringField;
    qrindustria_produtosUNIDADE_MATERIAPRIMA: TWideStringField;
    qrindustria_produtosQUANTIDADE: TFloatField;
    qrindustria_produtosCUSTO: TFloatField;
    qrindustria_produtosPRECOCUSTO: TFloatField;
    qrindustria_produtosTIPO: TWideStringField;
    qrindustria_produtosCFOP: TWideStringField;
    qrindustria_produtosCST: TWideStringField;
    qrindustria_produtosALIQUOTA: TFloatField;
    qrsintegra_r60ID: TIntegerField;
    qrsintegra_r60MOVIMENTO: TWideStringField;
    qrsintegra_r60CODIGO_EMPRESA: TIntegerField;
    qrsintegra_r60OBS1: TWideStringField;
    qrsintegra_r60CNPJ: TWideStringField;
    qrsintegra_r60IE: TWideStringField;
    qrsintegra_r60UF: TWideStringField;
    qrsintegra_r60CODIGO_CLIENTE: TIntegerField;
    qrsintegra_r60CNPJ_CLIENTE: TWideStringField;
    qrsintegra_r60IE_CLIENTE: TWideStringField;
    qrsintegra_r60UF_CLIENTE: TWideStringField;
    qrsintegra_r60CFOP: TWideStringField;
    qrsintegra_r60COD_SINTEGRA_R60: TWideStringField;
    qrsintegra_r60DATA_EMISSAO: TDateTimeField;
    qrsintegra_r60NRO_SERIE_EQP: TWideStringField;
    qrsintegra_r60NRO_ORDEM_EQP: TIntegerField;
    qrsintegra_r60MODELO_DOC: TWideStringField;
    qrsintegra_r60NRO_CONTADOR_INICIO: TIntegerField;
    qrsintegra_r60NRO_CONTADOR_FIM: TIntegerField;
    qrsintegra_r60NRO_CONTADOR_Z: TIntegerField;
    qrsintegra_r60NRO_DOC_FISCAL: TIntegerField;
    qrsintegra_r60NRO_ITENS: TIntegerField;
    qrsintegra_r60CONTADOR_REINICIO: TIntegerField;
    qrsintegra_r60VALOR_VENDA_BRUTA: TFloatField;
    qrsintegra_r60VALOR_TOTAL_GERAL: TFloatField;
    qrsintegra_r60BRANCOS: TWideStringField;
    qrsintegra_r60DATAHORA_RECEBIMENTO: TDateTimeField;
    qrsintegra_r60MODELO_NF: TWideStringField;
    qrsintegra_r60DATAHORA_INI: TDateTimeField;
    qrsintegra_r60DATAHORA_FIM: TDateTimeField;
    qrsintegra_r60CANCELAMENTO: TFloatField;
    qrsintegra_r60DESCONTO: TFloatField;
    qrsintegra_r60ISSQN: TFloatField;
    qrsintegra_r60SUBSTITUICAO_TRIBUTARIA: TFloatField;
    qrsintegra_r60ISENTO: TFloatField;
    qrsintegra_r60NAO_INCIDENCIA: TFloatField;
    qrsintegra_r60ACRESCIMO_IOF: TFloatField;
    qrsintegra_r60ALIQUOTA01: TFloatField;
    qrsintegra_r60ALIQUOTA02: TFloatField;
    qrsintegra_r60ALIQUOTA03: TFloatField;
    qrsintegra_r60ALIQUOTA04: TFloatField;
    qrsintegra_r60ALIQUOTA05: TFloatField;
    qrsintegra_r60BASE01: TFloatField;
    qrsintegra_r60BASE02: TFloatField;
    qrsintegra_r60BASE03: TFloatField;
    qrsintegra_r60BASE04: TFloatField;
    qrsintegra_r60BASE05: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL01: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL02: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL03: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL04: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL05: TFloatField;
    qrsintegra_r60BRANCOS_60A01: TWideStringField;
    qrsintegra_r60BRANCOS_60A02: TWideStringField;
    qrsintegra_r60BRANCOS_60A03: TWideStringField;
    qrsintegra_r60BRANCOS_60A04: TWideStringField;
    qrsintegra_r60BRANCOS_60A05: TWideStringField;
    qrsintegra_r60TOTAL_INICIO_DIA: TFloatField;
    qrsintegra_r60TOTAL_FINAL_DIA: TFloatField;
    qrsintegra_r60TOTAL_DIA: TFloatField;
    qrsintegra_r60OBSERVACAO: TWideStringField;
    qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField;
    qrsintegra_r60NRO_CONTADOR_CANCELAMENTO: TIntegerField;
    qrfiscal_classe_irrfCODIGO: TWideStringField;
    qrfiscal_classe_irrfCODCLASSE: TWideStringField;
    qrfiscal_classe_irrfALIQUOTA_IRRF: TFloatField;
    qrnotaCODIGO: TWideStringField;
    qrnotaTURBO: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaCODIGO_EMPRESA: TIntegerField;
    qrnotaCFOP: TWideStringField;
    qrnotaNOTAFISCAL: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaSUBSERIE: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSINTEGRA: TWideStringField;
    qrnotaMODELO_NF: TWideStringField;
    qrnotaS_TRIB: TWideStringField;
    qrnotaCODIGO_CLIENTE: TIntegerField;
    qrnotaCPF_CLIENTE: TWideStringField;
    qrnotaCNPJ_CLIENTE: TWideStringField;
    qrnotaIE_CLIENTE: TWideStringField;
    qrnotaUF_IE_CLIENTE: TWideStringField;
    qrnotaTIPO_VENDA: TWideStringField;
    qrnotaTIPO_FRETE: TWideStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_ESCRITURACAO: TDateTimeField;
    qrnotaCODIGO_CONTABIL: TIntegerField;
    qrnotaDESDOBRAMENTO: TWideStringField;
    qrnotaVALOR_CONTABIL: TFloatField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaCONDPGTO: TWideStringField;
    qrnotaCONDICAO_PAGAMENTO: TWideStringField;
    qrnotaCODEMPRESA: TIntegerField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaCODLANCAMENTO: TWideStringField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS_CREDITADO: TFloatField;
    qrnotaVALOR_ICMS_ISENTAS: TFloatField;
    qrnotaVALOR_ICMS_OUTRAS: TFloatField;
    qrnotaALIQUOTA_IPI: TFloatField;
    qrnotaBASE_IPI: TFloatField;
    qrnotaVALOR_IPI_CREDITADO: TFloatField;
    qrnotaVALOR_IPI_CREDITADO50: TFloatField;
    qrnotaVALOR_IPI_ISENTAS: TFloatField;
    qrnotaVALOR_IPI_OUTRAS: TFloatField;
    qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrnotaBASE_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_FRETE: TFloatField;
    qrnotaVALOR_SEGURO: TFloatField;
    qrnotaVALOR_DESPESAS: TFloatField;
    qrnotaALIQUOTA_ISS: TFloatField;
    qrnotaVALOR_ISS: TFloatField;
    qrnotaOBS3: TWideStringField;
    qrnotaCONTABIL: TIntegerField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaCODIGO_MINICIPIO: TIntegerField;
    qrnotaCNPJ: TWideStringField;
    qrnotaINSC_ESTADUAL: TWideStringField;
    qrnotaUF: TWideStringField;
    qrnotaCODIGO_PISCONFINS: TWideStringField;
    qrnotaNOTA_CANCELADA: TWideStringField;
    qrnotaOBSERVACAO: TBlobField;
    qrnotaTRANSPORTE_NOME: TWideStringField;
    qrnotaTRANSPORTE_PLACA: TWideStringField;
    qrnotaTRANSPORTE_UF: TWideStringField;
    qrnotaTRANSPORTE_CNPJCPF: TWideStringField;
    qrnotaTRANSPORTE_ENDERECO: TWideStringField;
    qrnotaTRANSPORTE_CIDADE: TWideStringField;
    qrnotaTRANSPORTE_MUNICIPIO_UF: TWideStringField;
    qrnotaTRANSPORTE_IE: TWideStringField;
    qrnotaTRANSPORTE_QUANTIDADE: TFloatField;
    qrnotaTRANSPORTE_MARCA: TWideStringField;
    qrnotaTRANSPORTE_ESPECIE: TWideStringField;
    qrnotaTRANSPORTE_NUMERO: TWideStringField;
    qrnotaTRANSPORTE_PESO_BRUTO: TFloatField;
    qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qradic_orcamentoCODIGO: TWideStringField;
    qradic_orcamentoCODCAIXA: TWideStringField;
    qradic_orcamentoCODVENDEDOR: TWideStringField;
    qradic_orcamentoCODCLIENTE: TWideStringField;
    qradic_orcamentoOBS: TWideStringField;
    qradic_orcamentoMEIO_DINHEIRO: TFloatField;
    qradic_orcamentoMEIO_CHEQUEAV: TFloatField;
    qradic_orcamentoMEIO_CHEQUEAP: TFloatField;
    qradic_orcamentoMEIO_CARTAOCRED: TFloatField;
    qradic_orcamentoMEIO_CARTAODEB: TFloatField;
    qradic_orcamentoMEIO_CREDIARIO: TFloatField;
    qradic_orcamentoSUBTOTAL: TFloatField;
    qradic_orcamentoDESCONTO: TFloatField;
    qradic_orcamentoACRESCIMO: TFloatField;
    qradic_orcamentoTOTAL: TFloatField;
    qradic_orcamentoCUPOM_FISCAL: TIntegerField;
    qradic_orcamentoNUMERO_CUPOM_FISCAL: TWideStringField;
    qradic_orcamentoRETIRADO: TWideStringField;
    qradic_orcamentoTIPO: TIntegerField;
    qradic_orcamentoMEIO_CONVENIO: TFloatField;
    qradic_orcamentoDAV: TWideStringField;
    qradic_orcamentoSITUACAO: TIntegerField;
    qradic_orcamentoDAV_ANTERIOR: TWideStringField;
    qradic_orcamentoATACADO_VAREJO: TSmallintField;
    qradic_mestreCODIGO: TWideStringField;
    qradic_mestreTABELA: TWideStringField;
    qradic_mestreSEQUENCIA: TIntegerField;
    qradic_nota_itemCODIGO: TWideStringField;
    qradic_nota_itemITEM: TWideStringField;
    qradic_nota_itemCODNOTA: TWideStringField;
    qradic_nota_itemCODPRODUTO: TWideStringField;
    qradic_nota_itemCODLANCAMENTO: TWideStringField;
    qradic_nota_itemUN_COMPRA: TWideStringField;
    qradic_nota_itemUN_FRACAO: TWideStringField;
    qradic_nota_itemFRACAO: TFloatField;
    qradic_nota_itemCST: TWideStringField;
    qradic_nota_itemCFOP: TWideStringField;
    qradic_nota_itemQTDE: TFloatField;
    qradic_nota_itemUNITARIO: TFloatField;
    qradic_nota_itemSUBTOTAL: TFloatField;
    qradic_nota_itemDESCONTO: TFloatField;
    qradic_nota_itemTOTAL: TFloatField;
    qradic_nota_itemDESCONTO_P: TFloatField;
    qradic_nota_itemICMS_RETIDO: TWideStringField;
    qradic_nota_itemICMS_ALIQUOTA: TFloatField;
    qradic_nota_itemICMS_REDUCAO: TFloatField;
    qradic_nota_itemICMS_BASE: TFloatField;
    qradic_nota_itemICMS_VALOR: TFloatField;
    qradic_nota_itemICMS_VALORRETIDO: TFloatField;
    qradic_nota_itemICMS_ISENTO: TFloatField;
    qradic_nota_itemICMS_NAOTRIBUTADO: TFloatField;
    qradic_nota_itemSUB_MARGEM: TFloatField;
    qradic_nota_itemSUB_BASE: TFloatField;
    qradic_nota_itemSUB_VALOR: TFloatField;
    qradic_nota_itemIPI_TIPO: TWideStringField;
    qradic_nota_itemIPI_ALIQUOTA: TFloatField;
    qradic_nota_itemIPI_BASE: TFloatField;
    qradic_nota_itemIPI_VALOR: TFloatField;
    qradic_nota_itemTIPO: TIntegerField;
    qradic_nota_itemNOTAFISCAL: TWideStringField;
    qradic_nota_itemFRETE: TFloatField;
    qradic_nota_itemOUTRAS: TFloatField;
    qradic_nota_itemSEGURO: TFloatField;
    qradic_nota_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qradic_nota_itemSUB_PRODUTOS: TFloatField;
    qradic_nota_itemCODFORNECEDOR: TWideStringField;
    qradic_nota_itemITEM_ESPECIAL_VALOR: TFloatField;
    qradic_nota_itemICMS_OUTRAS: TFloatField;
    qradic_nota_itemALTERA_ITEM: TIntegerField;
    qradic_nota_itemCREDITO_ICMS: TFloatField;
    qradic_nota_itemCREDITO_ICMS_BASE: TFloatField;
    qradic_nota_itemPIS_BASE: TFloatField;
    qradic_nota_itemPIS: TFloatField;
    qradic_nota_itemCOFINS_BASE: TFloatField;
    qradic_nota_itemCOFINS: TFloatField;
    qradic_nota_itemLOTE_FABRICACAO: TWideStringField;
    qradic_nota_itemCODBARRA: TWideStringField;
    qradic_nota_itemPRODUTO: TWideStringField;
    qradic_nota_itemPMARGEM: TFloatField;
    qradic_nota_itemPRECOVENDA: TFloatField;
    qradic_nota_itemPRECOCUSTO: TFloatField;
    qrconfigCODIGO: TWideStringField;
    qrconfigPAPEL_PAREDE: TWideStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TWideStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TWideStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TWideStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TWideStringField;
    qrconfigECF_PORTA: TWideStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TWideStringField;
    qrconfigBALANCAPDV_MODELO: TWideStringField;
    qrconfigBALANCAPDV_PORTA: TWideStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TWideStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TWideStringField;
    qrconfigBALANCA_MODELO: TWideStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TWideStringField;
    qrconfigBALANCA_CAMINHO: TWideStringField;
    qrconfigCADASTRO_PRODUTO: TWideStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TWideStringField;
    qrconfigBOLETO_FORMAPGTO: TWideStringField;
    qrconfigPLANO_VENDA_AV: TWideStringField;
    qrconfigPLANO_VENDA_AP: TWideStringField;
    qrconfigPLANO_OS_AV: TWideStringField;
    qrconfigPLANO_OS_AP: TWideStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TWideStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TWideStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TWideStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TWideStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TWideStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TWideStringField;
    qrconfigECF_SERIAL: TWideStringField;
    qrconfigFARMACIA_ENVIO: TWideStringField;
    qrconfigFARMACIA_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TWideStringField;
    qrconfigFARMACIA_LOGIN: TWideStringField;
    qrconfigFARMACIA_SENHA: TWideStringField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TWideStringField;
    qrconfigBALANCA_PROGRAMA: TWideStringField;
    qrconfigTIPO_DUPLICATA: TWideStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    qrconfigCONDICIONAL: TIntegerField;
    qrconfigCONDICIONAL_PRAZO: TIntegerField;
    qrconfigVS_ATIVAR: TIntegerField;
    qrconfigVS_DINHEIRO: TIntegerField;
    qrconfigVS_CHEQUEAV: TIntegerField;
    qrconfigVS_CHEQUEAP: TIntegerField;
    qrconfigVS_CARTRAOCRED: TIntegerField;
    qrconfigVS_CARTAODEB: TIntegerField;
    qrconfigVS_CREDIARIO: TIntegerField;
    qrconfigVS_CLIENTE_VISTA: TWideStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TWideStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TWideStringField;
    qrconfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrconfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrconfigNF_GRADE_NFE: TIntegerField;
    qrconfigNF_SERIAL_NFE: TIntegerField;
    qrconfigNF_REFERENCIA_NFE: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrconfigVALE_CAIXA: TIntegerField;
    qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrconfigVS_FRETE: TIntegerField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrconfigEMAIL_SERVIDOR_SMTP: TWideStringField;
    qrconfigEMAIL_PORTA: TWideStringField;
    qrconfigEMAIL_USUARIO: TWideStringField;
    qrconfigEMAIL_SENHA: TWideStringField;
    qrconfigEMAIL_ASSUNTO: TWideStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TWideStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TWideStringField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TWideStringField;
    qrconfigIND_CFOP_ENTRADA: TWideStringField;
    qrconfigIND_CLIE_SAIDA: TWideStringField;
    qrconfigIND_CFOP_SAIDA: TWideStringField;
    qrconfigIND_CLIE_PERDA: TWideStringField;
    qrconfigIND_CFOP_PERDA: TWideStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TWideStringField;
    qrconfigLOGO_COMERCIO: TWideStringField;
    qrconfigCOR_FARMACIA: TWideStringField;
    qrconfigLOGO_FARMACIA: TWideStringField;
    qrconfigCOR_PECAS: TWideStringField;
    qrconfigLOGO_PECAS: TWideStringField;
    qrconfigCOR_MERCADO: TWideStringField;
    qrconfigLOGO_MERCADO: TWideStringField;
    qrconfigCOR_POSTO: TWideStringField;
    qrconfigLOGO_POSTO: TWideStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TWideStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TWideStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TWideStringField;
    qrconfigIND_CLIE_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_PERDA_DESC: TWideStringField;
    qrconfigIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrconfigIND_CFOP_VENDA_FORA: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrconfigIND_CFOP_SERVICO_DENTRO: TWideStringField;
    qrconfigIND_CFOP_SERVICO_FORA: TWideStringField;
    qrconfigCFOP_VENDA_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_VENDA_FORA_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_DEVOLUCAO_FORA_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_DENTRO_DESC: TWideStringField;
    qrconfigCFOP_SERVICO_FORA_DESC: TWideStringField;
    qrconfigTIPO_NF: TIntegerField;
    qrconfigCOR_ESTOQUE_POSITIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_NEGATIVO: TWideStringField;
    qrconfigCOR_ESTOQUE_ZERADO: TWideStringField;
    qrconfigTIPO_PESQUISA: TIntegerField;
    qrconfigECF_CONCOMITANTE: TIntegerField;
    qrconfigPLANO_PAGTO_FORN: TWideStringField;
    qrconfigHAB_PREVENDA: TIntegerField;
    qrconfigCODCLIENTEAV: TWideStringField;
    qrconfigCODCLIENTEMODELO: TWideStringField;
    qrconfigCODPRODUTOMODELO: TWideStringField;
    qrconfigCODFORNECEDORMODELO: TWideStringField;
    qrconfigUSA_CAIXA_DIARIO: TIntegerField;
    qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrconfigVERSAOBD: TWideStringField;
    qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrconfigTEXTO_PADRAO_VENDA: TWideStringField;
    qrconfigTEXTO_PADRAO_DEVOLUCAO: TWideStringField;
    u: TWideStringField;
    qrtamanhoCODIGO: TWideStringField;
    qrtamanhoTAMANHO: TWideStringField;
    qrcorCODIGO: TWideStringField;
    qrcorNOME: TWideStringField;
    qrcorCOR: TWideStringField;
    qrfornecedor_codigoCODFORNECEDOR: TWideStringField;
    qrfornecedor_codigoCODPRODUTO: TWideStringField;
    qrfornecedor_codigoCODIGO: TWideStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    qrcnaeCODIGO: TWideStringField;
    qrcnaeCNAE: TWideStringField;
    qrcnaeDESCRICAO: TWideStringField;
    qrcnaeABREVIADO: TWideStringField;
    qrpedido_industriaSITUACAO: TIntegerField;
    qrpedido_industria_itemCODIGO: TWideStringField;
    qrpedido_industria_itemPEDIDO: TWideStringField;
    qrpedido_industria_itemITEM: TIntegerField;
    qrpedido_industria_itemCODPRODUTO: TWideStringField;
    qrpedido_industria_itemREFERENCIA: TWideStringField;
    qrpedido_industria_itemCOR: TWideStringField;
    qrpedido_industria_itemTAMANHO: TWideStringField;
    qrpedido_industria_itemQUANTIDADE: TIntegerField;
    qrpedido_industria_itemVALOR: TFloatField;
    qrpedido_industria_itemDESCONTO: TFloatField;
    qrpedido_industria_itemTOTAL: TFloatField;
    qrNCMNCM: TWideStringField;
    qrNCMDESCRICAO: TWideStringField;
    qrNCMUNIDADE: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoPRODUTO: TWideStringField;
    qrorcamento_produtoUNIDADE: TWideStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoCODORCAMENTO: TWideStringField;
    qrorcamento_produtoCODBARRA: TWideStringField;
    qrorcamento_produtoNCM: TWideStringField;
    qrorcamento_produtoLOTE: TWideStringField;
    qrorcamento_produtoIND: TIntegerField;
    qrorcamento_produtoNUMERACAO: TWideStringField;
    qrorcamento_produtoCST: TWideStringField;
    qrorcamento_produtoICMS: TWideStringField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    qrorcamento_produtoCODGRADE: TWideStringField;
    qrorcamento_produtoTIPO: TIntegerField;
    qrorcamento_produtoSERIAL: TWideStringField;
    qrlotelocalCODIGO: TWideStringField;
    qrlotelocalCODPRODUTO: TWideStringField;
    qrlotelocalLOTE: TWideStringField;
    qrlotelocalCODORCAMENTO: TWideStringField;
    qrlotelocalQTDE: TFloatField;
    qrlotelocalCODNOTA: TWideStringField;
    qrlotelocalCODVENDA: TWideStringField;
    ZQuery1CODIGO: TWideStringField;
    ZQuery1NUMERO: TWideStringField;
    ZQuery1CFOP: TWideStringField;
    ZQuery1DATA: TDateTimeField;
    ZQuery1CODCLIENTE: TWideStringField;
    ZQuery1VALOR_PRODUTOS: TFloatField;
    ZQuery1TOTAL_NOTA: TFloatField;
    ZQuery1BASE_CALCULO: TFloatField;
    ZQuery1VALOR_ICMS: TFloatField;
    ZQuery1BASE_SUB: TFloatField;
    ZQuery1ICMS_SUB: TFloatField;
    ZQuery1FRETE: TFloatField;
    ZQuery1SEGURO: TFloatField;
    ZQuery1OUTRAS_DESPESAS: TFloatField;
    ZQuery1VALOR_TOTAL_IPI: TFloatField;
    ZQuery1ITENS: TIntegerField;
    ZQuery1DESCONTO: TFloatField;
    ZQuery1CODTRANSPORTADOR: TWideStringField;
    ZQuery1FRETE_CONTA: TIntegerField;
    ZQuery1PLACA: TWideStringField;
    ZQuery1PLACA_UF: TWideStringField;
    ZQuery1VOL_QTDE: TFloatField;
    ZQuery1VOL_ESPECIE: TWideStringField;
    ZQuery1VOL_MARCA: TWideStringField;
    ZQuery1VOL_NUMERO: TWideStringField;
    ZQuery1PESO_LIQUIDO: TFloatField;
    ZQuery1PESO_BRUTO: TFloatField;
    ZQuery1SITUACAO: TIntegerField;
    ZQuery1MOTIVO: TWideStringField;
    ZQuery1FATURAMENTO_DATA1: TDateTimeField;
    ZQuery1FATURAMENTO_DATA2: TDateTimeField;
    ZQuery1FATURAMENTO_DATA3: TDateTimeField;
    ZQuery1FATURAMENTO_DATA4: TDateTimeField;
    ZQuery1FATURAMENTO_NUMERO1: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO2: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO3: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO4: TWideStringField;
    ZQuery1FATURAMENTO_VALOR1: TFloatField;
    ZQuery1FATURAMENTO_VALOR2: TFloatField;
    ZQuery1FATURAMENTO_VALOR3: TFloatField;
    ZQuery1FATURAMENTO_VALOR4: TFloatField;
    ZQuery1CODFILIAL: TWideStringField;
    ZQuery1OBS1: TWideStringField;
    ZQuery1OBS2: TWideStringField;
    ZQuery1OBS3: TWideStringField;
    ZQuery1INF1: TWideStringField;
    ZQuery1INF2: TWideStringField;
    ZQuery1INF3: TWideStringField;
    ZQuery1INF4: TWideStringField;
    ZQuery1INF5: TWideStringField;
    ZQuery1DATA_SAIDA: TDateTimeField;
    ZQuery1HORA: TWideStringField;
    ZQuery1SITUACAO_A: TWideStringField;
    ZQuery1MODELO_NF: TWideStringField;
    ZQuery1SERIE_NF: TWideStringField;
    ZQuery1VALOR_ISENTO_ICMS: TFloatField;
    ZQuery1ALIQUOTA_ICMS: TFloatField;
    ZQuery1SIT: TWideStringField;
    ZQuery1CODLANCAMENTO: TWideStringField;
    ZQuery1MOVIMENTO: TWideStringField;
    ZQuery1BAIXA_ESTOQUE: TWideStringField;
    ZQuery1TIPO: TWideStringField;
    ZQuery1OS_COD1: TWideStringField;
    ZQuery1OS_COD2: TWideStringField;
    ZQuery1OS_COD3: TWideStringField;
    ZQuery1OS_COD4: TWideStringField;
    ZQuery1OS_COD5: TWideStringField;
    ZQuery1OS_COD6: TWideStringField;
    ZQuery1OS_SERV1: TWideStringField;
    ZQuery1OS_SERV2: TWideStringField;
    ZQuery1OS_SERV3: TWideStringField;
    ZQuery1OS_SERV4: TWideStringField;
    ZQuery1OS_SERV5: TWideStringField;
    ZQuery1OS_SERV6: TWideStringField;
    ZQuery1OS_COMP1: TWideStringField;
    ZQuery1OS_COMP2: TWideStringField;
    ZQuery1OS_COMP3: TWideStringField;
    ZQuery1OS_COMP4: TWideStringField;
    ZQuery1OS_COMP5: TWideStringField;
    ZQuery1OS_COMP6: TWideStringField;
    ZQuery1OS_QTDE1: TFloatField;
    ZQuery1OS_QTDE2: TFloatField;
    ZQuery1OS_QTDE3: TFloatField;
    ZQuery1OS_QTDE4: TFloatField;
    ZQuery1OS_QTDE5: TFloatField;
    ZQuery1OS_QTDE6: TFloatField;
    ZQuery1OS_UNIT1: TFloatField;
    ZQuery1OS_UNIT2: TFloatField;
    ZQuery1OS_UNIT3: TFloatField;
    ZQuery1OS_UNIT4: TFloatField;
    ZQuery1OS_UNIT5: TFloatField;
    ZQuery1OS_UNIT6: TFloatField;
    ZQuery1OS_TOTAL1: TFloatField;
    ZQuery1OS_TOTAL2: TFloatField;
    ZQuery1OS_TOTAL3: TFloatField;
    ZQuery1OS_TOTAL4: TFloatField;
    ZQuery1OS_TOTAL5: TFloatField;
    ZQuery1OS_TOTAL6: TFloatField;
    ZQuery1OS_ISS: TFloatField;
    ZQuery1OS_TOTAL_GERAL: TFloatField;
    ZQuery1OS_TOTAL_ISS: TFloatField;
    ZQuery1DESCONTO_ITEM: TFloatField;
    ZQuery1OBS4: TWideStringField;
    ZQuery1OBS5: TWideStringField;
    ZQuery1CODIGOMODELO: TWideStringField;
    ZQuery1CUSTO_VENDA: TWideStringField;
    ZQuery1FAT_FORMA_PGTO: TWideStringField;
    ZQuery1FAT_CONDI_PGTO: TWideStringField;
    ZQuery1FAT_QTDE_PRESTACAO: TIntegerField;
    ZQuery1FAT_GERAR_RECEBER: TIntegerField;
    ZQuery1FAT_GERAR_DUPLICATA: TIntegerField;
    ZQuery1PIS: TFloatField;
    ZQuery1COFINS: TFloatField;
    ZQuery1FAT_TIPO: TIntegerField;
    ZQuery1CODVENDEDOR: TWideStringField;
    ZQuery1OPERACAO: TWideStringField;
    ZQuery1INTEGRACAO: TIntegerField;
    ZQuery1NFE_SITUACAO: TIntegerField;
    ZQuery1NFE_XML: TWideStringField;
    ZQuery1VAREJO_ATACADO: TWideStringField;
    ZQuery1INDUSTRIALIZACAO: TWideStringField;
    ZQuery1PERDA: TWideStringField;
    ZQuery1FATURAMENTO_DATA5: TDateTimeField;
    ZQuery1FATURAMENTO_DATA6: TDateTimeField;
    ZQuery1FATURAMENTO_NUMERO5: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO6: TWideStringField;
    ZQuery1FATURAMENTO_VALOR5: TFloatField;
    ZQuery1FATURAMENTO_VALOR6: TFloatField;
    ZQuery1FATURAMENTO_DATA7: TDateTimeField;
    ZQuery1FATURAMENTO_DATA8: TDateTimeField;
    ZQuery1FATURAMENTO_DATA9: TDateTimeField;
    ZQuery1FATURAMENTO_NUMERO7: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO8: TWideStringField;
    ZQuery1FATURAMENTO_NUMERO9: TWideStringField;
    ZQuery1FATURAMENTO_VALOR7: TFloatField;
    ZQuery1FATURAMENTO_VALOR8: TFloatField;
    ZQuery1FATURAMENTO_VALOR9: TFloatField;
    ZQuery1CHAVE: TWideStringField;
    qrCSOSNCODIGO: TWideStringField;
    qrCSOSNDESCRICAO: TWideStringField;
    qradic_orcamento_produtoCODIGO: TWideStringField;
    qradic_orcamento_produtoCODNOTA: TWideStringField;
    qradic_orcamento_produtoCODPRODUTO: TWideStringField;
    qradic_orcamento_produtoUNITARIO: TFloatField;
    qradic_orcamento_produtoTOTAL: TFloatField;
    qradic_orcamento_produtoICMS: TFloatField;
    qradic_orcamento_produtoIPI: TFloatField;
    qradic_orcamento_produtoCFOP: TWideStringField;
    qradic_orcamento_produtoNUMERONOTA: TWideStringField;
    qradic_orcamento_produtoCODCLIENTE: TWideStringField;
    qradic_orcamento_produtoDESCONTO: TFloatField;
    qradic_orcamento_produtoACRESCIMO: TFloatField;
    qradic_orcamento_produtoMOVIMENTO: TIntegerField;
    qradic_orcamento_produtoCODVENDEDOR: TWideStringField;
    qradic_orcamento_produtoCODGRADE: TWideStringField;
    qradic_orcamento_produtoSERIAL: TWideStringField;
    qradic_orcamento_produtoUNIDADE: TWideStringField;
    qradic_orcamento_produtoQTDE: TFloatField;
    qradic_orcamento_produtoVALOR_ICMS: TFloatField;
    qradic_orcamento_produtoICMS_REDUZIDO: TFloatField;
    qradic_orcamento_produtoBASE_CALCULO: TFloatField;
    qradic_orcamento_produtoVALOR_IPI: TFloatField;
    qradic_orcamento_produtoSITUACAO: TIntegerField;
    qradic_orcamento_produtoSERIAL_CODINT: TWideStringField;
    qradic_orcamento_produtoCOD_BARRAS: TWideStringField;
    qrlote_fabricacaoCST: TWideStringField;
    qremitenteCODIGO: TWideStringField;
    qremitenteNOME: TWideStringField;
    qremitenteFANTASIA: TWideStringField;
    qremitenteENDERECO: TWideStringField;
    qremitenteBAIRRO: TWideStringField;
    qremitenteCIDADE: TWideStringField;
    qremitenteUF: TWideStringField;
    qremitenteCEP: TWideStringField;
    qremitenteTELEFONE: TWideStringField;
    qremitenteCNPJ: TWideStringField;
    qremitenteIE: TWideStringField;
    qremitenteEMAIL: TWideStringField;
    qremitenteHOMEPAGE: TWideStringField;
    qremitenteRESPONSAVEL: TWideStringField;
    qremitenteCELULAR: TWideStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TWideStringField;
    qremitenteNUMERO: TWideStringField;
    qremitenteCOMPLEMENTO: TWideStringField;
    qremitenteCONTRIBUINTE_IPI: TWideStringField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qremitenteCOMENTARIOS: TWideStringField;
    qremitenteESTOQUE: TFloatField;
    qremitenteVALOR: TFloatField;
    qremitenteCONHECIMENTO: TIntegerField;
    qremitenteCPF: TWideStringField;
    qremitenteRG: TWideStringField;
    qremitenteINSC_MUNICIPAL: TWideStringField;
    qremitenteCOD_MUNICIPIO_IBGE: TWideStringField;
    qremitenteIBGE: TWideStringField;
    qremitenteEMAIL_FINANCEIRO: TWideStringField;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteAPELIDO: TWideStringField;
    qrclienteENDERECO: TWideStringField;
    qrclienteBAIRRO: TWideStringField;
    qrclienteCIDADE: TWideStringField;
    qrclienteUF: TWideStringField;
    qrclienteCEP: TWideStringField;
    qrclienteCOMPLEMENTO: TWideStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TWideStringField;
    qrclienteTELEFONE2: TWideStringField;
    qrclienteTELEFONE3: TWideStringField;
    qrclienteCELULAR: TWideStringField;
    qrclienteEMAIL: TWideStringField;
    qrclienteRG: TWideStringField;
    qrclienteCPF: TWideStringField;
    qrclienteFILIACAO: TWideStringField;
    qrclienteESTADOCIVIL: TWideStringField;
    qrclienteCONJUGE: TWideStringField;
    qrclientePROFISSAO: TWideStringField;
    qrclienteEMPRESA: TWideStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TWideStringField;
    qrclienteREF2: TWideStringField;
    qrclienteCODVENDEDOR: TWideStringField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrclienteCNAE: TWideStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrclienteIBGE: TWideStringField;
    qrclienteTAMANHO_CALCA: TWideStringField;
    qrclienteTAMANHO_BLUSA: TWideStringField;
    qrclienteTAMANHO_SAPATO: TWideStringField;
    qrclienteCORRESP_ENDERECO: TWideStringField;
    qrclienteCORRESP_BAIRRO: TWideStringField;
    qrclienteCORRESP_CIDADE: TWideStringField;
    qrclienteCORRESP_UF: TWideStringField;
    qrclienteCORRESP_CEP: TWideStringField;
    qrclienteCORRESP_COMPLEMENTO: TWideStringField;
    qrclienteRG_PRODUTOR: TWideStringField;
    qrclienteRESP1_NOME: TWideStringField;
    qrclienteRESP1_CPF: TWideStringField;
    qrclienteRESP1_RG: TWideStringField;
    qrclienteRESP1_PROFISSAO: TWideStringField;
    qrclienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP1_ENDERECO: TWideStringField;
    qrclienteRESP1_BAIRRO: TWideStringField;
    qrclienteRESP1_CIDADE: TWideStringField;
    qrclienteRESP1_UF: TWideStringField;
    qrclienteRESP1_CEP: TWideStringField;
    qrclienteRESP2_NOME: TWideStringField;
    qrclienteRESP2_CPF: TWideStringField;
    qrclienteRESP2_RG: TWideStringField;
    qrclienteRESP2_PROFISSAO: TWideStringField;
    qrclienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrclienteRESP2_ENDERECO: TWideStringField;
    qrclienteRESP2_BAIRRO: TWideStringField;
    qrclienteRESP2_CIDADE: TWideStringField;
    qrclienteRESP2_UF: TWideStringField;
    qrclienteRESP2_CEP: TWideStringField;
    qrclienteFOTO: TWideStringField;
    qrclienteCONDPGTO: TWideStringField;
    qrfornecedorCODIGO: TWideStringField;
    qrfornecedorENDERECO: TWideStringField;
    qrfornecedorBAIRRO: TWideStringField;
    qrfornecedorCIDADE: TWideStringField;
    qrfornecedorUF: TWideStringField;
    qrfornecedorCEP: TWideStringField;
    qrfornecedorCOMPLEMENTO: TWideStringField;
    qrfornecedorTELEFONE1: TWideStringField;
    qrfornecedorTELEFONE2: TWideStringField;
    qrfornecedorFAX: TWideStringField;
    qrfornecedorCONTATO1: TWideStringField;
    qrfornecedorCONTATO2: TWideStringField;
    qrfornecedorCELULAR1: TWideStringField;
    qrfornecedorCELULAR2: TWideStringField;
    qrfornecedorEMAIL: TWideStringField;
    qrfornecedorHOMEPAGE: TWideStringField;
    qrfornecedorCNPJ: TWideStringField;
    qrfornecedorIE: TWideStringField;
    qrfornecedorBANCO: TWideStringField;
    qrfornecedorAGENCIA: TWideStringField;
    qrfornecedorCONTA: TWideStringField;
    qrfornecedorOBS1: TWideStringField;
    qrfornecedorOBS2: TWideStringField;
    qrfornecedorOBS3: TWideStringField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedorNUMERO: TWideStringField;
    qrfornecedorIM: TWideStringField;
    qrfornecedorREP_NOME: TWideStringField;
    qrfornecedorREP_TELEFONE: TWideStringField;
    qrfornecedorREP_ENDERECO: TWideStringField;
    qrfornecedorREP_BAIRRO: TWideStringField;
    qrfornecedorREP_COMPLEMENTO: TWideStringField;
    qrfornecedorREP_CIDADE: TWideStringField;
    qrfornecedorREP_UF: TWideStringField;
    qrfornecedorREP_CEP: TWideStringField;
    qrfornecedorREP_TELEFONE1: TWideStringField;
    qrfornecedorREP_TELEFONE2: TWideStringField;
    qrfornecedorREP_TELEFONE3: TWideStringField;
    qrfornecedorREP_FAX: TWideStringField;
    qrfornecedorREP_CNPJ: TWideStringField;
    qrfornecedorREP_IE: TWideStringField;
    qrfornecedorREP_HOME_PAGE: TWideStringField;
    qrfornecedorREP_EMAIL: TWideStringField;
    qrfornecedorCNAE: TWideStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrfornecedorIBGE: TWideStringField;
    qrnotafiscalCODIGO: TWideStringField;
    qrnotafiscalNUMERO: TWideStringField;
    qrnotafiscalCFOP: TWideStringField;
    qrnotafiscalDATA: TDateTimeField;
    qrnotafiscalCODCLIENTE: TWideStringField;
    qrnotafiscalVALOR_PRODUTOS: TFloatField;
    qrnotafiscalTOTAL_NOTA: TFloatField;
    qrnotafiscalBASE_CALCULO: TFloatField;
    qrnotafiscalVALOR_ICMS: TFloatField;
    qrnotafiscalBASE_SUB: TFloatField;
    qrnotafiscalICMS_SUB: TFloatField;
    qrnotafiscalFRETE: TFloatField;
    qrnotafiscalSEGURO: TFloatField;
    qrnotafiscalOUTRAS_DESPESAS: TFloatField;
    qrnotafiscalVALOR_TOTAL_IPI: TFloatField;
    qrnotafiscalITENS: TIntegerField;
    qrnotafiscalDESCONTO: TFloatField;
    qrnotafiscalCODTRANSPORTADOR: TWideStringField;
    qrnotafiscalFRETE_CONTA: TIntegerField;
    qrnotafiscalPLACA: TWideStringField;
    qrnotafiscalPLACA_UF: TWideStringField;
    qrnotafiscalVOL_QTDE: TFloatField;
    qrnotafiscalVOL_ESPECIE: TWideStringField;
    qrnotafiscalVOL_MARCA: TWideStringField;
    qrnotafiscalVOL_NUMERO: TWideStringField;
    qrnotafiscalPESO_LIQUIDO: TFloatField;
    qrnotafiscalPESO_BRUTO: TFloatField;
    qrnotafiscalSITUACAO: TIntegerField;
    qrnotafiscalMOTIVO: TWideStringField;
    qrnotafiscalFATURAMENTO_DATA1: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA2: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA3: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA4: TDateTimeField;
    qrnotafiscalFATURAMENTO_NUMERO1: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO2: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO3: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO4: TWideStringField;
    qrnotafiscalFATURAMENTO_VALOR1: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR2: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR3: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR4: TFloatField;
    qrnotafiscalCODFILIAL: TWideStringField;
    qrnotafiscalOBS1: TWideStringField;
    qrnotafiscalOBS2: TWideStringField;
    qrnotafiscalOBS3: TWideStringField;
    qrnotafiscalINF1: TWideStringField;
    qrnotafiscalINF2: TWideStringField;
    qrnotafiscalINF3: TWideStringField;
    qrnotafiscalINF4: TWideStringField;
    qrnotafiscalINF5: TWideStringField;
    qrnotafiscalDATA_SAIDA: TDateTimeField;
    qrnotafiscalHORA: TWideStringField;
    qrnotafiscalSITUACAO_A: TWideStringField;
    qrnotafiscalMODELO_NF: TWideStringField;
    qrnotafiscalSERIE_NF: TWideStringField;
    qrnotafiscalVALOR_ISENTO_ICMS: TFloatField;
    qrnotafiscalALIQUOTA_ICMS: TFloatField;
    qrnotafiscalSIT: TWideStringField;
    qrnotafiscalCODLANCAMENTO: TWideStringField;
    qrnotafiscalMOVIMENTO: TWideStringField;
    qrnotafiscalBAIXA_ESTOQUE: TWideStringField;
    qrnotafiscalTIPO: TWideStringField;
    qrnotafiscalOS_COD1: TWideStringField;
    qrnotafiscalOS_COD2: TWideStringField;
    qrnotafiscalOS_COD3: TWideStringField;
    qrnotafiscalOS_COD4: TWideStringField;
    qrnotafiscalOS_COD5: TWideStringField;
    qrnotafiscalOS_COD6: TWideStringField;
    qrnotafiscalOS_SERV1: TWideStringField;
    qrnotafiscalOS_SERV2: TWideStringField;
    qrnotafiscalOS_SERV3: TWideStringField;
    qrnotafiscalOS_SERV4: TWideStringField;
    qrnotafiscalOS_SERV5: TWideStringField;
    qrnotafiscalOS_SERV6: TWideStringField;
    qrnotafiscalOS_COMP1: TWideStringField;
    qrnotafiscalOS_COMP2: TWideStringField;
    qrnotafiscalOS_COMP3: TWideStringField;
    qrnotafiscalOS_COMP4: TWideStringField;
    qrnotafiscalOS_COMP5: TWideStringField;
    qrnotafiscalOS_COMP6: TWideStringField;
    qrnotafiscalOS_QTDE1: TFloatField;
    qrnotafiscalOS_QTDE2: TFloatField;
    qrnotafiscalOS_QTDE3: TFloatField;
    qrnotafiscalOS_QTDE4: TFloatField;
    qrnotafiscalOS_QTDE5: TFloatField;
    qrnotafiscalOS_QTDE6: TFloatField;
    qrnotafiscalOS_UNIT1: TFloatField;
    qrnotafiscalOS_UNIT2: TFloatField;
    qrnotafiscalOS_UNIT3: TFloatField;
    qrnotafiscalOS_UNIT4: TFloatField;
    qrnotafiscalOS_UNIT5: TFloatField;
    qrnotafiscalOS_UNIT6: TFloatField;
    qrnotafiscalOS_TOTAL1: TFloatField;
    qrnotafiscalOS_TOTAL2: TFloatField;
    qrnotafiscalOS_TOTAL3: TFloatField;
    qrnotafiscalOS_TOTAL4: TFloatField;
    qrnotafiscalOS_TOTAL5: TFloatField;
    qrnotafiscalOS_TOTAL6: TFloatField;
    qrnotafiscalOS_ISS: TFloatField;
    qrnotafiscalOS_TOTAL_GERAL: TFloatField;
    qrnotafiscalOS_TOTAL_ISS: TFloatField;
    qrnotafiscalDESCONTO_ITEM: TFloatField;
    qrnotafiscalOBS4: TWideStringField;
    qrnotafiscalOBS5: TWideStringField;
    qrnotafiscalCODIGOMODELO: TWideStringField;
    qrnotafiscalCUSTO_VENDA: TWideStringField;
    qrnotafiscalFAT_FORMA_PGTO: TWideStringField;
    qrnotafiscalFAT_CONDI_PGTO: TWideStringField;
    qrnotafiscalFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotafiscalFAT_GERAR_RECEBER: TIntegerField;
    qrnotafiscalFAT_GERAR_DUPLICATA: TIntegerField;
    qrnotafiscalPIS: TFloatField;
    qrnotafiscalCOFINS: TFloatField;
    qrnotafiscalFAT_TIPO: TIntegerField;
    qrnotafiscalCODVENDEDOR: TWideStringField;
    qrnotafiscalOPERACAO: TWideStringField;
    qrnotafiscalINTEGRACAO: TIntegerField;
    qrnotafiscalNFE_SITUACAO: TIntegerField;
    qrnotafiscalNFE_XML: TWideStringField;
    qrnotafiscalVAREJO_ATACADO: TWideStringField;
    qrnotafiscalINDUSTRIALIZACAO: TWideStringField;
    qrnotafiscalPERDA: TWideStringField;
    qrnotafiscalFATURAMENTO_DATA5: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA6: TDateTimeField;
    qrnotafiscalFATURAMENTO_NUMERO5: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO6: TWideStringField;
    qrnotafiscalFATURAMENTO_VALOR5: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR6: TFloatField;
    qrnotafiscalFATURAMENTO_DATA7: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA8: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA9: TDateTimeField;
    qrnotafiscalFATURAMENTO_NUMERO7: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO8: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO9: TWideStringField;
    qrnotafiscalFATURAMENTO_VALOR7: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR8: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR9: TFloatField;
    qrnotafiscalCHAVE: TWideStringField;
    qrinfnutricional_produtoCODIGO: TWideStringField;
    qrinfnutricional_produtoCODPRODUTO: TWideStringField;
    qrinfnutricional_produtoPORCAO: TWideStringField;
    qrinfnutricional_produtoVALOR_CALORICO: TIntegerField;
    qrinfnutricional_produtoVALOR_CALORICO_VD: TWideStringField;
    qrinfnutricional_produtoCARBOIDRATOS: TIntegerField;
    qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField;
    qrinfnutricional_produtoPROTEINAS: TIntegerField;
    qrinfnutricional_produtoPROTEINAS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASTOTAIS: TFloatField;
    qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASSATURADAS: TFloatField;
    qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField;
    qrinfnutricional_produtoFIBRA: TIntegerField;
    qrinfnutricional_produtoFIBRA_VD: TIntegerField;
    qrinfnutricional_produtoCALCIO: TFloatField;
    qrinfnutricional_produtoCALCIO_VD: TIntegerField;
    qrinfnutricional_produtoFERRO: TFloatField;
    qrinfnutricional_produtoFERRO_VD: TIntegerField;
    qrinfnutricional_produtoSODIO: TIntegerField;
    qrinfnutricional_produtoSODIO_VD: TIntegerField;
    qrCFOPCFOP: TWideStringField;
    qrCFOPNATUREZA: TWideStringField;
    qrCFOPTIPO: TIntegerField;
    qrCFOPICMS: TFloatField;
    qrCFOPISS: TFloatField;
    qrCFOPOBS1: TWideStringField;
    qrCFOPOBS2: TWideStringField;
    qrCFOPOBS3: TWideStringField;
    qrCFOPOBS4: TWideStringField;
    qrCFOPFILTRO: TIntegerField;
    qrCFOPVALOR1: TFloatField;
    qrCFOPVALOR2: TFloatField;
    qrCFOPVALOR3: TFloatField;
    qrCFOPVALOR4: TFloatField;
    qrCFOPVALOR5: TFloatField;
    qrCFOPVALOR6: TFloatField;
    qrCFOPVALOR7: TFloatField;
    qrCFOPVALOR8: TFloatField;
    qrCFOPVALOR9: TFloatField;
    qrCFOPVALOR10: TFloatField;
    qrCFOPST: TWideStringField;
    qrCFOPCLASSIFICACAO_FISCAL: TWideStringField;
    qrCFOPREDUCAO_ICMS: TFloatField;
    qrCFOPMARGEM_AGREGADA: TFloatField;
    qrCFOPSIMPLIFICADO: TWideStringField;
    qrCFOPCAIXA: TIntegerField;
    qrCFOPFATURAMENTO: TIntegerField;
    qrentrada_produtoCODIGO: TWideStringField;
    qrentrada_produtoNUMERO: TWideStringField;
    qrentrada_produtoCFOP: TWideStringField;
    qrentrada_produtoCODFORNECEDOR: TWideStringField;
    qrentrada_produtoVALOR_PRODUTOS: TFloatField;
    qrentrada_produtoTOTAL_NOTA: TFloatField;
    qrentrada_produtoBASE_CALCULO: TFloatField;
    qrentrada_produtoVALOR_ICMS: TFloatField;
    qrentrada_produtoBASE_SUB: TFloatField;
    qrentrada_produtoICMS_SUB: TFloatField;
    qrentrada_produtoFRETE: TFloatField;
    qrentrada_produtoSEGURO: TFloatField;
    qrentrada_produtoOUTRAS_DESPESAS: TFloatField;
    qrentrada_produtoVALOR_TOTAL_IPI: TFloatField;
    qrentrada_produtoITENS: TIntegerField;
    qrentrada_produtoDESCONTO: TFloatField;
    qrentrada_produtoMODELO: TWideStringField;
    qrentrada_produtoSERIE: TWideStringField;
    qrentrada_produtoALIQUOTA: TFloatField;
    qrentrada_produtoSITUACAO: TIntegerField;
    qrentrada_produtoMODELO_NF: TWideStringField;
    qrentrada_produtoSERIE_NF: TWideStringField;
    qrentrada_produtoVALOR_ISENTO_ICMS: TFloatField;
    qrentrada_produtoALIQUOTA_ICMS: TFloatField;
    qrentrada_produtoSITUACAO_A: TWideStringField;
    qrcomposicao_produtoCODIGO: TWideStringField;
    qrcomposicao_produtoCODPRODUTO: TWideStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrcomposicao_produtoPRODUTO: TWideStringField;
    qrgrade_produtoCODIGO: TWideStringField;
    qrgrade_produtoCODPRODUTO: TWideStringField;
    qrgrade_produtoNUMERACAO: TWideStringField;
    qrgrade_produtoCODBARRA: TWideStringField;
    qrgrade_produtoESTOQUE: TFloatField;
    qrgrade_produtoCOR: TWideStringField;
    qrcontacorrenteCODIGO: TWideStringField;
    qrcontacorrenteCONTA: TWideStringField;
    qrcontacorrenteCODBANCO: TWideStringField;
    qrcontacorrenteAGENCIA: TWideStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteTITULAR: TWideStringField;
    qrcontacorrenteNOME_AGENCIA: TWideStringField;
    qrsaida_produtoCODIGO: TWideStringField;
    qrsaida_produtoNUMERO: TWideStringField;
    qrsaida_produtoCFOP: TWideStringField;
    qrsaida_produtoDATA: TDateTimeField;
    qrsaida_produtoCODFORNECEDOR: TWideStringField;
    qrsaida_produtoVALOR_PRODUTOS: TFloatField;
    qrsaida_produtoTOTAL_NOTA: TFloatField;
    qrsaida_produtoBASE_CALCULO: TFloatField;
    qrsaida_produtoVALOR_ICMS: TFloatField;
    qrsaida_produtoBASE_SUB: TFloatField;
    qrsaida_produtoICMS_SUB: TFloatField;
    qrsaida_produtoFRETE: TFloatField;
    qrsaida_produtoSEGURO: TFloatField;
    qrsaida_produtoOUTRAS_DESPESAS: TFloatField;
    qrsaida_produtoVALOR_TOTAL_IPI: TFloatField;
    qrsaida_produtoITENS: TIntegerField;
    qrsaida_produtoDESCONTO: TFloatField;
    qrsaida_produtoMODELO: TWideStringField;
    qrsaida_produtoSERIE: TWideStringField;
    qrsaida_produtoALIQUOTA: TFloatField;
    qrsaida_produtoSITUACAO: TIntegerField;
    qrsaida_produtoMODELO_NF: TWideStringField;
    qrsaida_produtoSERIE_NF: TWideStringField;
    qrsaida_produtoVALOR_ISENTO_ICMS: TFloatField;
    qrsaida_produtoALIQUOTA_ICMS: TFloatField;
    qrsaida_produtoSITUACAO_A: TWideStringField;
    qragendaCODIGO: TWideStringField;
    qragendaTIPO: TWideStringField;
    qragendaCODTIPO: TWideStringField;
    qragendaNOME: TWideStringField;
    qragendaTELEFONE1: TWideStringField;
    qragendaTELEFONE2: TWideStringField;
    qragendaTELEFONE3: TWideStringField;
    qragendaCELULAR: TWideStringField;
    qragendaEMAIL: TWideStringField;
    qragendaFAX: TWideStringField;
    qragendaHOMEPAGE: TWideStringField;
    qragendaTIPOI: TIntegerField;
    qrformapgtoCODIGO: TWideStringField;
    qrformapgtoFORMAPGTO: TWideStringField;
    qrformapgtoTIPO: TIntegerField;
    qrcondpgtoCODIGO: TWideStringField;
    qrcondpgtoCONDPGTO: TWideStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrcondpgto_parcelaCODIGO: TWideStringField;
    qrcondpgto_parcelaCODCONDPGTO: TWideStringField;
    qrcondpgto_parcelaNUMERO: TIntegerField;
    qrcondpgto_parcelaDIAS: TIntegerField;
    qrcondpgto_parcelaPERCENTUAL: TFloatField;
    qrcondpgto_parcelaJUROS: TFloatField;
    qrcondpgto_parcelaTIPO: TWideStringField;
    qrtransportadorCODIGO: TWideStringField;
    qrtransportadorNOME: TWideStringField;
    qrtransportadorENDERECO: TWideStringField;
    qrtransportadorBAIRRO: TWideStringField;
    qrtransportadorCIDADE: TWideStringField;
    qrtransportadorUF: TWideStringField;
    qrtransportadorCEP: TWideStringField;
    qrtransportadorCPF: TWideStringField;
    qrtransportadorRG: TWideStringField;
    qrtransportadorTELEFONE: TWideStringField;
    qrtransportadorCELULAR: TWideStringField;
    qrtransportadorPLACA: TWideStringField;
    qrtransportadorUFPLACA: TWideStringField;
    qrtransportadorOBS1: TWideStringField;
    qrtransportadorOBS2: TWideStringField;
    qrtransportadorOBS3: TWideStringField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TWideStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportadorIBGE: TWideStringField;
    qrtransportadorANTT: TWideStringField;
    qrservicoCODIGO: TWideStringField;
    qrservicoSERVICO: TWideStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TWideStringField;
    qrservicoCOMISSAO: TFloatField;
    qrservicoSALARIO_BASE: TFloatField;
    qraliquotaCODIGO: TWideStringField;
    qraliquotaTRIBUTADO: TWideStringField;
    qraliquotaAC: TFloatField;
    qraliquotaAL: TFloatField;
    qraliquotaAM: TFloatField;
    qraliquotaAP: TFloatField;
    qraliquotaBA: TFloatField;
    qraliquotaCE: TFloatField;
    qraliquotaDF: TFloatField;
    qraliquotaES: TFloatField;
    qraliquotaGO: TFloatField;
    qraliquotaMA: TFloatField;
    qraliquotaMG: TFloatField;
    qraliquotaMS: TFloatField;
    qraliquotaMT: TFloatField;
    qraliquotaPA: TFloatField;
    qraliquotaPB: TFloatField;
    qraliquotaPE: TFloatField;
    qraliquotaPI: TFloatField;
    qraliquotaPR: TFloatField;
    qraliquotaRJ: TFloatField;
    qraliquotaRN: TFloatField;
    qraliquotaRO: TFloatField;
    qraliquotaRR: TFloatField;
    qraliquotaRS: TFloatField;
    qraliquotaSC: TFloatField;
    qraliquotaSE: TFloatField;
    qraliquotaSP: TFloatField;
    qraliquotaTOC: TFloatField;
    qraliquotaEX: TFloatField;
    qrgrade_subgrupoCODIGO: TWideStringField;
    qrgrade_subgrupoCODSUBGRUPO: TWideStringField;
    qrgrade_subgrupoNUMERACAO: TWideStringField;
    qrgrade_subgrupoORDEM: TIntegerField;
    qrgrupoCODIGO: TWideStringField;
    qrgrupoGRUPO: TWideStringField;
    qrgrupoALTERA_PRECO_ABCFARMA: TWideStringField;
    qrgrupoCOMISSAO: TFloatField;
    qrgrupoDESCONTO: TFloatField;
    qrsubgrupoCODIGO: TWideStringField;
    qrsubgrupoCODGRUPO: TWideStringField;
    qrsubgrupoSUBGRUPO: TWideStringField;
    qrsubgrupoALTERA_PRECO_ABCFARMA: TWideStringField;
    qrsubgrupoCOMISSAO: TFloatField;
    qrsubgrupoDESCONTO: TFloatField;
    qrmarcaCODIGO: TWideStringField;
    qrmarcaNOME: TWideStringField;
    qrmarcaENDERECO: TWideStringField;
    qrmarcaBAIRRO: TWideStringField;
    qrmarcaCIDADE: TWideStringField;
    qrmarcaUF: TWideStringField;
    qrmarcaCEP: TWideStringField;
    qrmarcaTELEFONE1: TWideStringField;
    qrmarcaTELEFONE2: TWideStringField;
    qrmarcaFAX: TWideStringField;
    qrmarcaCONTATO1: TWideStringField;
    qrmarcaCONTATO2: TWideStringField;
    qrmarcaCELULAR1: TWideStringField;
    qrmarcaCELULAR2: TWideStringField;
    qrmarcaEMAIL: TWideStringField;
    qrmarcaHOMEPAGE: TWideStringField;
    qrmarcaCNPJ: TWideStringField;
    qrmarcaIE: TWideStringField;
    qrmarcaCOMISSAO: TFloatField;
    qrmarcaNUMERO: TWideStringField;
    qrfunciCODIGO: TWideStringField;
    qrfunciNOME: TWideStringField;
    qrfunciENDERECO: TWideStringField;
    qrfunciBAIRRO: TWideStringField;
    qrfunciCIDADE: TWideStringField;
    qrfunciUF: TWideStringField;
    qrfunciCEP: TWideStringField;
    qrfunciTELEFONE: TWideStringField;
    qrfunciCELULAR: TWideStringField;
    qrfunciEMAIL: TWideStringField;
    qrfunciCPF: TWideStringField;
    qrfunciRG: TWideStringField;
    qrfunciCTPS: TWideStringField;
    qrfunciFUNCAO: TWideStringField;
    qrfunciSITUACAO: TIntegerField;
    qrfunciSALARIO: TFloatField;
    qrfunciCOMISSAO: TFloatField;
    qrfunciOBS1: TWideStringField;
    qrfunciOBS2: TWideStringField;
    qrfunciOBS3: TWideStringField;
    qrfunciF_CAIXA: TIntegerField;
    qrfunciF_VENDEDOR: TIntegerField;
    qrfunciF_TECNICO: TIntegerField;
    qrfunciNUMERO: TWideStringField;
    qrregiaoCODIGO: TWideStringField;
    qrregiaoREGIAO: TWideStringField;
    qrusuario_funcaoCODUSUARIO: TWideStringField;
    qrusuario_funcaoFUNCAO: TWideStringField;
    qrusuario_funcaoACESSO: TWideStringField;
    qrconvenioCODIGO: TWideStringField;
    qrconvenioNOME: TWideStringField;
    qrconvenioENDERECO: TWideStringField;
    qrconvenioBAIRRO: TWideStringField;
    qrconvenioCIDADE: TWideStringField;
    qrconvenioUF: TWideStringField;
    qrconvenioCEP: TWideStringField;
    qrconvenioTELEFONE1: TWideStringField;
    qrconvenioTELEFONE2: TWideStringField;
    qrconvenioCONTATO: TWideStringField;
    qrconvenioCELULAR: TWideStringField;
    qrconvenioDIA_PGTO: TWideStringField;
    qrconvenioCNPJ: TWideStringField;
    qrconvenioIE: TWideStringField;
    qrconvenioFAX: TWideStringField;
    qrconvenioEMAIL: TWideStringField;
    qrconvenioDESCONTO: TFloatField;
    qrconvenioDIA_FECHAMENTO: TIntegerField;
    qrconvenioDIA_PAGAMENTO: TIntegerField;
    qrconvenioLIMITE: TFloatField;
    qrconvenioNUMERO: TWideStringField;
    qrLogCODIGO: TWideStringField;
    qrLogCODUSUARIO: TWideStringField;
    qrLogDATA: TDateTimeField;
    qrLogPROCEDIMENTO: TWideStringField;
    qrLogOBS: TWideStringField;
    qrplano2CODIGO: TWideStringField;
    qrplano2CONTA: TWideStringField;
    qrplano2TIPO: TIntegerField;
    qrplano2ENTRADA: TFloatField;
    qrplano2SAIDA: TFloatField;
    qrplano2SALDO: TFloatField;
    qrplano2FILTRO: TIntegerField;
    qrplano2CLASSIFICACAO: TWideStringField;
    qrplano2CODGRUPO: TWideStringField;
    qrplano2NIVEL: TIntegerField;
    qrcontasreceber_pgtoCODCONTA: TWideStringField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TWideStringField;
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    qrsetorCODIGO: TWideStringField;
    qrsetorSETOR: TWideStringField;
    qrsetorFILTRO: TIntegerField;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcliente_veiculoCODIGO: TWideStringField;
    qrcliente_veiculoCODCLIENTE: TWideStringField;
    qrcliente_veiculoVEICULO: TWideStringField;
    qrcliente_veiculoPLACA: TWideStringField;
    qrcliente_veiculoUF: TWideStringField;
    qrcliente_veiculoANO: TWideStringField;
    qrcliente_veiculoCOMBUSTIVEL: TWideStringField;
    qrcliente_veiculoRENAVAM: TWideStringField;
    qrcliente_veiculoOBS1: TWideStringField;
    qrcliente_veiculoOBS2: TWideStringField;
    qrcliente_veiculoOBS3: TWideStringField;
    qrcliente_veiculoCOR: TWideStringField;
    qrcliente_veiculoCHASSI: TWideStringField;
    qrconfig_cobrebemCODIGO: TWideStringField;
    qrconfig_cobrebemDESCRICAO: TWideStringField;
    qrconfig_cobrebemCODCONTA: TWideStringField;
    qrconfig_cobrebemCODIGO_CEDENTE: TWideStringField;
    qrconfig_cobrebemARQUIVO_CONFIGURACAO: TWideStringField;
    qrconfig_cobrebemARQUIVO_LOGOMARCA: TWideStringField;
    qrconfig_cobrebemTIPO_BOLETO: TWideStringField;
    qrconfig_cobrebemNOSSONUMERO_INICIO: TWideStringField;
    qrconfig_cobrebemNOSSONUMERO_FIM: TWideStringField;
    qrconfig_cobrebemNOSSONUMERO_PROXIMO: TWideStringField;
    qrconfig_cobrebemVARIACAO_MODALIDADE: TWideStringField;
    qrconfig_cobrebemMARGEM_SUPERIOR: TWideStringField;
    qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField;
    qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField;
    qrconfig_cobrebemREMESSA_LOCAL: TWideStringField;
    qrconfig_cobrebemRETORNO_LOCAL: TWideStringField;
    qrconfig_cobrebemINSTRUCOES_1: TWideStringField;
    qrconfig_cobrebemINSTRUCOES_2: TWideStringField;
    qrconfig_cobrebemINSTRUCOES_3: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_1: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_2: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_3: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_4: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_5: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_6: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_7: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_8: TWideStringField;
    qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField;
    qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemLIN_DATADOC: TIntegerField;
    qrconfig_cobrebemCOL_DATADOC: TIntegerField;
    qrconfig_cobrebemLIN_NUMERO: TIntegerField;
    qrconfig_cobrebemCOL_NUMERO: TIntegerField;
    qrconfig_cobrebemLIN_ESPDOC: TIntegerField;
    qrconfig_cobrebemCOL_ESPDOC: TIntegerField;
    qrconfig_cobrebemLIN_ACEITE: TIntegerField;
    qrconfig_cobrebemCOL_ACEITE: TIntegerField;
    qrconfig_cobrebemLIN_ESP: TIntegerField;
    qrconfig_cobrebemCOL_ESP: TIntegerField;
    qrconfig_cobrebemLIN_QTDE: TIntegerField;
    qrconfig_cobrebemCOL_QTDE: TIntegerField;
    qrconfig_cobrebemLIN_VALOR: TIntegerField;
    qrconfig_cobrebemCOL_VALOR: TIntegerField;
    qrconfig_cobrebemLIN_VALORDOC: TIntegerField;
    qrconfig_cobrebemCOL_VALORDOC: TIntegerField;
    qrconfig_cobrebemLIN_DESCONTO: TIntegerField;
    qrconfig_cobrebemCOL_DESCONTO: TIntegerField;
    qrconfig_cobrebemLIN_OUTRAS: TIntegerField;
    qrconfig_cobrebemCOL_OUTRAS: TIntegerField;
    qrconfig_cobrebemLIN_MORA: TIntegerField;
    qrconfig_cobrebemCOL_MORA: TIntegerField;
    qrconfig_cobrebemLIN_OUTROS: TIntegerField;
    qrconfig_cobrebemCOL_OUTROS: TIntegerField;
    qrconfig_cobrebemLIN_COBRADO: TIntegerField;
    qrconfig_cobrebemCOL_COBRADO: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTE: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTE: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField;
    qrconfig_cobrebemLIN_INST1: TIntegerField;
    qrconfig_cobrebemLIN_INST2: TIntegerField;
    qrconfig_cobrebemLIN_INST3: TIntegerField;
    qrconfig_cobrebemLIN_INST4: TIntegerField;
    qrconfig_cobrebemLIN_INST5: TIntegerField;
    qrconfig_cobrebemLIN_INST6: TIntegerField;
    qrconfig_cobrebemTIPO: TWideStringField;
    qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField;
    qrconfig_cobrebemREMESSA_LAYOUT: TWideStringField;
    qrconfig_cobrebemRETORNO_LAYOUT: TWideStringField;
    qrconfig_cobrebemENTRE_LINHAS: TIntegerField;
    qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField;
    qrconfig_cobrebemCODIGO_CARTEIRA: TWideStringField;
    qrconfig_cobrebemFORMA_CADASTRAMENTO: TWideStringField;
    qrveiculoCODIGO: TWideStringField;
    qrveiculoNOME: TWideStringField;
    qrveiculoANO: TWideStringField;
    qrveiculoCOMBUSTIVEL: TWideStringField;
    qrveiculoPLACA: TWideStringField;
    qrveiculoUFPLACA: TWideStringField;
    qrveiculoCOR: TWideStringField;
    qrveiculoOBS1: TWideStringField;
    qrveiculoOBS2: TWideStringField;
    qrveiculoOBS3: TWideStringField;
    qrveiculoCIDADE: TWideStringField;
    qrveiculoCOD_MARCA: TWideStringField;
    qrveiculoCOD_MODELO: TWideStringField;
    qrveiculoSITUACAO: TWideStringField;
    qrrelatorioLINHA1: TWideStringField;
    qrrelatorioLINHA2: TWideStringField;
    qrrelatorioLINHA3: TWideStringField;
    qrrelatorioLINHA4: TWideStringField;
    qrrelatorioLINHA5: TWideStringField;
    qrrelatorioLINHA6: TWideStringField;
    qrrelatorioLINHA7: TWideStringField;
    qrrelatorioLINHA8: TWideStringField;
    qrrelatorioLINHA9: TWideStringField;
    qrrelatorioLINHA10: TWideStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    qrrelatorioVALOR26: TFloatField;
    qrrelatorioVALOR27: TFloatField;
    qrrelatorioVALOR28: TFloatField;
    qrrelatorioVALOR29: TFloatField;
    qrrelatorioVALOR30: TFloatField;
    qrrelatorioVALOR31: TFloatField;
    qrrelatorioVALOR32: TFloatField;
    qrrelatorioVALOR33: TFloatField;
    qrrelatorioVALOR34: TFloatField;
    qrrelatorioVALOR35: TFloatField;
    qrrelatorioTEXTO_GRANDE: TWideStringField;
    qrrelatorioTP: TIntegerField;
    qrplanoCODIGO: TWideStringField;
    qrplanoCONTA: TWideStringField;
    qrplanoTIPO: TIntegerField;
    qrplanoENTRADA: TFloatField;
    qrplanoSAIDA: TFloatField;
    qrplanoSALDO: TFloatField;
    qrplanoFILTRO: TIntegerField;
    qrplanoCLASSIFICACAO: TWideStringField;
    qrplanoCODGRUPO: TWideStringField;
    qrplanoNIVEL: TIntegerField;
    qrconfigPLANO_CONTA1: TStringField;
    qrconfigPLANO_CONTA2: TStringField;
    qrconfigPLANO_CONTA3: TStringField;
    qrconfigPLANO_CONTA4: TStringField;
    qrconfigPLANO_CONTA5: TStringField;
    qrconfigPLANO_CONTA6: TStringField;
    qrconfigPLANO_CONTA7: TStringField;
    qrconfigPLANO_CONTA8: TStringField;
    qrconfigPLANO_CONTA10: TStringField;
    qrconfigPLANO_CONTA20: TStringField;
    qrconfigPLANO_CONTA30: TStringField;
    qrconfigPLANO_CONTA40: TStringField;
    qrconfigPLANO_CONTA50: TStringField;
    qrconfigPLANO_CONTA60: TStringField;
    qrconfigPLANO_CONTA70: TStringField;
    qrconfigPLANO_CONTA80: TStringField;
    qrdespesasitem_inddespesa: TStringField;
    qrlote_fabricacaoproduto: TStringField;
    qrlote_fabricacaopeso_liquido: TFloatField;
    qrlote_fabricacaoclassificacao_fiscal: TStringField;
    qrlote_fabricacaopeso_bruto: TFloatField;
    qrlote_fabricacaocst_produto: TStringField;
    qrlote_fabricacaoaliquota_produto: TFloatField;
    qrindustria_produtoscst_produto: TStringField;
    qrindustria_produtoscst_mprima: TStringField;
    qrindustria_produtosaliquota_produto: TFloatField;
    qrindustria_produtosaliquota_mprima: TFloatField;
    qrindustria_produtosproduto_ind: TStringField;
    fxemitente: TfrxDBDataset;
    fxrelatorio: TfrxDBDataset;
    qrempresa: TZQuery;
    qrbaixa_produtosCODFILIAL: TWideStringField;
    qrbaixa_produtosfilial: TStringField;
    qrcontacorrenteAGENCIADIG: TWideStringField;
    qrcontacorrenteCONTADIG: TWideStringField;
  
    Timer1: TTimer;
    qrservicoGRUPO: TStringField;
    qrconfig_cobrebemCONTADIG: TWideStringField;
    qrconfig_cobrebemAGENCIADIG: TWideStringField;
    qrconfig_cobrebemCONVENIO: TWideStringField;
    qrconfig_cobrebemCNPJ: TWideStringField;
    qrconfig_cobrebemCODCONTADIG: TWideStringField;
    qrosCODIGO: TWideStringField;
    qrosDATA: TDateTimeField;
    qrosST: TIntegerField;
    qrosSERIAL: TWideStringField;
    qrosCONCLUSAO_DATA: TDateTimeField;
    qrosTOTAL: TFloatField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosTIPO: TWideStringField;
    qrosCODCLIENTE: TWideStringField;
    qrosSOLICITANTE: TWideStringField;
    qrosMARCA: TWideStringField;
    qrosMODELO: TWideStringField;
    qrosATENDIMENTO: TWideStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_DATA: TDateTimeField;
    qrosDETECTADO_CODTECNICO: TWideStringField;
    qrosSITUACAO: TWideStringField;
    qrosCONCLUSAO_ENTREGUE: TDateTimeField;
    qrosRETIRADO_POR: TWideStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TWideStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TWideStringField;
    qrosTERCEIRO_CONTATO: TWideStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosCODSETOR: TWideStringField;
    qrosCODATENDENTE: TWideStringField;
    qrosCHASSI: TWideStringField;
    qrosCOR: TWideStringField;
    qrosCOMBUSTIVEL: TWideStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TWideStringField;
    qrosDETECTADO_HORA: TWideStringField;
    qrosHORA: TWideStringField;
    qrosINTERVENCOES: TBlobField;
    DB: TZConnection;
    qrorcamento_produtoITEM: TWideStringField;
    qrorcamento_produtoTERMINAL: TWideStringField;
    qrorcamento_produtoCODSUBGRUPO: TWideStringField;
    qrorcamento_produtoPISCOFINS: TWideStringField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoGRADE_CODINT: TWideStringField;
    qrpassagem: TZQuery;
    qrnotafiscal_cte: TZQuery;
    qrnotafiscal_ctecnpj: TStringField;
    qrnotafiscal_ctenome: TStringField;
    qrnotafiscal_ctelogradouro: TStringField;
    qrnotafiscal_ctenumero_retirada: TStringField;
    qrnotafiscal_ctecomplemento: TStringField;
    qrnotafiscal_ctebairro: TStringField;
    qrnotafiscal_cteuf: TStringField;
    qrnotafiscal_ctemunicipio: TStringField;
    qrnfe_cte: TZQuery;
    qroutdocs_cte: TZQuery;
    qrcomp_cte: TZQuery;
    qrINFCARGA_CTE: TZQuery;
    qrinf_conteiner: TZQuery;
    qrdocs_ant_cte: TZQuery;
    qrdoc_ant_papel: TZQuery;
    qrdoc_ant_nfe: TZQuery;
    qrinf_seguro: TZQuery;
    qrNF_CTE: TZQuery;
    qrveiculosnovos: TZQuery;
    qrobs_cont_cte: TZQuery;
    qrobs_fisco_cte: TZQuery;
    qrinf_conteinerCODIGO: TWideStringField;
    qrinf_conteinerCODCTE: TWideStringField;
    qrinf_conteinerNUMERO: TWideStringField;
    qrinf_conteinerDATA_ENTREGA: TDateTimeField;
    qrinf_conteinerFILTRO: TIntegerField;
    qrINFCARGA_CTECODIGO: TWideStringField;
    qrINFCARGA_CTECODCTE: TWideStringField;
    qrINFCARGA_CTECOD_UNIDADE_MED: TWideStringField;
    qrINFCARGA_CTETIPO_MEDIDA: TWideStringField;
    qrINFCARGA_CTEQUANTIDADE: TFloatField;
    qrINFCARGA_CTEFILTRO: TIntegerField;
    qrcomp_cteCODIGO: TWideStringField;
    qrcomp_cteCODCTE: TWideStringField;
    qrcomp_cteNOME: TWideStringField;
    qrcomp_cteVALOR: TFloatField;
    qrcomp_cteFILTRO: TIntegerField;
    qrnotafiscal_cteCODIGO: TWideStringField;
    qrnotafiscal_cteCODCTE: TWideStringField;
    qrnotafiscal_cteSERIE: TWideStringField;
    qrnotafiscal_cteNUMERO: TWideStringField;
    qrnotafiscal_cteDATA_EMISSAO: TDateTimeField;
    qrnotafiscal_cteCFOP: TWideStringField;
    qrnotafiscal_cteMODELO: TWideStringField;
    qrnotafiscal_cteNR_ROMANEIO: TWideStringField;
    qrnotafiscal_cteNR_PEDIDO: TWideStringField;
    qrnotafiscal_cteBASE_CALC_ICMS: TFloatField;
    qrnotafiscal_cteVALOR_ICMS: TFloatField;
    qrnotafiscal_cteBASE_CALC_ICMS_ST: TFloatField;
    qrnotafiscal_cteVALOR_ICMS_ST: TFloatField;
    qrnotafiscal_ctePESO_TOTAL: TFloatField;
    qrnotafiscal_ctePIN: TWideStringField;
    qrnotafiscal_cteVALOR_PRODUTOS: TFloatField;
    qrnotafiscal_cteVALOR_NOTA: TFloatField;
    qrnotafiscal_cteCODRETIRADA_DIFERENTE: TWideStringField;
    qrnfe_cteCODIGO: TWideStringField;
    qrnfe_cteCODCTE: TWideStringField;
    qrnfe_cteCHAVE_ACESSO: TWideStringField;
    qrnfe_ctePIN: TWideStringField;
    qrnfe_cteFILTRO: TIntegerField;
    qroutdocs_cteCODIGO: TWideStringField;
    qroutdocs_cteCODCTE: TWideStringField;
    qroutdocs_cteTIPO: TWideStringField;
    qroutdocs_cteDESCRICAO: TWideStringField;
    qroutdocs_cteNUMERO: TWideStringField;
    qroutdocs_cteDATA_EMISSAO: TDateTimeField;
    qroutdocs_cteFILTRO: TIntegerField;
    qroutdocs_cteVALOR_DOCUMENTO: TFloatField;
    qrinf_seguroCODIGO: TWideStringField;
    qrinf_seguroCODCTE: TWideStringField;
    qrinf_seguroTIPO_RESP: TWideStringField;
    qrinf_seguroNOME_SEGURADORA: TWideStringField;
    qrinf_seguroNUMERO_APOLICE: TWideStringField;
    qrinf_seguroNUMERO_AVERBACAO: TWideStringField;
    qrinf_seguroVALOR_MERC_AVERB: TFloatField;
    qrinf_seguroFILTRO: TIntegerField;
    qrveiculosnovosCODIGO: TWideStringField;
    qrveiculosnovosCODCTE: TWideStringField;
    qrveiculosnovosCOR: TWideStringField;
    qrveiculosnovosDESCRICAO_COR: TWideStringField;
    qrveiculosnovosCOD_MARC_MODELO: TWideStringField;
    qrveiculosnovosCHASSI: TWideStringField;
    qrveiculosnovosVALOR_UNIT: TFloatField;
    qrveiculosnovosFRETE_UNIT: TFloatField;
    qrveiculosnovosFILTRO: TIntegerField;
    qrpassagemCODIGO: TWideStringField;
    qrpassagemCODCTE: TWideStringField;
    qrpassagemPASSAGEM: TWideStringField;
    qrpassagemFILTRO: TIntegerField;
    qrdoc_ant_papelCODIGO: TWideStringField;
    qrdoc_ant_papelCOD_DOC_ANT_CTE: TWideStringField;
    qrdoc_ant_papelTIPO_DOC: TWideStringField;
    qrdoc_ant_papelSERIE: TWideStringField;
    qrdoc_ant_papelSUB_SERIE: TWideStringField;
    qrdoc_ant_papelNUMERO_DOC: TWideStringField;
    qrdoc_ant_papelCODCTE: TWideStringField;
    qrdoc_ant_papelFILTRO: TIntegerField;
    qrdoc_ant_nfeCODIGO: TWideStringField;
    qrdoc_ant_nfeCOD_DOC_ANT_CTE: TWideStringField;
    qrdoc_ant_nfeCHAVE_ACESSO: TWideStringField;
    qrdoc_ant_nfeCODCTE: TWideStringField;
    qrdoc_ant_nfeFILTRO: TIntegerField;
    qrdocs_ant_cteCODIGO: TWideStringField;
    qrdocs_ant_cteCODCTE: TWideStringField;
    qrdocs_ant_cteCODEMISSOR: TWideStringField;
    qrdocs_ant_cteCPF_CNPJ: TWideStringField;
    qrdocs_ant_cteIE: TWideStringField;
    qrdocs_ant_cteUF: TWideStringField;
    qrdocs_ant_cteNOME: TWideStringField;
    qrdocs_ant_cteFILTRO: TIntegerField;
    qrobs_fisco_cteCODIGO: TWideStringField;
    qrobs_fisco_cteCODCTE: TWideStringField;
    qrobs_fisco_cteIDENTIFICAR: TWideStringField;
    qrobs_fisco_cteOBS: TWideStringField;
    qrobs_fisco_cteFILTRO: TIntegerField;
    qrlacre_conteiner: TZQuery;
    qrlacre_conteinerCODIGO: TWideStringField;
    qrlacre_conteinerCODCONTEINER: TWideStringField;
    qrlacre_conteinerLACRE: TWideStringField;
    qrlacre_conteinerFILTRO: TIntegerField;
    qrNF_CTECODIGO: TWideStringField;
    qrNF_CTECODCTE: TWideStringField;
    qrNF_CTESERIE: TWideStringField;
    qrNF_CTENUMERO: TWideStringField;
    qrNF_CTEDATA_EMISSAO: TDateTimeField;
    qrNF_CTECFOP: TWideStringField;
    qrNF_CTEMODELO: TWideStringField;
    qrNF_CTENR_ROMANEIO: TWideStringField;
    qrNF_CTENR_PEDIDO: TWideStringField;
    qrNF_CTEBASE_CALC_ICMS: TFloatField;
    qrNF_CTEVALOR_ICMS: TFloatField;
    qrNF_CTEBASE_CALC_ICMS_ST: TFloatField;
    qrNF_CTEVALOR_ICMS_ST: TFloatField;
    qrNF_CTEPESO_TOTAL: TFloatField;
    qrNF_CTEPIN: TWideStringField;
    qrNF_CTEVALOR_PRODUTOS: TFloatField;
    qrNF_CTEVALOR_NOTA: TFloatField;
    qrNF_CTELOCAL_RETIRADA_DIF: TWideStringField;
    qrNF_CTECODRETIRADA_DIFERENTE: TWideStringField;
    qrNF_CTEVALOR_DOCUMENTO: TFloatField;
    qrNF_CTEQTDE: TFloatField;
    qrNF_CTEQTDE_VOLUMES: TFloatField;
    qrNF_CTEESPECIE: TWideStringField;
    qrNF_CTEMARCA: TWideStringField;
    qrperigoso_cte: TZQuery;
    qrconhecimentoCODIGO: TWideStringField;
    qrconhecimentoNUMERO: TWideStringField;
    qrconhecimentoCFOP: TWideStringField;
    qrconhecimentoCODREMETENTE: TWideStringField;
    qrconhecimentoCODDESTINATARIO: TWideStringField;
    qrconhecimentoSITUACAO: TIntegerField;
    qrconhecimentoTIPO: TWideStringField;
    qrconhecimentoCONSIG_NOME: TWideStringField;
    qrconhecimentoCONSIG_ENDERECO: TWideStringField;
    qrconhecimentoCONSIG_CIDADE: TWideStringField;
    qrconhecimentoCONSIG_UF: TWideStringField;
    qrconhecimentoCONSIG_TIPO: TWideStringField;
    qrconhecimentoCONSIG_CALCULADO: TWideStringField;
    qrconhecimentoREDE_NOME: TWideStringField;
    qrconhecimentoREDE_ENDERECO: TWideStringField;
    qrconhecimentoREDE_CIDADE: TWideStringField;
    qrconhecimentoREDE_UF: TWideStringField;
    qrconhecimentoREDE_TIPO: TWideStringField;
    qrconhecimentoREDE_CNPJ: TWideStringField;
    qrconhecimentoCARGA_NATUREZA: TWideStringField;
    qrconhecimentoCARGA_NF: TWideStringField;
    qrconhecimentoCARGA_VALOR: TFloatField;
    qrconhecimentoCARGA_QTDE: TFloatField;
    qrconhecimentoCARGA_VOL_QTDE: TFloatField;
    qrconhecimentoCARGA_VOL_ESPECIE: TWideStringField;
    qrconhecimentoCARGA_MARCA1: TWideStringField;
    qrconhecimentoCARGA_MARCA2: TWideStringField;
    qrconhecimentoFRETE_PESO: TFloatField;
    qrconhecimentoFRETE_VALOR: TFloatField;
    qrconhecimentoFRETE_ADICIONAL: TFloatField;
    qrconhecimentoFRETE_SEGURO: TFloatField;
    qrconhecimentoFRETE_DESPACHO: TFloatField;
    qrconhecimentoFRETE_OUTROS: TFloatField;
    qrconhecimentoFRETE_TOTAL: TFloatField;
    qrconhecimentoFRETE_TARIFA: TFloatField;
    qrconhecimentoFRETE_BASE: TFloatField;
    qrconhecimentoFRETE_ALIQUOTA: TIntegerField;
    qrconhecimentoFRETE_ICMS: TFloatField;
    qrconhecimentoFRETE_PRONT: TWideStringField;
    qrconhecimentoFRETE_APOLICE: TWideStringField;
    qrconhecimentoFRETE_CIA: TWideStringField;
    qrconhecimentoFRETE_CARREGAR: TWideStringField;
    qrconhecimentoFRETE_DESCARREGAR: TWideStringField;
    qrconhecimentoCODVEICULO: TWideStringField;
    qrconhecimentoCODTRANSPORTADOR: TWideStringField;
    qrconhecimentoOBS: TBlobField;
    qrconhecimentoCODFILIAL: TWideStringField;
    qrconhecimentoLOCAL: TWideStringField;
    qrconhecimentoMOTIVO: TWideStringField;
    qrconhecimentoVEICULO_LOCAL: TWideStringField;
    qrconhecimentoVEICULO_UF: TWideStringField;
    qrconhecimentoMODELO: TWideStringField;
    qrconhecimentoESPECIE: TWideStringField;
    qrconhecimentoSERIE: TWideStringField;
    qrconhecimentoMODELO_NF: TWideStringField;
    qrconhecimentoESPECIE_NF: TWideStringField;
    qrconhecimentoSERIE_NF: TWideStringField;
    qrconhecimentoVALOR_CONHECIMENTO: TFloatField;
    qrconhecimentoINF1: TWideStringField;
    qrconhecimentoINF2: TWideStringField;
    qrconhecimentoINF3: TWideStringField;
    qrconhecimentoINF4: TWideStringField;
    qrconhecimentoINF5: TWideStringField;
    qrconhecimentoCARGA_NATUREZA2: TWideStringField;
    qrconhecimentoCARGA_NF2: TWideStringField;
    qrconhecimentoCARGA_VALOR2: TFloatField;
    qrconhecimentoCARGA_QTDE2: TFloatField;
    qrconhecimentoCARGA_VOL_QTDE2: TFloatField;
    qrconhecimentoCARGA_VOL_ESPECIE2: TWideStringField;
    qrconhecimentoMODELO_NF2: TWideStringField;
    qrconhecimentoESPECIE_NF2: TWideStringField;
    qrconhecimentoSERIE_NF2: TWideStringField;
    qrconhecimentoVALOR_CONHECIMENTO2: TFloatField;
    qrconhecimentoCHAVE_ACESSO: TWideStringField;
    qrconhecimentoCHAVE_ACESSO2: TWideStringField;
    qrconhecimentoCTE_SITUACAO: TIntegerField;
    qrconhecimentoORIGEM_CMUNINI: TWideStringField;
    qrconhecimentoORIGEM_XMUNINI: TWideStringField;
    qrconhecimentoORIGEM_UFINI: TWideStringField;
    qrconhecimentoCMUNFIM: TWideStringField;
    qrconhecimentoXMUNFIM: TWideStringField;
    qrconhecimentoUFFIM: TWideStringField;
    qrconhecimentoMODAL: TWideStringField;
    qrconhecimentoTIPO_SERVICO: TWideStringField;
    qrconhecimentoFINALIDADE_EMISSAO: TWideStringField;
    qrconhecimentoFORMA_EMISSAO: TWideStringField;
    qrconhecimentoFORMA_PAGAMENTO: TWideStringField;
    qrconhecimentoFORMA_IMPRESSAO_DACTE: TWideStringField;
    qrconhecimentoCHAVE_ACEESSO_REFERENCIADO: TWideStringField;
    qrconhecimentoCARAC_AD_TRANSP: TWideStringField;
    qrconhecimentoCARAC_AD_SERV: TWideStringField;
    qrconhecimentoFUNC_EMISSOR: TWideStringField;
    qrconhecimentoMUN_ORIGEM_CAL: TWideStringField;
    qrconhecimentoMUN_DEST_CAL: TWideStringField;
    qrconhecimentoCOD_ROTA_ENTREGA: TWideStringField;
    qrconhecimentoROTA_ENTREGA_SIGLA_ORIGEM: TWideStringField;
    qrconhecimentoROTA_ENTREGA_SIGLA_DEST: TWideStringField;
    qrconhecimentoDETALHES_RETIRADA: TWideStringField;
    qrconhecimentoCOD_EMITENTE: TWideStringField;
    qrconhecimentoCOD_TOMADOR: TWideStringField;
    qrconhecimentoCOD_REMETENTE: TWideStringField;
    qrconhecimentoREMETENTE_TIPO: TWideStringField;
    qrconhecimentoREMETENTE_INFORMACOES_NF: TWideStringField;
    qrconhecimentoCOD_EXPEDIDOR: TWideStringField;
    qrconhecimentoEXPEDIDOR_TIPO: TWideStringField;
    qrconhecimentoCOD_RECEBEDOR: TWideStringField;
    qrconhecimentoRECEBEDOR_TIPO: TWideStringField;
    qrconhecimentoCOD_DESTINATARIO: TWideStringField;
    qrconhecimentoDESTINATARIO_TIPO: TWideStringField;
    qrconhecimentoCOD_ENTREGA_DIFERENTE: TWideStringField;
    qrconhecimentoVTOTAL_SERVICO: TFloatField;
    qrconhecimentoVL_ARECEBER: TFloatField;
    qrconhecimentoVL_TOT_IMPOSTOS: TFloatField;
    qrconhecimentoCOD_SIT_TRIBUT: TWideStringField;
    qrconhecimentoINF_ADIC_INT_FISCO: TBlobField;
    qrconhecimentoVL_BC_ICMS: TFloatField;
    qrconhecimentoVL_ALIQ_ICMS: TFloatField;
    qrconhecimentoVL_ICMS: TFloatField;
    qrconhecimentoVL_CRED_OUT_PRESU: TFloatField;
    qrconhecimentoVL_PERC_REDUCAP_BC: TFloatField;
    qrconhecimentoVL_CARGA: TFloatField;
    qrconhecimentoPROD_PREDOMINANTE: TWideStringField;
    qrconhecimentoOUT_CARACT_PROD: TWideStringField;
    qrconhecimentoRESP_SEGURO: TWideStringField;
    qrconhecimentoNOME_SEGURADORA: TWideStringField;
    qrconhecimentoNUMERO_APOLICE: TWideStringField;
    qrconhecimentoNUMERO_AVERBACAO: TWideStringField;
    qrconhecimentoVL_MERC_AVERB: TFloatField;
    qrconhecimentoNUMERO_FAT: TWideStringField;
    qrconhecimentoVL_ORIGINAL: TFloatField;
    qrconhecimentoVL_DESCONTO: TFloatField;
    qrconhecimentoVL_LIQUIDO: TFloatField;
    qrconhecimentoRNTRC: TWideStringField;
    qrconhecimentoIND_LOTACAO: TWideStringField;
    qrconhecimentoCIOT: TWideStringField;
    qrconhecimentoOBS_GERAIS: TBlobField;
    qrconhecimentoVERSAO_XML: TWideStringField;
    qrconhecimentoUF_EMISSAO: TWideStringField;
    qrconhecimentoXMUN_EMISSAO: TWideStringField;
    qrconhecimentoEMISSAO_CMUNINI: TWideStringField;
    qrconhecimentoTOMADOR_TIPO: TWideStringField;
    qrconhecimentoTOMADOR_CNPJ: TWideStringField;
    qrconhecimentoTOMADOR_IE: TWideStringField;
    qrconhecimentoTOMADOR_NOME: TWideStringField;
    qrconhecimentoTOMADOR_FANT: TWideStringField;
    qrconhecimentoTOMADOR_ENDERECO: TWideStringField;
    qrconhecimentoTOMADOR_NUMERO: TWideStringField;
    qrconhecimentoTOMADOR_COMPLEM: TWideStringField;
    qrconhecimentoTOMADOR_BAIRRO: TWideStringField;
    qrconhecimentoTOMADOR_CEP: TWideStringField;
    qrconhecimentoTOMADOR_PAIS: TWideStringField;
    qrconhecimentoTOMADOR_UF: TWideStringField;
    qrconhecimentoTOMADOR_MUNICIPIO: TWideStringField;
    qrconhecimentoTOMADOR_TELEFONE: TWideStringField;
    qrconhecimentoDIF_ENDERECO: TWideStringField;
    qrconhecimentoPAIS: TWideStringField;
    qrconhecimentoCOD_PAIS: TWideStringField;
    qrconhecimentoREM_BAIRRO: TWideStringField;
    qrconhecimentoCTCHAVE: TIntegerField;
    qrconhecimentoTOMADOR_QUEM: TWideStringField;
    qrconhecimentoremetente: TStringField;
    qrconhecimentodestinatario: TStringField;
    qrconhecimentonatureza: TStringField;
    qrconhecimentotransportador: TStringField;
    qrconhecimentoveiculo: TStringField;
    qrconhecimentofilial: TStringField;
    qrconhecimentodest_endereco: TStringField;
    qrconhecimentodest_cidade: TStringField;
    qrconhecimentodest_cep: TStringField;
    qrconhecimentodest_uf: TStringField;
    qrconhecimentodest_cnpj: TStringField;
    qrconhecimentodest_ie: TStringField;
    qrconhecimentorem_endereco: TStringField;
    qrconhecimentorem_cidade: TStringField;
    qrconhecimentorem_cep: TStringField;
    qrconhecimentorem_uf: TStringField;
    qrconhecimentorem_cnpj: TStringField;
    qrconhecimentorem_ie: TStringField;
    qrconhecimentoveiculo_placa: TStringField;
    qrconhecimentotransp_rg: TStringField;
    qrconhecimentotransp_cpf: TStringField;
    qrconhecimentoemi_cnpj: TStringField;
    qrconhecimentoemi_nome: TStringField;
    qrconhecimentoemi_ie: TStringField;
    qrconhecimentoemi_fant: TStringField;
    qrconhecimentoemi_end: TStringField;
    qrconhecimentoemi_compl: TStringField;
    qrconhecimentoemi_numero: TStringField;
    qrconhecimentoemi_bairro: TStringField;
    qrconhecimentoemi_cep: TStringField;
    qrconhecimentoemi_uf: TStringField;
    qrconhecimentoemi_municipio: TStringField;
    qrconhecimentoemi_telefone: TStringField;
    qrconhecimentotoma_cnpj: TStringField;
    qrconhecimentotoma_nome: TStringField;
    qrconhecimentoemi_cod_pais: TStringField;
    qrconhecimentoemi_pais: TStringField;
    qrconhecimentoexp_nome: TStringField;
    qrconhecimentoexp_cnpj: TStringField;
    qrconhecimentoexp_ie: TStringField;
    qrconhecimentoexp_endereco: TStringField;
    qrconhecimentoexp_numero: TStringField;
    qrconhecimentoexp_uf: TStringField;
    qrconhecimentoexp_complemento: TStringField;
    qrconhecimentoexp_bairro: TStringField;
    qrconhecimentoexp_cep: TStringField;
    qrconhecimentoexp_telefone: TStringField;
    qrconhecimentoexp_cidade: TStringField;
    qrconhecimentoreceb_cnpj: TStringField;
    qrconhecimentoreceb_ie: TStringField;
    qrconhecimentoreceb_nome: TStringField;
    qrconhecimentoreceb_endereco: TStringField;
    qrconhecimentoreceb_bairro: TStringField;
    qrconhecimentoreceb_numero: TStringField;
    qrconhecimentoreceb_cep: TStringField;
    qrconhecimentoreceb_telefone: TStringField;
    qrconhecimentoreceb_uf: TStringField;
    qrconhecimentoreceb_cidade: TStringField;
    qrconhecimentoreceb_complemento: TStringField;
    qrconhecimentorem_numero: TStringField;
    qrconhecimentorem_fantasia: TStringField;
    qrconhecimentorem_complemento: TStringField;
    qrconhecimentorem_nome: TStringField;
    qrconhecimentorem_apelido: TStringField;
    qrconhecimentorem_telefone: TStringField;
    qrconhecimentodest_complemento: TStringField;
    qrconhecimentodest_apelido: TStringField;
    qrconhecimentodest_nome: TStringField;
    qrconhecimentodest_bairro: TStringField;
    qrconhecimentodest_telefone: TStringField;
    qrconhecimentodif_cnpj: TStringField;
    qrconhecimentodif_ie: TStringField;
    qrconhecimentodif_nome: TStringField;
    qrconhecimentodif_numero: TStringField;
    qrconhecimentodif_complemento: TStringField;
    qrconhecimentodif_cep: TStringField;
    qrconhecimentodif_bairro: TStringField;
    qrconhecimentodif_uf: TStringField;
    qrconhecimentodif_cidade: TStringField;
    qrconhecimentotoma_ie: TStringField;
    qrconhecimentotoma_endereco: TStringField;
    qrconhecimentotoma_cep: TStringField;
    qrconhecimentotoma_uf: TStringField;
    qrconhecimentotoma_numero: TStringField;
    qrconhecimentotoma_telefone: TStringField;
    qrconhecimentotoma_complemento: TStringField;
    qrconhecimentotoma_cidade: TStringField;
    qrconhecimentotoma_fantasia: TStringField;
    qrconhecimentotoma_bairro: TStringField;
    qrconhecimentodest_numero: TStringField;
    qrconhecimentodif_endereco2: TStringField;
    qrconhecimentorem_bairro2: TStringField;
    qrconhecimentoLOC_ENTREGA_DIF_END_DEST: TWideStringField;
    qrconhecimentoMODELO_NF3: TWideStringField;
    qrobs_cont_cteCODIGO: TWideStringField;
    qrobs_cont_cteCODCTE: TWideStringField;
    qrobs_cont_cteIDENTIFICAR: TWideStringField;
    qrobs_cont_cteOBS: TWideStringField;
    qrobs_cont_cteFILTRO: TIntegerField;
    qrconhecimentoRECEBEDOR_RET_AFPE: TWideStringField;
    qrnotafiscal_cteLOCAL_RETIRADA_DIF: TWideStringField;
    qrconhecimentoCTE_XML: TWideStringField;
    qrchequeCODIGO: TWideStringField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    qrchequebanco: TStringField;
    qrfunciSENHA: TWideStringField;
    qrfornecedorFANTASIA: TWideStringField;
    qrfornecedorNOME: TWideStringField;
    qrosDAV: TWideStringField;
    qrosDAV_IMPRESSO: TIntegerField;
    qrosDAV_ATUAL: TWideStringField;
    qrosCODFUN: TWideStringField;
    conn: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    SDSos: TSQLDataSet;
    DSpos: TDataSetProvider;
    CDSos: TClientDataSet;
    CDSoscliente: TStringField;
    CDSosveiculo: TStringField;
    CDSosStringField: TStringField;
    CDSosatendente: TStringField;
    CDSosdetectado_tecnico: TStringField;
    CDSossetor: TStringField;
    CDSoscliente_endereco: TStringField;
    CDSoscliente_bairro: TStringField;
    CDSoscliente_cidade: TStringField;
    CDSoscliente_uf: TStringField;
    CDSoscliente_cpf: TStringField;
    CDSoscliente_rg: TStringField;
    CDSoscliente_cep: TStringField;
    CDSoscliente_telefone: TStringField;
    boleto: TACBrBoleto;
    BoletoFR: TACBrBoletoFCFR;
    qrcontacorrenteCODCEDENTE: TWideStringField;
    qrcontacorrenteFISICAJURIDICA: TWideStringField;
    qrcontacorrenteINSTRUCOES1: TWideStringField;
    qrcontacorrenteINSTRUCOES2: TWideStringField;
    qrcontacorrenteINSTRUCOES3: TWideStringField;
    qrcontacorrenteCPFCNPJ: TWideStringField;
    qrcontacorrenteNOSSONUM: TWideStringField;
    qrcontacorrenteTIPO: TIntegerField;
    qrcontacorrenteLAYOUT: TIntegerField;
    frxReport1: TfrxReport;
    qrtanque: TZQuery;
    qrtanqueCODIGO: TIntegerField;
    qrtanqueCOD_PRODUTO: TIntegerField;
    qrtanqueCAP_MAXIMA: TIntegerField;
    qrtanqueCAP_MINIMA: TIntegerField;
    qrtanqueNUMERO_FISICO: TIntegerField;
    qrtanqueESTOQUE_INICIAL: TFloatField;
    qrtanqueESTOQUE_ATUAL: TFloatField;
    qrtanqueESTOQUE_MEDICAO: TFloatField;
    qrtanqueVALOR_ENTRADA: TFloatField;
    qrtanqueVALOR_SAIDA: TFloatField;
    qrtanqueDATA_ULT_ENT: TDateTimeField;
    qrtanqueDATA_ULT_SAI: TDateTimeField;
    qrtanqueNUMERO_NF: TWideStringField;
    qrBicos: TZQuery;
    qrBicosCODIGO: TIntegerField;
    qrBicosCOD_PRODUTO: TIntegerField;
    qrBicosPRECO: TFloatField;
    qrBicosCOD_BOMBA: TIntegerField;
    qrBicosENCERRANTE: TIntegerField;
    qrBicosTANQUE: TIntegerField;
    qrBombas: TZQuery;
    qrBombasCODIGO: TIntegerField;
    qrBombasCOD_PRODUTO: TIntegerField;
    qrBombasNOME_COMBUSTIVEL: TWideStringField;
    qrBombasSERIE: TWideStringField;
    qrBombasFABRICANTE: TWideStringField;
    qrBombasMODELO: TWideStringField;
    qrCombustivel: TZQuery;
    qrCombustivelNOME: TWideStringField;
    qrCombustivelPR_COMPRA: TFloatField;
    qrCombustivelPR_CUSTO: TFloatField;
    qrCombustivelPR_VENDA: TFloatField;
    qrCombustivelCODIGO: TIntegerField;
    qrLivroLMC: TZQuery;
    qrLivroLMCCODIGO: TIntegerField;
    qrLivroLMCCOD_FILIAL: TWideStringField;
    qrLivroLMCFILIAL: TWideStringField;
    qrLivroLMCENDERECO: TWideStringField;
    qrLivroLMCBAIRRO: TWideStringField;
    qrLivroLMCCEP: TWideStringField;
    qrLivroLMCCIDADE: TWideStringField;
    qrLivroLMCUF: TWideStringField;
    qrLivroLMCIE: TWideStringField;
    qrLivroLMCCNPJ: TWideStringField;
    qrLivroLMCIM: TWideStringField;
    qrLivroLMCDISTRIBUIDORA: TWideStringField;
    qrLivroLMCCAPACIDADE: TIntegerField;
    qrLivroLMCCOD_COMBUSTIVEL: TIntegerField;
    qrLivroLMCNOME_COMBUSTIVEL: TWideStringField;
    qrLivroLMCNUMERO: TWideStringField;
    qrLivroLMCNUMERO_JUNTACOM: TWideStringField;
    qrLivroLMCDATA_ABERTURA: TDateTimeField;
    qrLivroLMCNUMERO_ORDEM: TIntegerField;
    qrLivroLMCPAGINA_ATUAL: TIntegerField;
    qrLMC: TZQuery;
    qrLMCCODIGO: TIntegerField;
    qrLMCTANQUE: TIntegerField;
    qrLMCBOMBA: TIntegerField;
    qrLMCBICO: TIntegerField;
    qrLMCABERTURA: TIntegerField;
    qrLMCENCERRANTE: TIntegerField;
    qrLMCCOMBUSTIVEL: TIntegerField;
    qrLMCDATA: TDateTimeField;
    qrLMCPRECO: TFloatField;
    qrLMCQUANTIDADE: TFloatField;
    qrLMCTOTAL: TFloatField;
    qrLMCSITUACAO: TIntegerField;
    qrLMCNR_NOTA: TIntegerField;
    qrLMCNOTAFISCAL1: TWideStringField;
    qrLMCNOTAFISCAL2: TWideStringField;
    qrLMCNOTAFISCAL3: TWideStringField;
    qrLMCNOTAFISCAL4: TWideStringField;
    qrLMCQUANTNF1: TIntegerField;
    qrLMCQUANTNF2: TIntegerField;
    qrLMCQUANTNF3: TIntegerField;
    qrLMCQUANTNF4: TIntegerField;
    qrLMCBICO1: TIntegerField;
    qrLMCBICO2: TIntegerField;
    qrLMCBICO3: TIntegerField;
    qrLMCBICO4: TIntegerField;
    qrLMCBICO5: TIntegerField;
    qrLMCBICO6: TIntegerField;
    qrLMCBICO7: TIntegerField;
    qrLMCBICO8: TIntegerField;
    qrLMCABER_BICO1: TIntegerField;
    qrLMCABER_BICO2: TIntegerField;
    qrLMCABER_BICO3: TIntegerField;
    qrLMCABER_BICO4: TIntegerField;
    qrLMCABER_BICO5: TIntegerField;
    qrLMCABER_BICO6: TIntegerField;
    qrLMCABER_BICO7: TIntegerField;
    qrLMCABER_BICO8: TIntegerField;
    qrLMCENC_BICO1: TIntegerField;
    qrLMCENC_BICO2: TIntegerField;
    qrLMCENC_BICO3: TIntegerField;
    qrLMCENC_BICO4: TIntegerField;
    qrLMCENC_BICO5: TIntegerField;
    qrLMCENC_BICO6: TIntegerField;
    qrLMCENC_BICO7: TIntegerField;
    qrLMCENC_BICO8: TIntegerField;
    qrLMCAFER_BICO1: TIntegerField;
    qrLMCAFER_BICO2: TIntegerField;
    qrLMCAFER_BICO3: TIntegerField;
    qrLMCAFER_BICO4: TIntegerField;
    qrLMCAFER_BICO5: TIntegerField;
    qrLMCAFER_BICO6: TIntegerField;
    qrLMCAFER_BICO7: TIntegerField;
    qrLMCAFER_BICO8: TIntegerField;
    qrLMCQTEVEND_1: TIntegerField;
    qrLMCQTEVEND_2: TIntegerField;
    qrLMCQTEVEND_3: TIntegerField;
    qrLMCQTEVEND_4: TIntegerField;
    qrLMCQTEVEND_5: TIntegerField;
    qrLMCQTEVEND_6: TIntegerField;
    qrLMCQTEVEND_7: TIntegerField;
    qrLMCQTEVEND_8: TIntegerField;
    qrLMCTOTALVEND_1: TFloatField;
    qrLMCTOTALVEND_2: TFloatField;
    qrLMCTOTALVEND_3: TFloatField;
    qrLMCTOTALVEND_4: TFloatField;
    qrLMCTOTALVEND_5: TFloatField;
    qrLMCTOTALVEND_6: TFloatField;
    qrLMCTOTALVEND_7: TFloatField;
    qrLMCTOTALVEND_8: TFloatField;
    qrLMCESTOQ_ABERTURA: TIntegerField;
    qrLMCESTOQ_ESCRITURAL: TIntegerField;
    qrLMCESTOQ_FECHAMENTO: TIntegerField;
    qrLMCPERDA_SOBRA: TIntegerField;
    qrLMCOBSERVACAO: TWideStringField;
    qrLMCPAGINA: TIntegerField;
    qrENCERRANTES: TZQuery;
    qrENCERRANTESCODIGO: TIntegerField;
    qrENCERRANTESCOD_BICO: TIntegerField;
    qrENCERRANTESABERTURA: TIntegerField;
    qrENCERRANTESENCERRAMENTO: TIntegerField;
    qrENCERRANTESQUANTIDADE: TFloatField;
    qrENCERRANTESAFERICAO: TFloatField;
    qrENCERRANTESPRECO: TFloatField;
    qrENCERRANTESVALOR: TFloatField;
    qrENCERRANTESCOD_PRODUTO: TIntegerField;
    qrENCERRANTESSITUACAO: TWideStringField;
    qrorcamento_produtoOBS: TWideStringField;
    qrCest: TZQuery;
    qrCestCEST: TWideStringField;
    qrCestNCM: TWideStringField;
    qrCestDESCRICAO: TWideStringField;
    qradicCODIGO: TWideStringField;
    qradicNOME: TWideStringField;
    qradicAPELIDO: TWideStringField;
    qradicENDERECO: TWideStringField;
    qradicBAIRRO: TWideStringField;
    qradicCIDADE: TWideStringField;
    qradicUF: TWideStringField;
    qradicCEP: TWideStringField;
    qradicCOMPLEMENTO: TWideStringField;
    qradicMORADIA: TIntegerField;
    qradicTIPO: TIntegerField;
    qradicSITUACAO: TIntegerField;
    qradicTELEFONE1: TWideStringField;
    qradicTELEFONE2: TWideStringField;
    qradicTELEFONE3: TWideStringField;
    qradicCELULAR: TWideStringField;
    qradicEMAIL: TWideStringField;
    qradicRG: TWideStringField;
    qradicCPF: TWideStringField;
    qradicFILIACAO: TWideStringField;
    qradicESTADOCIVIL: TWideStringField;
    qradicCONJUGE: TWideStringField;
    qradicPROFISSAO: TWideStringField;
    qradicEMPRESA: TWideStringField;
    qradicRENDA: TFloatField;
    qradicLIMITE: TFloatField;
    qradicREF1: TWideStringField;
    qradicREF2: TWideStringField;
    qradicCODVENDEDOR: TWideStringField;
    qradicOBS1: TWideStringField;
    qradicOBS2: TWideStringField;
    qradicOBS3: TWideStringField;
    qradicOBS4: TWideStringField;
    qradicOBS5: TWideStringField;
    qradicOBS6: TWideStringField;
    qradicNASCIMENTO: TWideStringField;
    qradicCODREGIAO: TWideStringField;
    qradicCODCONVENIO: TWideStringField;
    qradicCODUSUARIO: TWideStringField;
    qradicNUMERO: TWideStringField;
    qradicRG_ORGAO: TWideStringField;
    qradicRG_ESTADO: TWideStringField;
    qradicRG_EMISSAO: TDateField;
    qradicSEXO: TWideStringField;
    qradicHISTORICO: TBlobField;
    qradicPREVISAO: TDateField;
    qradicCNAE: TWideStringField;
    qradicCOD_MUNICIPIO_IBGE: TWideStringField;
    qradicIBGE: TWideStringField;
    qradicTAMANHO_CALCA: TWideStringField;
    qradicTAMANHO_BLUSA: TWideStringField;
    qradicTAMANHO_SAPATO: TWideStringField;
    qradicCORRESP_ENDERECO: TWideStringField;
    qradicCORRESP_BAIRRO: TWideStringField;
    qradicCORRESP_CIDADE: TWideStringField;
    qradicCORRESP_UF: TWideStringField;
    qradicCORRESP_CEP: TWideStringField;
    qradicCORRESP_COMPLEMENTO: TWideStringField;
    qradicRG_PRODUTOR: TWideStringField;
    qradicRESP1_NOME: TWideStringField;
    qradicRESP1_CPF: TWideStringField;
    qradicRESP1_RG: TWideStringField;
    qradicRESP1_PROFISSAO: TWideStringField;
    qradicRESP1_ESTADO_CIVIL: TWideStringField;
    qradicRESP1_ENDERECO: TWideStringField;
    qradicRESP1_BAIRRO: TWideStringField;
    qradicRESP1_CIDADE: TWideStringField;
    qradicRESP1_UF: TWideStringField;
    qradicRESP1_CEP: TWideStringField;
    qradicRESP2_NOME: TWideStringField;
    qradicRESP2_CPF: TWideStringField;
    qradicRESP2_RG: TWideStringField;
    qradicRESP2_PROFISSAO: TWideStringField;
    qradicRESP2_ESTADO_CIVIL: TWideStringField;
    qradicRESP2_ENDERECO: TWideStringField;
    qradicRESP2_BAIRRO: TWideStringField;
    qradicRESP2_CIDADE: TWideStringField;
    qradicRESP2_UF: TWideStringField;
    qradicRESP2_CEP: TWideStringField;
    qradicFOTO: TWideStringField;
    qradicCONDPGTO: TWideStringField;
    qradic_contasreceberPRESTACAO: TIntegerField;
    qradic_contasreceberVALOR: TFloatField;
    qradic_contasreceberDOCUMENTO: TWideStringField;
    qradic_contasreceberTIPO: TWideStringField;
    qradic_contasreceberTERMINAL: TWideStringField;
    qradic_notaCODIGO: TWideStringField;
    qradic_notaNUMERO: TWideStringField;
    qradic_notaCODEMPRESA: TWideStringField;
    qradic_notaCODFORNECEDOR: TWideStringField;
    qradic_notaMODELO: TWideStringField;
    qradic_notaESPECIE: TWideStringField;
    qradic_notaSERIE: TWideStringField;
    qradic_notaCFOP: TWideStringField;
    qradic_notaCONF_BASEICMS: TFloatField;
    qradic_notaCONF_VALORICMS: TFloatField;
    qradic_notaCONF_BASESUB: TFloatField;
    qradic_notaCONF_VALORSUB: TFloatField;
    qradic_notaCONF_FRETE: TFloatField;
    qradic_notaCONF_SEGURO: TFloatField;
    qradic_notaCONF_OUTRAS: TFloatField;
    qradic_notaCONF_IPI: TFloatField;
    qradic_notaCONF_DESCONTO: TFloatField;
    qradic_notaCONF_TOTALPRODUTOS: TFloatField;
    qradic_notaCONF_TOTALNOTA: TFloatField;
    qradic_notaCONF_ICMSRETIDO: TFloatField;
    qradic_notaCONF_ICMSREDITO_PERC: TFloatField;
    qradic_notaBASE_ICMS: TFloatField;
    qradic_notaVALOR_ICMS: TFloatField;
    qradic_notaBASE_SUB: TFloatField;
    qradic_notaVALOR_SUB: TFloatField;
    qradic_notaFRETE: TFloatField;
    qradic_notaSEGURO: TFloatField;
    qradic_notaOUTRAS: TFloatField;
    qradic_notaIPI: TFloatField;
    qradic_notaDESCONTO: TFloatField;
    qradic_notaTOTAL_PRODUTOS: TFloatField;
    qradic_notaTOTAL_NOTA: TFloatField;
    qradic_notaTRANSP_NOME: TWideStringField;
    qradic_notaTRANSP_FRETE: TWideStringField;
    qradic_notaTRANSP_PLACA: TWideStringField;
    qradic_notaTRANSP_PLACAUF: TWideStringField;
    qradic_notaTRANSP_IE: TWideStringField;
    qradic_notaTRANSP_CNPJ: TWideStringField;
    qradic_notaTRANSP_ENDERECO: TWideStringField;
    qradic_notaTRANSP_CIDADE: TWideStringField;
    qradic_notaTRANSP_UF: TWideStringField;
    qradic_notaTRANSP_QTDE: TFloatField;
    qradic_notaTRANSP_ESPECIE: TWideStringField;
    qradic_notaTRANSP_MARCA: TWideStringField;
    qradic_notaTRANSP_NUMERO: TWideStringField;
    qradic_notaTRANSP_PESOBRUTO: TFloatField;
    qradic_notaTRANSP_PESOLIQUIDO: TFloatField;
    qradic_notaOBS1: TWideStringField;
    qradic_notaOBS2: TWideStringField;
    qradic_notaOBS3: TWideStringField;
    qradic_notaOBS4: TWideStringField;
    qradic_notaOBS5: TWideStringField;
    qradic_notaOBS6: TWideStringField;
    qradic_notaOBS7: TWideStringField;
    qradic_notaSITUACAO: TIntegerField;
    qradic_notaITENS: TIntegerField;
    qradic_notaTIPO: TWideStringField;
    qradic_notaNOTA_FISCAL: TWideStringField;
    qradic_notaVALOR_MERCADORIAS: TFloatField;
    qradic_notaCODREMETENTE: TWideStringField;
    qradic_notaICMS_ISENTO: TFloatField;
    qradic_notaICMS_OUTRAS: TFloatField;
    qradic_notaDESCONTO_INCIDENTE: TIntegerField;
    qradic_notaITEM_FRETE_VALOR: TFloatField;
    qradic_notaITEM_FRETE_BASE: TFloatField;
    qradic_notaITEM_FRETE_ALIQUOTA: TFloatField;
    qradic_notaITEM_FRETE_ICMS: TFloatField;
    qradic_notaITEM_SEGURO_VALOR: TFloatField;
    qradic_notaITEM_SEGURO_BASE: TFloatField;
    qradic_notaITEM_SEGURO_ALIQUOTA: TFloatField;
    qradic_notaITEM_SEGURO_ICMS: TFloatField;
    qradic_notaITEM_PIS_VALOR: TFloatField;
    qradic_notaITEM_PIS_BASE: TFloatField;
    qradic_notaITEM_PIS_ALIQUOTA: TFloatField;
    qradic_notaITEM_PIS_ICMS: TFloatField;
    qradic_notaITEM_COMPLEMENTO_VALOR: TFloatField;
    qradic_notaITEM_COMPLEMENTO_BASE: TFloatField;
    qradic_notaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qradic_notaITEM_COMPLEMENTO_ICMS: TFloatField;
    qradic_notaITEM_SERVICO_VALOR: TFloatField;
    qradic_notaITEM_SERVICO_BASE: TFloatField;
    qradic_notaITEM_SERVICO_ALIQUOTA: TFloatField;
    qradic_notaITEM_SERVICO_ICMS: TFloatField;
    qradic_notaITEM_OUTRAS_VALOR: TFloatField;
    qradic_notaITEM_OUTRAS_BASE: TFloatField;
    qradic_notaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qradic_notaITEM_OUTRAS_ICMS: TFloatField;
    qradic_notaITEM_ESPECIAL_TOTAL: TFloatField;
    qradic_notaITEM_ESPECIAL_VALOR: TFloatField;
    qradic_notaBASEICMS_PRODUTOS: TIntegerField;
    qradic_notaCONF_ITEM_ESPECIAL: TFloatField;
    qradic_notaOBS8: TWideStringField;
    qradic_notaCREDITO_ICMS: TFloatField;
    qradic_notaPIS: TFloatField;
    qradic_notaCOFINS: TFloatField;
    qradic_notaOPERACAO: TWideStringField;
    qradic_notaINTEGRACAO: TIntegerField;
    qradic_notaAPROVEITA_CREDITO_ICMS: TWideStringField;
    qradic_notaCHAVE: TWideStringField;
    qradic_contasreceberVENCIMENTO: TDateField;
    qradic_notaDATA_EMISSAO: TDateField;
    qradic_notaDATA_LANCAMENTO: TDateField;
    qradic_nota_itemDATA: TDateField;
    qradic_orcamentoDATA: TDateField;
    qradic_orcamento_produtoDATA: TDateField;
    qradic2CODIGO: TWideStringField;
    qradic2NOME: TWideStringField;
    qradic2APELIDO: TWideStringField;
    qradic2ENDERECO: TWideStringField;
    qradic2BAIRRO: TWideStringField;
    qradic2CIDADE: TWideStringField;
    qradic2UF: TWideStringField;
    qradic2CEP: TWideStringField;
    qradic2COMPLEMENTO: TWideStringField;
    qradic2MORADIA: TIntegerField;
    qradic2TIPO: TIntegerField;
    qradic2SITUACAO: TIntegerField;
    qradic2TELEFONE1: TWideStringField;
    qradic2TELEFONE2: TWideStringField;
    qradic2TELEFONE3: TWideStringField;
    qradic2CELULAR: TWideStringField;
    qradic2EMAIL: TWideStringField;
    qradic2RG: TWideStringField;
    qradic2CPF: TWideStringField;
    qradic2FILIACAO: TWideStringField;
    qradic2ESTADOCIVIL: TWideStringField;
    qradic2CONJUGE: TWideStringField;
    qradic2PROFISSAO: TWideStringField;
    qradic2EMPRESA: TWideStringField;
    qradic2RENDA: TFloatField;
    qradic2LIMITE: TFloatField;
    qradic2REF1: TWideStringField;
    qradic2REF2: TWideStringField;
    qradic2CODVENDEDOR: TWideStringField;
    qradic2DATA_CADASTRO: TDateField;
    qradic2DATA_ULTIMACOMPRA: TDateField;
    qradic2OBS1: TWideStringField;
    qradic2OBS2: TWideStringField;
    qradic2OBS3: TWideStringField;
    qradic2OBS4: TWideStringField;
    qradic2OBS5: TWideStringField;
    qradic2OBS6: TWideStringField;
    qradic2NASCIMENTO: TWideStringField;
    qradic2CODREGIAO: TWideStringField;
    qradic2CODCONVENIO: TWideStringField;
    qradic2CODUSUARIO: TWideStringField;
    qradic2NUMERO: TWideStringField;
    qradic2RG_ORGAO: TWideStringField;
    qradic2RG_ESTADO: TWideStringField;
    qradic2RG_EMISSAO: TDateField;
    qradic2SEXO: TWideStringField;
    qradic2HISTORICO: TBlobField;
    qradic2PREVISAO: TDateField;
    qradic2CNAE: TWideStringField;
    qradic2COD_MUNICIPIO_IBGE: TWideStringField;
    qradic2IBGE: TWideStringField;
    qradic2TAMANHO_CALCA: TWideStringField;
    qradic2TAMANHO_BLUSA: TWideStringField;
    qradic2TAMANHO_SAPATO: TWideStringField;
    qradic2CORRESP_ENDERECO: TWideStringField;
    qradic2CORRESP_BAIRRO: TWideStringField;
    qradic2CORRESP_CIDADE: TWideStringField;
    qradic2CORRESP_UF: TWideStringField;
    qradic2CORRESP_CEP: TWideStringField;
    qradic2CORRESP_COMPLEMENTO: TWideStringField;
    qradic2RG_PRODUTOR: TWideStringField;
    qradic2RESP1_NOME: TWideStringField;
    qradic2RESP1_CPF: TWideStringField;
    qradic2RESP1_RG: TWideStringField;
    qradic2RESP1_PROFISSAO: TWideStringField;
    qradic2RESP1_ESTADO_CIVIL: TWideStringField;
    qradic2RESP1_ENDERECO: TWideStringField;
    qradic2RESP1_BAIRRO: TWideStringField;
    qradic2RESP1_CIDADE: TWideStringField;
    qradic2RESP1_UF: TWideStringField;
    qradic2RESP1_CEP: TWideStringField;
    qradic2RESP2_NOME: TWideStringField;
    qradic2RESP2_CPF: TWideStringField;
    qradic2RESP2_RG: TWideStringField;
    qradic2RESP2_PROFISSAO: TWideStringField;
    qradic2RESP2_ESTADO_CIVIL: TWideStringField;
    qradic2RESP2_ENDERECO: TWideStringField;
    qradic2RESP2_BAIRRO: TWideStringField;
    qradic2RESP2_CIDADE: TWideStringField;
    qradic2RESP2_UF: TWideStringField;
    qradic2RESP2_CEP: TWideStringField;
    qradic2FOTO: TWideStringField;
    qradic2CONDPGTO: TWideStringField;
    qrautorizacaoAUTORIZACAO: TWideStringField;
    qrautorizacaoDATA: TDateField;
    qrautorizacaoTIPO: TWideStringField;
    qrautorizacaoCNPJ: TWideStringField;
    qrautorizacaoPLANO: TWideStringField;
    qrautorizacaoCONVENIADO: TWideStringField;
    qrautorizacaoCONVENIO: TWideStringField;
    qrautorizacaoECF: TWideStringField;
    qrautorizacaoCUPOM: TWideStringField;
    qrautorizacaoCODBARRA: TWideStringField;
    qrautorizacaoQTDE: TFloatField;
    qrautorizacaoPMC: TFloatField;
    qrautorizacaoPV: TFloatField;
    qrautorizacaoDESCONTO: TFloatField;
    qrautorizacaoCOMISSAO: TFloatField;
    qrautorizacaoPC_VISTA: TFloatField;
    qrautorizacaoPC_RECEBER: TFloatField;
    qrautorizacaoREEMBOLSO: TFloatField;
    qrautorizacaoSUBSIDIO: TFloatField;
    qrautorizacaoCODCLIENTE: TWideStringField;
    qrautorizacaoNOMECLIENTE: TWideStringField;
    qrautorizacaoCRM_MEDICO: TWideStringField;
    qrautorizacaoUF_MEDICO: TWideStringField;
    qrautorizacaoSOLICITACAO: TIntegerField;
    qrautorizacaoQTDE_AUTORIZADO: TFloatField;
    qrautorizacaoCPF: TWideStringField;
    qrautorizacaoPACIENTE: TWideStringField;
    qrautorizacaoCODCONVENIO: TIntegerField;
    qrautorizacaoPRE_AUTORIZACAO: TWideStringField;
    qrautorizacaoLOTE: TWideStringField;
    qrautorizacaoOBS: TWideStringField;
    qrbancoNUMERO: TWideStringField;
    qrbancoBANCO: TWideStringField;
    qrbancoLOGO: TBlobField;
    qrbancoCARTAO_CREDITO: TIntegerField;
    qrbancoFINANCEIRA: TIntegerField;
    qrbancoRESSARCIMENTO: TIntegerField;
    qrbancoPRAZO: TIntegerField;
    qrbancoCOMISSAO_CREDITO: TFloatField;
    qrbancoCOMISSAO_DEBITO: TFloatField;
    qrbancoREC_DEBITO: TIntegerField;
    qrbancoREC_CREDITO: TIntegerField;
    qrbancoCONTA_PADRAO: TWideStringField;
    qrbancoTITULAR_CONTA_PADRAO: TWideStringField;
    qrboleto_impressaoVENCIMENTO: TWideStringField;
    qrboleto_impressaoDATA_DOC: TWideStringField;
    qrboleto_impressaoNUMERO_DOC: TWideStringField;
    qrboleto_impressaoESPECIE_DOC: TWideStringField;
    qrboleto_impressaoACEITE: TWideStringField;
    qrboleto_impressaoESPECIE: TWideStringField;
    qrboleto_impressaoQUANTIDADE: TWideStringField;
    qrboleto_impressaoVALOR: TWideStringField;
    qrboleto_impressaoVALOR_DOC: TWideStringField;
    qrboleto_impressaoDESCONTO: TWideStringField;
    qrboleto_impressaoOUTRAS: TWideStringField;
    qrboleto_impressaoMORA: TWideStringField;
    qrboleto_impressaoOUTROS: TWideStringField;
    qrboleto_impressaoVALOR_COBRADO: TWideStringField;
    qrboleto_impressaoSACADO: TWideStringField;
    qrboleto_impressaoSACADO_ENDER: TWideStringField;
    qrboleto_impressaoINST_1: TWideStringField;
    qrboleto_impressaoINST_2: TWideStringField;
    qrboleto_impressaoINST_3: TWideStringField;
    qrboleto_impressaoINST_4: TWideStringField;
    qrboleto_impressaoINST_5: TWideStringField;
    qrboleto_impressaoINST_6: TWideStringField;
    qrcaixa_movCODIGO: TWideStringField;
    qrcaixa_movCODCAIXA: TWideStringField;
    qrcaixa_movCODOPERADOR: TWideStringField;
    qrcaixa_movDATA: TDateField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movCODCONTA: TWideStringField;
    qrcaixa_movHISTORICO: TWideStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movCODNFSAIDA: TWideStringField;
    qradicDATA_CADASTRO: TDateField;
    qradicDATA_ULTIMACOMPRA: TDateField;
    qradic_nota_itemLOTE_VALIDADE: TDateField;
    qradic_nota_itemLOTE_FABRICACAO_DATA: TDateField;
    qrfunciDATA_ADMISSAO: TDateField;
    qrfunciDATA_DEMISSAO: TDateField;
    qrfunciNASCIMENTO: TDateField;
    qrconvenioDATA_CADASTRO: TDateField;
    qrclienteDATA_CADASTRO: TDateField;
    qrclienteDATA_ULTIMACOMPRA: TDateField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteRG_EMISSAO: TDateField;
    qrclientePREVISAO: TDateField;
    qrchequeEMISSAO: TDateField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    qrcliente_veiculoDATA: TDateField;
    qrconfigULTIMO_BACKUP: TDateField;
    qrconfigULTIMA_CARGA: TDateField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateField;
    qrconhecimentoDATA: TDateField;
    qrconhecimentoDATA_NF: TDateField;
    qrconhecimentoDATA_NF2: TDateField;
    qrconhecimentoTESTE: TDateField;
    qrconhecimentoPREV_ENTREGA_DATA_INI: TDateField;
    qrconhecimentoPREV_ENTREGA_DATA_FIM: TDateField;
    qrconhecimentoPREV_ENTREGA_DATA_TIPO: TWideStringField;
    qrconhecimentoPREV_ENTREGA_HORA_TIPO: TWideStringField;
    qrconhecimentoPREV_ENTREGA_HORA_INI: TDateField;
    qrconhecimentoPREV_ENTREGA_HORA_FIM: TDateField;
    qrconhecimentoDATA_PREV_ENTREGA: TDateField;
    qrtransportadorDATA: TDateField;
    qrveiculoCOTA_UNICA_IPVA: TDateField;
    qrveiculoCOTA1_IPVA: TDateField;
    qrveiculoCOTA2_IPVA: TDateField;
    qrveiculoCOTA3_IPVA: TDateField;
    qrveiculoLICENCIAMENTO: TDateField;
    qrveiculoSEGURO_OBRIGATORIO: TDateField;
    qrcontasreceberDATA_EMISSAO: TDateField;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_PAGAMENTO: TDateField;
    qrcontasreceber_pgtoDATA: TDateField;
    qrdoc_ant_papelDATA_EMISSAO: TDateField;
    qremitenteDATAHORA_INICIAL: TDateField;
    qremitenteDATAHORA_FINAL: TDateField;
    qremitenteDATA_INVENTARIO: TDateField;
    qremitenteDATA_ABERTURA: TDateField;
    qremitenteDIA_VENCIMENTO_CHAVE: TWideStringField;
    qrENCERRANTESDATA: TDateField;
    qrentrada_produtoDATA: TDateField;
    qrfornecedorDATA: TDateField;
    qrestoqueDATA: TDateField;
    qrfiscal_classe_cofinsVALIDADE_COFINS: TDateField;
    qrfiscal_classe_csllVALIDADE_CSLL: TDateField;
    qrfiscal_classe_irrfVALIDADE_IRRF: TDateField;
    qrfiscal_classe_pisVALIDADE_PIS: TDateField;
    qrfiscal_ecfDATA_INICIO: TDateField;
    qrmarcaDATA: TDateField;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoOBS1: TWideStringField;
    qrorcamentoOBS2: TWideStringField;
    qrorcamentoOBS3: TWideStringField;
    qrorcamentoOBS4: TWideStringField;
    qrorcamentoCODNF: TWideStringField;
    qrorcamentoCODVENDA: TWideStringField;
    qrorcamentoGERA_NF: TIntegerField;
    qrorcamentoQTDE_MESES: TIntegerField;
    qrorcamentoCONDPAGTOCLIENTE: TWideStringField;
    qrorcamentoPEND_ENTRADA: TIntegerField;
    qrorcamentoPEND_CHEQUE: TIntegerField;
    qrorcamentoPEND_CARTAO: TIntegerField;
    qrorcamentoNOME_VENDEDOR: TWideStringField;
    qrcaixa_operadorCODIGO: TWideStringField;
    qrcaixa_operadorCODFUNCIONARIO: TWideStringField;
    qrcaixa_operadorSENHA: TWideStringField;
    qrinventario_operadorDATA: TDateField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TWideStringField;
    CDSosCODIGO: TStringField;
    CDSosDATA: TDateField;
    CDSosCODATENDENTE: TStringField;
    CDSosTIPO: TStringField;
    CDSosCODCLIENTE: TStringField;
    CDSosSOLICITANTE: TStringField;
    CDSosMARCA: TStringField;
    CDSosMODELO: TStringField;
    CDSosSERIAL: TStringField;
    CDSosATENDIMENTO: TStringField;
    CDSosDEFEITO: TBlobField;
    CDSosOBS: TBlobField;
    CDSosDETECTADO: TBlobField;
    qrorcamentoCDSosDETECTADO_DATA: TDateField;
    CDSosDETECTADO_CODTECNICO: TStringField;
    CDSosSITUACAO: TStringField;
    qrorcamentoCDSosCONCLUSAO_DATA: TDateField;
    qrorcamentoCDSosCONCLUSAO_ENTREGUE: TDateField;
    CDSosRETIRADO_POR: TStringField;
    CDSosSERVICO_SUBTOTAL: TFMTBCDField;
    CDSosSERVICO_DESCONTO: TFMTBCDField;
    CDSosSERVICO_TOTAL: TFMTBCDField;
    CDSosPRODUTO_SUBTOTAL: TFMTBCDField;
    CDSosPRODUTO_DESCONTO: TFMTBCDField;
    CDSosPRODUTO_TOTAL: TFMTBCDField;
    CDSosCODVEICULO: TStringField;
    CDSosKM_INICIAL: TIntegerField;
    CDSosKM_FINAL: TIntegerField;
    CDSosDESLOC_COMBUSTIVEL: TFMTBCDField;
    CDSosDESLOC_REFEICAO: TFMTBCDField;
    CDSosDESLOC_HOSPEDAGEM: TFMTBCDField;
    CDSosDESLOC_TOTAL: TFMTBCDField;
    CDSosCODTERCEIRO: TStringField;
    CDSosTERCEIRO_CONTATO: TStringField;
    CDSosTERCEIRO_VALOR: TFMTBCDField;
    CDSosTERCEIRO_COMISSAO: TFMTBCDField;
    CDSosTERCEIRO_TOTAL: TFMTBCDField;
    CDSosTERCEIRO_OBS: TBlobField;
    CDSosSUBTOTAL: TFMTBCDField;
    CDSosDESCONTO: TFMTBCDField;
    CDSosACRESCIMO: TFMTBCDField;
    CDSosTOTAL: TFMTBCDField;
    CDSosMEIO_DINHEIRO: TFMTBCDField;
    CDSosMEIO_CHEQUEAV: TFMTBCDField;
    CDSosMEIO_CHEQUEAP: TFMTBCDField;
    CDSosMEIO_CARTAOCRED: TFMTBCDField;
    CDSosMEIO_CARTAODEB: TFMTBCDField;
    CDSosMEIO_CREDIARIO: TFMTBCDField;
    CDSosCODSETOR: TStringField;
    CDSosCUPOMFISCAL: TIntegerField;
    CDSosST: TIntegerField;
    CDSosCHASSI: TStringField;
    CDSosCOR: TStringField;
    CDSosCOMBUSTIVEL: TStringField;
    CDSosCOMBUSTIVEL_NIVEL: TFMTBCDField;
    CDSosNUMERO_CUPOM_FISCAL: TIntegerField;
    CDSosCODCAIXA: TStringField;
    CDSosDETECTADO_HORA: TStringField;
    CDSosHORA: TStringField;
    CDSosINTERVENCOES: TBlobField;
    CDSosDAV: TStringField;
    CDSosDAV_IMPRESSO: TIntegerField;
    CDSosDAV_ATUAL: TStringField;
    CDSosCODFUN: TStringField;
    qrinventarioCODPRODUTO: TWideStringField;
    qrorcamentoDATA1: TDateField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioPRODUTO: TWideStringField;
    qrinventarioUNIDADE: TWideStringField;
    qrinventarioCST: TWideStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarioTIPO: TWideStringField;
    qrinventarioANO: TIntegerField;
    qrinventarioMES: TIntegerField;
    qrorcamentoDATA_POSTERIOR: TDateField;
    qrcaixa_operadornome: TStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    CDSos_movDATA: TDateField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    CDSos_movVENCIMENTO: TDateField;
    qrproduto_movCODBARRA: TWideStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qrproduto_movPRODUTO: TWideStringField;
    qrproduto_movCODFILIAL: TWideStringField;
    qrvendaCODIGO: TWideStringField;
    qrvendaCODCAIXA: TWideStringField;
    qrvendaCODVENDEDOR: TWideStringField;
    CDSosDATA1: TDateField;
    qrvendaCODCLIENTE: TWideStringField;
    qrvendaOBS: TWideStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TWideStringField;
    qrvendaRETIRADO: TWideStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TWideStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TWideStringField;
    qrvendaCODCONVENIO: TWideStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TWideStringField;
    qrvendaCODVEICULO: TWideStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TWideStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TWideStringField;
    qrvendaCODNFSAIDA: TWideStringField;
    qrvendaATACADO_VAREJO: TSmallintField;
    qrvendaNRVENDA: TWideStringField;
    qrvendaFILTRO: TIntegerField;
    CDSos_produtosDATA: TDateField;
    qrpedido_produtoCODIGO: TWideStringField;
    qrpedido_produtoNUMERO: TWideStringField;
    qrpedido_produtoCFOP: TWideStringField;
    CDSos_produtoDATA: TDateField;
    qrpedido_produtoCODFORNECEDOR: TWideStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtoSITUACAO: TIntegerField;
    CDSos_produtoPREVISAO: TDateField;
    qrpedido_produtoCONDPGTO: TWideStringField;
    qrpedido_produtoOBS1: TWideStringField;
    qrpedido_produtoOBS2: TWideStringField;
    qrpedido_produtoOBS3: TWideStringField;
    qrpedido_produtoOBS4: TWideStringField;
    qrservicos_periodicosID: TIntegerField;
    qrservicos_periodicosCODCLIENTE: TWideStringField;
    qrservicos_periodicosCODSERVICO: TWideStringField;
    qrservicos_periodicosCODTECNICO: TWideStringField;
    qrservicos_periodicosMARCA: TWideStringField;
    qrservicos_periodicosMODELO: TWideStringField;
    qrservicos_periodicosSERIE: TWideStringField;
    CDSos_periodicosPRIMEIRA_MANUTENCAO: TDateField;
    CDSos_periodicosULTIMA_MANUTENCAO: TDateField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrservicos_periodicosSTATUS: TWideStringField;
    qrproduto_estoqueTIPO: TWideStringField;
    qrproduto_estoqueCODPRODUTO: TWideStringField;
    qrproduto_estoqueDATA: TDateField;
    qrproduto_estoqueQUANTIDADE: TFloatField;
    qrproduto_estoqueVALOR: TFloatField;
    qrserial_produtoCODIGO: TWideStringField;
    qrserial_produtoCODPRODUTO: TWideStringField;
    qrserial_produtoSERIAL: TWideStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODCLIENTE: TWideStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TWideStringField;
    qrserial_produtoCODNOTA: TWideStringField;
    qrserial_produtoCODITEM: TWideStringField;
    qrserial_produtoDATACOMPRA: TDateField;
    qrserial_produtoNUMERONOTA: TWideStringField;
    qrserial_produtoCODFORNECEDOR: TWideStringField;
    qrserial_produtoCODVENDA_ITEM: TWideStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TWideStringField;
    qritemDATA_EMISSAO: TWideStringField;
    qritemMODELO_NF: TWideStringField;
    qritemTIPO_FRETE: TWideStringField;
    qritemCODNOTA: TWideStringField;
    qritemFRACAO: TFloatField;
    qritemNOTAFISCAL: TWideStringField;
    qritemCD_PRODUTO: TWideStringField;
    qritemPRODUTO: TWideStringField;
    qritemCOD_PEDIDOS: TWideStringField;
    qritemNUM_ITEM: TWideStringField;
    qritemCL_FIS: TWideStringField;
    qritemAPR_UND: TWideStringField;
    qritemALIQUOTA_IPI: TFloatField;
    qritemALIQUOTA_ICMS: TFloatField;
    qritemDATAHORA: TDateField;
    qritemTIPO: TWideStringField;
    qritemBASE_IPI: TFloatField;
    qritemVALOR_IPI: TFloatField;
    qritemCFOP: TWideStringField;
    qritemFRETE: TFloatField;
    qritemSEGURO: TFloatField;
    qritemNRO_SERIE_EQP: TWideStringField;
    qritemNRO_ORDEM_EQP: TWideStringField;
    qritemMODELO_DOC: TWideStringField;
    qritemS_TRIB: TWideStringField;
    qritemNRO_CONTADOR_INICIO: TWideStringField;
    qritemNRO_CONTADOR_FIM: TWideStringField;
    qritemNRO_CONTADOR_Z: TWideStringField;
    qritemCONTADOR_REINICIO: TWideStringField;
    qritemBRANCOS: TWideStringField;
    qritemDATAHORA_RECEBIMENTO: TDateField;
    qritemDATAHORA_FIM: TDateField;
    qritemDATAHORA_EMISSAO: TDateField;
    qritemBASE_ICMS: TFloatField;
    qritemVALOR_ICMS: TFloatField;
    qritemMOVIMENTO: TIntegerField;
    qrlancamento_contaCODIGO: TWideStringField;
    qrlancamento_contaCODCONTACORRENTE: TWideStringField;
    qrlancamento_contaDATA: TDateField;
    qrlancamento_contaHISTORICO: TWideStringField;
    qrlancamento_contaCODCONTA: TWideStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TWideStringField;
    qrlancamento_contaDOCUMENTO: TWideStringField;
    qrlote_fabricacaoLOTE: TWideStringField;
    qrlote_fabricacaoSITUACAO: TIntegerField;
    qrlote_fabricacaoCODPRODUTO: TWideStringField;
    qrlote_fabricacaoUNIDADE: TWideStringField;
    qrlote_fabricacaoFABRICACAO: TDateField;
    qrlote_fabricacaoVALIDADE: TDateField;
    qrlote_fabricacaoVALIDADE_MES: TIntegerField;
    qrlote_fabricacaoREG_ANVISA: TWideStringField;
    qrlote_fabricacaoTECNICO: TWideStringField;
    qrlote_fabricacaoREG_TECNICO: TWideStringField;
    qrlote_fabricacaoLAUDO_TECNICO: TWideStringField;
    qrlote_fabricacaoQUANTIDADE: TFloatField;
    qrlote_fabricacaoVALOR: TFloatField;
    qrlote_fabricacaoOBSERVACAO: TWideStringField;
    qrlote_fabricacaoHORA: TWideStringField;
    qrlote_fabricacaoCODSETOR: TWideStringField;
    qrlote_fabricacaoANO: TWideStringField;
    qrlote_fabricacaoORDEM_PRODUCAO: TWideStringField;
    qrlote_fabricacaoCODTECNICO: TWideStringField;
    qrlote_fabricacaoLANCAMENTO: TWideStringField;
    qrlote_fabricacaoCODNFENTRADA: TWideStringField;
    qrlote_fabricacaoCODNFSAIDA: TWideStringField;
    qrlote_fabricacaoCFOP: TWideStringField;
    qrlote_rentabilidadeLOTE: TWideStringField;
    qrlote_rentabilidadeSITUACAO: TIntegerField;
    qrlote_rentabilidadeCODPRODUTO: TWideStringField;
    qrlote_rentabilidadeUNIDADE: TWideStringField;
    qrlote_rentabilidadeDATA: TDateField;
    qrlote_rentabilidadeNOTAFISCAL: TWideStringField;
    qrlote_rentabilidadeQUANTIDADE: TFloatField;
    qrlote_rentabilidadeVALOR: TFloatField;
    qrlote_rentabilidadeOBSERVACAO: TWideStringField;
    qrloteprodutoCODIGO: TWideStringField;
    qrloteprodutoCODPRODUTO: TWideStringField;
    qrloteprodutoLOTE: TWideStringField;
    qrloteprodutoESTOQUE: TFloatField;
    qrloteprodutoCODCLIENTE: TWideStringField;
    qrloteprodutoPRECOCUSTO: TFloatField;
    qrloteprodutoPRECOVENDA: TFloatField;
    qrloteprodutoDATAVENDA: TDateField;
    qrloteprodutoSITUACAO: TIntegerField;
    qrloteprodutoCLIENTE: TWideStringField;
    qrloteprodutoCODNOTA: TWideStringField;
    qrloteprodutoCODITEM: TWideStringField;
    qrloteprodutoDATACOMPRA: TDateField;
    qrloteprodutoNUMERONOTA: TWideStringField;
    qrloteprodutoCODFORNECEDOR: TWideStringField;
    qrloteprodutoCODVENDA_ITEM: TWideStringField;
    qrloteprodutoFILTRO: TIntegerField;
    qrloteprodutoCODVENDA: TWideStringField;
    info_clientes_usercontrol: TZQuery;
    info_clientes_usercontrolFOTO: TWideMemoField;
    qrSequencias: TZQuery;
    qrSequenciasCODIGO: TWideStringField;
    qrSequenciasTABELA: TWideStringField;
    qrSequenciasSEQUENCIA: TIntegerField;
    qrFilialCODIGO: TWideStringField;
    qrFilialFILIAL: TWideStringField;
    qrFilialNOTAFISCAL: TIntegerField;
    qrFilialENDERECO: TWideStringField;
    qrFilialCIDADE: TWideStringField;
    qrFilialUF: TWideStringField;
    qrFilialCEP: TWideStringField;
    qrFilialTELEFONE: TWideStringField;
    qrFilialCNPJ: TWideStringField;
    qrFilialIE: TWideStringField;
    qrFilialSEQNF: TIntegerField;
    qrFilialFAX: TWideStringField;
    qrFilialOBS1: TWideStringField;
    qrFilialOBS2: TWideStringField;
    qrFilialCONTRIBUINTE_IPI: TWideStringField;
    qrFilialSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qrFilialEMPRESA_ESTADUAL: TWideStringField;
    qrFilialOPTANTE_SIMPLES: TWideStringField;
    qrFilialOPTANTE_SUPER_SIMPLES: TWideStringField;
    qrFilialECF: TWideStringField;
    qrFilialTIPO: TIntegerField;
    qrFilialIPI: TFloatField;
    qrFilialISS: TFloatField;
    qrFilialNUMERO: TWideStringField;
    qrFilialRESPONSAVEL: TWideStringField;
    qrFilialCOMPLEMENTO: TWideStringField;
    qrFilialBAIRRO: TWideStringField;
    qrFilialFARMACIA_RESP_TECNICO: TWideStringField;
    qrFilialFARMACIA_CRF: TWideStringField;
    qrFilialFARMACIA_CPF: TWideStringField;
    qrFilialFARMCIA_DATA: TDateField;
    qrFilialFARMACIA_UF: TWideStringField;
    qrFilialFARMACIA_SENHA: TWideStringField;
    qrFilialFARMACIA_EMAIL: TWideStringField;
    qrFilialFARMACIA_LOGIN: TWideStringField;
    qrFilialFARMACIA_ENVIO: TWideStringField;
    qrFilialCONHECIMENTO: TIntegerField;
    qrFilialINDUSTRIA: TWideStringField;
    qrFilialFARMACIA_NUMEROLICENCA: TWideStringField;
    qrFilialCOD_MUNICIPIO_IBGE: TWideStringField;
    qrFilialIBGE: TWideStringField;
    qrFilialPIS: TFloatField;
    qrFilialCOFINS: TFloatField;
    qrFilialEMAIL: TWideStringField;
    qrFilialATIVIDADE: TWideStringField;
    qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    qrFilialCONTADOR_NOME: TWideStringField;
    qrFilialCONTADOR_CPF: TWideStringField;
    qrFilialCONTADOR_CRC: TWideStringField;
    qrFilialCONTADOR_CNPJ: TWideStringField;
    qrFilialCONTADOR_CEP: TWideStringField;
    qrFilialCONTADOR_ENDERECO: TWideStringField;
    qrFilialCONTADOR_NUMERO: TWideStringField;
    qrFilialCONTADOR_COMPLEMENTO: TWideStringField;
    qrFilialCONTADOR_BAIRRO: TWideStringField;
    qrFilialCONTADOR_FONE: TWideStringField;
    qrFilialCONTADOR_FAX: TWideStringField;
    qrFilialCONTADOR_EMAIL: TWideStringField;
    qrFilialINSC_MUNICIPAL: TWideStringField;
    qrFilialDATA_ABERTURA: TDateField;
    qrFilialCNAE: TWideStringField;
    qrFilialCRT: TWideStringField;
    qrFilialCONTADOR_CIDADE: TWideStringField;
    qrFilialCONTADOR_COD_MUNICIPIO: TWideStringField;
    qrFilialCONTADOR_UF: TWideStringField;
    qrFilialPERMITE_CREDITO: TIntegerField;
    qrFilialFANTASIA: TWideStringField;
    qrFilialDFIXAS: TSingleField;
    qrFilialTIPOCALCULO: TIntegerField;
    qrFilialSERIE_CTE: TWideStringField;
    qrFilialSEQ_CTE: TWideStringField;
    qrFilialCOD_PAIS: TWideStringField;
    qrFilialPAIS: TWideStringField;
    qrFilialHOMEPAGE: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TSingleField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TSingleField;
    qrprodutoPMARGEM1: TSingleField;
    qrprodutoPMARGEM2: TSingleField;
    qrprodutoPMARGEM3: TSingleField;
    qrprodutoPMARGEM4: TSingleField;
    qrprodutoPMARGEM5: TSingleField;
    qrprodutoPMARGEMATACADO1: TSingleField;
    qrprodutoPMARGEMATACADO2: TSingleField;
    qrprodutoPMARGEMATACADO3: TSingleField;
    qrprodutoPMARGEMATACADO4: TSingleField;
    qrprodutoPMARGEMATACADO5: TSingleField;
    qrprodutoPMARGEMATACADO6: TSingleField;
    qrprodutoPRECOATACADO1: TSingleField;
    qrprodutoPRECOATACADO2: TSingleField;
    qrprodutoPRECOATACADO3: TSingleField;
    qrprodutoPRECOATACADO4: TSingleField;
    qrprodutoPRECOATACADO5: TSingleField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qrempresaCODIGO: TWideStringField;
    qrempresaFILIAL: TWideStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TWideStringField;
    qrempresaCIDADE: TWideStringField;
    qrempresaUF: TWideStringField;
    qrempresaCEP: TWideStringField;
    qrempresaTELEFONE: TWideStringField;
    qrempresaCNPJ: TWideStringField;
    qrempresaIE: TWideStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TWideStringField;
    qrempresaOBS1: TWideStringField;
    qrempresaOBS2: TWideStringField;
    qrempresaCONTRIBUINTE_IPI: TWideStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qrempresaEMPRESA_ESTADUAL: TWideStringField;
    qrempresaOPTANTE_SIMPLES: TWideStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField;
    qrempresaECF: TWideStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TWideStringField;
    qrempresaRESPONSAVEL: TWideStringField;
    qrempresaCOMPLEMENTO: TWideStringField;
    qrempresaBAIRRO: TWideStringField;
    qrempresaFARMACIA_RESP_TECNICO: TWideStringField;
    qrempresaFARMACIA_CRF: TWideStringField;
    qrempresaFARMACIA_CPF: TWideStringField;
    qrempresaFARMCIA_DATA: TDateField;
    qrempresaFARMACIA_UF: TWideStringField;
    qrempresaFARMACIA_SENHA: TWideStringField;
    qrempresaFARMACIA_EMAIL: TWideStringField;
    qrempresaFARMACIA_LOGIN: TWideStringField;
    qrempresaFARMACIA_ENVIO: TWideStringField;
    qrempresaCONHECIMENTO: TIntegerField;
    qrempresaINDUSTRIA: TWideStringField;
    qrempresaFARMACIA_NUMEROLICENCA: TWideStringField;
    qrempresaCOD_MUNICIPIO_IBGE: TWideStringField;
    qrempresaIBGE: TWideStringField;
    qrempresaPIS: TFloatField;
    qrempresaCOFINS: TFloatField;
    qrempresaEMAIL: TWideStringField;
    qrempresaATIVIDADE: TWideStringField;
    qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    qrempresaCONTADOR_NOME: TWideStringField;
    qrempresaCONTADOR_CPF: TWideStringField;
    qrempresaCONTADOR_CRC: TWideStringField;
    qrempresaCONTADOR_CNPJ: TWideStringField;
    qrempresaCONTADOR_CEP: TWideStringField;
    qrempresaCONTADOR_ENDERECO: TWideStringField;
    qrempresaCONTADOR_NUMERO: TWideStringField;
    qrempresaCONTADOR_COMPLEMENTO: TWideStringField;
    qrempresaCONTADOR_BAIRRO: TWideStringField;
    qrempresaCONTADOR_FONE: TWideStringField;
    qrempresaCONTADOR_FAX: TWideStringField;
    qrempresaCONTADOR_EMAIL: TWideStringField;
    qrempresaINSC_MUNICIPAL: TWideStringField;
    qrempresaDATA_ABERTURA: TDateField;
    qrempresaCNAE: TWideStringField;
    qrempresaCRT: TWideStringField;
    qrempresaCONTADOR_CIDADE: TWideStringField;
    qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField;
    qrempresaCONTADOR_UF: TWideStringField;
    qrempresaPERMITE_CREDITO: TIntegerField;
    qrempresaFANTASIA: TWideStringField;
    qrempresaDFIXAS: TSingleField;
    qrempresaTIPOCALCULO: TIntegerField;
    qrempresaSERIE_CTE: TWideStringField;
    qrempresaSEQ_CTE: TWideStringField;
    qrempresaCOD_PAIS: TWideStringField;
    qrempresaPAIS: TWideStringField;
    qrempresaHOMEPAGE: TWideStringField;
    qrfornecedorLOGO: TWideMemoField;
    qrprecoCODIGO: TWideStringField;
    qrprecoCODPRODUTO: TWideStringField;
    qrprecoCODFILIAL: TWideStringField;
    qrprecoDATA_ALTERACAO: TDateField;
    qrprecoCP_VPRECOCOMPRA: TSingleField;
    qrprecoCP_PIPI: TSingleField;
    qrprecoCP_VIPI: TSingleField;
    qrprecoCP_PRETENCAO: TSingleField;
    qrprecoCP_VRETENCAO: TSingleField;
    qrprecoCP_PFRETE: TSingleField;
    qrprecoCP_VFRETE: TSingleField;
    qrprecoCP_PICMS: TSingleField;
    qrprecoCP_VICMS: TSingleField;
    qrprecoCP_PREDUCAO: TSingleField;
    qrprecoCP_VREDUCAO: TSingleField;
    qrprecoCP_PPIS: TSingleField;
    qrprecoCP_VPIS: TSingleField;
    qrprecoCP_PCOFINS: TSingleField;
    qrprecoCP_VCOFINS: TSingleField;
    qrprecoCP_PSEGURO: TSingleField;
    qrprecoCP_VSEGURO: TSingleField;
    qrprecoCP_POUTROS: TSingleField;
    qrprecoCP_VOUTROS: TSingleField;
    qrprecoVD_PICMS: TSingleField;
    qrprecoVD_VICMS: TSingleField;
    qrprecoVD_PREDUCAO: TSingleField;
    qrprecoVD_VREDUCAO: TSingleField;
    qrprecoVD_PSIMPLES: TSingleField;
    qrprecoVD_VSIMPLES: TSingleField;
    qrprecoVD_PPIS: TSingleField;
    qrprecoVD_VPIS: TSingleField;
    qrprecoVD_PCOFINS: TSingleField;
    qrprecoVD_VCOFINS: TSingleField;
    qrprecoVD_PIRPJ: TSingleField;
    qrprecoVD_VIRPJ: TSingleField;
    qrprecoVD_PCONTSOCIAL: TSingleField;
    qrprecoVD_VCONTSOCIAL: TSingleField;
    qrprecoVD_PDFIXA: TSingleField;
    qrprecoVD_VDFIXA: TSingleField;
    qrprecoVD_PCOMISSAO: TSingleField;
    qrprecoVD_VCOMISSAO: TSingleField;
    qrprecoVD_PDESCMAX: TSingleField;
    qrprecoVD_VDESCMAX: TSingleField;
    qrprecoPCUSTO_COMPRA: TSingleField;
    qrprecoVCUSTO_COMPRA: TSingleField;
    qrprecoPCUSTO_VENDA: TSingleField;
    qrprecoVCUSTO_VENDA: TSingleField;
    qrprecoPRECO_LIQUIDO: TSingleField;
    qrprecoPRECO_UNITARIO: TSingleField;
    qrprecoFRACAO: TSingleField;
    qrprecoPMARGEM1: TSingleField;
    qrprecoPMARGEM2: TSingleField;
    qrprecoPMARGEM3: TSingleField;
    qrprecoPMARGEM4: TSingleField;
    qrprecoPMARGEM5: TSingleField;
    qrprecoPRECOVAREJO1: TSingleField;
    qrprecoPRECOVAREJO2: TSingleField;
    qrprecoPRECOVAREJO3: TSingleField;
    qrprecoPRECOVAREJO4: TSingleField;
    qrprecoPRECOVAREJO5: TSingleField;
    qrprecoPMARGEMATACADO1: TSingleField;
    qrprecoPMARGEMATACADO2: TSingleField;
    qrprecoPMARGEMATACADO3: TSingleField;
    qrprecoPMARGEMATACADO4: TSingleField;
    qrprecoPMARGEMATACADO5: TSingleField;
    qrprecoPRECOATACADO1: TSingleField;
    qrprecoPRECOATACADO2: TSingleField;
    qrprecoPRECOATACADO3: TSingleField;
    qrprecoPRECOATACADO4: TSingleField;
    qrprecoPRECOATACADO5: TSingleField;
    qrprecoTIPO_REGIME: TIntegerField;
    qrprecoTIPO_CALCULO: TIntegerField;
    qrprecoVCUSTO_COMPRA_ANT: TSingleField;
    qrprecoPRECOVAREJO1_ANT: TSingleField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoPIS_ENTRADA_P: TFloatField;
    qrprecoPIS_ENTRADA: TFloatField;
    qrprecoCOFINS_ENTRADA_P: TFloatField;
    qrprecoCOFINS_ENTRADA: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField;
    qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField;
    qrprodCODIGO: TWideStringField;
    qrprodCODBARRA: TWideStringField;
    qrprodPRODUTO: TWideStringField;
    qrprodUNIDADE: TWideStringField;
    qrprodDATA_CADASTRO: TDateField;
    qrprodCODGRUPO: TWideStringField;
    qrprodCODSUBGRUPO: TWideStringField;
    qrprodCODFORNECEDOR: TWideStringField;
    qrprodCODMARCA: TWideStringField;
    qrprodDATA_ULTIMACOMPRA: TDateField;
    qrprodNOTAFISCAL: TWideStringField;
    qrprodPRECOCUSTO: TFloatField;
    qrprodPRECOVENDA: TFloatField;
    qrprodDATA_ULTIMAVENDA: TDateField;
    qrprodESTOQUE: TFloatField;
    qrprodESTOQUEMINIMO: TFloatField;
    qrprodCODALIQUOTA: TWideStringField;
    qrprodAPLICACAO: TWideMemoField;
    qrprodLOCALICAZAO: TWideStringField;
    qrprodPESO: TFloatField;
    qrprodVALIDADE: TWideStringField;
    qrprodCOMISSAO: TFloatField;
    qrprodUSA_BALANCA: TIntegerField;
    qrprodUSA_SERIAL: TIntegerField;
    qrprodUSA_GRADE: TIntegerField;
    qrprodCODRECEITA: TWideStringField;
    qrprodFOTO: TWideStringField;
    qrprodDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodPRECOVENDA_ANTERIOR: TFloatField;
    qrprodCUSTOMEDIO: TFloatField;
    qrprodAUTO_APLICACAO: TWideStringField;
    qrprodAUTO_COMPLEMENTO: TWideStringField;
    qrprodDATA_REMARCACAO_CUSTO: TDateField;
    qrprodDATA_REMARCACAO_VENDA: TDateField;
    qrprodPRECO_PROMOCAO: TFloatField;
    qrprodDATA_PROMOCAO: TDateField;
    qrprodFIM_PROMOCAO: TDateField;
    qrprodCST: TWideStringField;
    qrprodCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodNBM: TWideStringField;
    qrprodNCM: TWideStringField;
    qrprodALIQUOTA: TFloatField;
    qrprodIPI: TFloatField;
    qrprodREDUCAO: TFloatField;
    qrprodQTDE_EMBALAGEM: TFloatField;
    qrprodTIPO: TWideStringField;
    qrprodPESO_LIQUIDO: TFloatField;
    qrprodFARMACIA_CONTROLADO: TWideStringField;
    qrprodFARMACIA_APRESENTACAO: TIntegerField;
    qrprodFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodFARMACIA_PMC: TFloatField;
    qrprodULTIMA_ALTERACAO: TDateField;
    qrprodULTIMA_CARGA: TDateField;
    qrprodDATA_INVENTARIO: TDateField;
    qrprodCUSTO_INVENTARIO: TFloatField;
    qrprodESTOQUE_INVENTARIO: TFloatField;
    qrprodESTOQUE_ANTERIOR: TFloatField;
    qrprodPRECOVENDA_NOVO: TFloatField;
    qrprodUSA_RENTABILIDADE: TIntegerField;
    qrprodQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodAPRESENTACAO: TWideStringField;
    qrprodSITUACAO: TIntegerField;
    qrprodPRECOVENDA1: TFloatField;
    qrprodPRECOVENDA2: TFloatField;
    qrprodPRECOVENDA3: TFloatField;
    qrprodPRECOVENDA4: TFloatField;
    qrprodPRECOVENDA5: TFloatField;
    qrprodDESCONTO_PRECOVENDA: TFloatField;
    qrprodDATA_INVENTARIO_ATUAL: TDateField;
    qrprodCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodMARGEM_MINIMA: TFloatField;
    qrprodPISCOFINS: TWideStringField;
    qrprodREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodCOMISSAO1: TFloatField;
    qrprodMARGEM_DESCONTO: TFloatField;
    qrprodTAMANHO: TWideStringField;
    qrprodCOR: TWideStringField;
    qrprodINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodVEIC_CHASSI: TWideStringField;
    qrprodVEIC_SERIE: TWideStringField;
    qrprodVEIC_POTENCIA: TWideStringField;
    qrprodVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodVEIC_PESO_BRUTO: TWideStringField;
    qrprodVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodVEIC_RENAVAM: TWideStringField;
    qrprodVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodVEIC_ANO_MODELO: TIntegerField;
    qrprodVEIC_TIPO: TWideStringField;
    qrprodVEIC_TIPO_PINTURA: TWideStringField;
    qrprodVEIC_COD_COR: TWideStringField;
    qrprodVEIC_COR: TWideStringField;
    qrprodVEIC_VIN: TWideStringField;
    qrprodVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodVEIC_CMKG: TWideStringField;
    qrprodVEIC_CM3: TWideStringField;
    qrprodVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodVEIC_COD_MARCA: TWideStringField;
    qrprodVEIC_ESPECIE: TWideStringField;
    qrprodVEIC_CONDICAO: TWideStringField;
    qrprodLOTE_FABRICACAO: TWideStringField;
    qrprodLOTE_VALIDADE: TDateField;
    qrprodMARGEM_AGREGADA: TFloatField;
    qrprodCODBARRA_NOVARTIS: TWideStringField;
    qrprodFARMACIA_DCB: TWideStringField;
    qrprodFARMACIA_ABCFARMA: TWideStringField;
    qrprodFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodULTIMA_COMPRA: TDateField;
    qrprodFARMACIA_DATAVIGENCIA: TDateField;
    qrprodFARMACIA_TIPO: TWideStringField;
    qrprodUSA_COMBUSTIVEL: TWideStringField;
    qrprodREFERENCIA: TWideStringField;
    qrprodPERDA: TFloatField;
    qrprodCOMPOSICAO1: TWideStringField;
    qrprodCOMPOSICAO2: TWideStringField;
    qrprodIAT: TWideStringField;
    qrprodIPPT: TWideStringField;
    qrprodSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodFLAG_SIS: TWideStringField;
    qrprodFLAG_ACEITO: TWideStringField;
    qrprodFLAG_EST: TWideStringField;
    qrprodCSOSN: TWideStringField;
    qrprodCODORIGINAL: TWideStringField;
    qrprodCUSTO_ATACADO: TSingleField;
    qrprodUNIDADE_ATACADO: TWideStringField;
    qrprodQTDE_EMBALAGEMATACADO: TSingleField;
    qrprodPMARGEM1: TSingleField;
    qrprodPMARGEM2: TSingleField;
    qrprodPMARGEM3: TSingleField;
    qrprodPMARGEM4: TSingleField;
    qrprodPMARGEM5: TSingleField;
    qrprodPMARGEMATACADO1: TSingleField;
    qrprodPMARGEMATACADO2: TSingleField;
    qrprodPMARGEMATACADO3: TSingleField;
    qrprodPMARGEMATACADO4: TSingleField;
    qrprodPMARGEMATACADO5: TSingleField;
    qrprodPMARGEMATACADO6: TSingleField;
    qrprodPRECOATACADO1: TSingleField;
    qrprodPRECOATACADO2: TSingleField;
    qrprodPRECOATACADO3: TSingleField;
    qrprodPRECOATACADO4: TSingleField;
    qrprodPRECOATACADO5: TSingleField;
    qrprodIND_CFOP: TWideStringField;
    qrprodCFOP_DESC: TWideStringField;
    qrprodUSA_LOTE: TIntegerField;
    qrprodIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodCODCONTA: TWideStringField;
    qrprodIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodUSA_TB_PC: TWideStringField;
    qrprodATIVA: TWideStringField;
    qrprodCEST: TWideStringField;
    qrpedido_industriaCODIGO: TWideStringField;
    qrpedido_industriaPEDIDO: TWideStringField;
    qrpedido_industriaLOTE: TWideStringField;
    qrpedido_industriaCODCLIENTE: TWideStringField;
    qrpedido_industriaDATA_PEDIDO: TDateField;
    qrpedido_industriaDATA_ENTREGA: TDateField;
    qrpedido_industriaCONDICAO_PAGAMENTO: TWideStringField;
    qrpedido_industriaRESPONSAVEL: TWideStringField;
    qrpedido_industriaCODREPRESENTANTE: TWideStringField;
    qrpedido_industriaVALOR: TFloatField;
    qrpedido_industriaOBS1: TWideStringField;
    qrpedido_industriaOBS2: TWideStringField;
    qrpedido_industriaOBS3: TWideStringField;
    qrpedido_industriaOBS4: TWideStringField;
    qrpedido_industriaOBS5: TWideStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrconfigID_CLIENTE: TIntegerField;
    ZQry_ImpVenda: TZQuery;
    ZQry_ImpVenda_Itens: TZQuery;
    ppDB_ImpVenda: TppDBPipeline;
    DS_ImpVenda: TDataSource;
    DS_Imp_venda_Itens: TDataSource;
    ppDB_ImpVenda_Itens: TppDBPipeline;
    ZQry_ImpVendaCLIENTE: TWideStringField;
    ZQry_ImpVendaFANTASIA: TWideStringField;
    ZQry_ImpVendaUF: TWideStringField;
    ZQry_ImpVendaCEP: TWideStringField;
    ZQry_ImpVendaCIDADE: TWideStringField;
    ZQry_ImpVendaBAIRRO: TWideStringField;
    ZQry_ImpVendaENDERECO: TWideStringField;
    ZQry_ImpVendaTELEFONE1: TWideStringField;
    ZQry_ImpVendaTELEFONE2: TWideStringField;
    ZQry_ImpVendaEMAIL: TWideStringField;
    ZQry_ImpVendaCELULAR: TWideStringField;
    ZQry_ImpVendaTELEFONE3: TWideStringField;
    ZQry_ImpVendaRG: TWideStringField;
    ZQry_ImpVendaCPF: TWideStringField;
    ZQry_ImpVendaNUMERO: TWideStringField;
    ZQry_ImpVendaCODIGO: TWideStringField;
    ZQry_ImpVendaCODCAIXA: TWideStringField;
    ZQry_ImpVendaCODVENDEDOR: TWideStringField;
    ZQry_ImpVendaDATA: TDateField;
    ZQry_ImpVendaCODCLIENTE: TWideStringField;
    ZQry_ImpVendaOBS: TWideStringField;
    ZQry_ImpVendaMEIO_DINHEIRO: TFloatField;
    ZQry_ImpVendaMEIO_CHEQUEAV: TFloatField;
    ZQry_ImpVendaMEIO_CHEQUEAP: TFloatField;
    ZQry_ImpVendaMEIO_CARTAOCRED: TFloatField;
    ZQry_ImpVendaMEIO_CARTAODEB: TFloatField;
    ZQry_ImpVendaMEIO_CREDIARIO: TFloatField;
    ZQry_ImpVendaSUBTOTAL: TFloatField;
    ZQry_ImpVendaDESCONTO: TFloatField;
    ZQry_ImpVendaACRESCIMO: TFloatField;
    ZQry_ImpVendaTOTAL: TFloatField;
    ZQry_ImpVendaCUPOM_FISCAL: TIntegerField;
    ZQry_ImpVendaNUMERO_CUPOM_FISCAL: TWideStringField;
    ZQry_ImpVendaRETIRADO: TWideStringField;
    ZQry_ImpVendaMEIO_CONVENIO: TFloatField;
    ZQry_ImpVendaP5: TFloatField;
    ZQry_ImpVendaP3: TFloatField;
    ZQry_ImpVendaMEIO_FINANCEIRA: TFloatField;
    ZQry_ImpVendaCOD_FINANCEIRA: TWideStringField;
    ZQry_ImpVendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    ZQry_ImpVendaCOD_FINANCEIRA_LACTO: TWideStringField;
    ZQry_ImpVendaCODCONVENIO: TWideStringField;
    ZQry_ImpVendaSITUACAO: TIntegerField;
    ZQry_ImpVendaCODTRANSPORTADOR: TWideStringField;
    ZQry_ImpVendaCODVEICULO: TWideStringField;
    ZQry_ImpVendaFRETE_VALOR: TFloatField;
    ZQry_ImpVendaFRETE_OBS: TWideStringField;
    ZQry_ImpVendaFRETE_LANCAR: TIntegerField;
    ZQry_ImpVendaECF_SERIAL: TWideStringField;
    ZQry_ImpVendaCODNFSAIDA: TWideStringField;
    ZQry_ImpVendaATACADO_VAREJO: TSmallintField;
    ZQry_ImpVendaNRVENDA: TWideStringField;
    ZQry_ImpVendaFILTRO: TIntegerField;
    ZQry_ImpVendaCODFILIAL: TWideStringField;
    ZQry_ImpVendaCODLOCAL: TWideStringField;
    ZQry_ImpVendaVENDEDOR: TWideStringField;
    ZQry_ImpVenda_ItensCODIGO: TWideStringField;
    ZQry_ImpVenda_ItensCODNOTA: TWideStringField;
    ZQry_ImpVenda_ItensCODPRODUTO: TWideStringField;
    ZQry_ImpVenda_ItensUNITARIO: TFloatField;
    ZQry_ImpVenda_ItensTOTAL: TFloatField;
    ZQry_ImpVenda_ItensICMS: TFloatField;
    ZQry_ImpVenda_ItensIPI: TFloatField;
    ZQry_ImpVenda_ItensCFOP: TWideStringField;
    ZQry_ImpVenda_ItensDATA: TDateField;
    ZQry_ImpVenda_ItensNUMERONOTA: TWideStringField;
    ZQry_ImpVenda_ItensCODCLIENTE: TWideStringField;
    ZQry_ImpVenda_ItensDESCONTO: TFloatField;
    ZQry_ImpVenda_ItensACRESCIMO: TFloatField;
    ZQry_ImpVenda_ItensMOVIMENTO: TIntegerField;
    ZQry_ImpVenda_ItensCODVENDEDOR: TWideStringField;
    ZQry_ImpVenda_ItensCODGRADE: TWideStringField;
    ZQry_ImpVenda_ItensSERIAL: TWideStringField;
    ZQry_ImpVenda_ItensUNIDADE: TWideStringField;
    ZQry_ImpVenda_ItensQTDE: TFloatField;
    ZQry_ImpVenda_ItensVALOR_ICMS: TFloatField;
    ZQry_ImpVenda_ItensICMS_REDUZIDO: TFloatField;
    ZQry_ImpVenda_ItensBASE_CALCULO: TFloatField;
    ZQry_ImpVenda_ItensVALOR_IPI: TFloatField;
    ZQry_ImpVenda_ItensSITUACAO: TIntegerField;
    ZQry_ImpVenda_ItensECF_SERIE: TWideStringField;
    ZQry_ImpVenda_ItensECF_CAIXA: TWideStringField;
    ZQry_ImpVenda_ItensCODALIQUOTA: TWideStringField;
    ZQry_ImpVenda_ItensCUPOM_NUMERO: TWideStringField;
    ZQry_ImpVenda_ItensCUPOM_MODELO: TWideStringField;
    ZQry_ImpVenda_ItensCUPOM_ITEM: TWideStringField;
    ZQry_ImpVenda_ItensALIQUOTA: TFloatField;
    ZQry_ImpVenda_ItensCST: TWideStringField;
    ZQry_ImpVenda_ItensLOTE_FABRICACAO: TWideStringField;
    ZQry_ImpVenda_ItensMOVIMENTO_ESTOQUE: TFloatField;
    ZQry_ImpVenda_ItensLANCADO: TIntegerField;
    ZQry_ImpVenda_ItensVENCIMENTO: TDateField;
    ZQry_ImpVenda_ItensCODBARRA: TWideStringField;
    ZQry_ImpVenda_ItensMARGEM_DESCONTO: TFloatField;
    ZQry_ImpVenda_ItensCREDITO_ICMS: TFloatField;
    ZQry_ImpVenda_ItensPIS: TFloatField;
    ZQry_ImpVenda_ItensCOFINS: TFloatField;
    ZQry_ImpVenda_ItensLOJA: TWideStringField;
    ZQry_ImpVenda_ItensCODSUBGRUPO: TWideStringField;
    ZQry_ImpVenda_ItensTIPO: TWideStringField;
    ZQry_ImpVenda_ItensCODUSUARIO: TWideStringField;
    ZQry_ImpVenda_ItensORIGEM: TWideStringField;
    ZQry_ImpVenda_ItensDESTINO: TWideStringField;
    ZQry_ImpVenda_ItensPRODUTO: TWideStringField;
    ZQry_ImpVenda_ItensCODFILIAL: TWideStringField;
    ppR_ImpVenda: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ZQry_Filial: TZQuery;
    DS_Filial: TDataSource;
    ppDB_Empresa: TppDBPipeline;
    qrFilialLOGO: TBlobField;
    ZQry_FilialCODIGO: TWideStringField;
    ZQry_FilialFILIAL: TWideStringField;
    ZQry_FilialNOTAFISCAL: TIntegerField;
    ZQry_FilialENDERECO: TWideStringField;
    ZQry_FilialCIDADE: TWideStringField;
    ZQry_FilialUF: TWideStringField;
    ZQry_FilialCEP: TWideStringField;
    ZQry_FilialTELEFONE: TWideStringField;
    ZQry_FilialCNPJ: TWideStringField;
    ZQry_FilialIE: TWideStringField;
    ZQry_FilialSEQNF: TIntegerField;
    ZQry_FilialFAX: TWideStringField;
    ZQry_FilialOBS1: TWideStringField;
    ZQry_FilialOBS2: TWideStringField;
    ZQry_FilialCONTRIBUINTE_IPI: TWideStringField;
    ZQry_FilialSUBSTITUTO_TRIBUTARIO: TWideStringField;
    ZQry_FilialEMPRESA_ESTADUAL: TWideStringField;
    ZQry_FilialOPTANTE_SIMPLES: TWideStringField;
    ZQry_FilialOPTANTE_SUPER_SIMPLES: TWideStringField;
    ZQry_FilialECF: TWideStringField;
    ZQry_FilialTIPO: TIntegerField;
    ZQry_FilialIPI: TFloatField;
    ZQry_FilialISS: TFloatField;
    ZQry_FilialNUMERO: TWideStringField;
    ZQry_FilialRESPONSAVEL: TWideStringField;
    ZQry_FilialCOMPLEMENTO: TWideStringField;
    ZQry_FilialBAIRRO: TWideStringField;
    ZQry_FilialFARMACIA_RESP_TECNICO: TWideStringField;
    ZQry_FilialFARMACIA_CRF: TWideStringField;
    ZQry_FilialFARMACIA_CPF: TWideStringField;
    ZQry_FilialFARMCIA_DATA: TDateField;
    ZQry_FilialFARMACIA_UF: TWideStringField;
    ZQry_FilialFARMACIA_SENHA: TWideStringField;
    ZQry_FilialFARMACIA_EMAIL: TWideStringField;
    ZQry_FilialFARMACIA_LOGIN: TWideStringField;
    ZQry_FilialFARMACIA_ENVIO: TWideStringField;
    ZQry_FilialCONHECIMENTO: TIntegerField;
    ZQry_FilialINDUSTRIA: TWideStringField;
    ZQry_FilialFARMACIA_NUMEROLICENCA: TWideStringField;
    ZQry_FilialCOD_MUNICIPIO_IBGE: TWideStringField;
    ZQry_FilialIBGE: TWideStringField;
    ZQry_FilialPIS: TFloatField;
    ZQry_FilialCOFINS: TFloatField;
    ZQry_FilialEMAIL: TWideStringField;
    ZQry_FilialATIVIDADE: TWideStringField;
    ZQry_FilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    ZQry_FilialCONTADOR_NOME: TWideStringField;
    ZQry_FilialCONTADOR_CPF: TWideStringField;
    ZQry_FilialCONTADOR_CRC: TWideStringField;
    ZQry_FilialCONTADOR_CNPJ: TWideStringField;
    ZQry_FilialCONTADOR_CEP: TWideStringField;
    ZQry_FilialCONTADOR_ENDERECO: TWideStringField;
    ZQry_FilialCONTADOR_NUMERO: TWideStringField;
    ZQry_FilialCONTADOR_COMPLEMENTO: TWideStringField;
    ZQry_FilialCONTADOR_BAIRRO: TWideStringField;
    ZQry_FilialCONTADOR_FONE: TWideStringField;
    ZQry_FilialCONTADOR_FAX: TWideStringField;
    ZQry_FilialCONTADOR_EMAIL: TWideStringField;
    ZQry_FilialINSC_MUNICIPAL: TWideStringField;
    ZQry_FilialDATA_ABERTURA: TDateField;
    ZQry_FilialCNAE: TWideStringField;
    ZQry_FilialCRT: TWideStringField;
    ZQry_FilialCONTADOR_CIDADE: TWideStringField;
    ZQry_FilialCONTADOR_COD_MUNICIPIO: TWideStringField;
    ZQry_FilialCONTADOR_UF: TWideStringField;
    ZQry_FilialPERMITE_CREDITO: TIntegerField;
    ZQry_FilialFANTASIA: TWideStringField;
    ZQry_FilialDFIXAS: TSingleField;
    ZQry_FilialTIPOCALCULO: TIntegerField;
    ZQry_FilialSERIE_CTE: TWideStringField;
    ZQry_FilialSEQ_CTE: TWideStringField;
    ZQry_FilialCOD_PAIS: TWideStringField;
    ZQry_FilialPAIS: TWideStringField;
    ZQry_FilialHOMEPAGE: TWideStringField;
    ZQry_FilialLOGO: TBlobField;

    procedure DataModuleCreate(Sender: TObject);
    procedure qrLogBeforePost(DataSet: TDataSet);
    procedure qrsubgrupoBeforePost(DataSet: TDataSet);
    procedure qrgrade_subgrupoBeforePost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterDelete(DataSet: TDataSet);
    procedure qrservicos_periodicosCalcFields(DataSet: TDataSet);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure qrrelatorioAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstBeforePost(DataSet: TDataSet);
    procedure qrmarcaBeforePost(DataSet: TDataSet);
    procedure qrgrupoBeforePost(DataSet: TDataSet);
    procedure qrfornecedorBeforePost(DataSet: TDataSet);
    procedure qrclienteBeforePost(DataSet: TDataSet);
    procedure qradic_mestreAfterPost(DataSet: TDataSet);
    procedure time_gpTimer(Sender: TObject);
    procedure qragendaBeforePost(DataSet: TDataSet);
    procedure timerKeyTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure qrNF_CTEAfterInsert(DataSet: TDataSet);
    procedure ppImage1Print(Sender: TObject);
  private
    procedure Busca_Integridade_Base_Dados;

    { Private declarations }
  public
    { Public declarations }
    ecf_impressao, tipo_msg: Integer;
    oslibera: string;
    usou_produto: Boolean;
    cod_orcamento, cod_cli_orc, orc_cliente, vnossonumero: string;
    top_forms, pgpdf: Integer;
    importando_orcamento, autentica_estoque_negativo: Integer;
    gera_nf, gera_venda: Integer;
    imprimir_orcamento_auto: Integer;
    VersaoBD, cod_usuario: string;
    bSupervisor_autenticado, cancelou_venda_nf, bcontinua_venda,
      finalizar_fechamento: Boolean;
    natoperacao, NUMERO_CUPOM_FISCAL, codvenda_agenda: string;
    finalizou_venda, lanca_mov_cartao_aut: Boolean;
    tipo_conexao, codconteiner,cod_produto,tipo_preco: string;
    erro_gerarCte: Boolean;
    // NeoKeyCall: NeoKey;
    procedure titulo(parcel:integer;codrec:string) ;
    procedure Impressao(report:TppReport);
    procedure Venda_IMP(id_venda:String);
  end;

var
  frmmodulo: Tfrmmodulo;
  copia_origem, copia_destino: string; // variaveis da copia de seguranca
  caminho_fotos_produtos: string;
  // diretorio onde se encontrarao as imagens dos produtos
  caminho_fotos_clientes: string;
  // diretorio onde se encontrarao as imagens dos clientes
  telaprincipal: string; // variavel para mudar a tela principal
  movimento_venda: Integer;
  // variavel para verificar se a venda estah sendo incluida ou alterada

  mascara_valor, mascara_qtde: string;

  decimal_valor, decimal_qtde: Integer;
  arredonda_valor, arredonda_qtde: Integer;
  codigo_it: string;
  numero_vendax: string;

  mostra_principal: string;
  nova_venda: Boolean;
  registro_terminal: string;

  // complus
  CD_CLI, CD_FOR, CD_PRO, CD_MAR, CD_GRU, CD_SUB: string;

  NUMERO_NOTAZ: string;
  VALOR_NOTAZ: REAL;

  // excluir
  data_inicial, data_final: tdatetime;
  produto_remarca: Boolean;

  impressora_venda: string;
  impressora_os: string;

  ecf_modelo: string;
  ecf_porta: string;

  arredonda: Boolean;

  lancar_por_total, ramo, int_retorno: Integer;

  emitente_codigo, emitente_uf, emitente_nome, emitente_fantasia,
    emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj,
    emitente_telefone, emitente_ie: string;

  ESTOQUE_NEGATIVO: Boolean;

  nxcupom: string;
  nivel_usuario: Integer;
  codigo_usuario: string;
  produto_loc, PRODUTO_LOC_NOME: string;

  parametro_pesquisa, resultado_pesquisa1, resultado_pesquisa2,
    resultado_pesquisa3, resultado_pesquisa4, resultado_pesquisa5,
    resultado_pesquisa6, resultado_pesquisa7, RESULTADO_PESQUISA8,
    RESULTADO_PESQUISA9: string;

  SERVIDOR_ECF: string;
  busca_preco: string;

  limite_disponivel: REAL;

  CHEQUE_CODCLIENTE, CHEQUE_VENDA: string;

  numero_cupomX: string;

  programa_balanca: string;
  nf_obs1, nf_obs2, nf_obs3: string;

  CAMPO_INI, CAMPO_QTDE, RESULTADO_INI, RESULTADO_QTDE: Integer;
  FFINANCEI, FDINHEIRO, FCHEQUEAV, FCHEQUEAP, FCARTAOCR, FCARTAODB, FPROMISSO,
    FCONVENIO, FCONVENIV: string;

  ecf_impressao, abre_gaveta, altera_custo, desbloqueia_cliente: Integer;
  busca_produto, importa_quantidade_nota: Integer;
  busca_produto_codigo: string;

  ALIQUOTA_ECF: array [0 .. 30] of string;
  ecf_bematech_yanco: string;

  atualiza_produto_novo: Boolean;
  procura_sintegra: Boolean;

  imp_duplicata, verifica_prestacao_atrazo, ecf_cupom_vinculado_carne,
    ecf_cupom_vinculado_produtos, ecf_cupom_vinculado: string;

  prevenda_tipo: string;

  logomarca, logo_Digimac: string;

  btn_gerar: string;

  VENDA_VEICULO: Boolean;

  FI_LANCTO, FI_CODIGO, FI_BORDERO, FI_PROPOSTA, FI_VENCIMENTO, FI_NOME,
    FI_DATA, FI_CLIENTE, FI_VALOR, FI_OBS, FI_VENDA, FI_COMISSAO,
    FI_LIQUIDO: string; // VARIAVEIS DE LANCAMENTO DE VENDA FINANCEIRA

  nivel_exclusao: Integer;

  // TEF_DIAL
  tempo_gp: Integer;
  time_tef: Integer;
  // FIM

  vimp_comprovante, vimp_pagamento: Boolean;
  iTempoEsperaTC: Integer;
  status_novartis: Boolean;
  novartis_itens_enviados, novartis_itens_aprovados: Integer;
  venvio_novartis, vretorno_novartis: string;

  vnumero_inclui_nota, vnumero_inclui_cupom: string;
  serial_entrada: Boolean;

  ALTERA_UNITARIO: Boolean;

  codifica_nota_fiscal: Integer;

  vcredito_icms, vpis, vcofins: Double;

  sUsa_NFE: string;
  ent_obr: string;
  cod_orcamento: string;

  BuscaChave: string;

  s: string[255];
  c: array [0 .. 255] of Byte absolute s;

  xprod_escolh, xprod_escolh2 : string;

  xencerrant : integer;

  xatualiza_enc : integer;


const
  StKey = 7848567;
  MtKey = 1741378;
  AdKey = 6574985;

type
  LicenseParameters = record
    Enable: Byte;
    SigleInstance: Byte;
    NetUsers: Byte;
    ExpireDate: array [0 .. 7] of Byte;
    Counter: array [0 .. 1] of Byte;
    ID: Byte;
    Reserved: array [0 .. 1] of Byte;
  end;

implementation

uses principal, produto, ecf, frmRelatoriosView_F;

{$R *.dfm}

procedure Tfrmmodulo.titulo(parcel:integer;CODREC:string ) ;
var Titulo : TACBrTitulo;

begin
//banco e cedente
 qrcontacorrente.Open;
    boleto.Cedente.Nome := qrcontacorrenteTITULAR.Value;
    boleto.Cedente.CodigoCedente  := qrcontacorrenteCODCEDENTE.Value ;
    boleto.Cedente.Agencia  := qrcontacorrenteagencia.Value;
    boleto.Cedente.AgenciaDigito  := qrcontacorrenteAGENCIADIG.Value ;
    boleto.Cedente.Conta  := qrcontacorrenteCONTA.Value ;
    boleto.Cedente.ContaDigito  := qrcontacorrenteCONTADIG.Value;
    boleto.Cedente.Convenio := qrcontacorrenteCODCEDENTE.Value;
    boleto.Cedente.CodigoCedente  := qrcontacorrenteCODCEDENTE.Value;
    boleto.Cedente.Nome := qrcontacorrenteTITULAR.Value;


    //titulo
 Titulo := boleto.CriarTituloNaLista;
 with Titulo do begin
 qrcontasreceber.close;
 qrcontasreceber.Open;
 qrcontasreceber.Locate('codigo',codrec,[]);

 Vencimento := qrcontasreceberdata_vencimento.AsDateTime ;
 DataDocumento := qrcontasreceberdata_emissao.AsDateTime;
 NumeroDocumento := qrcontasreceberDOCUMENTO.Value ;
 EspecieDoc := 'DM';
 //if CdsConfigACEITE.AsString = 'SIM' then Aceite := atSim else Aceite := atNao;
 DataProcessamento := Now;
 Carteira := '18';
// NossoNumero := RightStr('0000000000' +ReplaceStr(qrcontasreceberCODIGO.Value,'/','') ,10);

 ValorDocumento := qrcontasreceberVALOR_ATUAL.Value  ;
 qrcliente.Open;
  qrcliente.Locate('codigo',qrcontasreceberCODCLIENTE.Value ,[] );
 //sacado
 Sacado.NomeSacado := qrclienteNOME.Value;
 Sacado.CNPJCPF := qrclientecpf.Value;
 Sacado.Logradouro := qrclienteendereco.Value;
 Sacado.Numero := qrclientenumero.Value;
 Sacado.Bairro := qrclientebairro.Value;
 Sacado.Cidade := qrclientecidade.Value;
 Sacado.UF := qrclienteuf.Value;
 Sacado.CEP := qrclientecep.Value;

 ValorAbatimento := 0;
 //LocalPagamento := CdsConfigLOCAL_PAGTO.AsString;
 ValorMoraJuros := 0;
 ValorDesconto := 0;
 ValorAbatimento := 0;
 DataMoraJuros := 0;
 DataDesconto := 0;
  DataAbatimento := 0;
 //DataProtesto := CdsContasDATA_VENC.AsDateTime + CdsConfigDIAS_PROTESTO.AsInteger;
 PercentualMulta := 0;
 Mensagem.Text := qrcontacorrenteINSTRUCOES1.Value ;
 OcorrenciaOriginal.Tipo := toRemessaBaixar;
 Instrucao1 := qrcontacorrenteINSTRUCOES2.Value;
 Instrucao2 := qrcontacorrenteINSTRUCOES3.Value;
 Parcela := parcel;
 end; // grava o nosso numero na conta SQLAux.Close;

end;

procedure Tfrmmodulo.Venda_IMP(id_venda: String);
var
 xArquivo : String;
begin
   if  Application.MessageBox(' Deseja imprimir o espelho da venda?','A.T.E.N.Ç.Ã.O',MB_ICONQUESTION+MB_YESNO )=ID_YES then
   begin
     with ZQry_Filial do
     begin
       Close;
       open;
     end;
     with ZQry_ImpVenda do
     begin
       Close;
       Params[0].AsString := id_venda;
       Open;

       if IsEmpty = True then
       begin
         Close;
         Application.MessageBox('ATENÇÃO: Nenhum registro localizado','ERROR',MB_ICONERROR);
       end else
       begin
         with ZQry_ImpVenda_Itens do
         begin
           Close;
           Params[0].AsString := id_venda;
           Params[1].AsString := ZQry_ImpVendaCODCLIENTE.AsString;
           Open;
         end;
         if NOT DirectoryExists(GetCurrentDir+'/LAYOUTS') then
         ForceDirectories(GetCurrentDir+'/LAYOUTS');
         xArquivo :=GetCurrentDir+'/LAYOUTS/' + 'Vendas_Espelho.rtm';
         ppR_ImpVenda.Template.FileName := xArquivo;
         if not fileexists(xArquivo) then
         ppR_ImpVenda.Template.SaveToFile;

         ppR_ImpVenda.Template.LoadFromFile;
         Impressao(ppR_ImpVenda);

       end;
     end;
   end;
end;

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var
  txt: textfile;
  entrada: string;
  ARQUIVO: string;
  Hand: THandle;
  caminho: string;
  texto: string;
  ret: Integer;
  status: string;
  sChallenge: string;
  Response: array [0 .. 16] of Char;
  ExpDate, DATAATUAL: string;
  LicenseParam: LicenseParameters;
  // parametros mysql
  librarylocation, usuario_banco, senha_banco, protocolo: string;
  porta, i: Integer;
begin
    // FUNCAO PARA PROTECAO NEOKEY na versao 2.0 do OneMaker
  begin
    // LOGIN
    Response := ('xxxxxxxxxxxxxxxx');
    sChallenge := ('ICLOUDINFORMATIC');
{$IFDEF DEBUG}
{$ELSE}
{$ENDIF}
    { ret := NeoKeyCall.Login(sChallenge, @Response);
      if ret <> 0 then
      begin
      application.messagebox(Pchar('ERRO - CHAVE DESCONECTADA OU ' + IntToStr(ret)), 'Atenção', mb_ok + MB_ICONERROR);
      Application.Terminate;
      end;


      //LOGOUT
      ret := NeoKeyCall.Logout();
      if ret <> 0 then
      begin
      FmtStr(status, 'Error:%d ', [ret]);
      end
      else
      begin
      end; }

  end;

  sUsa_NFE := '1';

  // formata as datas da opções regionais
  if FormatSettings.ShortDateFormat <> 'dd/MM/yyyy' then
  begin

  FormatSettings.ThousandSeparator := '.';
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.ShortDateFormat := 'dd/MM/yyyy';
  end;

  time_tef := 0;
  nivel_exclusao := 4;
  produto_remarca := true;
  prevenda_tipo := '2';
  programa_balanca := '\Filizola\TSC\TSC.exe';
  Conexao.connected := false;
  ConexaoLocal.connected := false;
  conexao_ecfserver.connected := false;
  // complus
  conexao_adic.connected := false;
  econexao2.connected := false;
  caminho := '\OneMaker\server\ini\com.ini'; // Abre o Sistema Atual

  assignfile(txt, caminho);

  reset(txt);
  while not eof(txt) do
  begin
    readln(txt, entrada);

    // tipo conexao
    if copy(entrada, 1, 4) = 'tipo' then
      tipo_conexao := trim(copy(entrada, 6, 50));

    // Tela Principal
    if copy(entrada, 1, 7) = '000-000' then
      telaprincipal := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'arq-001' then
      ARQUIVO := copy(entrada, 9, 1);

    // SERVIDOR DE ECF
    if copy(entrada, 1, 7) = 'ecf-ser' then
      SERVIDOR_ECF := copy(entrada, 9, 1);
    // configuracoes da copia de segurança
    if copy(entrada, 1, 7) = '000-001' then
      copia_origem := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = '000-002' then
      copia_destino := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = '999-001' then
      Conexao.database := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = '999-002' then
      Conexao.hostname := trim(copy(entrada, 9, 50));

      //dbexpress
        conn.Close;
        conn.Params.Values['DataBase']:=  Conexao.hostname +':' + Conexao.database;


    if copy(entrada, 1, 7) = '999-002' then
    begin
      if trim(copy(entrada, 9, 50)) = 'LOCALHOST' then
        frmprincipal.caption :=
          'OneMaker'
      else
        frmprincipal.caption :=
          'OneMaker                 [ Servidor: ' +
          trim(copy(entrada, 9, 50)) + ' ]';
    end;

    // banco de dados LOCAL
    if copy(entrada, 1, 7) = 'loc-001' then
      ConexaoLocal.database := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'loc-002' then
      ConexaoLocal.hostname := trim(copy(entrada, 9, 50));



    // complus -  banco de dados adicional
    // if copy(entrada,1,7) = 'adi-001' then conexao_adic.database := trim(copy(entrada,9,50));
    // if copy(entrada,1,7) = 'adi-002' then conexao_adic.hostname := trim(copy(entrada,9,50));

    // fotos dos produtos
    if copy(entrada, 1, 7) = 'img-001' then
      caminho_fotos_produtos := trim(copy(entrada, 9, 50));
    // fotos dos clientes
    if copy(entrada, 1, 7) = 'img-002' then
      caminho_fotos_clientes := trim(copy(entrada, 9, 50));

    if copy(entrada, 1, 7) = 'FDINHEI' then
      FDINHEIRO := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCHEQAV' then
      FCHEQUEAV := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCHEQAP' then
      FCHEQUEAP := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCARTCR' then
      FCARTAOCR := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCARTDB' then
      FCARTAODB := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FPROMIS' then
      FPROMISSO := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCONVEO' then
      FCONVENIO := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FCONVEV' then
      FCONVENIV := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 7) = 'FFINANC' then
      FFINANCEI := trim(copy(entrada, 9, 50));

    if copy(entrada, 1, 7) = 'PIC-R60' then
      CAMPO_INI := STRTOINT(trim(copy(entrada, 9, 50)));
    if copy(entrada, 1, 7) = 'PQC-R60' then
      CAMPO_QTDE := STRTOINT(trim(copy(entrada, 9, 50)));
    if copy(entrada, 1, 7) = 'PIR-R60' then
      RESULTADO_INI := STRTOINT(trim(copy(entrada, 9, 50)));
    if copy(entrada, 1, 7) = 'PQR-R60' then
      RESULTADO_QTDE := STRTOINT(trim(copy(entrada, 9, 50)));
    if copy(entrada, 1, 7) = 'ecf_imp' then
      ecf_impressao := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'abr-gav' then
      abre_gaveta := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'bem-yan' then
      ecf_bematech_yanco := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'ecf_cnf' then
      ecf_cupom_vinculado := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'ecf_cnc' then
      ecf_cupom_vinculado_carne := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'ver_deb' then
      verifica_prestacao_atrazo := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'alt_cus' then
      altera_custo := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'des_cli' then
      desbloqueia_cliente := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'ali-001' then
      ALIQUOTA_ECF[1] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-002' then
      ALIQUOTA_ECF[2] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-003' then
      ALIQUOTA_ECF[3] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-004' then
      ALIQUOTA_ECF[4] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-005' then
      ALIQUOTA_ECF[5] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-006' then
      ALIQUOTA_ECF[6] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-007' then
      ALIQUOTA_ECF[7] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-008' then
      ALIQUOTA_ECF[8] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-009' then
      ALIQUOTA_ECF[9] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-010' then
      ALIQUOTA_ECF[10] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-011' then
      ALIQUOTA_ECF[11] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-012' then
      ALIQUOTA_ECF[12] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-013' then
      ALIQUOTA_ECF[13] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-014' then
      ALIQUOTA_ECF[14] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-015' then
      ALIQUOTA_ECF[15] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-016' then
      ALIQUOTA_ECF[16] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-017' then
      ALIQUOTA_ECF[17] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-018' then
      ALIQUOTA_ECF[18] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-019' then
      ALIQUOTA_ECF[19] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-020' then
      ALIQUOTA_ECF[20] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-021' then
      ALIQUOTA_ECF[21] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-022' then
      ALIQUOTA_ECF[22] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-023' then
      ALIQUOTA_ECF[23] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-024' then
      ALIQUOTA_ECF[24] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-025' then
      ALIQUOTA_ECF[25] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-026' then
      ALIQUOTA_ECF[26] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-027' then
      ALIQUOTA_ECF[27] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-028' then
      ALIQUOTA_ECF[28] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-029' then
      ALIQUOTA_ECF[29] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'ali-030' then
      ALIQUOTA_ECF[30] := trim(copy(entrada, 9, 5));
    if copy(entrada, 1, 7) = 'bus-pre' then
      busca_preco := copy(entrada, 9, 1);
    if copy(entrada, 1, 7) = 'prg-bal' then
      programa_balanca := copy(entrada, 9, 100);
    if copy(entrada, 1, 7) = 'pdv-loj' then
      prevenda_tipo := copy(entrada, 9, 1);
    if copy(entrada, 1, 7) = 'log-mar' then
      logomarca := copy(entrada, 9, 200);
    if copy(entrada, 1, 7) = 'log-sis' then
      logo_Digimac := copy(entrada, 9, 1);
    if copy(entrada, 1, 7) = 'btn-rec' then
      btn_gerar := copy(entrada, 9, 1);
    if copy(entrada, 1, 7) = 'ver-dad' then
      mostra_principal := copy(entrada, 9, 1);
    if copy(entrada, 1, 7) = 'aju-usu' then
      nivel_exclusao := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'lan_tot' then
      lancar_por_total := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'usa-tef' then
      if trim(copy(entrada, 9, 1)) = '1' then
        usa_tef := true
      else
        usa_tef := false;
    if copy(entrada, 1, 7) = 'usa-tec' then
      if trim(copy(entrada, 9, 1)) = '1' then
        usa_tecban := true
      else
        usa_tecban := false;
    // cartoes
    if copy(entrada, 1, 7) = 'lan-mcc' then
      if trim(copy(entrada, 9, 1)) = '1' then
        lanca_mov_cartao_aut := true
      else
        lanca_mov_cartao_aut := false;

    if copy(entrada, 1, 7) = 'tim-tef' then
      time_tef := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'imp-qnt' then
      importa_quantidade_nota := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'cod_nfi' then
      codifica_nota_fiscal := STRTOINT(trim(copy(entrada, 9, 1)));
    if copy(entrada, 1, 7) = 'usa-nfe' then
      sUsa_NFE := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'ent-obr' then
      ent_obr := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 7) = 'usa-002' then
      oslibera := trim(copy(entrada, 9, 1));
    if copy(entrada, 1, 5) = 'porta' then
      porta := STRTOINT(trim(copy(entrada, 7, 6)));
    if copy(entrada, 1, 7) = 'usuario' then
      usuario_banco := trim(copy(entrada, 9, 50));
    if copy(entrada, 1, 5) = 'senha' then
      senha_banco := trim(copy(entrada, 7, 50));

  end;
  // decripta senha
  s := senha_banco;
  For i := 1 to Length(s) do
    s[i] := AnsiChar(23 Xor ord(c[i]));

  senha_banco := s;

  // Atualiza o banco de dados
  // DB.DatabaseName := Conexao.hostname + ':' + Conexao.database;
  // VersaoBD := frmprincipal.ExeInfo1.ProductVersion;
  // Busca_Integridade_Base_Dados; // Efetua a atualização do banco de dados

  // prepara para mysql

  if tipo_conexao = 'MySQL' then
  begin
    protocolo := 'mysql-5';
    librarylocation := 'libmysql';

    Conexao.Protocol := protocolo;
    Conexao.librarylocation := librarylocation;
    Conexao.User := usuario_banco;
    Conexao.database := 'BASE';
    Conexao.Password := senha_banco;
    Conexao.Port := porta;

    ConexaoLocal.Protocol := protocolo;
    ConexaoLocal.librarylocation := librarylocation;
    ConexaoLocal.User := usuario_banco;
    ConexaoLocal.database := 'BASE';
    ConexaoLocal.Password := senha_banco;
    ConexaoLocal.Port := porta;

    conexao_adic.Protocol := protocolo;
    conexao_adic.librarylocation := librarylocation;
    conexao_adic.User := usuario_banco;
    conexao_adic.database := 'BASE';
    conexao_adic.Password := senha_banco;
    conexao_adic.Port := porta;

    DB.Protocol := protocolo;
    DB.librarylocation := librarylocation;
    DB.User := usuario_banco;
    DB.database := 'BASE';
    DB.Password := senha_banco;
    DB.Port := porta;

    conexao_ecfserver.Protocol := protocolo;
    conexao_ecfserver.librarylocation := librarylocation;
    conexao_ecfserver.User := usuario_banco;
    conexao_ecfserver.database := 'BASE';
    conexao_ecfserver.Password := senha_banco;
    conexao_ecfserver.Port := porta;

    econexao2.Protocol := protocolo;
    econexao2.librarylocation := librarylocation;
    econexao2.User := usuario_banco;
    econexao2.database := 'BASE';
    econexao2.Password := senha_banco;
    econexao2.Port := porta;
  end;

  Conexao.connected := true;
  ConexaoLocal.connected := true;
  Conexao.AutoCommit := false;

  // complus
  conexao_adic.connected := false;
  conexao_adic.hostname := Conexao.hostname;
  conexao_adic.database := Conexao.database;
  conexao_adic.connected := true;

  // atualiza banco
  DB.connected := false;
  DB.hostname := Conexao.hostname;
  DB.database := Conexao.database;
  DB.connected := true;
  VersaoBD := frmprincipal.ExeInfo1.ProductVersion;
  Busca_Integridade_Base_Dados; // Efetua a atualização do banco de dados

  { IBConexao.Connected := false;
    IBConexao.DatabaseName := conexao.HostName+':'+conexao.Database;
    IBConexao.Connected := true; }

  { EConexao.close;
    EConexao.Server := Conexao.hostname;
    EConexao.database := Conexao.database;
    EConexao.open; }

  conexao_ecfserver.connected := false;
  conexao_ecfserver.hostname := Conexao.hostname;
  conexao_ecfserver.database := Conexao.database;
  conexao_ecfserver.connected := true;

  econexao2.connected := false;
  econexao2.hostname := Conexao.hostname;
  econexao2.database := Conexao.database;
  econexao2.connected := true;

  qrconfig.open;
  ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
  ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;


  // cupom vinculado

  ecf_cupom_vinculado := IntToStr(qrconfigIMPRIME_CUPOM_VINCULADO.AsInteger);
  ecf_cupom_vinculado_produtos :=
    IntToStr(qrconfigIMPRIME_PRODUTOS_VINCULADOS.AsInteger);
  ecf_cupom_vinculado_carne :=
    IntToStr(qrconfigIMPRIME_COMPROVANTE_DEBITO.AsInteger);

  // imprimir duplicatas
  imp_duplicata := IntToStr(qrconfigIMPRIME_DUPLICATA.AsInteger);

  if ecf_modelo = 'URANO' then
  begin
    ecf.InicializaDLL(ecf_porta);
  end;

  with frmprincipal do
  begin
    if ecf_modelo <> '' then
    begin
      // pstatus.Panels[9].Text := qrconfig.fieldbyname('ecf_caixa').AsString;
      // pstatus.Panels[10].Text := ecf_modelo;
      // pstatus.Panels[11].Text := qrconfig.fieldbyname('ecf_serial').asstring;

    end;
  end;

  ramo := qrconfig.fieldbyname('ramo_atividade').AsInteger;

  impressora_venda := qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

  if qrconfig.fieldbyname('ESTOQUE_NEGATIVO').AsInteger = 1 then
    ESTOQUE_NEGATIVO := true
  else
    ESTOQUE_NEGATIVO := false;

  case qrconfig.fieldbyname('CASAS_DECIMAIS_qtde').AsInteger of
    0:
      begin
        mascara_qtde := '###,###,##0';
        decimal_qtde := 0;
        arredonda_qtde := 0;
      end;
    2:
      begin
        mascara_qtde := '###,###,##0.00';
        decimal_qtde := 2;
        arredonda_qtde := -2;
      end;
    3:
      begin
        mascara_qtde := '###,###,##0.000';
        decimal_qtde := 3;
        arredonda_qtde := -3;
      end;
    4:
      begin
        mascara_qtde := '###,###,##0.0000';
        decimal_qtde := 4;
        arredonda_qtde := -4;
      end;
    5:
      begin
        mascara_qtde := '###,###,##0.00000';
        decimal_qtde := 5;
        arredonda_qtde := -5;
      end;
    6:
      begin
        mascara_qtde := '###,###,##0.000000';
        decimal_qtde := 6;
        arredonda_qtde := -6;
      end;
    7:
      begin
        mascara_qtde := '###,###,##0.0000000';
        decimal_qtde := 7;
        arredonda_qtde := -7;
      end;

  end;
  case qrconfig.fieldbyname('CASAS_DECIMAIS_valor').AsInteger of
    2:
      begin
        mascara_valor := '###,###,##0.00';
        decimal_valor := 2;
        arredonda_valor := -2;
      end;
    3:
      begin
        mascara_valor := '###,###,##0.000';
        decimal_valor := 3;
        arredonda_valor := -3;
      end;
    4:
      begin
        mascara_valor := '###,###,##0.0000';
        decimal_valor := 4;
        arredonda_valor := -4;
      end;
    5:
      begin
        mascara_valor := '###,###,##0.00000';
        decimal_valor := 5;
        arredonda_valor := -5;
      end;
    6:
      begin
        mascara_valor := '###,###,##0.000000';
        decimal_valor := 6;
        arredonda_valor := -6;
      end;
    7:
      begin
        mascara_valor := '###,###,##0.0000000';
        decimal_valor := 7;
        arredonda_valor := -7;
      end;

  end;

  qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
  qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
  qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
  qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
  qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
  qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
  qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
  qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
  qrprecoLUCRO.DisplayFormat := mascara_valor;

  qremitente.open;

  emitente_codigo := qremitente.fieldbyname('codigo').asstring;
  emitente_nome := qremitente.fieldbyname('nome').asstring;
  emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
  emitente_endereco := qremitente.fieldbyname('endereco').asstring + ' - ' +
    qremitente.fieldbyname('bairro').asstring;
  emitente_cidade := qremitente.fieldbyname('cidade').asstring + '/' +
    qremitente.fieldbyname('uf').asstring;
  emitente_cep := qremitente.fieldbyname('cep').asstring;
  emitente_telefone := qremitente.fieldbyname('telefone').asstring;
  emitente_cnpj := qremitente.fieldbyname('cnpj').asstring;
  emitente_ie := qremitente.fieldbyname('ie').asstring;
  emitente_uf := qremitente.fieldbyname('uf').asstring;

  res_empresa := qremitenteCODIGO.asstring;
  res_rsocial := qremitenteNOME.asstring;
  res_cnpj := qremitenteCNPJ.asstring;

  parametro_pesquisa := '';

  if qrconfig.fieldbyname('IMPRIMI_ORCAMENTO_AUTO').AsInteger = 1 then
    imprimir_orcamento_auto := 1
end;

procedure Tfrmmodulo.Impressao(report: TppReport);
begin
 try
  frmRelatoriosView := TfrmRelatoriosView.Create(Application);
  frmRelatoriosView.Report := Report;
  frmRelatoriosView.ShowModal;
  finally
    frmRelatoriosView.Free;
  end;
end;

procedure Tfrmmodulo.ppImage1Print(Sender: TObject);
var
  IniFile: string;
  Ini: TIniFile;
begin
  if Assigned(sender) then
  begin
    IniFile := ChangeFileExt(Application.ExeName, '.ini');

    Ini := TIniFile.Create(IniFile);
    if Ini.readstring('Geral', 'LogoMarca','')<>'' then
    begin
      if FileExists(Ini.readstring('Geral', 'LogoMarca','')) then
      begin
        //ppImage1.Picture.LoadFromFile(Ini.readstring('Geral', 'LogoMarca',''));
      end;
    end;
     Ini.Free;
  end;
end;

procedure Tfrmmodulo.qrLogBeforePost(DataSet: TDataSet);
begin
  qrLog.FieldValues['codigo'] := frmprincipal.codifica('000002');
end;

procedure Tfrmmodulo.qrsubgrupoBeforePost(DataSet: TDataSet);
begin

  if qrsubgrupo.fieldbyname('subgrupo').asstring = '' then
    abort;
  qrsubgrupo.fieldbyname('subgrupo').asstring :=
    ansiuppercase(qrsubgrupo.fieldbyname('subgrupo').asstring);

  if frmmodulo.qrsubgrupo.state = dsinsert then
  begin
    frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring :=
      frmprincipal.codifica('000018');
    frmmodulo.qrsubgrupo.fieldbyname('codgrupo').asstring :=
      frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
  end;

  if CD_SUB = '1' then
  begin
    try
      if qrsubgrupo.state = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000018 where codigo = ''xxxxxx''');
        qradic.open;
        qradic.insert;
        qradic.FieldValues['CODIGO;SUBGRUPO;codgrupo'] := qrsubgrupo.FieldValues
          ['CODIGO;SUBGRUPO;codgrupo'];
        qradic.post;
        conexao_adic.Commit;
      end;
    except
    end;
  end;

end;

procedure Tfrmmodulo.Timer1Timer(Sender: TObject);
begin

  if frmprincipal.iCloud.CurrentUser.UserLogin <> '' then
  begin
   // UCApplicationMessage1.CheckMessages;
  end;
end;

procedure Tfrmmodulo.qrgrade_subgrupoBeforePost(DataSet: TDataSet);
begin
  if frmmodulo.qrgrade_subgrupo.state = dsinsert then
  begin
    frmmodulo.qrgrade_subgrupo.fieldbyname('codigo').asstring :=
      frmprincipal.codifica('000020');
    frmmodulo.qrgrade_subgrupo.fieldbyname('codsubgrupo').asstring :=
      frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  end;
end;

procedure Tfrmmodulo.qrfiscal_cstAfterPost(DataSet: TDataSet);
begin
  Conexao.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstAfterDelete(DataSet: TDataSet);
begin
  Conexao.Commit;
end;

procedure Tfrmmodulo.qrservicos_periodicosCalcFields(DataSet: TDataSet);
begin
  qrservicos_periodicos.fieldbyname('proxima_manutencao').AsDateTime :=
    qrservicos_periodicos.fieldbyname('ultima_manutencao').AsDateTime +
    qrservicos_periodicos.fieldbyname('periodo').AsInteger;
end;

procedure Tfrmmodulo.qrproduto_movBeforePost(DataSet: TDataSet);
begin
  case qrproduto_mov.fieldbyname('movimento').AsInteger of
    0, 10:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat :=
        qrproduto_mov.fieldbyname('qtde').asfloat;
    1, 3, 7, 8, 12, 13, 16:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat :=
        qrproduto_mov.fieldbyname('qtde').asfloat;
    2, 4, 5, 6, 9, 11, 14, 15, 17, 18, 19, 20:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat :=
        qrproduto_mov.fieldbyname('qtde').asfloat * (-1);
    99:
      qrproduto_mov.fieldbyname('movimento_estoque').asfloat := 0;
  end;
end;

procedure Tfrmmodulo.qrrelatorioAfterPost(DataSet: TDataSet);
begin
  ConexaoLocal.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstBeforePost(DataSet: TDataSet);
begin
  qrfiscal_cst.fieldbyname('situacao').asstring :=
    ansiuppercase(qrfiscal_cst.fieldbyname('situacao').asstring);
end;

procedure Tfrmmodulo.qrmarcaBeforePost(DataSet: TDataSet);
begin
  if CD_MAR = '1' then
  begin
    try
      if qrmarca.state = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('insert into c000019');
        qradic.sql.add('(codigo,nome)');
        qradic.sql.add('values');
        qradic.sql.add('(:codigox,:nomex)');
        qradic.params.parambyname('codigox').asstring :=
          qrmarca.fieldbyname('codigo').asstring;
        qradic.params.parambyname('nomex').asstring :=
          qrmarca.fieldbyname('nome').asstring;
        qradic.execsql;
        conexao_adic.Commit;
      end;
    except
    end;
  end;

end;

procedure Tfrmmodulo.qrNF_CTEAfterInsert(DataSet: TDataSet);
begin
  frmmodulo.qrNF_CTE.fieldbyname('codcte').asstring :=
    frmmodulo.qrconhecimento.fieldbyname('numero').asstring;
  frmmodulo.qrNF_CTE.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('NF_CTE');
end;

procedure Tfrmmodulo.qrgrupoBeforePost(DataSet: TDataSet);
begin
  if CD_GRU = '1' then
  begin
    try
      if qrgrupo.state = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000017 where codigo = ''xxxxxx''');
        qradic.open;
        qradic.insert;
        qradic.FieldValues['CODIGO;GRUPO'] := qrgrupo.FieldValues
          ['CODIGO;GRUPO'];
        qradic.post;
        conexao_adic.Commit;
      end;
    except
    end;
  end;
end;

procedure Tfrmmodulo.qrfornecedorBeforePost(DataSet: TDataSet);
var
  vcodigo_fornecedor: string;
begin

  if qrfornecedor.state = dsinsert then
  begin
    if CD_FOR = '1' then
    begin
      try
        if qrfornecedor.state = dsinsert then
        begin
          qradic.close;
          qradic.sql.clear;
          qradic.sql.add('select * from c000009 where codigo = ''xxxxxx''');
          qradic.open;
          qradic.insert;
          qradic.FieldValues
            ['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo']
            := qrfornecedor.FieldValues
            ['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'];
          qradic.post;
          conexao_adic.Commit;
        end;
      except
      end;
    end;
  end
  else if qrfornecedor.state = DSEDIT then
  begin
    if CD_FOR = '1' then
    begin
      try
        if qrfornecedor.state = DSEDIT then
        begin

          vcodigo_fornecedor := qrfornecedor.fieldbyname('codigo').asstring;

          qradic.close;
          qradic.sql.clear;
          qradic.sql.add('select * from c000009 where codigo = ''' +
            vcodigo_fornecedor + '''');
          qradic.open;

          if qradic.RecordCount > 0 then
          begin
            qradic.Edit;
            qradic.FieldValues
              ['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo']
              := qrfornecedor.FieldValues
              ['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'];
            qradic.post;
            conexao_adic.Commit;
          end;
        end;
      except
      end;
    end;
  end;

end;

procedure Tfrmmodulo.qrclienteBeforePost(DataSet: TDataSet);
var
  vcodigo_cliente: string;
begin
  if CD_CLI = '1' then
  begin
    try
      if qrcliente.state = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000007 where codigo = ''xxxxxx''');
        qradic.open;
        qradic.insert;

        qradic.FieldValues
          ['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'
          + 'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'
          + 'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'
          + 'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'
          + 'CODREGIAO;CODCONVENIO;CODUSUARIO'] := qrcliente.FieldValues
          ['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'
          + 'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'
          + 'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'
          + 'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'
          + 'CODREGIAO;CODCONVENIO;CODUSUARIO'];
        qradic.post;
        conexao_adic.Commit;
      end

      else if qrcliente.state = DSEDIT then
      begin

        vcodigo_cliente := qrcliente.fieldbyname('codigo').asstring;

        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000007 where codigo = ''' +
          vcodigo_cliente + '''');
        qradic.open;
        qradic.Edit;
        qradic.FieldValues
          ['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'
          + 'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'
          + 'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'
          + 'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'
          + 'CODREGIAO;CODCONVENIO;CODUSUARIO'] := qrcliente.FieldValues
          ['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'
          + 'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'
          + 'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'
          + 'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'
          + 'CODREGIAO;CODCONVENIO;CODUSUARIO'];
        qradic.post;
        conexao_adic.Commit;
      end;

    except
    end;
  end;

end;

procedure Tfrmmodulo.qradic_mestreAfterPost(DataSet: TDataSet);
begin
  conexao_adic.Commit;
end;

procedure Tfrmmodulo.time_gpTimer(Sender: TObject);
begin
  // TEF_DIAL
  tempo_gp := tempo_gp + 1;
end;

procedure Tfrmmodulo.qragendaBeforePost(DataSet: TDataSet);
begin
  qragenda.FieldValues['codigo'] := frmprincipal.codifica('000034');
end;

procedure Tfrmmodulo.Busca_Integridade_Base_Dados();
// adcionado o parametro pprimarykey para criar chave primaria sim ou nao automaticamente ao criar uma tabel
// by fernando
  procedure Atualiza_Integridade_Tabela(pTabela: string; pCampo: string;
    pFormato: string; pCriaTabela: Boolean; pGen: Boolean;
    pPrimarykey: Boolean);
  var
    QueryTmp: TZQuery;
    bAchou: Boolean;
  begin
    QueryTmp := TZQuery.Create(Application);
     QueryTmp.Connection := Conexao;
    QueryTmp.sql.clear;

    bAchou := false;

    if pGen then
    begin
      QueryTmp.sql.add
        ('SELECT * FROM rdb$generators where rdb$generator_name = ''' +
        UpperCase(pTabela) + '''');
      QueryTmp.Active := true;

      bAchou := false;
      if QueryTmp.RecordCount = 0 then
      begin

        QueryTmp.close;
        QueryTmp.sql.clear;
        QueryTmp.sql.add(pCampo);
        QueryTmp.Active := true;

        QueryTmp.sql.clear;
        QueryTmp.sql.add(pFormato);
        QueryTmp.Active := true;

        bAchou := true;
      end;
    end;

    if (not pCriaTabela) and (not bAchou) and (not pGen) then
    begin
      try
        QueryTmp.sql.add
          ('SELECT * FROM rdb$relation_fields WHERE rdb$relation_name = ''' +
          UpperCase(pTabela) + ''' AND rdb$field_name = ''' +
          UpperCase(pCampo) + '''');
        QueryTmp.Active := true;
        bAchou := false;
        if QueryTmp.RecordCount = 0 then
        begin
          QueryTmp.close;
          QueryTmp.sql.clear;
          QueryTmp.sql.add('ALTER TABLE ' + pTabela + ' ADD ' + pCampo + ' ' +
            pFormato + ' ;');
          // SHOWMESSAGE(QueryTmp.SQL.TEXT);
          QueryTmp.Active := true;
          bAchou := true;
        end;
      except
        bAchou := false;
      end;
    end
    else
    begin
      if (not bAchou) and (not pGen) then
      begin
        try
          QueryTmp.sql.add
            ('SELECT * FROM rdb$relations WHERE rdb$relation_name = ''' +
            UpperCase(pTabela) + '''');
          QueryTmp.Active := true;
          bAchou := false;
          if QueryTmp.RecordCount = 0 then
          begin
            if ((pCampo <> '') and (pFormato <> '') and (pTabela <> '')) then
            begin
              QueryTmp.close;
              QueryTmp.sql.clear;
              if pPrimarykey then
                QueryTmp.sql.add('create table ' + pTabela + ' ( ' + pCampo +
                  ' ' + pFormato + ' NOT NULL );')
              else
                QueryTmp.sql.add('create table ' + pTabela + ' ( ' + pCampo +
                  ' ' + pFormato + ' );');
              QueryTmp.Active := true;
              if pPrimarykey then
              begin
                QueryTmp.close;
                QueryTmp.sql.clear;
                QueryTmp.sql.add('ALTER TABLE ' + pTabela +
                  ' ADD CONSTRAINT PK_' + pTabela + ' PRIMARY KEY (' +
                  pCampo + ')');
                QueryTmp.Active := true;
              end;
              bAchou := true;
            end;
          end;
        except
          bAchou := false;
        end;
      end;

    end;

    // Efetiva a transação no banco de dados...
    if bAchou then
    begin
      QueryTmp.sql.clear;
      QueryTmp.sql.add('COMMIT;');
      QueryTmp.Active := true;
    end;

    QueryTmp.close;
    QueryTmp := nil;
  end;
// checa se existe indice
  procedure criaindice(pindice, pTabela, pCampo: string);
  var
    QueryTmp: TZQuery;
    bAchou: Boolean;
  begin
    bAchou := false;
    QueryTmp := TZQuery.Create(Application);
    // QueryTmp.Transaction := frmmodulo.TR;
    QueryTmp.sql.clear;
    QueryTmp.sql.clear;
    QueryTmp.sql.add
      ('select rdb$index_name from rdb$indices where rdb$index_name = ' +
      quotedstr(UpperCase(pindice)));
    QueryTmp.open;
    if QueryTmp.RecordCount = 0 then
    begin
      QueryTmp.close;
      QueryTmp.sql.clear;
      // CREATE INDEX C000101_IDX1 ON C000101 (DATA)
      QueryTmp.sql.add('CREATE INDEX ' + pindice + ' on ' + pTabela + ' (' +
        pCampo + ')');
      QueryTmp.Active := true;
      bAchou := true;
    end;
    if bAchou then
    begin
      QueryTmp.sql.clear;
      QueryTmp.sql.add('COMMIT;');
      QueryTmp.Active := true;
    end;
    QueryTmp.close;
    QueryTmp := nil;
  end;

begin
  { MODO DE USAR }

  // Verifica se existe os campos da tabela TbContaCorrente      //CRIA OS CAMPOS DE UMA TABELA EXISTENTE
  { Atualiza_Integridade_Tabela('TBCONTACORRENTE','DigitoConta' ,'VARCHAR(02)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','CodCente'    ,'VARCHAR(25)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','Carteira'    ,'VARCHAR(05)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','NossoNumero' ,'VARCHAR(50)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','Modalidade'  ,'VARCHAR(05)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','Convenio'    ,'VARCHAR(10)',False, False);
    Atualiza_Integridade_Tabela('TBCONTACORRENTE','NomeCedente' ,'VARCHAR(100)',False, False);

    //Verifica se existe a tabela TBRELATORIO_CURVA_ABC           //CRIA TABELA COM CAMPOS
    Atualiza_Integridade_Tabela('TBRELATORIO_CURVA_ABC',
    'CREATE TABLE TBRELATORIO_CURVA_ABC(' +
    'PRODUTO INTEGER,' +
    'NOMEPRODUTO VARCHAR(100),' +
    'QUANTIDADE DECIMAL(10,2),' +
    'VALORTOTAL DECIMAL(10,2),' +
    'DATAVENDA DATE);','',True, False);

    //CRIA GENERETOR E SETA DE ONDE DEVE INICAR
    Atualiza_Integridade_Tabela('GEN_FATURAOS','CREATE GENERATOR GEN_FATURAOS','SET GENERATOR GEN_FATURAOS TO 0', False, True); }

  Atualiza_Integridade_Tabela('C000001', 'VERSAOBD', 'VARCHAR(20)', false,
    false, false); // cria independete da versão

  if VersaoBD <= '7.3.9.5' then
  begin

    { //PARA DEVOLUCAO
      Atualiza_Integridade_Tabela('C000032', 'QTD_DEVOLUCAO', 'NUMERIC(15,3) DEFAULT 0', FALSE, False, False);
      //cria tabela para tabela de precos
      Atualiza_Integridade_Tabela('C000103', 'CODIGO', 'VARCHAR(6)', TRUE, False, true);
      Atualiza_Integridade_Tabela('C000103', 'NOME', 'VARCHAR(40)', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000103', 'PRECO', 'VARCHAR(15)', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000103', 'DESC_ACRES', 'NUMERIC(15,3)', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000103', 'DESC_MAX', 'NUMERIC(15,3)', FALSE, False, False);
      //cria tabela de conceitos
      Atualiza_Integridade_Tabela('C000104', 'CODIGO', 'VARCHAR(6)', TRUE, False, true);
      Atualiza_Integridade_Tabela('C000104', 'NOME', 'VARCHAR(50)', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'CREDIARIO', 'INTEGER DEFAULT 0', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'CHEQUEAV', 'INTEGER DEFAULT 0', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'CHEQUEAP', 'INTEGER DEFAULT 0', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'VERIFICA_LIMITE', 'INTEGER DEFAULT 0', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'VERIFICA_VENCIDOS', 'INTEGER DEFAULT 0', FALSE, False, False);
      Atualiza_Integridade_Tabela('C000104', 'VERIFICA_CADASTRO', 'INTEGER DEFAULT 0', FALSE, False, False);

      //cria indece da tabela de estoque
      criaindice('C000100_IDX1', 'C000100', 'CODPRODUTO');
      //para o vendas novo
      Atualiza_Integridade_Tabela('C000001', 'CONTAS_RECEBER_BLOQUEIO', 'INTEGER', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'VERIFICA_ITEM_DUPLICADO_VENDA', 'INTEGER', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'VERIFICA_CADASTRO_VENDA', 'INTEGER', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'VENDA_LIMITE_CLIENTE', 'INTEGER', False, False, False);

      //CADASTRO NO GLX ONLINo
      Atualiza_Integridade_Tabela('C000001', 'CADGLX_SERVER', 'VARCHAR(20)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'CADGLX_CONTAB', 'VARCHAR(20)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_DUPLICATA_NFE', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_OS_AP', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_OS_AV', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_OUTRAS_ENTRADAS', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_OUTRAS_SAIDAS', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_RECBTO_CREDIARIO', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_VENDA_AP', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'EXT_PLANO_VENDA_AV', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'USA_CAIXA_DIARIO', 'INTEGER', False, False, False);
      //PARA PEDIR A SENHA DO VENDEDOR
      Atualiza_Integridade_Tabela('C000001', 'SENHA_VENDEDOR', 'INTEGER', False, False, False);
      //CAIXA PADRÃO, CLIENTE PADRÃO E TABELA DE PREÇO PADRÃO
      Atualiza_Integridade_Tabela('C000001', 'CAIXA_PADRAO_VENDA', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'CLIENTE_CONSUMIDOR', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000001', 'TABELA_PRECOS_PADRAO', 'VARCHAR(30)', False, False, False);
      //PARA AVISAR OU NÃO QUANDO O ESTOQUE ESTIVER ZERADO OU NEGATIVO
      Atualiza_Integridade_Tabela('C000001', 'AVISO_ESTOQUE_ZERADO', 'INTEGER', False, False, False);
      //PARA MOSTRAR HISTÓRICO NA VENDA
      Atualiza_Integridade_Tabela('C000001', 'MOSTRA_HIST_CLIENTE', 'INTEGER', False, False, False);
      //ESCOLHE O CAIXA OU DEIXA O PADRÃO
      Atualiza_Integridade_Tabela('C000001', 'ESCOLHE_CAIXA_VENDA', 'INTEGER', False, False, False);
      //DIGITOS DA AG. E CONTA DO FORNECEDOR
      Atualiza_Integridade_Tabela('C000009', 'AGENCIA_DIG', 'VARCHAR(1)', False, False, False);
      Atualiza_Integridade_Tabela('C000009', 'CONTA_DIG', 'VARCHAR(1)', False, False, False);
      Atualiza_Integridade_Tabela('C000009', 'DATA_ABERTURA', 'TIMESTAMP', False, False, False);
      Atualiza_Integridade_Tabela('C000007', 'DESCONTO', 'NUMERIC(15,3)', False, False, False);
      //COMPLEMENTO PARA PUXAR DADOS ONLINE DOS FORNECEDORES
      Atualiza_Integridade_Tabela('C000007', 'DATA_ABERTURA', 'DATE', False, False, False);
      //COMISSÃO DE FUNCIONÁRIOS A PRAZO
      Atualiza_Integridade_Tabela('C000008', 'COMISSAO2', 'NUMERIC(15,2)', False, False, False);
      //COMPLEMENTO NO ENDEREÇO DOS LABORATÓRIOS
      Atualiza_Integridade_Tabela('C000019', 'COMPLEMENTO', 'VARCHAR(40)', False, False, False);
      //REF. DE FORNECEDORES E CAMPOS PARA A GUIA VÁRIOS PREÇOS'
      Atualiza_Integridade_Tabela('C000025', 'REFERENCIA_FABRICANTE', 'VARCHAR(30)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'DESCONTO_MAXIMO', 'NUMERIC(15,4)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA_LUCRO', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA_LUCRO_P', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA_INDICE', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA_MARKUP', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA2_LUCRO', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA2_LUCRO_P', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA2_INDICE', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA2_MARKUP', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA3_LUCRO', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA3_LUCRO_P', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA3_INDICE', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA3_MARKUP', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA4_LUCRO', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA4_LUCRO_P', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA4_INDICE', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA4_MARKUP', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA5_LUCRO', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA5_LUCRO_P', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA5_INDICE', 'NUMERIC(15,3)', False, False, False);
      Atualiza_Integridade_Tabela('C000025', 'PRECOVENDA5_MARKUP', 'NUMERIC(15,3)', False, False, False);
      //ENVIOS DE SMS
      Atualiza_Integridade_Tabela('C000034', 'DATA_ENVIO_SMS', 'DATE', False, False, False);
      Atualiza_Integridade_Tabela('C000034', 'ENVIOU_SMS', 'VARCHAR(1)', False, False, False);
      Atualiza_Integridade_Tabela('C000034', 'HORA_ENVIO_SMS', 'DATE', False, False, False);
      //PARA MELHOR CONTROLE NOS CHEQUES
      Atualiza_Integridade_Tabela('C000040', 'AGENCIADIG', 'VARCHAR(1)', False, False, False);
      Atualiza_Integridade_Tabela('C000040', 'CONTADIG', 'VARCHAR(1)', False, False, False);
      //NOVOS BOLETOS BANCARIOS
      Atualiza_Integridade_Tabela('C000041', 'AGENCIADIG', 'VARCHAR(10)', False, False, False); //cad de contas corrente
      Atualiza_Integridade_Tabela('C000041', 'CONTADIG', 'VARCHAR(10)', False, False, False);
      Atualiza_Integridade_Tabela('C000064', 'CONVENIO', 'VARCHAR(20)', False, False, False); //cad de cedentes
      Atualiza_Integridade_Tabela('C000064', 'CNPJ', 'VARCHAR(18)', False, False, False);
      Atualiza_Integridade_Tabela('C000064', 'CODCONTADIG', 'VARCHAR(18)', False, False, False);
      //ROTINA PARA QUE NÃO SEJA MAIS EDITADA A NF NA ENTRADA APOS SUA EFETIVAÇÃO
      Atualiza_Integridade_Tabela('C000087', 'SITUACAO_ENTRADA', 'INTEGER', False, False, False); }

    // PRIMEIRA ATUALIZACAO DE BANCO
    // Para Usar caixa padrao para o usuario autenticado
    Atualiza_Integridade_Tabela('C000001', 'USA_CAIXA_PADRAO_USUARIO',
      'INTEGER', false, false, false);
    Atualiza_Integridade_Tabela('C000001', 'TEXTO_PADRAO_VENDA', 'VARCHAR(200)',
      false, false, false);
    Atualiza_Integridade_Tabela('C000001', 'TEXTO_PADRAO_DEVOLUCAO',
      'VARCHAR(200)', false, false, false);
    Atualiza_Integridade_Tabela('C000001', 'TEXTO_PADRAO_GARANTIA',
      'VARCHAR(200)', false, false, false);
    Atualiza_Integridade_Tabela('C000001', 'VERSAOBD', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000003', 'COD_CAIXA', 'VARCHAR(6)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_VENDA_DENTRO',
      'VARCHAR(6)', false, false, false);
    Atualiza_Integridade_Tabela('C000025', 'CODCONTA', 'VARCHAR(6)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_VENDA_FORA', 'VARCHAR(6)',
      false, false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_DEVOLUCAO_DENTRO',
      'VARCHAR(6)', false, false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_DEVOLUCAO_FORA',
      'VARCHAR(6)', false, false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_GARANTIA_DENTRO',
      'VARCHAR(6)', false, false, false);
    Atualiza_Integridade_Tabela('C000025', 'IND_CFOP_GARANTIA_FORA',
      'VARCHAR(6)', false, false, false);
    Atualiza_Integridade_Tabela('C000032', 'CODFILIAL', 'VARCHAR(6)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000049', 'EMAIL_ENVIADO', 'INTEGER', false,
      false, false);
    Atualiza_Integridade_Tabela('C000061', 'NATUREZA', 'VARCHAR(20)', false,
      false, false);
    // correcao nfe faturamento orcamento e venda
    Atualiza_Integridade_Tabela('C000061', 'HORA', 'VARCHAR(20)', false,
      false, false);
    // atualizacao para config. boletos
    Atualiza_Integridade_Tabela('C000041', 'contadig', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000041', 'agenciadig', 'VARCHAR(20)', false,
      false, false);

    Atualiza_Integridade_Tabela('C000064', 'contadig', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000064', 'codcontadig', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000064', 'agenciadig', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000064', 'convenio', 'VARCHAR(20)', false,
      false, false);
    Atualiza_Integridade_Tabela('C000064', 'CNPJ', 'VARCHAR(25)', false,
      false, false);

    Atualiza_Integridade_Tabela('C000096', 'FINALIZADO', 'INTEGER', false,
      false, false);
    Atualiza_Integridade_Tabela('C000096', 'CODFILIAL', 'VARCHAR(6)', false,
      false, false);
    Atualiza_Integridade_Tabela('C999999', 'EMAIL_FINANCEIRO', 'VARCHAR(200)',
      false, false, false);
    Atualiza_Integridade_Tabela('AGENDA_PERSONALIZADA', 'GROUPID', 'INTEGER',
      false, false, false);

  end;

end;

procedure Tfrmmodulo.timerKeyTimer(Sender: TObject);
var
  ret: Integer;
  status: string;
  sChallenge: string;
  Response: array [0 .. 16] of Char;
  ExpDate, DATAATUAL: string;
  LicenseParam: LicenseParameters;
begin
  // verificar a presenca do key
  // FUNCAO PARA PROTECAO NEOKEY  na Versao 2.0 do ilcoud
  begin
    // LOGIN
    Response := ('xxxxxxxxxxxxxxxx');
    sChallenge := ('ICLOUDINFORMATIC');
{$IFDEF DEBUG}
{$ELSE}
{$ENDIF}
    { ret := NeoKeyCall.Login(sChallenge, @Response);
      if ret <> 0 then
      begin
      application.messagebox(Pchar('ERRO - CHAVE DESCONECTADA OU ' + IntToStr(ret)), 'Atenção', mb_ok + MB_ICONERROR);
      Application.Terminate;
      end;


      //LOGOUT
      ret := NeoKeyCall.Logout();
      if ret <> 0 then
      begin
      FmtStr(status, 'Error:%d ', [ret]);
      end
      else
      begin
      end; }

  end;

end;

end.

