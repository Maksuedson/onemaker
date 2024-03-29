
unit modulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, MemDS, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  IniFiles,
  ACBrBase, ACBrBAL, AdvMenus,
  AdvMenuStylers, ACBrValidador, VirtualTable, DBClient, Uni,
  UniProvider, InterBaseUniProvider, ACBrDFe, ACBrNFe, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrEAD, ZAbstractRODataset,
  ZAbstractDataset,pcnConversao, ZDataset, pcnNFeW, pcnNFeRTXT, pcnAuxiliar;

type
  TfrmModulo = class(TDataModule)
    Balanca: TACBrBAL;
    estilo_menu: TAdvMenuOfficeStyler;
    docValidador: TACBrValidador;
    tbForma_Pgto: TVirtualTable;
    tbForma_PgtoNome: TStringField;
    tbForma_PgtoValor_Acumulado: TFloatField;
    tbForma_PgtoValor_Ultimo_Cupom: TFloatField;
    tbForma_Pgtoid: TIntegerField;
    tbAliquota: TVirtualTable;
    tbAliquotaCodigo: TStringField;
    tbAliquotaAliquota: TFloatField;
    Dlg_arquivo: TOpenDialog;
    cdsComandas1: TClientDataSet;
    DataSource1: TDataSource;
    cdsComandas1ID_COMANDA: TStringField;
    cdsComandas1EVENTO: TStringField;
    conexao: TUniConnection;
    query_servidor2: TUniQuery;
    qrtransportador: TUniQuery;
    qrfilial: TUniQuery;
    qrlancamento_conta: TUniQuery;
    qrcaixa_operador: TUniQuery;
    qrconfig: TUniQuery;
    qrcaixa_mov: TUniQuery;
    qrcontacorrente: TUniQuery;
    qrbanco: TUniQuery;
    qrproduto: TUniQuery;
    qrfornecedor: TUniQuery;
    qrproduto_mov: TUniQuery;
    Qremitente: TUniQuery;
    qrgrade_produto: TUniQuery;
    qrfiscal_modelo: TUniQuery;
    qrcfop: TUniQuery;
    qrgrupo: TUniQuery;
    qrmarca: TUniQuery;
    qrsubgrupo: TUniQuery;
    qrcontasreceber: TUniQuery;
    qrtotalizador: TUniQuery;
    query_servidor: TUniQuery;
    qrMestre: TUniQuery;
    qrcliente: TUniQuery;
    query: TUniQuery;
    InterBaseUniProvider1: TInterBaseUniProvider;
    spCupom_Crediario: TUniStoredProc;
    spCupom: TUniStoredProc;
    spCodigo_Global: TUniStoredProc;
    spCupom_Consumidor: TUniStoredProc;
    spCupom_Forma: TUniStoredProc;
    spCupom_Item_Temp: TUniStoredProc;
    spCupom_Item: TUniStoredProc;
    st_bico_movimento: TUniStoredProc;
    St_Abastecimento_codigo: TUniStoredProc;
    St_Abastecimento: TUniStoredProc;
    spDAV: TUniStoredProc;
    spCupom_Temp: TUniStoredProc;
    spDav_Codigo: TUniStoredProc;
    spCupom_Temp_Edit: TUniStoredProc;
    spCupom_Temp_delete: TUniStoredProc;
    spReducaoZ: TUniStoredProc;
    spNao_Fiscal: TUniStoredProc;
    spReducaoZ_Total_Parcial: TUniStoredProc;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TStringField;
    qrproduto_movECF_CAIXA: TStringField;
    qrproduto_movCODALIQUOTA: TStringField;
    qrproduto_movCUPOM_NUMERO: TStringField;
    qrproduto_movCUPOM_MODELO: TStringField;
    qrproduto_movCUPOM_ITEM: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    qrproduto_movLOTE_FABRICACAO: TStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateTimeField;
    qrproduto_movCODBARRA: TStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TStringField;
    qrproduto_movCODSUBGRUPO: TStringField;
    qrproduto_movTIPO: TStringField;
    qrproduto_movCODUSUARIO: TStringField;
    qrproduto_movORIGEM: TStringField;
    qrproduto_movDESTINO: TStringField;
    qrproduto_movPRODUTO: TStringField;
    qrproduto_movCODFILIAL: TStringField;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedorNUMERO: TStringField;
    qrfornecedorIM: TStringField;
    qrfornecedorREP_NOME: TStringField;
    qrfornecedorREP_TELEFONE: TStringField;
    qrfornecedorREP_ENDERECO: TStringField;
    qrfornecedorREP_BAIRRO: TStringField;
    qrfornecedorREP_COMPLEMENTO: TStringField;
    qrfornecedorREP_CIDADE: TStringField;
    qrfornecedorREP_UF: TStringField;
    qrfornecedorREP_CEP: TStringField;
    qrfornecedorREP_TELEFONE1: TStringField;
    qrfornecedorREP_TELEFONE2: TStringField;
    qrfornecedorREP_TELEFONE3: TStringField;
    qrfornecedorREP_FAX: TStringField;
    qrfornecedorREP_CNPJ: TStringField;
    qrfornecedorREP_IE: TStringField;
    qrfornecedorREP_HOME_PAGE: TStringField;
    qrfornecedorREP_EMAIL: TStringField;
    qrfornecedorCNAE: TStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TStringField;
    qrfornecedorIBGE: TStringField;
    qrfilialCODIGO: TStringField;
    qrfilialFILIAL: TStringField;
    qrfilialNOTAFISCAL: TIntegerField;
    qrfilialENDERECO: TStringField;
    qrfilialCIDADE: TStringField;
    qrfilialUF: TStringField;
    qrfilialCEP: TStringField;
    qrfilialTELEFONE: TStringField;
    qrfilialCNPJ: TStringField;
    qrfilialIE: TStringField;
    qrfilialSEQNF: TIntegerField;
    qrfilialFAX: TStringField;
    qrfilialOBS1: TStringField;
    qrfilialOBS2: TStringField;
    qrfilialCONTRIBUINTE_IPI: TStringField;
    qrfilialSUBSTITUTO_TRIBUTARIO: TStringField;
    qrfilialEMPRESA_ESTADUAL: TStringField;
    qrfilialOPTANTE_SIMPLES: TStringField;
    qrfilialOPTANTE_SUPER_SIMPLES: TStringField;
    qrfilialECF: TStringField;
    qrfilialTIPO: TIntegerField;
    qrfilialIPI: TFloatField;
    qrfilialISS: TFloatField;
    qrfilialNUMERO: TStringField;
    qrfilialRESPONSAVEL: TStringField;
    qrfilialCOMPLEMENTO: TStringField;
    qrfilialBAIRRO: TStringField;
    qrfilialFARMACIA_RESP_TECNICO: TStringField;
    qrfilialFARMACIA_CRF: TStringField;
    qrfilialFARMACIA_CPF: TStringField;
    qrfilialFARMCIA_DATA: TDateTimeField;
    qrfilialFARMACIA_UF: TStringField;
    qrfilialFARMACIA_SENHA: TStringField;
    qrfilialFARMACIA_EMAIL: TStringField;
    qrfilialFARMACIA_LOGIN: TStringField;
    qrfilialFARMACIA_ENVIO: TStringField;
    qrfilialCONHECIMENTO: TIntegerField;
    qrfilialINDUSTRIA: TStringField;
    qrfilialFARMACIA_NUMEROLICENCA: TStringField;
    qrfilialCOD_MUNICIPIO_IBGE: TStringField;
    qrfilialIBGE: TStringField;
    qrfilialPIS: TFloatField;
    qrfilialCOFINS: TFloatField;
    qrfilialEMAIL: TStringField;
    qrfilialATIVIDADE: TStringField;
    qrfilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrfilialCONTADOR_NOME: TStringField;
    qrfilialCONTADOR_CPF: TStringField;
    qrfilialCONTADOR_CRC: TStringField;
    qrfilialCONTADOR_CNPJ: TStringField;
    qrfilialCONTADOR_CEP: TStringField;
    qrfilialCONTADOR_ENDERECO: TStringField;
    qrfilialCONTADOR_NUMERO: TStringField;
    qrfilialCONTADOR_COMPLEMENTO: TStringField;
    qrfilialCONTADOR_BAIRRO: TStringField;
    qrfilialCONTADOR_FONE: TStringField;
    qrfilialCONTADOR_FAX: TStringField;
    qrfilialCONTADOR_EMAIL: TStringField;
    qrfilialINSC_MUNICIPAL: TStringField;
    qrfilialDATA_ABERTURA: TDateTimeField;
    qrfilialCNAE: TStringField;
    qrfilialCRT: TStringField;
    qrfilialCONTADOR_CIDADE: TStringField;
    qrfilialCONTADOR_COD_MUNICIPIO: TStringField;
    qrfilialCONTADOR_UF: TStringField;
    qrfilialPERMITE_CREDITO: TIntegerField;
    qrfilialFANTASIA: TStringField;
    qrfilialDFIXAS: TFloatField;
    qrfilialTIPOCALCULO: TIntegerField;
    qrfilialSERIE_CTE: TStringField;
    qrfilialSEQ_CTE: TStringField;
    qrfilialCOD_PAIS: TStringField;
    qrfilialPAIS: TStringField;
    qrtransportadorCODIGO: TStringField;
    qrtransportadorNOME: TStringField;
    qrtransportadorENDERECO: TStringField;
    qrtransportadorBAIRRO: TStringField;
    qrtransportadorCIDADE: TStringField;
    qrtransportadorUF: TStringField;
    qrtransportadorCEP: TStringField;
    qrtransportadorCPF: TStringField;
    qrtransportadorRG: TStringField;
    qrtransportadorTELEFONE: TStringField;
    qrtransportadorCELULAR: TStringField;
    qrtransportadorPLACA: TStringField;
    qrtransportadorUFPLACA: TStringField;
    qrtransportadorOBS1: TStringField;
    qrtransportadorOBS2: TStringField;
    qrtransportadorOBS3: TStringField;
    qrtransportadorDATA: TDateTimeField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TStringField;
    qrtransportadorIBGE: TStringField;
    qrtransportadorANTT: TStringField;
    qrlancamento_contaCODIGO: TStringField;
    qrlancamento_contaCODCONTACORRENTE: TStringField;
    qrlancamento_contaDATA: TDateTimeField;
    qrlancamento_contaHISTORICO: TStringField;
    qrlancamento_contaCODCONTA: TStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TStringField;
    qrlancamento_contaDOCUMENTO: TStringField;
    qrcaixa_operadorCODIGO: TStringField;
    qrcaixa_operadorCODFUNCIONARIO: TStringField;
    qrcaixa_operadorSENHA: TStringField;
    qrcaixa_operadorDATA: TDateTimeField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_operadorSITUACAO_ATUAL: TStringField;
    qrbancoNUMERO: TStringField;
    qrbancoBANCO: TStringField;
    qrbancoLOGO: TBlobField;
    qrbancoCARTAO_CREDITO: TIntegerField;
    qrbancoFINANCEIRA: TIntegerField;
    qrbancoRESSARCIMENTO: TIntegerField;
    qrbancoPRAZO: TIntegerField;
    qrbancoCOMISSAO_CREDITO: TFloatField;
    qrbancoCOMISSAO_DEBITO: TFloatField;
    qrbancoREC_DEBITO: TIntegerField;
    qrbancoREC_CREDITO: TIntegerField;
    qrbancoCONTA_PADRAO: TStringField;
    qrbancoTITULAR_CONTA_PADRAO: TStringField;
    QremitenteCODIGO: TStringField;
    QremitenteNOME: TStringField;
    QremitenteFANTASIA: TStringField;
    QremitenteENDERECO: TStringField;
    QremitenteBAIRRO: TStringField;
    QremitenteCIDADE: TStringField;
    QremitenteUF: TStringField;
    QremitenteCEP: TStringField;
    QremitenteTELEFONE: TStringField;
    QremitenteCNPJ: TStringField;
    QremitenteIE: TStringField;
    QremitenteEMAIL: TStringField;
    QremitenteHOMEPAGE: TStringField;
    QremitenteRESPONSAVEL: TStringField;
    QremitenteCELULAR: TStringField;
    QremitenteLOGO: TBlobField;
    QremitenteFAX: TStringField;
    QremitenteNUMERO: TStringField;
    QremitenteCOMPLEMENTO: TStringField;
    QremitenteCONTRIBUINTE_IPI: TStringField;
    QremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    QremitenteCOMENTARIOS: TStringField;
    QremitenteDATAHORA_INICIAL: TDateTimeField;
    QremitenteDATAHORA_FINAL: TDateTimeField;
    QremitenteDATA_INVENTARIO: TDateTimeField;
    QremitenteESTOQUE: TFloatField;
    QremitenteVALOR: TFloatField;
    QremitenteCONHECIMENTO: TIntegerField;
    QremitenteCPF: TStringField;
    QremitenteRG: TStringField;
    QremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    QremitenteINSC_MUNICIPAL: TStringField;
    QremitenteDATA_ABERTURA: TDateTimeField;
    QremitenteCOD_MUNICIPIO_IBGE: TStringField;
    QremitenteIBGE: TStringField;
    QremitenteEMAIL_FINANCEIRO: TStringField;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TStringField;
    qrprodutoCOR: TStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TStringField;
    qrprodutoVEIC_CHASSI: TStringField;
    qrprodutoVEIC_SERIE: TStringField;
    qrprodutoVEIC_POTENCIA: TStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TStringField;
    qrprodutoVEIC_PESO_BRUTO: TStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TStringField;
    qrprodutoVEIC_RENAVAM: TStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TStringField;
    qrprodutoVEIC_TIPO_PINTURA: TStringField;
    qrprodutoVEIC_COD_COR: TStringField;
    qrprodutoVEIC_COR: TStringField;
    qrprodutoVEIC_VIN: TStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TStringField;
    qrprodutoVEIC_CMKG: TStringField;
    qrprodutoVEIC_CM3: TStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TStringField;
    qrprodutoVEIC_COD_MARCA: TStringField;
    qrprodutoVEIC_ESPECIE: TStringField;
    qrprodutoVEIC_CONDICAO: TStringField;
    qrprodutoLOTE_FABRICACAO: TStringField;
    qrprodutoLOTE_VALIDADE: TDateTimeField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TStringField;
    qrprodutoFARMACIA_DCB: TStringField;
    qrprodutoFARMACIA_ABCFARMA: TStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TStringField;
    qrprodutoULTIMA_COMPRA: TDateTimeField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrprodutoFARMACIA_TIPO: TStringField;
    qrprodutoUSA_COMBUSTIVEL: TStringField;
    qrprodutoREFERENCIA: TStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TStringField;
    qrprodutoCOMPOSICAO2: TStringField;
    qrprodutoIAT: TStringField;
    qrprodutoIPPT: TStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TStringField;
    qrprodutoFLAG_SIS: TStringField;
    qrprodutoFLAG_ACEITO: TStringField;
    qrprodutoFLAG_EST: TStringField;
    qrprodutoCSOSN: TStringField;
    qrprodutoCODORIGINAL: TStringField;
    qrprodutoCUSTO_ATACADO: TFloatField;
    qrprodutoUNIDADE_ATACADO: TStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TFloatField;
    qrprodutoPMARGEM1: TFloatField;
    qrprodutoPMARGEM2: TFloatField;
    qrprodutoPMARGEM3: TFloatField;
    qrprodutoPMARGEM4: TFloatField;
    qrprodutoPMARGEM5: TFloatField;
    qrprodutoPMARGEMATACADO1: TFloatField;
    qrprodutoPMARGEMATACADO2: TFloatField;
    qrprodutoPMARGEMATACADO3: TFloatField;
    qrprodutoPMARGEMATACADO4: TFloatField;
    qrprodutoPMARGEMATACADO5: TFloatField;
    qrprodutoPMARGEMATACADO6: TFloatField;
    qrprodutoPRECOATACADO1: TFloatField;
    qrprodutoPRECOATACADO2: TFloatField;
    qrprodutoPRECOATACADO3: TFloatField;
    qrprodutoPRECOATACADO4: TFloatField;
    qrprodutoPRECOATACADO5: TFloatField;
    qrprodutoIND_CFOP: TStringField;
    qrprodutoCFOP_DESC: TStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TStringField;
    qrprodutoCODCONTA: TStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TStringField;
    qrprodutoUSA_TB_PC: TStringField;
    qrsubgrupoCODIGO: TStringField;
    qrsubgrupoCODGRUPO: TStringField;
    qrsubgrupoSUBGRUPO: TStringField;
    qrsubgrupoALTERA_PRECO_ABCFARMA: TStringField;
    qrsubgrupoCOMISSAO: TFloatField;
    qrsubgrupoDESCONTO: TFloatField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TStringField;
    qrconfigCODIGO: TStringField;
    qrconfigULTIMO_BACKUP: TDateTimeField;
    qrconfigPAPEL_PAREDE: TStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TStringField;
    qrconfigECF_PORTA: TStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TStringField;
    qrconfigBALANCAPDV_MODELO: TStringField;
    qrconfigBALANCAPDV_PORTA: TStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TStringField;
    qrconfigBALANCA_MODELO: TStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TStringField;
    qrconfigBALANCA_CAMINHO: TStringField;
    qrconfigCADASTRO_PRODUTO: TStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TStringField;
    qrconfigBOLETO_FORMAPGTO: TStringField;
    qrconfigPLANO_VENDA_AV: TStringField;
    qrconfigPLANO_VENDA_AP: TStringField;
    qrconfigPLANO_OS_AV: TStringField;
    qrconfigPLANO_OS_AP: TStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TStringField;
    qrconfigECF_SERIAL: TStringField;
    qrconfigFARMACIA_ENVIO: TStringField;
    qrconfigFARMACIA_RESPOSTA: TStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TStringField;
    qrconfigFARMACIA_LOGIN: TStringField;
    qrconfigFARMACIA_SENHA: TStringField;
    qrconfigULTIMA_CARGA: TDateTimeField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TStringField;
    qrconfigBALANCA_PROGRAMA: TStringField;
    qrconfigTIPO_DUPLICATA: TStringField;
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
    qrconfigVS_CLIENTE_VISTA: TStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TStringField;
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
    qrconfigEMAIL_SERVIDOR_SMTP: TStringField;
    qrconfigEMAIL_PORTA: TStringField;
    qrconfigEMAIL_USUARIO: TStringField;
    qrconfigEMAIL_SENHA: TStringField;
    qrconfigEMAIL_ASSUNTO: TStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TStringField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateTimeField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TStringField;
    qrconfigIND_CFOP_ENTRADA: TStringField;
    qrconfigIND_CLIE_SAIDA: TStringField;
    qrconfigIND_CFOP_SAIDA: TStringField;
    qrconfigIND_CLIE_PERDA: TStringField;
    qrconfigIND_CFOP_PERDA: TStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TStringField;
    qrconfigLOGO_COMERCIO: TStringField;
    qrconfigCOR_FARMACIA: TStringField;
    qrconfigLOGO_FARMACIA: TStringField;
    qrconfigCOR_PECAS: TStringField;
    qrconfigLOGO_PECAS: TStringField;
    qrconfigCOR_MERCADO: TStringField;
    qrconfigLOGO_MERCADO: TStringField;
    qrconfigCOR_POSTO: TStringField;
    qrconfigLOGO_POSTO: TStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TStringField;
    qrconfigIND_CLIE_PERDA_DESC: TStringField;
    qrconfigIND_CFOP_PERDA_DESC: TStringField;
    qrconfigIND_CFOP_VENDA_DENTRO: TStringField;
    qrconfigIND_CFOP_VENDA_FORA: TStringField;
    qrconfigIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qrconfigIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qrconfigIND_CFOP_SERVICO_DENTRO: TStringField;
    qrconfigIND_CFOP_SERVICO_FORA: TStringField;
    qrconfigCFOP_VENDA_DENTRO_DESC: TStringField;
    qrconfigCFOP_VENDA_FORA_DESC: TStringField;
    qrconfigCFOP_DEVOLUCAO_DENTRO_DESC: TStringField;
    qrconfigCFOP_DEVOLUCAO_FORA_DESC: TStringField;
    qrconfigCFOP_SERVICO_DENTRO_DESC: TStringField;
    qrconfigCFOP_SERVICO_FORA_DESC: TStringField;
    qrconfigTIPO_NF: TIntegerField;
    qrconfigCOR_ESTOQUE_POSITIVO: TStringField;
    qrconfigCOR_ESTOQUE_NEGATIVO: TStringField;
    qrconfigCOR_ESTOQUE_ZERADO: TStringField;
    qrconfigTIPO_PESQUISA: TIntegerField;
    qrconfigECF_CONCOMITANTE: TIntegerField;
    qrconfigPLANO_PAGTO_FORN: TStringField;
    qrconfigHAB_PREVENDA: TIntegerField;
    qrconfigCODCLIENTEAV: TStringField;
    qrconfigCODCLIENTEMODELO: TStringField;
    qrconfigCODPRODUTOMODELO: TStringField;
    qrconfigCODFORNECEDORMODELO: TStringField;
    qrconfigUSA_CAIXA_DIARIO: TIntegerField;
    qrconfigIMPRIMI_ORCAMENTO_AUTO: TIntegerField;
    qrconfigFIXA_FORMA_PGTO_CLIENTE: TIntegerField;
    qrconfigVERSAOBD: TStringField;
    qrconfigUSA_CAIXA_PADRAO_USUARIO: TIntegerField;
    qrconfigTEXTO_PADRAO_VENDA: TStringField;
    qrconfigTEXTO_PADRAO_DEVOLUCAO: TStringField;
    qrconfigTEXTO_PADRAO_GARANTIA: TStringField;
    qrconfigAVISA_ESTOQUE_MINIMO: TIntegerField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrcontacorrenteCONTADIG: TStringField;
    qrcontacorrenteAGENCIADIG: TStringField;
    qrcontacorrenteCODCEDENTE: TStringField;
    qrcontacorrenteFISICAJURIDICA: TStringField;
    qrcontacorrenteINSTRUCOES1: TStringField;
    qrcontacorrenteINSTRUCOES2: TStringField;
    qrcontacorrenteINSTRUCOES3: TStringField;
    qrcontacorrenteCPFCNPJ: TStringField;
    qrcontacorrenteNOSSONUM: TStringField;
    qrcontacorrenteTIPO: TIntegerField;
    qrcontacorrenteLAYOUT: TIntegerField;
    qrcontacorrenteCARTEIRA: TStringField;
    qrcfopCFOP: TStringField;
    qrcfopNATUREZA: TStringField;
    qrcfopTIPO: TIntegerField;
    qrcfopICMS: TFloatField;
    qrcfopISS: TFloatField;
    qrcfopOBS1: TStringField;
    qrcfopOBS2: TStringField;
    qrcfopOBS3: TStringField;
    qrcfopOBS4: TStringField;
    qrcfopFILTRO: TIntegerField;
    qrcfopVALOR1: TFloatField;
    qrcfopVALOR2: TFloatField;
    qrcfopVALOR3: TFloatField;
    qrcfopVALOR4: TFloatField;
    qrcfopVALOR5: TFloatField;
    qrcfopVALOR6: TFloatField;
    qrcfopVALOR7: TFloatField;
    qrcfopVALOR8: TFloatField;
    qrcfopVALOR9: TFloatField;
    qrcfopVALOR10: TFloatField;
    qrcfopST: TStringField;
    qrcfopCLASSIFICACAO_FISCAL: TStringField;
    qrcfopREDUCAO_ICMS: TFloatField;
    qrcfopMARGEM_AGREGADA: TFloatField;
    qrcfopSIMPLIFICADO: TStringField;
    qrcfopCAIXA: TIntegerField;
    qrcfopFATURAMENTO: TIntegerField;
    qrcaixa_movCODIGO: TStringField;
    qrcaixa_movCODCAIXA: TStringField;
    qrcaixa_movCODOPERADOR: TStringField;
    qrcaixa_movDATA: TDateTimeField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movCODCONTA: TStringField;
    qrcaixa_movHISTORICO: TStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movCODNFSAIDA: TStringField;
    qrmarcaCODIGO: TStringField;
    qrmarcaNOME: TStringField;
    qrmarcaENDERECO: TStringField;
    qrmarcaBAIRRO: TStringField;
    qrmarcaCIDADE: TStringField;
    qrmarcaUF: TStringField;
    qrmarcaCEP: TStringField;
    qrmarcaTELEFONE1: TStringField;
    qrmarcaTELEFONE2: TStringField;
    qrmarcaFAX: TStringField;
    qrmarcaCONTATO1: TStringField;
    qrmarcaCONTATO2: TStringField;
    qrmarcaCELULAR1: TStringField;
    qrmarcaCELULAR2: TStringField;
    qrmarcaEMAIL: TStringField;
    qrmarcaHOMEPAGE: TStringField;
    qrmarcaCNPJ: TStringField;
    qrmarcaIE: TStringField;
    qrmarcaDATA: TDateTimeField;
    qrmarcaCOMISSAO: TFloatField;
    qrmarcaNUMERO: TStringField;
    qrgrupoCODIGO: TStringField;
    qrgrupoGRUPO: TStringField;
    qrgrupoALTERA_PRECO_ABCFARMA: TStringField;
    qrgrupoCOMISSAO: TFloatField;
    qrgrupoDESCONTO: TFloatField;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteCPF: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrclienteCODREGIAO: TStringField;
    qrclienteCODCONVENIO: TStringField;
    qrclienteCODUSUARIO: TStringField;
    qrclienteNUMERO: TStringField;
    qrclienteRG_ORGAO: TStringField;
    qrclienteRG_ESTADO: TStringField;
    qrclienteRG_EMISSAO: TDateTimeField;
    qrclienteSEXO: TStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateTimeField;
    qrclienteCNAE: TStringField;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrclienteIBGE: TStringField;
    qrclienteTAMANHO_CALCA: TStringField;
    qrclienteTAMANHO_BLUSA: TStringField;
    qrclienteTAMANHO_SAPATO: TStringField;
    qrclienteCORRESP_ENDERECO: TStringField;
    qrclienteCORRESP_BAIRRO: TStringField;
    qrclienteCORRESP_CIDADE: TStringField;
    qrclienteCORRESP_UF: TStringField;
    qrclienteCORRESP_CEP: TStringField;
    qrclienteCORRESP_COMPLEMENTO: TStringField;
    qrclienteRG_PRODUTOR: TStringField;
    qrclienteRESP1_NOME: TStringField;
    qrclienteRESP1_CPF: TStringField;
    qrclienteRESP1_RG: TStringField;
    qrclienteRESP1_PROFISSAO: TStringField;
    qrclienteRESP1_ESTADO_CIVIL: TStringField;
    qrclienteRESP1_ENDERECO: TStringField;
    qrclienteRESP1_BAIRRO: TStringField;
    qrclienteRESP1_CIDADE: TStringField;
    qrclienteRESP1_UF: TStringField;
    qrclienteRESP1_CEP: TStringField;
    qrclienteRESP2_NOME: TStringField;
    qrclienteRESP2_CPF: TStringField;
    qrclienteRESP2_RG: TStringField;
    qrclienteRESP2_PROFISSAO: TStringField;
    qrclienteRESP2_ESTADO_CIVIL: TStringField;
    qrclienteRESP2_ENDERECO: TStringField;
    qrclienteRESP2_BAIRRO: TStringField;
    qrclienteRESP2_CIDADE: TStringField;
    qrclienteRESP2_UF: TStringField;
    qrclienteRESP2_CEP: TStringField;
    qrclienteFOTO: TStringField;
    qrclienteCONDPGTO: TStringField;
    qrfiscal_modeloCODIGO: TStringField;
    qrfiscal_modeloMODELO: TStringField;
    qrfiscal_modeloSIGLA: TStringField;
    qrfiscal_modeloSINTEGRA: TStringField;
    qrfiscal_modeloTIPO_REGISTRO: TStringField;
    qrfiscal_modeloSEQUENCIANF: TIntegerField;
    qrgrade_produtoCODIGO: TStringField;
    qrgrade_produtoCODNOTA: TStringField;
    qrgrade_produtoCODPRODUTO: TStringField;
    qrgrade_produtoUNITARIO: TFloatField;
    qrgrade_produtoTOTAL: TFloatField;
    qrgrade_produtoICMS: TFloatField;
    qrgrade_produtoIPI: TFloatField;
    qrgrade_produtoCFOP: TStringField;
    qrgrade_produtoDATA: TDateTimeField;
    qrgrade_produtoNUMERONOTA: TStringField;
    qrgrade_produtoCODCLIENTE: TStringField;
    qrgrade_produtoDESCONTO: TFloatField;
    qrgrade_produtoACRESCIMO: TFloatField;
    qrgrade_produtoMOVIMENTO: TIntegerField;
    qrgrade_produtoCODVENDEDOR: TStringField;
    qrgrade_produtoCODGRADE: TStringField;
    qrgrade_produtoSERIAL: TStringField;
    qrgrade_produtoUNIDADE: TStringField;
    qrgrade_produtoQTDE: TFloatField;
    qrgrade_produtoVALOR_ICMS: TFloatField;
    qrgrade_produtoICMS_REDUZIDO: TFloatField;
    qrgrade_produtoBASE_CALCULO: TFloatField;
    qrgrade_produtoVALOR_IPI: TFloatField;
    qrgrade_produtoSITUACAO: TIntegerField;
    qrgrade_produtoECF_SERIE: TStringField;
    qrgrade_produtoECF_CAIXA: TStringField;
    qrgrade_produtoCODALIQUOTA: TStringField;
    qrgrade_produtoCUPOM_NUMERO: TStringField;
    qrgrade_produtoCUPOM_MODELO: TStringField;
    qrgrade_produtoCUPOM_ITEM: TStringField;
    qrgrade_produtoALIQUOTA: TFloatField;
    qrgrade_produtoCST: TStringField;
    qrgrade_produtoLOTE_FABRICACAO: TStringField;
    qrgrade_produtoMOVIMENTO_ESTOQUE: TFloatField;
    qrgrade_produtoLANCADO: TIntegerField;
    qrgrade_produtoVENCIMENTO: TDateTimeField;
    qrgrade_produtoCODBARRA: TStringField;
    qrgrade_produtoMARGEM_DESCONTO: TFloatField;
    qrgrade_produtoCREDITO_ICMS: TFloatField;
    qrgrade_produtoPIS: TFloatField;
    qrgrade_produtoCOFINS: TFloatField;
    qrgrade_produtoLOJA: TStringField;
    qrgrade_produtoCODSUBGRUPO: TStringField;
    qrgrade_produtoTIPO: TStringField;
    qrgrade_produtoCODUSUARIO: TStringField;
    qrgrade_produtoORIGEM: TStringField;
    qrgrade_produtoDESTINO: TStringField;
    qrgrade_produtoPRODUTO: TStringField;
    qrgrade_produtoCODFILIAL: TStringField;
    ZFilial: TUniQuery;
    ZFilialCODIGO: TStringField;
    ZFilialFILIAL: TStringField;
    ZFilialNOTAFISCAL: TIntegerField;
    ZFilialENDERECO: TStringField;
    ZFilialCIDADE: TStringField;
    ZFilialUF: TStringField;
    ZFilialCEP: TStringField;
    ZFilialTELEFONE: TStringField;
    ZFilialCNPJ: TStringField;
    ZFilialIE: TStringField;
    ZFilialSEQNF: TIntegerField;
    ZFilialFAX: TStringField;
    ZFilialOBS1: TStringField;
    ZFilialOBS2: TStringField;
    ZFilialCONTRIBUINTE_IPI: TStringField;
    ZFilialSUBSTITUTO_TRIBUTARIO: TStringField;
    ZFilialEMPRESA_ESTADUAL: TStringField;
    ZFilialOPTANTE_SIMPLES: TStringField;
    ZFilialOPTANTE_SUPER_SIMPLES: TStringField;
    ZFilialECF: TStringField;
    ZFilialTIPO: TIntegerField;
    ZFilialIPI: TFloatField;
    ZFilialISS: TFloatField;
    ZFilialNUMERO: TStringField;
    ZFilialRESPONSAVEL: TStringField;
    ZFilialCOMPLEMENTO: TStringField;
    ZFilialBAIRRO: TStringField;
    ZFilialFARMACIA_RESP_TECNICO: TStringField;
    ZFilialFARMACIA_CRF: TStringField;
    ZFilialFARMACIA_CPF: TStringField;
    ZFilialFARMCIA_DATA: TDateTimeField;
    ZFilialFARMACIA_UF: TStringField;
    ZFilialFARMACIA_SENHA: TStringField;
    ZFilialFARMACIA_EMAIL: TStringField;
    ZFilialFARMACIA_LOGIN: TStringField;
    ZFilialFARMACIA_ENVIO: TStringField;
    ZFilialCONHECIMENTO: TIntegerField;
    ZFilialINDUSTRIA: TStringField;
    ZFilialFARMACIA_NUMEROLICENCA: TStringField;
    ZFilialCOD_MUNICIPIO_IBGE: TStringField;
    ZFilialIBGE: TStringField;
    ZFilialPIS: TFloatField;
    ZFilialCOFINS: TFloatField;
    ZFilialEMAIL: TStringField;
    ZFilialATIVIDADE: TStringField;
    ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    ZFilialCONTADOR_NOME: TStringField;
    ZFilialCONTADOR_CPF: TStringField;
    ZFilialCONTADOR_CRC: TStringField;
    ZFilialCONTADOR_CNPJ: TStringField;
    ZFilialCONTADOR_CEP: TStringField;
    ZFilialCONTADOR_ENDERECO: TStringField;
    ZFilialCONTADOR_NUMERO: TStringField;
    ZFilialCONTADOR_COMPLEMENTO: TStringField;
    ZFilialCONTADOR_BAIRRO: TStringField;
    ZFilialCONTADOR_FONE: TStringField;
    ZFilialCONTADOR_FAX: TStringField;
    ZFilialCONTADOR_EMAIL: TStringField;
    ZFilialINSC_MUNICIPAL: TStringField;
    ZFilialDATA_ABERTURA: TDateTimeField;
    ZFilialCNAE: TStringField;
    ZFilialCRT: TStringField;
    ZFilialCONTADOR_CIDADE: TStringField;
    ZFilialCONTADOR_COD_MUNICIPIO: TStringField;
    ZFilialCONTADOR_UF: TStringField;
    ZFilialPERMITE_CREDITO: TIntegerField;
    ZFilialFANTASIA: TStringField;
    ZFilialDFIXAS: TFloatField;
    ZFilialTIPOCALCULO: TIntegerField;
    ZFilialSERIE_CTE: TStringField;
    ZFilialSEQ_CTE: TStringField;
    ZFilialCOD_PAIS: TStringField;
    ZFilialPAIS: TStringField;
    ACBrEAD1: TACBrEAD;
    ACBRDANFENFCe: TACBrNFeDANFEFR;
    ACBRNFCe: TACBrNFe;
    qradic_mestre: TUniQuery;
    old_cdsComandas: TClientDataSet;
    old_cdsComandasID_COMANDA: TStringField;
    old_cdsComandasEVENTO: TStringField;
    cdsComandas: TClientDataSet;
    cdsComandasID_COMANDA: TStringField;
    cdsComandasEVENTO: TStringField;
    spNFCE_Insert: TUniQuery;
    SQL_Exec: TUniQuery;
    Conexao_Servidor: TUniConnection;
    procedure BalancaLePeso(Peso: Double; Resposta: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBRNFCeStatusChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mesa_comanda: string;
    procedure LerConfiguracao;
    function Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
    function GetSiteConsulta(UF: string; Ambiente: TpcnTipoAmbiente): string;
    function StrToHex(const S: String): String;
    function codifica(TABELA: string): string;

  end;

const
  sPAF_Versao_ER: string = '0103';


var
  frmModulo: TfrmModulo;
  sConfiguracoes: string;
  emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone, emitente_ie: string;

  resultado_pesquisa1,
    resultado_pesquisa2,
    resultado_pesquisa3,
    resultado_pesquisa4,
    resultado_pesquisa5,
    resultado_pesquisa6,
    resultado_pesquisa7,
    resultado_pesquisa8: string;


  resultado_valor1, resultado_valor2: real;

  parametro_pesquisa: string;

    StreamMemo: TMemoryStream;
  edtNumSerie: string;
  edtProxyHost: string;
  edtProxyPorta: string;
  edtProxyUser: string;
  edtProxySenha: string;
  EditLogoMarca: string;
  edtEmitCNPJ: string;
  edtEmitIE: string;
  edtEmitRazao: string;
  edtEmitFantasia: string;
  edtEmitFone: string;
  edtEmitCEP: string;
  edtEmailAssunto: string;
  edtSmtpPass: string;
  edtSmtpUser: string;
  edtSmtpPort: string;
  edtSmtpHost: string;
  edtEmitUF: string;
  edtEmitCidade: string;
  edtEmitCodCidade: string;
  edtEmitBairro: string;
  edtEmitLogradouro: string;
  edtEmitNumero: string;
  edtEmitComp: string;
  edtIdToken: string;
  edtSerie:string;
  edtTokenNumero: string;
  edtNatOperacao, edtPathLogs: string;
  edImpressora,edDescEsta, edtSchema: string;
  edPreview, ckSalvar, ckVisualizar:Boolean;
  edMargem, rgFormaEmissao:Integer;
  edMargEsq,edMargDir,edMargSup,edMarginf:Double;

  implementation

uses funcoes, principal,ufrmStatus;

{$R *.dfm}

procedure TfrmModulo.ACBRNFCeStatusChange(Sender: TObject);
begin
//    case ACBRNFCe.Status of
//    stIdle:
//      begin
//        if (frmStatus <> nil) then
//          frmStatus.Hide;
//      end;
//    stNFeStatusServico:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeRecepcao:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando dados da NFCe...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNfeRetRecepcao:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Recebendo dados da NFCe...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNfeConsulta:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Consultando NFCe...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNfeCancelamento:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFCe...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNfeInutilizacao:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutiliza��o...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeRecibo:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeCadastro:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeEnvDPEC:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando DPEC...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeConsultaDPEC:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Consultando DPEC...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeEmail:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando Email...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeCCe:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando Carta de Corre��o...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//    stNFeEvento:
//      begin
//        if (frmStatus = nil) then
//          frmStatus := TfrmStatus.Create(Application);
//        frmStatus.lblStatus.Caption := 'Enviando Evento...';
//        frmStatus.Show;
//        frmStatus.BringToFront;
//      end;
//  end;
  Application.ProcessMessages;
end;

function TfrmModulo.codifica(TABELA: string): string;
begin
  qradic_mestre.open;
 // qradic_mestre.CommitUpdates;
  qradic_mestre.Refresh;

  if qradic_mestre.Locate('codigo', TABELA, [loCaseInsensitive]) then begin
    if qradic_mestre.FIELDBYNAME('sequencia').AsInteger < 1 then begin
      result := '000001';
      qradic_mestre.Edit;
      qradic_mestre.FIELDBYNAME('sequencia').AsInteger := 1;
      qradic_mestre.Post;
    end else begin
      qradic_mestre.Edit;
      qradic_mestre.FIELDBYNAME('sequencia').AsInteger := qradic_mestre.FIELDBYNAME('sequencia').AsInteger + 1;
      qradic_mestre.Post;
      result := Zerar(IntToStr(frmModulo.qradic_mestre.FIELDBYNAME('sequencia').AsInteger), 6);
    end;
    conexao.Commit;
  end else begin
    showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 +
      'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
    conexao.Rollback;
  end;

end;

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: string);
begin
   // Buscar o Peso nas balancas PDV's
  if Peso > 0 then
  begin
     // Leitura OK
    sBal_Resposta := 'Peso Est�vel';
    rBal_peso := Peso;
  end
  else
  begin
     // Leitura retornou ERRo
    case Trunc(balanca.UltimoPesoLido) of
      0: sBal_Resposta := 'Coloque o produto sobre a Balan�a!';
      -1: sBal_Resposta := 'Peso Instavel!';
      -2: sBal_Resposta := 'Peso Negativo!';
      -10: sBal_Resposta := 'Sobrepeso!';
    end;
    rBal_peso := 0;
  end;
