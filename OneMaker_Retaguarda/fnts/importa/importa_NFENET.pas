unit importa_NFENET;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,StrUtils,
  Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.Buttons, Xml.XMLDoc, Vcl.Menus, ACBrBase,
  ACBrDFe, ACBrNFe, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,pcnConversao,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, pcnConversaoNFe,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, AdvGlowButton;

type
  TFrmImporta_NFENET = class(TForm)
    XML: TXMLDocument;
    btproc: TSpeedButton;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    Memo2: TMemo;
    Splitter1: TSplitter;
    Panel1: TPanel;
    open: TOpenDialog;
    nfe: TACBrNFe;
    conn: TFDConnection;
    qNFE: TFDQuery;
    qitens: TFDQuery;
    qtabelas: TFDQuery;
    qtabelasCODIGO: TStringField;
    qtabelasTABELA: TStringField;
    qtabelasSEQUENCIA: TIntegerField;
    FDGUIwc: TFDGUIxWaitCursor;
    FDPhysFB: TFDPhysFBDriverLink;
    qclientes: TFDQuery;
    qprodutos: TFDQuery;
    qfornecedor: TFDQuery;
    qfornecedorCODIGO: TStringField;
    qfornecedorNOME: TStringField;
    qfornecedorFANTASIA: TStringField;
    qfornecedorENDERECO: TStringField;
    qfornecedorBAIRRO: TStringField;
    qfornecedorCIDADE: TStringField;
    qfornecedorUF: TStringField;
    qfornecedorCEP: TStringField;
    qfornecedorCOMPLEMENTO: TStringField;
    qfornecedorTELEFONE1: TStringField;
    qfornecedorTELEFONE2: TStringField;
    qfornecedorFAX: TStringField;
    qfornecedorCONTATO1: TStringField;
    qfornecedorCONTATO2: TStringField;
    qfornecedorCELULAR1: TStringField;
    qfornecedorCELULAR2: TStringField;
    qfornecedorEMAIL: TStringField;
    qfornecedorHOMEPAGE: TStringField;
    qfornecedorCNPJ: TStringField;
    qfornecedorIE: TStringField;
    qfornecedorBANCO: TStringField;
    qfornecedorAGENCIA: TStringField;
    qfornecedorCONTA: TStringField;
    qfornecedorOBS1: TStringField;
    qfornecedorOBS2: TStringField;
    qfornecedorOBS3: TStringField;
    qfornecedorDATA: TDateField;
    qfornecedorTIPO: TIntegerField;
    qfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qfornecedorNUMERO: TStringField;
    qfornecedorIM: TStringField;
    qfornecedorREP_NOME: TStringField;
    qfornecedorREP_TELEFONE: TStringField;
    qfornecedorREP_ENDERECO: TStringField;
    qfornecedorREP_BAIRRO: TStringField;
    qfornecedorREP_COMPLEMENTO: TStringField;
    qfornecedorREP_CIDADE: TStringField;
    qfornecedorREP_UF: TStringField;
    qfornecedorREP_CEP: TStringField;
    qfornecedorREP_TELEFONE1: TStringField;
    qfornecedorREP_TELEFONE2: TStringField;
    qfornecedorREP_TELEFONE3: TStringField;
    qfornecedorREP_FAX: TStringField;
    qfornecedorREP_CNPJ: TStringField;
    qfornecedorREP_IE: TStringField;
    qfornecedorREP_HOME_PAGE: TStringField;
    qfornecedorREP_EMAIL: TStringField;
    qfornecedorCNAE: TStringField;
    qfornecedorCOD_MUNICIPIO_IBGE: TStringField;
    qfornecedorIBGE: TStringField;
    qNFECODIGO: TStringField;
    qNFENUMERO: TStringField;
    qNFECFOP: TStringField;
    qNFEDATA: TDateField;
    qNFECODCLIENTE: TStringField;
    qNFEVALOR_PRODUTOS: TBCDField;
    qNFETOTAL_NOTA: TBCDField;
    qNFEBASE_CALCULO: TBCDField;
    qNFEVALOR_ICMS: TBCDField;
    qNFEBASE_SUB: TBCDField;
    qNFEICMS_SUB: TBCDField;
    qNFEFRETE: TBCDField;
    qNFESEGURO: TBCDField;
    qNFEOUTRAS_DESPESAS: TBCDField;
    qNFEVALOR_TOTAL_IPI: TBCDField;
    qNFEITENS: TIntegerField;
    qNFEDESCONTO: TBCDField;
    qNFECODTRANSPORTADOR: TStringField;
    qNFEFRETE_CONTA: TIntegerField;
    qNFEPLACA: TStringField;
    qNFEPLACA_UF: TStringField;
    qNFEVOL_QTDE: TBCDField;
    qNFEVOL_ESPECIE: TStringField;
    qNFEVOL_MARCA: TStringField;
    qNFEVOL_NUMERO: TStringField;
    qNFEPESO_LIQUIDO: TBCDField;
    qNFEPESO_BRUTO: TBCDField;
    qNFESITUACAO: TIntegerField;
    qNFEMOTIVO: TStringField;
    qNFEFATURAMENTO_DATA1: TDateField;
    qNFEFATURAMENTO_DATA2: TDateField;
    qNFEFATURAMENTO_DATA3: TDateField;
    qNFEFATURAMENTO_DATA4: TDateField;
    qNFEFATURAMENTO_NUMERO1: TStringField;
    qNFEFATURAMENTO_NUMERO2: TStringField;
    qNFEFATURAMENTO_NUMERO3: TStringField;
    qNFEFATURAMENTO_NUMERO4: TStringField;
    qNFEFATURAMENTO_VALOR1: TBCDField;
    qNFEFATURAMENTO_VALOR2: TBCDField;
    qNFEFATURAMENTO_VALOR3: TBCDField;
    qNFEFATURAMENTO_VALOR4: TBCDField;
    qNFECODFILIAL: TStringField;
    qNFEOBS1: TStringField;
    qNFEOBS2: TStringField;
    qNFEOBS3: TStringField;
    qNFEINF1: TStringField;
    qNFEINF2: TStringField;
    qNFEINF3: TStringField;
    qNFEINF4: TStringField;
    qNFEINF5: TStringField;
    qNFEDATA_SAIDA: TDateField;
    qNFEHORA: TStringField;
    qNFESITUACAO_A: TStringField;
    qNFEMODELO_NF: TStringField;
    qNFESERIE_NF: TStringField;
    qNFEVALOR_ISENTO_ICMS: TBCDField;
    qNFEALIQUOTA_ICMS: TBCDField;
    qNFESIT: TStringField;
    qNFECODLANCAMENTO: TStringField;
    qNFEMOVIMENTO: TStringField;
    qNFEBAIXA_ESTOQUE: TStringField;
    qNFETIPO: TStringField;
    qNFEOS_COD1: TStringField;
    qNFEOS_COD2: TStringField;
    qNFEOS_COD3: TStringField;
    qNFEOS_COD4: TStringField;
    qNFEOS_COD5: TStringField;
    qNFEOS_COD6: TStringField;
    qNFEOS_SERV1: TStringField;
    qNFEOS_SERV2: TStringField;
    qNFEOS_SERV3: TStringField;
    qNFEOS_SERV4: TStringField;
    qNFEOS_SERV5: TStringField;
    qNFEOS_SERV6: TStringField;
    qNFEOS_COMP1: TStringField;
    qNFEOS_COMP2: TStringField;
    qNFEOS_COMP3: TStringField;
    qNFEOS_COMP4: TStringField;
    qNFEOS_COMP5: TStringField;
    qNFEOS_COMP6: TStringField;
    qNFEOS_QTDE1: TBCDField;
    qNFEOS_QTDE2: TBCDField;
    qNFEOS_QTDE3: TBCDField;
    qNFEOS_QTDE4: TBCDField;
    qNFEOS_QTDE5: TBCDField;
    qNFEOS_QTDE6: TBCDField;
    qNFEOS_UNIT1: TBCDField;
    qNFEOS_UNIT2: TBCDField;
    qNFEOS_UNIT3: TBCDField;
    qNFEOS_UNIT4: TBCDField;
    qNFEOS_UNIT5: TBCDField;
    qNFEOS_UNIT6: TBCDField;
    qNFEOS_TOTAL1: TBCDField;
    qNFEOS_TOTAL2: TBCDField;
    qNFEOS_TOTAL3: TBCDField;
    qNFEOS_TOTAL4: TBCDField;
    qNFEOS_TOTAL5: TBCDField;
    qNFEOS_TOTAL6: TBCDField;
    qNFEOS_ISS: TBCDField;
    qNFEOS_TOTAL_GERAL: TBCDField;
    qNFEOS_TOTAL_ISS: TBCDField;
    qNFEDESCONTO_ITEM: TBCDField;
    qNFEOBS4: TStringField;
    qNFEOBS5: TStringField;
    qNFECODIGOMODELO: TStringField;
    qNFECUSTO_VENDA: TStringField;
    qNFEFAT_FORMA_PGTO: TStringField;
    qNFEFAT_CONDI_PGTO: TStringField;
    qNFEFAT_QTDE_PRESTACAO: TIntegerField;
    qNFEFAT_GERAR_RECEBER: TIntegerField;
    qNFEFAT_GERAR_DUPLICATA: TIntegerField;
    qNFEPIS: TBCDField;
    qNFECOFINS: TBCDField;
    qNFEFAT_TIPO: TIntegerField;
    qNFECODVENDEDOR: TStringField;
    qNFEOPERACAO: TStringField;
    qNFEINTEGRACAO: TIntegerField;
    qNFENFE_SITUACAO: TIntegerField;
    qNFENFE_XML: TStringField;
    qNFEVAREJO_ATACADO: TStringField;
    qNFEINDUSTRIALIZACAO: TStringField;
    qNFEPERDA: TStringField;
    qNFEFATURAMENTO_DATA5: TDateField;
    qNFEFATURAMENTO_DATA6: TDateField;
    qNFEFATURAMENTO_NUMERO5: TStringField;
    qNFEFATURAMENTO_NUMERO6: TStringField;
    qNFEFATURAMENTO_VALOR5: TBCDField;
    qNFEFATURAMENTO_VALOR6: TBCDField;
    qNFEFATURAMENTO_DATA7: TDateField;
    qNFEFATURAMENTO_DATA8: TDateField;
    qNFEFATURAMENTO_DATA9: TDateField;
    qNFEFATURAMENTO_NUMERO7: TStringField;
    qNFEFATURAMENTO_NUMERO8: TStringField;
    qNFEFATURAMENTO_NUMERO9: TStringField;
    qNFEFATURAMENTO_VALOR7: TBCDField;
    qNFEFATURAMENTO_VALOR8: TBCDField;
    qNFEFATURAMENTO_VALOR9: TBCDField;
    qNFECHAVE: TStringField;
    qNFENATUREZA: TStringField;
    qNFETIPO_FINALIDADE: TIntegerField;
    qNFESEQEVENTO: TIntegerField;
    qclientesCODIGO: TStringField;
    qclientesNOME: TStringField;
    qclientesAPELIDO: TStringField;
    qclientesENDERECO: TStringField;
    qclientesBAIRRO: TStringField;
    qclientesCIDADE: TStringField;
    qclientesUF: TStringField;
    qclientesCEP: TStringField;
    qclientesCOMPLEMENTO: TStringField;
    qclientesMORADIA: TIntegerField;
    qclientesTIPO: TIntegerField;
    qclientesSITUACAO: TIntegerField;
    qclientesTELEFONE1: TStringField;
    qclientesTELEFONE2: TStringField;
    qclientesTELEFONE3: TStringField;
    qclientesCELULAR: TStringField;
    qclientesEMAIL: TStringField;
    qclientesRG: TStringField;
    qclientesCPF: TStringField;
    qclientesFILIACAO: TStringField;
    qclientesESTADOCIVIL: TStringField;
    qclientesCONJUGE: TStringField;
    qclientesPROFISSAO: TStringField;
    qclientesEMPRESA: TStringField;
    qclientesRENDA: TBCDField;
    qclientesLIMITE: TBCDField;
    qclientesREF1: TStringField;
    qclientesREF2: TStringField;
    qclientesCODVENDEDOR: TStringField;
    qclientesDATA_CADASTRO: TDateField;
    qclientesDATA_ULTIMACOMPRA: TDateField;
    qclientesOBS1: TStringField;
    qclientesOBS2: TStringField;
    qclientesOBS3: TStringField;
    qclientesOBS4: TStringField;
    qclientesOBS5: TStringField;
    qclientesOBS6: TStringField;
    qclientesNASCIMENTO: TStringField;
    qclientesCODREGIAO: TStringField;
    qclientesCODCONVENIO: TStringField;
    qclientesCODUSUARIO: TStringField;
    qclientesNUMERO: TStringField;
    qclientesRG_ORGAO: TStringField;
    qclientesRG_ESTADO: TStringField;
    qclientesRG_EMISSAO: TDateField;
    qclientesSEXO: TStringField;
    qclientesHISTORICO: TBlobField;
    qclientesPREVISAO: TDateField;
    qclientesCNAE: TStringField;
    qclientesCOD_MUNICIPIO_IBGE: TStringField;
    qclientesIBGE: TStringField;
    qclientesTAMANHO_CALCA: TStringField;
    qclientesTAMANHO_BLUSA: TStringField;
    qclientesTAMANHO_SAPATO: TStringField;
    qclientesCORRESP_ENDERECO: TStringField;
    qclientesCORRESP_BAIRRO: TStringField;
    qclientesCORRESP_CIDADE: TStringField;
    qclientesCORRESP_UF: TStringField;
    qclientesCORRESP_CEP: TStringField;
    qclientesCORRESP_COMPLEMENTO: TStringField;
    qclientesRG_PRODUTOR: TStringField;
    qclientesRESP1_NOME: TStringField;
    qclientesRESP1_CPF: TStringField;
    qclientesRESP1_RG: TStringField;
    qclientesRESP1_PROFISSAO: TStringField;
    qclientesRESP1_ESTADO_CIVIL: TStringField;
    qclientesRESP1_ENDERECO: TStringField;
    qclientesRESP1_BAIRRO: TStringField;
    qclientesRESP1_CIDADE: TStringField;
    qclientesRESP1_UF: TStringField;
    qclientesRESP1_CEP: TStringField;
    qclientesRESP2_NOME: TStringField;
    qclientesRESP2_CPF: TStringField;
    qclientesRESP2_RG: TStringField;
    qclientesRESP2_PROFISSAO: TStringField;
    qclientesRESP2_ESTADO_CIVIL: TStringField;
    qclientesRESP2_ENDERECO: TStringField;
    qclientesRESP2_BAIRRO: TStringField;
    qclientesRESP2_CIDADE: TStringField;
    qclientesRESP2_UF: TStringField;
    qclientesRESP2_CEP: TStringField;
    qclientesFOTO: TStringField;
    qclientesCONDPGTO: TStringField;
    qclientesXCPF: TStringField;
    qEmitente: TFDQuery;
    qempresa: TFDQuery;
    qempresaCODIGO: TStringField;
    qempresaNOME: TStringField;
    qempresaFANTASIA: TStringField;
    qempresaENDERECO: TStringField;
    qempresaBAIRRO: TStringField;
    qempresaCIDADE: TStringField;
    qempresaUF: TStringField;
    qempresaCEP: TStringField;
    qempresaTELEFONE: TStringField;
    qempresaCNPJ: TStringField;
    qempresaIE: TStringField;
    qempresaEMAIL: TStringField;
    qempresaHOMEPAGE: TStringField;
    qempresaRESPONSAVEL: TStringField;
    qempresaCELULAR: TStringField;
    qempresaLOGO: TBlobField;
    qempresaFAX: TStringField;
    qempresaNUMERO: TStringField;
    qempresaCOMPLEMENTO: TStringField;
    qempresaCONTRIBUINTE_IPI: TStringField;
    qempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qempresaCOMENTARIOS: TStringField;
    qempresaDATAHORA_INICIAL: TDateField;
    qempresaDATAHORA_FINAL: TDateField;
    qempresaDATA_INVENTARIO: TDateField;
    qempresaESTOQUE: TBCDField;
    qempresaVALOR: TBCDField;
    qempresaCONHECIMENTO: TIntegerField;
    qempresaCPF: TStringField;
    qempresaRG: TStringField;
    qempresaDIA_VENCIMENTO_CHAVE: TStringField;
    qempresaINSC_MUNICIPAL: TStringField;
    qempresaDATA_ABERTURA: TDateField;
    qempresaCOD_MUNICIPIO_IBGE: TStringField;
    qempresaIBGE: TStringField;
    qempresaEMAIL_FINANCEIRO: TStringField;
    qEmitenteCODIGO: TStringField;
    qEmitenteFILIAL: TStringField;
    qEmitenteNOTAFISCAL: TIntegerField;
    qEmitenteENDERECO: TStringField;
    qEmitenteCIDADE: TStringField;
    qEmitenteUF: TStringField;
    qEmitenteCEP: TStringField;
    qEmitenteTELEFONE: TStringField;
    qEmitenteCNPJ: TStringField;
    qEmitenteIE: TStringField;
    qEmitenteSEQNF: TIntegerField;
    qEmitenteFAX: TStringField;
    qEmitenteOBS1: TStringField;
    qEmitenteOBS2: TStringField;
    qEmitenteCONTRIBUINTE_IPI: TStringField;
    qEmitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    qEmitenteEMPRESA_ESTADUAL: TStringField;
    qEmitenteOPTANTE_SIMPLES: TStringField;
    qEmitenteOPTANTE_SUPER_SIMPLES: TStringField;
    qEmitenteECF: TStringField;
    qEmitenteTIPO: TIntegerField;
    qEmitenteIPI: TCurrencyField;
    qEmitenteISS: TCurrencyField;
    qEmitenteNUMERO: TStringField;
    qEmitenteRESPONSAVEL: TStringField;
    qEmitenteCOMPLEMENTO: TStringField;
    qEmitenteBAIRRO: TStringField;
    qEmitenteFARMACIA_RESP_TECNICO: TStringField;
    qEmitenteFARMACIA_CRF: TStringField;
    qEmitenteFARMACIA_CPF: TStringField;
    qEmitenteFARMCIA_DATA: TDateField;
    qEmitenteFARMACIA_UF: TStringField;
    qEmitenteFARMACIA_SENHA: TStringField;
    qEmitenteFARMACIA_EMAIL: TStringField;
    qEmitenteFARMACIA_LOGIN: TStringField;
    qEmitenteFARMACIA_ENVIO: TStringField;
    qEmitenteCONHECIMENTO: TIntegerField;
    qEmitenteINDUSTRIA: TStringField;
    qEmitenteFARMACIA_NUMEROLICENCA: TStringField;
    qEmitenteCOD_MUNICIPIO_IBGE: TStringField;
    qEmitenteIBGE: TStringField;
    qEmitentePIS: TBCDField;
    qEmitenteCOFINS: TBCDField;
    qEmitenteEMAIL: TStringField;
    qEmitenteATIVIDADE: TStringField;
    qEmitenteCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qEmitenteCONTADOR_NOME: TStringField;
    qEmitenteCONTADOR_CPF: TStringField;
    qEmitenteCONTADOR_CRC: TStringField;
    qEmitenteCONTADOR_CNPJ: TStringField;
    qEmitenteCONTADOR_CEP: TStringField;
    qEmitenteCONTADOR_ENDERECO: TStringField;
    qEmitenteCONTADOR_NUMERO: TStringField;
    qEmitenteCONTADOR_COMPLEMENTO: TStringField;
    qEmitenteCONTADOR_BAIRRO: TStringField;
    qEmitenteCONTADOR_FONE: TStringField;
    qEmitenteCONTADOR_FAX: TStringField;
    qEmitenteCONTADOR_EMAIL: TStringField;
    qEmitenteINSC_MUNICIPAL: TStringField;
    qEmitenteDATA_ABERTURA: TDateField;
    qEmitenteCNAE: TStringField;
    qEmitenteCRT: TStringField;
    qEmitenteCONTADOR_CIDADE: TStringField;
    qEmitenteCONTADOR_COD_MUNICIPIO: TStringField;
    qEmitenteCONTADOR_UF: TStringField;
    qEmitentePERMITE_CREDITO: TIntegerField;
    qEmitenteFANTASIA: TStringField;
    qEmitenteDFIXAS: TSingleField;
    qEmitenteTIPOCALCULO: TIntegerField;
    qEmitenteSERIE_CTE: TStringField;
    qEmitenteSEQ_CTE: TStringField;
    qEmitenteCOD_PAIS: TStringField;
    qEmitentePAIS: TStringField;
    qEmitenteHOMEPAGE: TStringField;
    qitensCODNOTA: TStringField;
    qitensCODPRODUTO: TStringField;
    qitensQTDE: TBCDField;
    qitensUNITARIO: TBCDField;
    qitensTOTAL: TBCDField;
    qitensIPI: TBCDField;
    qitensICMS: TBCDField;
    qitensCFOP: TStringField;
    qitensCODGRADE: TStringField;
    qitensSERIAL: TStringField;
    qitensVALOR_IPI: TBCDField;
    qitensCLASSIFICACAO_FISCAL: TStringField;
    qitensCST: TStringField;
    qitensVALOR_ICMS: TBCDField;
    qitensICMS_REDUZIDO: TBCDField;
    qitensBASE_CALCULO: TBCDField;
    qitensMARGEM_AGREGADA: TBCDField;
    qitensBASE_SUB: TBCDField;
    qitensICMS_SUB: TBCDField;
    qitensISENTO: TBCDField;
    qitensCODLANCAMENTO: TStringField;
    qitensDESCONTO: TBCDField;
    qitensSUBTOTAL: TBCDField;
    qitensPESO_BRUTO: TBCDField;
    qitensPESO_LIQUIDO: TBCDField;
    qitensITEM: TIntegerField;
    qitensCODIGO: TStringField;
    qitensGRADE: TStringField;
    qitensOUTRAS: TBCDField;
    qitensPIS_ALIQUOTA: TBCDField;
    qitensPIS_BASE: TBCDField;
    qitensPIS_VALOR: TBCDField;
    qitensCOFINS_ALIQUOTA: TBCDField;
    qitensCOFINS_BASE: TBCDField;
    qitensCOFINS_VALOR: TBCDField;
    qitensCODBARRA: TStringField;
    qitensALTERA_ITEM: TIntegerField;
    qitensCSOSN: TStringField;
    qitensCOMPLEMENTO: TStringField;
    qitensCEST: TStringField;
    qprodutosCODIGO: TStringField;
    qprodutosCODBARRA: TStringField;
    qprodutosPRODUTO: TStringField;
    qprodutosUNIDADE: TStringField;
    qprodutosDATA_CADASTRO: TDateField;
    qprodutosCODGRUPO: TStringField;
    qprodutosCODSUBGRUPO: TStringField;
    qprodutosCODFORNECEDOR: TStringField;
    qprodutosCODMARCA: TStringField;
    qprodutosDATA_ULTIMACOMPRA: TDateField;
    qprodutosNOTAFISCAL: TStringField;
    qprodutosPRECOCUSTO: TBCDField;
    qprodutosPRECOVENDA: TBCDField;
    qprodutosDATA_ULTIMAVENDA: TDateField;
    qprodutosESTOQUE: TBCDField;
    qprodutosESTOQUEMINIMO: TBCDField;
    qprodutosCODALIQUOTA: TStringField;
    qprodutosAPLICACAO: TMemoField;
    qprodutosLOCALICAZAO: TStringField;
    qprodutosPESO: TBCDField;
    qprodutosVALIDADE: TStringField;
    qprodutosCOMISSAO: TBCDField;
    qprodutosUSA_BALANCA: TIntegerField;
    qprodutosUSA_SERIAL: TIntegerField;
    qprodutosUSA_GRADE: TIntegerField;
    qprodutosCODRECEITA: TStringField;
    qprodutosFOTO: TStringField;
    qprodutosDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qprodutosNOTAFISCAL_ANTERIOR: TStringField;
    qprodutosCODFORNECEDOR_ANTERIOR: TStringField;
    qprodutosPRECOCUSTO_ANTERIOR: TBCDField;
    qprodutosPRECOVENDA_ANTERIOR: TBCDField;
    qprodutosCUSTOMEDIO: TBCDField;
    qprodutosAUTO_APLICACAO: TStringField;
    qprodutosAUTO_COMPLEMENTO: TStringField;
    qprodutosDATA_REMARCACAO_CUSTO: TDateField;
    qprodutosDATA_REMARCACAO_VENDA: TDateField;
    qprodutosPRECO_PROMOCAO: TBCDField;
    qprodutosDATA_PROMOCAO: TDateField;
    qprodutosFIM_PROMOCAO: TDateField;
    qprodutosCST: TStringField;
    qprodutosCLASSIFICACAO_FISCAL: TStringField;
    qprodutosNBM: TStringField;
    qprodutosNCM: TStringField;
    qprodutosALIQUOTA: TBCDField;
    qprodutosIPI: TBCDField;
    qprodutosREDUCAO: TBCDField;
    qprodutosQTDE_EMBALAGEM: TBCDField;
    qprodutosTIPO: TStringField;
    qprodutosPESO_LIQUIDO: TBCDField;
    qprodutosFARMACIA_CONTROLADO: TStringField;
    qprodutosFARMACIA_APRESENTACAO: TIntegerField;
    qprodutosFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qprodutosFARMACIA_PMC: TBCDField;
    qprodutosULTIMA_ALTERACAO: TDateField;
    qprodutosULTIMA_CARGA: TDateField;
    qprodutosDATA_INVENTARIO: TDateField;
    qprodutosCUSTO_INVENTARIO: TBCDField;
    qprodutosESTOQUE_INVENTARIO: TBCDField;
    qprodutosESTOQUE_ANTERIOR: TBCDField;
    qprodutosPRECOVENDA_NOVO: TBCDField;
    qprodutosUSA_RENTABILIDADE: TIntegerField;
    qprodutosQUANTIDADE_MINIMA_FAB: TBCDField;
    qprodutosAPRESENTACAO: TStringField;
    qprodutosSITUACAO: TIntegerField;
    qprodutosPRECOVENDA1: TBCDField;
    qprodutosPRECOVENDA2: TBCDField;
    qprodutosPRECOVENDA3: TBCDField;
    qprodutosPRECOVENDA4: TBCDField;
    qprodutosPRECOVENDA5: TBCDField;
    qprodutosDESCONTO_PRECOVENDA: TBCDField;
    qprodutosDATA_INVENTARIO_ATUAL: TDateField;
    qprodutosCUSTO_INVENTARIO_ATUAL: TBCDField;
    qprodutosESTOQUE_INVENTARIO_ATUAL: TBCDField;
    qprodutosMARGEM_MINIMA: TBCDField;
    qprodutosPISCOFINS: TStringField;
    qprodutosREFERENCIA_FORNECEDOR: TStringField;
    qprodutosCOMISSAO1: TBCDField;
    qprodutosMARGEM_DESCONTO: TBCDField;
    qprodutosTAMANHO: TStringField;
    qprodutosCOR: TStringField;
    qprodutosINCIDENCIA_PISCOFINS: TStringField;
    qprodutosVEIC_CHASSI: TStringField;
    qprodutosVEIC_SERIE: TStringField;
    qprodutosVEIC_POTENCIA: TStringField;
    qprodutosVEIC_PESO_LIQUIDO: TStringField;
    qprodutosVEIC_PESO_BRUTO: TStringField;
    qprodutosVEIC_TIPO_COMBUSTIVEL: TStringField;
    qprodutosVEIC_RENAVAM: TStringField;
    qprodutosVEIC_ANO_FABRICACAO: TIntegerField;
    qprodutosVEIC_ANO_MODELO: TIntegerField;
    qprodutosVEIC_TIPO: TStringField;
    qprodutosVEIC_TIPO_PINTURA: TStringField;
    qprodutosVEIC_COD_COR: TStringField;
    qprodutosVEIC_COR: TStringField;
    qprodutosVEIC_VIN: TStringField;
    qprodutosVEIC_NUMERO_MOTOR: TStringField;
    qprodutosVEIC_CMKG: TStringField;
    qprodutosVEIC_CM3: TStringField;
    qprodutosVEIC_DISTANCIA_EIXO: TStringField;
    qprodutosVEIC_COD_MARCA: TStringField;
    qprodutosVEIC_ESPECIE: TStringField;
    qprodutosVEIC_CONDICAO: TStringField;
    qprodutosLOTE_FABRICACAO: TStringField;
    qprodutosLOTE_VALIDADE: TDateField;
    qprodutosMARGEM_AGREGADA: TBCDField;
    qprodutosCODBARRA_NOVARTIS: TStringField;
    qprodutosFARMACIA_DCB: TStringField;
    qprodutosFARMACIA_ABCFARMA: TStringField;
    qprodutosFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qprodutosFARMACIA_PRINCIPIOATIVO: TStringField;
    qprodutosULTIMA_COMPRA: TDateField;
    qprodutosFARMACIA_DATAVIGENCIA: TDateField;
    qprodutosFARMACIA_TIPO: TStringField;
    qprodutosUSA_COMBUSTIVEL: TStringField;
    qprodutosREFERENCIA: TStringField;
    qprodutosPERDA: TBCDField;
    qprodutosCOMPOSICAO1: TStringField;
    qprodutosCOMPOSICAO2: TStringField;
    qprodutosIAT: TStringField;
    qprodutosIPPT: TStringField;
    qprodutosSITUACAO_TRIBUTARIA: TStringField;
    qprodutosFLAG_SIS: TStringField;
    qprodutosFLAG_ACEITO: TStringField;
    qprodutosFLAG_EST: TStringField;
    qprodutosCSOSN: TStringField;
    qprodutosCODORIGINAL: TStringField;
    qprodutosCUSTO_ATACADO: TSingleField;
    qprodutosUNIDADE_ATACADO: TStringField;
    qprodutosQTDE_EMBALAGEMATACADO: TSingleField;
    qprodutosPMARGEM1: TSingleField;
    qprodutosPMARGEM2: TSingleField;
    qprodutosPMARGEM3: TSingleField;
    qprodutosPMARGEM4: TSingleField;
    qprodutosPMARGEM5: TSingleField;
    qprodutosPMARGEMATACADO1: TSingleField;
    qprodutosPMARGEMATACADO2: TSingleField;
    qprodutosPMARGEMATACADO3: TSingleField;
    qprodutosPMARGEMATACADO4: TSingleField;
    qprodutosPMARGEMATACADO5: TSingleField;
    qprodutosPMARGEMATACADO6: TSingleField;
    qprodutosPRECOATACADO1: TSingleField;
    qprodutosPRECOATACADO2: TSingleField;
    qprodutosPRECOATACADO3: TSingleField;
    qprodutosPRECOATACADO4: TSingleField;
    qprodutosPRECOATACADO5: TSingleField;
    qprodutosIND_CFOP: TStringField;
    qprodutosCFOP_DESC: TStringField;
    qprodutosUSA_LOTE: TIntegerField;
    qprodutosIND_CFOP_VENDA_DENTRO: TStringField;
    qprodutosCODCONTA: TStringField;
    qprodutosIND_CFOP_VENDA_FORA: TStringField;
    qprodutosIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    qprodutosIND_CFOP_DEVOLUCAO_FORA: TStringField;
    qprodutosIND_CFOP_GARANTIA_DENTRO: TStringField;
    qprodutosIND_CFOP_GARANTIA_FORA: TStringField;
    qprodutosUSA_TB_PC: TStringField;
    qprodutosATIVA: TStringField;
    qprodutosCEST: TStringField;
    Panel2: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btprocClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure ffffff0001MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
   // var tipo: string;
  end;

