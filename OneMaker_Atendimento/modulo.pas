unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, WINDOWS, graphics, frxClass, frxDBSet, ZStoredProcedure,
  DBAccess, MemDS, ZAbstractConnection, Uni, UniProvider,
  InterBaseUniProvider;

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrMestre: TZQuery;
    qrUsuario: TZQuery;
    qrconfig: TZQuery;
    qrrelatorio: TZQuery;
    ConexaoMestre: TZConnection;
    ConexaoLocal: TZConnection;
    qremitente: TZQuery;
    qrcliente: TZQuery;
    qrfunci: TZQuery;
    qrcondpgto: TZQuery;
    qrcaixa_operador: TZQuery;
    qrcaixa_operadornome: TStringField;
    qrcaixa_mov: TZQuery;
    qrvenda: TZQuery;
    qrproduto_mov: TZQuery;
    qrcontasreceber: TZQuery;
    qrorcamento: TZQuery;
    qrorcamento_produto: TZQuery;
    qrorcamento_receber: TZQuery;
    qrecf_comando: TZQuery;
    qrecf_item: TZQuery;
    Conexao_produto: TZConnection;
    fxemitente: TfrxDBDataset;
    fxrelatorio: TfrxDBDataset;
    spGen_DAV: TZStoredProc;
    qrveiculo: TZQuery;
    qrcliente_veiculo: TZQuery;
    qrservicos_periodicos: TZQuery;
    qrservicos_periodicosservico: TStringField;
    qrservicos_periodicosproxima_manutencao: TDateField;
    qrservicos_periodicostecnico: TStringField;
    qrservicos_periodicoscliente: TStringField;
    qrsetor: TZQuery;
    qrfornecedor: TZQuery;
    qrmarca: TZQuery;
    qrservico: TZQuery;
    qrserial_produto: TZQuery;
    qrproduto: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrcaixa_operadorCODIGO: TWideStringField;
    qrcaixa_operadorCODFUNCIONARIO: TWideStringField;
    qrcaixa_operadorSENHA: TWideStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TWideStringField;
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
    qrcondpgtoCODIGO: TWideStringField;
    qrcondpgtoCONDPGTO: TWideStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrservicoCODIGO: TWideStringField;
    qrservicoSERVICO: TWideStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TWideStringField;
    qrservicoCOMISSAO: TFloatField;
    qrservicoSALARIO_BASE: TFloatField;
    qrfornecedorCODIGO: TWideStringField;
    qrfornecedorNOME: TWideStringField;
    qrfornecedorFANTASIA: TWideStringField;
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
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoCODCAIXA: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoOBS: TWideStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField;
    qrorcamentoRETIRADO: TWideStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qrorcamentoDAV: TWideStringField;
    qrorcamentoSITUACAO: TIntegerField;
    qrorcamentoDAV_ANTERIOR: TWideStringField;
    qrorcamentoATACADO_VAREJO: TSmallintField;
    qrservicos_periodicosID: TIntegerField;
    qrservicos_periodicosCODCLIENTE: TWideStringField;
    qrservicos_periodicosCODSERVICO: TWideStringField;
    qrservicos_periodicosCODTECNICO: TWideStringField;
    qrservicos_periodicosMARCA: TWideStringField;
    qrservicos_periodicosMODELO: TWideStringField;
    qrservicos_periodicosSERIE: TWideStringField;
    qrservicos_periodicosSTATUS: TWideStringField;
    ZFilial: TZQuery;
    XCONEXAO: TUniConnection;
    qros: TUniQuery;
    qroscliente: TStringField;
    qrosatendente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrossetor: TStringField;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    InterBaseUniProvider1: TInterBaseUniProvider;
    qrcaixa_operadorDATA: TDateField;
    qrfornecedorDATA: TDateField;
    qrorcamentoDATA: TDateField;
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
    qrservicos_periodicosPRIMEIRA_MANUTENCAO: TDateField;
    qrservicos_periodicosULTIMA_MANUTENCAO: TDateField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrcliente_veiculoCODIGO: TWideStringField;
    qrcliente_veiculoCODCLIENTE: TWideStringField;
    qrcliente_veiculoVEICULO: TWideStringField;
    qrcliente_veiculoPLACA: TWideStringField;
    qrcliente_veiculoUF: TWideStringField;
    qrcliente_veiculoANO: TWideStringField;
    qrcliente_veiculoCOMBUSTIVEL: TWideStringField;
    qrcliente_veiculoRENAVAM: TWideStringField;
    qrcliente_veiculoDATA: TDateField;
    qrcliente_veiculoOBS1: TWideStringField;
    qrcliente_veiculoOBS2: TWideStringField;
    qrcliente_veiculoOBS3: TWideStringField;
    qrcliente_veiculoCOR: TWideStringField;
    qrcliente_veiculoCHASSI: TWideStringField;
    qrosCODIGO: TStringField;
    qrosDATA: TDateField;
    qrosCODATENDENTE: TStringField;
    qrosTIPO: TStringField;
    qrosCODCLIENTE: TStringField;
    qrosSOLICITANTE: TStringField;
    qrosMARCA: TStringField;
    qrosMODELO: TStringField;
    qrosSERIAL: TStringField;
    qrosATENDIMENTO: TStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_DATA: TDateField;
    qrosDETECTADO_CODTECNICO: TStringField;
    qrosSITUACAO: TStringField;
    qrosCONCLUSAO_DATA: TDateField;
    qrosCONCLUSAO_ENTREGUE: TDateField;
    qrosRETIRADO_POR: TStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TStringField;
    qrosTERCEIRO_CONTATO: TStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosTOTAL: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosCODSETOR: TStringField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosST: TIntegerField;
    qrosCHASSI: TStringField;
    qrosCOR: TStringField;
    qrosCOMBUSTIVEL: TStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TStringField;
    qrosDETECTADO_HORA: TStringField;
    qrosHORA: TStringField;
    qrosINTERVENCOES: TBlobField;
    qrosDAV: TStringField;
    qrosDAV_IMPRESSO: TIntegerField;
    qrosDAV_ATUAL: TStringField;
    qrosCODFUN: TStringField;
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
    qrveiculoCOTA_UNICA_IPVA: TDateField;
    qrveiculoCOTA1_IPVA: TDateField;
    qrveiculoCOTA2_IPVA: TDateField;
    qrveiculoCOTA3_IPVA: TDateField;
    qrveiculoLICENCIAMENTO: TDateField;
    qrveiculoSEGURO_OBRIGATORIO: TDateField;
    qrveiculoCOD_MARCA: TWideStringField;
    qrveiculoCOD_MODELO: TWideStringField;
    qrveiculoSITUACAO: TWideStringField;
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
    ZFilialCODIGO: TWideStringField;
    ZFilialFILIAL: TWideStringField;
    ZFilialNOTAFISCAL: TIntegerField;
    ZFilialENDERECO: TWideStringField;
    ZFilialCIDADE: TWideStringField;
    ZFilialUF: TWideStringField;
    ZFilialCEP: TWideStringField;
    ZFilialTELEFONE: TWideStringField;
    ZFilialCNPJ: TWideStringField;
    ZFilialIE: TWideStringField;
    ZFilialSEQNF: TIntegerField;
    ZFilialFAX: TWideStringField;
    ZFilialOBS1: TWideStringField;
    ZFilialOBS2: TWideStringField;
    ZFilialCONTRIBUINTE_IPI: TWideStringField;
    ZFilialSUBSTITUTO_TRIBUTARIO: TWideStringField;
    ZFilialEMPRESA_ESTADUAL: TWideStringField;
    ZFilialOPTANTE_SIMPLES: TWideStringField;
    ZFilialOPTANTE_SUPER_SIMPLES: TWideStringField;
    ZFilialECF: TWideStringField;
    ZFilialTIPO: TIntegerField;
    ZFilialIPI: TFloatField;
    ZFilialISS: TFloatField;
    ZFilialNUMERO: TWideStringField;
    ZFilialRESPONSAVEL: TWideStringField;
    ZFilialCOMPLEMENTO: TWideStringField;
    ZFilialBAIRRO: TWideStringField;
    ZFilialFARMACIA_RESP_TECNICO: TWideStringField;
    ZFilialFARMACIA_CRF: TWideStringField;
    ZFilialFARMACIA_CPF: TWideStringField;
    ZFilialFARMCIA_DATA: TDateField;
    ZFilialFARMACIA_UF: TWideStringField;
    ZFilialFARMACIA_SENHA: TWideStringField;
    ZFilialFARMACIA_EMAIL: TWideStringField;
    ZFilialFARMACIA_LOGIN: TWideStringField;
    ZFilialFARMACIA_ENVIO: TWideStringField;
    ZFilialCONHECIMENTO: TIntegerField;
    ZFilialINDUSTRIA: TWideStringField;
    ZFilialFARMACIA_NUMEROLICENCA: TWideStringField;
    ZFilialCOD_MUNICIPIO_IBGE: TWideStringField;
    ZFilialIBGE: TWideStringField;
    ZFilialPIS: TFloatField;
    ZFilialCOFINS: TFloatField;
    ZFilialEMAIL: TWideStringField;
    ZFilialATIVIDADE: TWideStringField;
    ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    ZFilialCONTADOR_NOME: TWideStringField;
    ZFilialCONTADOR_CPF: TWideStringField;
    ZFilialCONTADOR_CRC: TWideStringField;
    ZFilialCONTADOR_CNPJ: TWideStringField;
    ZFilialCONTADOR_CEP: TWideStringField;
    ZFilialCONTADOR_ENDERECO: TWideStringField;
    ZFilialCONTADOR_NUMERO: TWideStringField;
    ZFilialCONTADOR_COMPLEMENTO: TWideStringField;
    ZFilialCONTADOR_BAIRRO: TWideStringField;
    ZFilialCONTADOR_FONE: TWideStringField;
    ZFilialCONTADOR_FAX: TWideStringField;
    ZFilialCONTADOR_EMAIL: TWideStringField;
    ZFilialINSC_MUNICIPAL: TWideStringField;
    ZFilialDATA_ABERTURA: TDateField;
    ZFilialCNAE: TWideStringField;
    ZFilialCRT: TWideStringField;
    ZFilialCONTADOR_CIDADE: TWideStringField;
    ZFilialCONTADOR_COD_MUNICIPIO: TWideStringField;
    ZFilialCONTADOR_UF: TWideStringField;
    ZFilialPERMITE_CREDITO: TIntegerField;
    ZFilialFANTASIA: TWideStringField;
    ZFilialDFIXAS: TSingleField;
    ZFilialTIPOCALCULO: TIntegerField;
    ZFilialSERIE_CTE: TWideStringField;
    ZFilialSEQ_CTE: TWideStringField;
    ZFilialCOD_PAIS: TWideStringField;
    ZFilialPAIS: TWideStringField;
    ZFilialHOMEPAGE: TWideStringField;
    procedure qrMestreAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmodulo: Tfrmmodulo;
  RESULTADO_MENSAGEM : STRING;
 copia_origem, copia_destino : string; // variaveis da copia de seguranca
  caminho_fotos_produtos : string; // diretorio onde se encontrarao as imagens dos produtos
  telaprincipal : string; // variavel para mudar a tela principal
  movimento_venda : integer; // variavel para verificar se a venda estah sendo incluida ou alterada
  mascara_valor, mascara_qtde : string;
  decimal_valor, decimal_qtde : integer;

  CD_CLI, CD_FOR, CD_PRO, CD_MAR, CD_GRU, CD_SUB : string;


  senha_vendedor : string;

  registro_terminal : string;


  impressora_venda : string;
  impressora_os : string;

  ecf_modelo : string;
  ecf_porta  : string;

  arredonda : boolean;


  ramo, int_retorno : integer;

  emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone : string;

  ESTOQUE_NEGATIVO : BOOLEAN;

  nxcupom : string;
  nivel_usuario : integer;
  codigo_usuario : string;
  produto_loc, PRODUTO_LOC_NOME : STRING;

  parametro_pesquisa,
  resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3,
  resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6,
  resultado_pesquisa7, resultado_pesquisa8 : string;
  SERVIDOR_ECF : STRING;
  aumento_prazo : REAL;
  desconto_produto, desconto_venda : real;
    aliquota_ecf : array[0..30] of string;
  ABRE_ORCAMENTO : BOOLEAN;
  ALTERAR_PRECO : STRING;
  forma_pdv : string;
  ecf_bematech_yanco : string;

  iPermite_dav_a4 : integer;

    verifica_prestacao_atrazo,ecf_cupom_vinculado_carne, ecf_cupom_vinculado : string;

 limite_disponivel : real;

 tipo_venda_avista : string;
 cod_produto : string;

 sDav_Atual : string;
 sDav_Anterior : string;