end;


procedure TfrmModulo.DataModuleCreate(Sender: TObject);
begin
  qremitente.open;
  emitente_nome := qremitente.fieldbyname('nome').asstring;
  emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
  emitente_endereco := qremitente.fieldbyname('endereco').asstring + ' - ' + qremitente.fieldbyname('bairro').asstring;
  emitente_cidade := qremitente.fieldbyname('cidade').asstring + '/' + qremitente.fieldbyname('uf').asstring;
  emitente_cep := qremitente.fieldbyname('cep').asstring;
  emitente_telefone := qremitente.fieldbyname('telefone').asstring;
  emitente_cnpj := qremitente.fieldbyname('cnpj').asstring;
  emitente_ie := qremitente.fieldbyname('ie').asstring;
  emitente_uf := qremitente.fieldbyname('uf').asstring;
  qremitente.Close;
end;

function TfrmModulo.GetSiteConsulta(UF: string;
  Ambiente: TpcnTipoAmbiente): string;
const
  site_uf_prod: array [0 .. 6] of string =
    ('http://www.sefaznet.ac.gov.br/nfe/NFe.jsp?opc=3',
    'http://sistemas.sefaz.am.gov.br/nfceweb/consultarNFCe.jsp',
    'http://www.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp',
    'http://www.sefaz.mt.gov.br/nfe/portal/consultanfce',
    'http://www.nfe.rn.gov.br/portal/consultarNFCe.jsp',
    'https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx',
    'http://www.nfe.se.gov.br/portal/consultarNFCe.jsp');
  site_uf_hom: array [0 .. 6] of string = ('http://hml.sefaznet.ac.gov.br',
    'http://homnfe.sefaz.am.gov.br/nfceweb/consultarNFCe.jsp',
    'http://www.hom.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp',
    'http://homologacao.sefaz.mt.gov.br/nfce/consultanfce',
    'http://www.hom.nfe.rn.gov.br/portal/consultarNFCe.jsp',
    'https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx',
    'http://www.hom.nfe.se.gov.br/portal/consultarNFCe.jsp');