var
  FrmImporta_NFENET: TFrmImporta_NFENET;
   const
   sc_DragMove = $f012;
implementation

{$R *.dfm}

uses modulo;

procedure TFrmImporta_NFENET.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmImporta_NFENET.btprocClick(Sender: TObject);
var i,n:integer;
s :string;
begin
if MessageDlg('Essa importação é irreversível!'+ #13 + 'Deseja continuar?', mtConfirmation,
              [mbYes, mbNo], 0) = mrYes then
begin
    Memo2.Lines.Clear;
    memo2.Lines.Append('Serão processados ' + inttostr(open.Files.Count)+ ' arquivos ');

if open.Files.Count >0 then
for I := 0 to open.Files.Count -1 do
  begin
  memo2.Lines.Append('Arquivo Nº '+ inttostr(i));
    XML.LoadFromFile(open.Files[i]);

    //NFE
   // if Tipo.ItemIndex = 2 then
   // begin
        if XML.ChildNodes[1].NodeName <> 'nfeProc' then
        begin
              Memo2.Lines.Append('Arquivo Inválido : '+ open.Files[i]);

           end else begin


      try



        Memo2.Lines.Append(XML.ChildNodes[1].NodeName) ;
        nfe.NotasFiscais.LoadFromFile(open.Files[i]);

        //Memo2.Lines.Append(s );

        //DADOS
        qNFE.Open();
        qtabelas.Open();
        qEmitente.Open();
        qempresa.Open();
        qclientes.Open();
        qitens.Open();
       if not  qclientes.Locate('XCPF',nfe.NotasFiscais[i].nfe.Dest.CNPJCPF ,[]) then
       begin
         //codigo de adicionar o cliente da nota
         qclientes.Last;
         qtabelas.Locate('CODIGO','000025',[] );
         s:=  RightStr('000000' + qtabelasSEQUENCIA.Value.ToString  ,6);
         qclientes.Append;
          qclientesCODIGO.Value := s;
          qclientesNOME.Value := nfe.NotasFiscais[i].nfe.dest.xNome;
          qclientesAPELIDO.Value :=nfe.NotasFiscais[i].nfe.dest.xNome ;
          qclientesENDERECO.Value :=nfe.NotasFiscais[i].nfe.dest.EnderDest.xLgr ;
          qclientesBAIRRO.Value :=nfe.NotasFiscais[i].nfe.dest.EnderDest.xBairro;
          qclientesCIDADE.Value := nfe.NotasFiscais[i].nfe.dest.EnderDest.xMun ;
          qclientesUF.Value := nfe.NotasFiscais[i].nfe.dest.EnderDest.UF ;
          qclientesCEP.Value := LeftStr( nfe.NotasFiscais[i].nfe.dest.EnderDest.CEP.ToString(),5)
          + '-' + RightStr( nfe.NotasFiscais[i].nfe.dest.EnderDest.CEP.ToString(),3) ;

          qclientesNUMERO.Value :=nfe.NotasFiscais[i].nfe.dest.EnderDest.nro ;
          qclientesCPF.Value :=nfe.NotasFiscais[i].nfe.dest.CNPJCPF ;
          qclientesTELEFONE1.Value := nfe.NotasFiscais[i].nfe.dest.EnderDest.fone ;
          qclientesEMAIL.Value := nfe.NotasFiscais[i].nfe.dest.Email;
          qclientes.Post;
          qclientes.close;
          Memo2.Lines.Append('Adicionando Cliente: '+s);
            //alterar o codigo autoinc
          qtabelas.Edit ;
          qtabelasSEQUENCIA.Value :=qtabelasSEQUENCIA.Value +1;
          qtabelas.Post;
       end;

       s:=   RightStr('000000' + nfe.NotasFiscais[i].nfe.Ide.nNF.ToString,6) ;
        if not qNFE.Locate('NUMERO', s,[]) then
        begin
         Memo2.Lines.Append('Inserindo nota: '+s );
         qNFE.Append;
         qtabelas.Locate('CODIGO','000061',[] );
          qNFECODIGO.Value := RightStr('000000' + qtabelasSEQUENCIA.Value.toString,6);

          qNFENUMERO.Value := s;
          qNFECFOP.Value := nfe.NotasFiscais[i].nfe.det.Items[0].prod.cfop;
          qNFEDATA.Value := nfe.NotasFiscais[i].NFe.Ide.dEmi;
          qNFECODCLIENTE.Value  := qclientesCODIGO.Value ;
          qNFEVALOR_PRODUTOS.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vProd ;
          qNFETOTAL_NOTA.Value  := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vNF ;
          qNFEBASE_CALCULO.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vBC ;
          qNFEVALOR_ICMS.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vICMS ;
          qNFEBASE_SUB.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vBCST ;
          qNFEFRETE.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vFrete;
          qNFESEGURO.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vSeg ;
          qNFEOUTRAS_DESPESAS.Value := nfe.NotasFiscais[i].nfe.Total.ICMSTot.vOutro ;
          qNFEVALOR_TOTAL_IPI.Value :=nfe.NotasFiscais[i].nfe.Total.ICMSTot.vIPI ;
          qNFEITENS.Value :=nfe.NotasFiscais[i].nfe.Det.Count  ;
          qNFEDESCONTO.Value :=nfe.NotasFiscais[i].nfe.Total.ICMSTot.vDesc ;
          //qNFECODTRANSPORTADOR.Value :=  nfe.NotasFiscais[i].nfe.Transp.Transporta.
          qNFEPLACA.Value := nfe.NotasFiscais[i].nfe.Transp.veicTransp.placa ;
          qNFEPLACA_UF.Value := nfe.NotasFiscais[i].nfe.Transp.veicTransp.UF ;
          qNFEVOL_QTDE.Value := nfe.NotasFiscais[i].nfe.Transp.Vol.Count ;
          if nfe.NotasFiscais[i].nfe.Transp.Vol.Count >0 then
          begin
                qNFEVOL_ESPECIE.Value  :=nfe.NotasFiscais[i].nfe.Transp.Vol.Items[0].esp ;
          qNFEVOL_MARCA.Value :=   nfe.NotasFiscais[i].nfe.Transp.Vol.Items[0].marca ;
          qNFEVOL_NUMERO.Value  :=  nfe.NotasFiscais[i].nfe.Transp.Vol.Items[0].nVol;
          qNFEPESO_LIQUIDO.Value :=  nfe.NotasFiscais[i].nfe.Transp.Vol.Items[0].pesoL ;
          qNFEPESO_BRUTO.Value := nfe.NotasFiscais[i].nfe.Transp.Vol.Items[0].pesoB ;
          end;

       
          qNFESITUACAO.Value := nfe.NotasFiscais[i].nfe.procNFe.cStat; ;
          qNFEMOTIVO.Value :=nfe.NotasFiscais[i].nfe.procNFe.xMotivo ;
         if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 0      then
         begin
           qNFEFATURAMENTO_DATA1.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[0].dVenc ;
           qNFEFATURAMENTO_NUMERO1.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[0].nDup ;
            qNFEFATURAMENTO_VALOR1.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[0].vDup ;

         end;

           if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 1      then
         begin
           qNFEFATURAMENTO_DATA2.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[1].dVenc ;
           qNFEFATURAMENTO_NUMERO2.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[1].nDup ;
            qNFEFATURAMENTO_VALOR2.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[1].vDup ;

         end;

              if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count >2      then
         begin
           qNFEFATURAMENTO_DATA3.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[2].dVenc ;
           qNFEFATURAMENTO_NUMERO3.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[2].nDup ;
            qNFEFATURAMENTO_VALOR3.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[2].vDup ;

         end;

             if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 3      then
         begin
           qNFEFATURAMENTO_DATA4.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[3].dVenc ;
           qNFEFATURAMENTO_NUMERO4.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[3].nDup ;
            qNFEFATURAMENTO_VALOR4.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[3].vDup ;

         end;

           if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 4      then
         begin
           qNFEFATURAMENTO_DATA5.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[4].dVenc ;
           qNFEFATURAMENTO_NUMERO5.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[4].nDup ;
            qNFEFATURAMENTO_VALOR5.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[4].vDup ;

         end;

           if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 5      then
         begin
           qNFEFATURAMENTO_DATA6.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[5].dVenc ;
           qNFEFATURAMENTO_NUMERO6.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[5].nDup ;
            qNFEFATURAMENTO_VALOR6.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[5].vDup ;

         end;

           if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 6      then
         begin
           qNFEFATURAMENTO_DATA7.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[6].dVenc ;
           qNFEFATURAMENTO_NUMERO7.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[6].nDup ;
            qNFEFATURAMENTO_VALOR7.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[6].vDup ;

         end;

           if  nfe.NotasFiscais[i].nfe.Cobr.Dup.Count > 7     then
         begin
           qNFEFATURAMENTO_DATA8.Value := nfe.NotasFiscais[i].nfe.Cobr.Dup[7].dVenc ;
           qNFEFATURAMENTO_NUMERO8.Value  := nfe.NotasFiscais[i].nfe.Cobr.Dup[7].nDup ;
            qNFEFATURAMENTO_VALOR8.Value:= nfe.NotasFiscais[i].nfe.Cobr.Dup[7].vDup ;

         end;

         qNFECODFILIAL.Value := '000001';

         qNFEOBS1.Value :=  nfe.NotasFiscais[i].nfe.InfAdic.infAdFisco ;
         qNFEOBS2.Value :=  nfe.NotasFiscais[i].nfe.InfAdic.infCpl  ;
         qNFEDATA_SAIDA.Value :=  nfe.NotasFiscais[i].nfe.procNFe.dhRecbto  ;
         qNFEHORA.Value:= FormatDateTime('hh:mm:ss',nfe.NotasFiscais[i].nfe.procNFe.dhRecbto)  ;
         //qNFESITUACAO_A.Value :='';
         qNFESERIE_NF.Value := nfe.NotasFiscais[i].nfe.ide.serie.ToString();
         qNFEMODELO_NF.Value := nfe.NotasFiscais[i].nfe.ide.modelo.ToString();
       //  qNFEVALOR_ISENTO_ICMS.Value :=  nfe.NotasFiscais[i].nfe.Total.ICMSTot.
         qNFEALIQUOTA_ICMS.Value :=   nfe.NotasFiscais[i].nfe.Total.ICMSTot.vICMS ;
         qNFESIT.Value := 'N';
         //qNFECODLANCAMENTO.Value :=
         qNFEMOVIMENTO.Value :='S';
         qNFEBAIXA_ESTOQUE.Value :='S';
         qNFEFAT_GERAR_RECEBER.Value :=1;
         qNFEFAT_GERAR_DUPLICATA.Value :=1;

         qNFEPIS.Value :=nfe.NotasFiscais[i].nfe.Total.ICMSTot.vPIS ;

         qNFECOFINS.Value :=nfe.NotasFiscais[i].nfe.Total.ICMSTot.vCOFINS ;
          qNFECODVENDEDOR.Value := 'S/VEND';
          qNFEOPERACAO.Value :='V';
          qNFENFE_SITUACAO.Value := nfe.NotasFiscais[i].nfe.procNFe.cStat ;
          qNFESITUACAO.Value :=1;
          qNFENFE_XML.Value :='C:\OneMaker\Server\nfe\XML\NFe\'+ nfe.NotasFiscais[i].nfe.procNFe.chNFe +'-nfe.xml' ;
          nfe.NotasFiscais[i].GravarXML(nfe.NotasFiscais[i].nfe.procNFe.chNFe +'-nfe.xml','C:\OneMaker\Server\nfe\XML\NFe\');
          qNFEINDUSTRIALIZACAO.Value :='N';
          qNFEPERDA.Value := 'N';

          qNFECHAVE.Value := nfe.NotasFiscais[i].nfe.procNFe.chNFe ;
          qNFENATUREZA.Value :=nfe.NotasFiscais[i].nfe.Ide.natOp ;
                 if nfe.NotasFiscais[i].nfe.Ide.finNFe = fnNormal then qNFETIPO_FINALIDADE.Value:=0;
                 if nfe.NotasFiscais[i].nfe.Ide.finNFe = fnComplementar then qNFETIPO_FINALIDADE.Value:=1;
                 if nfe.NotasFiscais[i].nfe.Ide.finNFe = fnAjuste then qNFETIPO_FINALIDADE.Value:=2;
                 if nfe.NotasFiscais[i].nfe.Ide.finNFe = fnDevolucao then qNFETIPO_FINALIDADE.Value:=3;
          //qNFETIPO_FINALIDADE.Value :=nfe.NotasFiscais[i].nfe.Ide.finNFe;

          qNFESEQEVENTO.Value :=1;
          qNFE.Post;
           Memo2.Lines.Append('OK');
          //alterar o codigo autoinc
          qtabelas.Edit ;
          qtabelasSEQUENCIA.Value :=qtabelasSEQUENCIA.Value +1;
          qtabelas.Post;

          //itens da nota

          for n := 0 to nfe.NotasFiscais[i].NFe.Det.Count  -1  do
          begin
          try


            qitens.Append;
            qitensCODNOTA.Value :=  qNFECODIGO.Value;
            qitensCODPRODUTO.Value := RightStr('000000'+nfe.NotasFiscais[i].nfe.Det[n].Prod.cProd,6);
            qitensQTDE.Value:=  nfe.NotasFiscais[i].nfe.Det[n].Prod.qCom ;
            qitensUNITARIO.Value:= nfe.NotasFiscais[i].nfe.Det[n].Prod.vUnCom;

            qitensTOTAL.Value:= nfe.NotasFiscais[i].nfe.Det[n].Prod.vProd ;
            qitensIPI.Value:= nfe.NotasFiscais[i].nfe.Det[n].Imposto.IPI.vIPI ;
            qitensICMS.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.vICMS ;
            qitensCFOP.Value :=nfe.NotasFiscais[i].nfe.Det[n].Prod.CFOP ;
            //qitensSERIAL  :=nfe.NotasFiscais[i].nfe.Det[n].prod.
            qitensVALOR_IPI.Value   :=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.IPI.vIPI;
           // qitensCLASSIFICACAO_FISCAL.Value := nfe.NotasFiscais[i].nfe.Det[n].Prod.
            qitensCST.Value :=  CSTIPIToStr(nfe.NotasFiscais[i].nfe.Det[n].Imposto.IPI.CST) ;
            qitensVALOR_ICMS.Value :=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.vICMS  ;
            qitensBASE_CALCULO.Value :=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.vBC ;
            qitensMARGEM_AGREGADA.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.pMVAST;
            qitensBASE_SUB.Value:=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.icms.vBCST  ;
           qitensICMS_SUB.Value :=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.vICMSST;
           // qitensISENTO.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.
            //qitensCODLANCAMENTO
            qitensDESCONTO.Value := nfe.NotasFiscais[i].nfe.Det[n].Prod.vDesc ;
            //qitensSUBTOTAL:= nfe.NotasFiscais[i].nfe.Det[n].Prod.
           // qitensPESO_BRUTO.Value := nfe.NotasFiscais[i].nfe.Det[n].Prod.
           // qitensPESO_LIQUIDO.Value := nfe.NotasFiscais[i].nfe.Det[n]
            qitensITEM.Value  := nfe.NotasFiscais[i].nfe.Det[n].Prod.nItem ;
           // qitensGRADE.Value :=
            qitensOUTRAS.Value := nfe.NotasFiscais[i].nfe.Det[n].Prod.vOutro;
            qitensPIS_ALIQUOTA.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.PIS.vAliqProd ;
            qitensCOFINS_BASE.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.COFINS.vBC ;
            qitensCOFINS_VALOR.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.COFINS.vCOFINS ;

            qitensCODBARRA.Value := nfe.NotasFiscais[i].nfe.Det[n].Prod.cEAN ;
            //qitensALTERA_ITEM
            qitensCSOSN.Value := CSOSNIcmsToStr( nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.CSOSN);
            //qitensCOMPLEMENTO
            //qitensCEST


            qitens.Post;
             Memo2.Lines.Append('Item: ' + qitensITEM.AsString + ' da Nota: '+s );
            //adicionar na tabela de produtos
            qprodutos.Open();
            if not qprodutos.Locate('CODIGO',qitensCODPRODUTO.Value,[])  then
             begin
               qprodutos.Append;
               qprodutosCODIGO.Value :=qitensCODPRODUTO.Value;
               qprodutosCODBARRA.Value:= qitensCODBARRA.Value;
               qprodutosPRODUTO.Value:= nfe.NotasFiscais[i].nfe.Det[n].Prod.xProd ;
               qprodutosUNIDADE.Value:= nfe.NotasFiscais[i].nfe.Det[n].Prod.uCom ;
               qprodutosDATA_CADASTRO.AsDateTime  := Now;
               //qprodutosCODGRUPO.Value :=
               qprodutosNOTAFISCAL.Value:=qNFENUMERO.Value;
               qprodutosPRECOVENDA.Value:= qitensUNITARIO.Value;
               qprodutosDATA_ULTIMAVENDA.Value:= qNFEDATA.Value;
               qprodutosCST.Value:=  CSTIPIToStr( nfe.NotasFiscais[i].nfe.Det[n].Imposto.IPI.CST);
               //qprodutosNBM.Value :=
               qprodutosNCM.Value :=nfe.NotasFiscais[i].nfe.Det[n].Prod.NCM  ;
               //qprodutosALIQUOTA.Value := nfe.NotasFiscais[i].nfe.Det[n].Imposto.ICMS.
               qprodutosIPI.Value  :=  nfe.NotasFiscais[i].nfe.Det[n].Imposto.IPI.vIPI;
               qprodutosSITUACAO.Value :=  0;
               qprodutosSITUACAO_TRIBUTARIA.Value:=nfe.NotasFiscais[i].nfe.Det[n].Prod.NCM ;
               qprodutosTIPO.Value := '00 - Mercadoria para Revenda' ;
               qprodutosFLAG_SIS.Value  :='S';
               qprodutosCEST.Value :='0';
               qprodutos.Post;
                      Memo2.Lines.Append('Adicionando Produto: '+qitensCODPRODUTO.Value );
                 //alterar o codigo autoinc
                  qtabelas.Locate('CODIGO','000025',[] );
              qtabelas.Edit ;
              if qitensCODPRODUTO.AsInteger >= qtabelasSEQUENCIA.AsInteger  then
                 qtabelasSEQUENCIA.Value :=qitensCODPRODUTO.AsInteger +1;
              qtabelas.Post;
             end;


          finally
          if qitens.State in [dsinsert,dsedit]  then qitens.Cancel;
           if qprodutos.State in [dsinsert,dsedit]  then qprodutos.Cancel;

                   memo2.lines.Append( 'Erro ao inserir produtos! ');
          end;

          end;



        end;

        // emissor
        s:=  ReplaceStr(qEmitenteCNPJ.Value ,'.','');
        s:=  ReplaceStr(s,'/','');
          s:=  ReplaceStr(s,'-','');
      if   nfe.NotasFiscais[i].nfe.Emit.CNPJCPF <> s then
      begin
      qEmitente.Edit;
        qEmitenteFILIAL.Value := nfe.NotasFiscais[i].nfe.Emit.xNome ;
        qEmitenteENDERECO.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xLgr + ', '+
        nfe.NotasFiscais[i].nfe.Emit.EnderEmit.nro ;
        qEmitenteCIDADE.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xMun ;
        qEmitenteUF.Value :=nfe.NotasFiscais[i].nfe.Emit.EnderEmit.UF ;
        qEmitenteCEP.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.CEP.ToString();
        qEmitenteTELEFONE.Value  := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.fone ;
        qEmitenteCNPJ.Value :=nfe.NotasFiscais[i].nfe.Emit.CNPJCPF ;
        qEmitenteNUMERO.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.nro ;
        qEmitenteBAIRRO.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xBairro ;
        qEmitenteCOD_MUNICIPIO_IBGE.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.cMun.ToString();

       qEmitente.Post;

        qempresa.Edit;
        qempresaNOME.Value:= nfe.NotasFiscais[i].nfe.Emit.xNome ;
        qempresaFANTASIA.Value :=  nfe.NotasFiscais[i].nfe.Emit.xFant ;
        qempresaENDERECO.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xLgr ;
        qempresaBAIRRO.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xBairro ;
        qempresaCIDADE.Value :=nfe.NotasFiscais[i].nfe.Emit.EnderEmit.xMun ;
        qempresaUF.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.UF ;
        qempresaCEP.Value:= nfe.NotasFiscais[i].nfe.Emit.EnderEmit.CEP.ToString();
        qempresaTELEFONE.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.fone;
        qempresaCNPJ.Value := nfe.NotasFiscais[i].nfe.Emit.CNPJCPF ;
        qempresaNUMERO.Value:= nfe.NotasFiscais[i].nfe.Emit.EnderEmit.nro ;
        qempresaCOD_MUNICIPIO_IBGE.Value := nfe.NotasFiscais[i].nfe.Emit.EnderEmit.cMun.ToString();
        qempresa.Post;

        Memo2.Lines.Append('Emitente Alterado');
      end;


      Except
      on E : Exception do
      memo2.lines.Append( 'Erro: '+E.Message);

      end;

    //end; //fim da NFE
      end;



  end;

  //finalizando as tabelas
    qNFE.close();
        qtabelas.close();
        qEmitente.close();
        qempresa.close();
        qclientes.close();
        qitens.close();
end;

end;

procedure TFrmImporta_NFENET.ffffff0001MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TFrmImporta_NFENET.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
if open.Execute() then
if open.Files.Count > 0 then
  begin


  Memo1.Clear ;
  for I := 0 to open.Files.Count -1 do
  Memo1.Lines.Append(open.Files[i] );


  end;

end;

end.