implementation

uses principal;

{$R *.dfm}

procedure Tfrmmodulo.qrMestreAfterPost(DataSet: TDataSet);
begin
  conexaomestre.Commit;
  qrMestre.Refresh;
end;

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var txt : textfile;
entrada : string;
ARQUIVO:STRING;

begin

  tipo_venda_avista := '1';
  conexao.connected       := false;
  conexaomestre.Connected := false;
  conexaolocal.Connected  := false;
  conexao_produto.Connected := false;
  assignfile(txt,'c:\OneMaker\server\ini\com.ini');

  senha_vendedor := '0';

  reset(txt);
  forma_pdv := '0';
  while not eof(txt) do
  begin
    readln(txt,entrada);

    // conectando banco de dados
      if copy(entrada,1,7) = '999-001' then conexao.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = '999-002' then conexao.hostname := trim(copy(entrada,9,50));
     // banco de dados mestre
      if copy(entrada,1,7) = '999-001' then conexaomestre.database := trim(copy(entrada,9,50));
      if copy(entrada,1,7) = '999-002' then conexaomestre.hostname := trim(copy(entrada,9,50));
//      frmprincipal.lempresa1.Font.Color := clyellow;

    if copy(entrada,1,7) = '999-002' then
    begin
      if trim(copy(entrada,9,1)) = '' then
        frmprincipal.caption := ' OneMaker - Atendimento   [ Servidor Local ]'
      else
        frmprincipal.caption := ' OneMaker - Atendimento   [ Servidor: '+trim(copy(entrada,9,50))+' ]';
    end;
    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));
    // fotos dos produtos



    if COPY(ENTRADA,1,7) = 'sis-ven' THEN alterar_preco := trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ver_deb' THEN verifica_prestacao_atrazo :=  trim(copy(entrada,9,1));

    if COPY(ENTRADA,1,7) = 'ven-avi' THEN tipo_venda_avista := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'pdv-sen' THEN senha_vendedor := trim(copy(entrada,9,1));

  end;

      conexao.Connected       := true;
      conexaomestre.Connected := true;
      conexao_produto.HostName := conexao.HostName;
      conexao_produto.Database := conexao.Database;
      conexao_produto.Connected := true;

      XCONEXAO.Connected := FALSE;
      XCONEXAO.Server := Conexao.HostName;
      XCONEXAO.Database := Conexao.Database;
      XCONEXAO.Open;

      conexaolocal.Connected  := true;
    qrconfig.open;
    ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
    ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;
    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;

    aumento_prazo := QRCONFIG.FIELDBYNAME('DESCONTO_AVISTA').ASFLOAT;



    iPermite_Dav_A4 := 1;


        qremitente.open;
        emitente_nome     := qremitente.fieldbyname('nome').asstring;
        emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
        emitente_endereco := qremitente.fieldbyname('endereco').asstring+' - '+qremitente.fieldbyname('bairro').asstring;
        emitente_cidade   := qremitente.fieldbyname('cidade').asstring+'/'+qremitente.fieldbyname('uf').asstring;
        emitente_cep      := qremitente.fieldbyname('cep').asstring;
        emitente_telefone := qremitente.fieldbyname('telefone').asstring;
        emitente_cnpj     := qremitente.fieldbyname('cnpj').asstring;
        parametro_pesquisa := '';


    ramo := qrconfig.fieldbyname('ramo_atividade').asinteger;


    impressora_venda := qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;



    CASE qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER OF
    0 : begin
          mascara_qtde := '###,###,##0';
          decimal_qtde := 0;
        end;
    2 : BEGIN
          mascara_qtde := '###,###,##0.00';
          decimal_qtde := 2;
        end;
    3 : BEGIN
          mascara_qtde := '###,###,##0.000';
          decimal_qtde := 3;
        end;
    end;
    CASE qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER OF
    2 : BEGIN
          mascara_valor := '###,###,##0.00';
          decimal_valor := 2;
      END;
    3 : BEGIN
          mascara_valor := '###,###,##0.000';
          decimal_valor := 3;
        END;
    end;

    desconto_produto := qrconfig.fieldbyname('desconto_produto').asfloat;
    desconto_venda := qrconfig.fieldbyname('desconto_totalnota').asfloat;



end;

end.