begin
  case Ambiente of
    taProducao:
      begin
        if UF = 'AC' then
          result := site_uf_prod[0]
        else if UF = 'AM' then
          result := site_uf_prod[1]
        else if UF = 'MA' then
          result := site_uf_prod[2]
        else if UF = 'MT' then
          result := site_uf_prod[3]
        else if UF = 'RN' then
          result := site_uf_prod[4]
        else if UF = 'RS' then
          result := site_uf_prod[5]
        else if UF = 'SE' then
          result := site_uf_prod[6]
      end;
    taHomologacao:
      begin
        if UF = 'AC' then
          result := site_uf_hom[0]
        else if UF = 'AM' then
          result := site_uf_hom[1]
        else if UF = 'MA' then
          result := site_uf_hom[2]
        else if UF = 'MT' then
          result := site_uf_hom[3]
        else if UF = 'RN' then
          result := site_uf_hom[4]
        else if UF = 'RS' then
          result := site_uf_hom[5]
        else if UF = 'SE' then
          result := site_uf_hom[6]
      end;
  end;

end;

function TfrmModulo.Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
  if Condicao then
    result := Verdadeiro
  else
    result := Falso;
end;

procedure TfrmModulo.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;

begin

  IniFile := sConfiguracoes;

  Ini := TIniFile.Create(IniFile);
  try
    edtNumSerie := Ini.ReadString('Certificado', 'NumSerie', '');
    edtIdToken := Ini.ReadString('Certificado', 'IDToken', '');
    edtTokenNumero := Ini.ReadString('Certificado', 'TokenNumero', '');

    ACBRNFCe.Configuracoes.Certificados.NumeroSerie := edtNumSerie;
    edtNumSerie := ACBRNFCe.Configuracoes.Certificados.NumeroSerie;

    ACBRNFCe.Configuracoes.WebServices.UF := Ini.ReadString('WebService', 'UF', '');


    if Ini.ReadInteger('WebService', 'Ambiente', 0) = 0 then
      ACBRNFCe.Configuracoes.WebServices.Ambiente := taProducao
    else
      ACBRNFCe.Configuracoes.WebServices.Ambiente := taHomologacao;

    ACBRDANFENFCe.FastFile := 'C:\DANFeNFCe.fr3';

    edtProxyHost := Ini.ReadString('Proxy', 'Host', '');
    edtProxyPorta := Ini.ReadString('Proxy', 'Porta', '');
    edtProxyUser := Ini.ReadString('Proxy', 'User', '');
    edtProxySenha := Ini.ReadString('Proxy', 'Pass', '');

    ACBRNFCe.Configuracoes.Geral.IdCSC := edtIdToken;
    ACBRNFCe.Configuracoes.Geral.CSC   := edtTokenNumero;

    ACBRNFCe.Configuracoes.WebServices.ProxyHost := edtProxyHost;
    ACBRNFCe.Configuracoes.WebServices.ProxyPort := edtProxyPorta;
    ACBRNFCe.Configuracoes.WebServices.ProxyUser := edtProxyUser;
    ACBRNFCe.Configuracoes.WebServices.ProxyPass := edtProxySenha;
    edtSchema := Ini.ReadString('Geral', 'PathSchemas', '');
    if (edtSchema = '') or not(DirectoryExists(edtSchema)) then begin
      Application.MessageBox('A Pasta e Schemas informada no Config � inv�lida!','Aten��o!',MB_ICONINFORMATION);
      Abort;
    end;

    ACBRNFCe.Configuracoes.Arquivos.PathSchemas := edtSchema;
    EditLogoMarca := Ini.ReadString('PDV', 'CAMINHO_LOGO', '');

    if ACBRNFCe.DANFE <> nil then
      ACBRNFCe.DANFE.TipoDANFE := tiNFCe;

    if (EditLogoMarca <> '') and (FileExists(EditLogoMarca)) then
      ACBRNFCe.DANFE.Logo := EditLogoMarca;

    ckSalvar := Ini.ReadBool('Geral', 'Salvar', True);
    edtPathLogs := Ini.ReadString('Geral', 'PathSalvar', 'C:\OneMaker\pdv\xml');
    ACBRNFCe.Configuracoes.Arquivos.Salvar := ckSalvar;
    ACBRNFCe.Configuracoes.Arquivos.PathSalvar := edtPathLogs;
    rgFormaEmissao := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
    ACBRNFCe.Configuracoes.Geral.FormaEmissao := StrToTpEmis(Ok, IntToStr(rgFormaEmissao + 1));

    ckVisualizar := Ini.ReadBool('WebService', 'Visualizar', False);
    ACBRNFCe.Configuracoes.WebServices.Visualizar := ckVisualizar;

    edtEmitCNPJ := Ini.ReadString('Emitente', 'CNPJ', '');
    edtEmitIE := Ini.ReadString('Emitente', 'IE', '');
    edtEmitRazao := Ini.ReadString('Emitente', 'RazaoSocial', '');
    edtEmitFantasia := Ini.ReadString('Emitente', 'Fantasia', '');
    edtEmitFone := Ini.ReadString('Emitente', 'Fone', '');
    edtEmitCEP := Ini.ReadString('Emitente', 'CEP', '');
    edtEmitLogradouro := Ini.ReadString('Emitente', 'Logradouro', '');
    edtEmitNumero := Ini.ReadString('Emitente', 'Numero', '');
    edtEmitComp := Ini.ReadString('Emitente', 'Complemento', '');
    edtEmitBairro := Ini.ReadString('Emitente', 'Bairro', '');
    edtEmitCodCidade := Ini.ReadString('Emitente', 'CodCidade', '');
    edtEmitCidade := Ini.ReadString('Emitente', 'Cidade', '');
    edtEmitUF := Ini.ReadString('Emitente', 'UF', '');
    edtSerie := Ini.ReadString('Emitente', 'Serie', '');

    edtSmtpHost := Ini.ReadString('Email', 'Host', '');
    edtSmtpPort := Ini.ReadString('Email', 'Port', '');
    edtSmtpUser := Ini.ReadString('Email', 'User', '');
    edtSmtpPass := Ini.ReadString('Email', 'Pass', '');
    edtEmailAssunto := Ini.ReadString('Email', 'Assunto', '');

    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;

    edImpressora := Ini.ReadString('Impressao', 'Impressora', '');
    edDescEsta := Ini.ReadString('Impressao', 'Descricao via estabelecimento', 'Via do Consumidor');
    edPreview := Ini.ReadBool('Impressao', 'Preview', True);
    edMargem := Ini.ReadInteger('Impressao', 'Espessura Margem', 1);
    edMargEsq := Ini.ReadFloat('Impressao', 'Margem Esquerda', 0.6);
    edMargDir := Ini.ReadFloat('Impressao', 'Margem Direita', 0.51);
    edMargSup := Ini.ReadFloat('Impressao', 'Margem Superior', 0.8);
    edMarginf := Ini.ReadFloat('Impressao', 'Margem Inferior', 0.8);

  finally
    Ini.Free;
  end;

end;

function TfrmModulo.StrToHex(const S: String): String;
const
  HexDigits: array [0 .. 15] of Char = '0123456789ABCDEF';
var
  i: Integer;
  P1: PChar;
  P2: PChar;
  B: Byte;
begin

  SetLength(result, length(S) * 2);
  P1 := @S[1];
  P2 := @result[1];

  for i := 1 to length(S) do
  begin
    B := Byte(P1^);
    P2^ := HexDigits[B shr 4];
    Inc(P2);
    P2^ := HexDigits[B and $F];
    Inc(P1);
    Inc(P2);
  end;

end;


end.
//
//Nome: string[20];
//Valor_Acumulado: Real;
//Valor_Ultimo_Cupom: Real;

