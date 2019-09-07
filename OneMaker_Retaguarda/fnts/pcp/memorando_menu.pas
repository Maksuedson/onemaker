unit memorando_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  ImgList, frxClass, frxPreview, StdCtrls, RzEdit, Grids, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, Mask, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, DBCtrls, RzDBNav, RzDBEdit,
  Collection, RzPanel, System.ImageList, JvExMask, JvToolEdit;

type
  Tfrmmemorando_menu = class(TForm)
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Bfiltrar: TAdvGlowButton;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvPage2: TAdvPage;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    qrmemorando: TZQuery;
    dsmemorando: TDataSource;
    qrfornecedor: TZQuery;
    qrapoio: TZQuery;
    Qrsoma: TZQuery;
    qrmemorando_entrada: TZQuery;
    dsmemorando_entrada: TDataSource;
    dsnotafiscal_item: TDataSource;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrnotafiscal: TZQuery;
    dsnotafiscal: TDataSource;
    RzDBNavigator1: TRzDBNavigator;
    HeaderView1: THeaderView;
    Label3: TLabel;
    HeaderView2: THeaderView;
    Label5: TLabel;
    grid: TwwDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label10: TLabel;
    RzDBEdit5: TRzDBEdit;
    Label11: TLabel;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    Label12: TLabel;
    RzDBEdit13: TRzDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RzDBEdit14: TRzDBEdit;
    Label16: TLabel;
    AdvOfficeStatusBar15: TAdvOfficeStatusBar;
    Label18: TLabel;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    Label17: TLabel;
    Label19: TLabel;
    RzDBEdit15: TRzDBEdit;
    Label20: TLabel;
    RzDBEdit16: TRzDBEdit;
    Label21: TLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    Label22: TLabel;
    RzDBEdit21: TRzDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    pop: TPopupMenu;
    Incluir1: TMenuItem;
    IMprimir1: TMenuItem;
    Retorna1: TMenuItem;
    Label25: TLabel;
    Alterar1: TMenuItem;
    apagar1: TMenuItem;
    ememorando: TRzEdit;
    pesquisa1: TMenuItem;
    qrcliente: TZQuery;
    qrmemorandocliente: TStringField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrapoioCODPRODUTO: TWideStringField;
    qrapoioPRODUTO: TWideStringField;
    qrapoioCF: TWideStringField;
    qrapoioSTR: TWideStringField;
    qrapoioUN: TWideStringField;
    qrapoioQTDE: TWideStringField;
    qrapoioUNITARIO: TWideStringField;
    qrapoioTOTAL: TWideStringField;
    qrapoioICMS: TWideStringField;
    qrapoioIPI: TWideStringField;
    qrapoioIPI_ALIQUOTA: TWideStringField;
    qrapoioTEXTO1: TWideStringField;
    qrapoioTEXTO2: TWideStringField;
    qrapoioTEXTO3: TWideStringField;
    qrapoioTEXTO4: TWideStringField;
    qrapoioTEXTO6: TWideStringField;
    qrapoioTEXTO7: TWideStringField;
    qrapoioTEXTO8: TWideStringField;
    qrapoioTEXTO9: TWideStringField;
    qrapoioTEXTO10: TWideStringField;
    qrapoioCLASSIFICACAO_FISCAL: TWideStringField;
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
    qrclienteDATA_CADASTRO: TDateField;
    qrclienteDATA_ULTIMACOMPRA: TDateField;
    qrclienteOBS1: TWideStringField;
    qrclienteOBS2: TWideStringField;
    qrclienteOBS3: TWideStringField;
    qrclienteOBS4: TWideStringField;
    qrclienteOBS5: TWideStringField;
    qrclienteOBS6: TWideStringField;
    qrclienteNASCIMENTO: TWideStringField;
    qrclienteCODREGIAO: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    qrclienteCODUSUARIO: TWideStringField;
    qrclienteNUMERO: TWideStringField;
    qrclienteRG_ORGAO: TWideStringField;
    qrclienteRG_ESTADO: TWideStringField;
    qrclienteRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateField;
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
    qrfornecedorNOME: TWideStringField;
    qrfornecedorAPELIDO: TWideStringField;
    qrfornecedorENDERECO: TWideStringField;
    qrfornecedorBAIRRO: TWideStringField;
    qrfornecedorCIDADE: TWideStringField;
    qrfornecedorUF: TWideStringField;
    qrfornecedorCEP: TWideStringField;
    qrfornecedorCOMPLEMENTO: TWideStringField;
    qrfornecedorMORADIA: TIntegerField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorSITUACAO: TIntegerField;
    qrfornecedorTELEFONE1: TWideStringField;
    qrfornecedorTELEFONE2: TWideStringField;
    qrfornecedorTELEFONE3: TWideStringField;
    qrfornecedorCELULAR: TWideStringField;
    qrfornecedorEMAIL: TWideStringField;
    qrfornecedorRG: TWideStringField;
    qrfornecedorCPF: TWideStringField;
    qrfornecedorFILIACAO: TWideStringField;
    qrfornecedorESTADOCIVIL: TWideStringField;
    qrfornecedorCONJUGE: TWideStringField;
    qrfornecedorPROFISSAO: TWideStringField;
    qrfornecedorEMPRESA: TWideStringField;
    qrfornecedorRENDA: TFloatField;
    qrfornecedorLIMITE: TFloatField;
    qrfornecedorREF1: TWideStringField;
    qrfornecedorREF2: TWideStringField;
    qrfornecedorCODVENDEDOR: TWideStringField;
    qrfornecedorDATA_CADASTRO: TDateField;
    qrfornecedorDATA_ULTIMACOMPRA: TDateField;
    qrfornecedorOBS1: TWideStringField;
    qrfornecedorOBS2: TWideStringField;
    qrfornecedorOBS3: TWideStringField;
    qrfornecedorOBS4: TWideStringField;
    qrfornecedorOBS5: TWideStringField;
    qrfornecedorOBS6: TWideStringField;
    qrfornecedorNASCIMENTO: TWideStringField;
    qrfornecedorCODREGIAO: TWideStringField;
    qrfornecedorCODCONVENIO: TWideStringField;
    qrfornecedorCODUSUARIO: TWideStringField;
    qrfornecedorNUMERO: TWideStringField;
    qrfornecedorRG_ORGAO: TWideStringField;
    qrfornecedorRG_ESTADO: TWideStringField;
    qrfornecedorRG_EMISSAO: TDateField;
    qrfornecedorSEXO: TWideStringField;
    qrfornecedorHISTORICO: TBlobField;
    qrfornecedorPREVISAO: TDateField;
    qrfornecedorCNAE: TWideStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrfornecedorIBGE: TWideStringField;
    qrfornecedorTAMANHO_CALCA: TWideStringField;
    qrfornecedorTAMANHO_BLUSA: TWideStringField;
    qrfornecedorTAMANHO_SAPATO: TWideStringField;
    qrfornecedorCORRESP_ENDERECO: TWideStringField;
    qrfornecedorCORRESP_BAIRRO: TWideStringField;
    qrfornecedorCORRESP_CIDADE: TWideStringField;
    qrfornecedorCORRESP_UF: TWideStringField;
    qrfornecedorCORRESP_CEP: TWideStringField;
    qrfornecedorCORRESP_COMPLEMENTO: TWideStringField;
    qrfornecedorRG_PRODUTOR: TWideStringField;
    qrfornecedorRESP1_NOME: TWideStringField;
    qrfornecedorRESP1_CPF: TWideStringField;
    qrfornecedorRESP1_RG: TWideStringField;
    qrfornecedorRESP1_PROFISSAO: TWideStringField;
    qrfornecedorRESP1_ESTADO_CIVIL: TWideStringField;
    qrfornecedorRESP1_ENDERECO: TWideStringField;
    qrfornecedorRESP1_BAIRRO: TWideStringField;
    qrfornecedorRESP1_CIDADE: TWideStringField;
    qrfornecedorRESP1_UF: TWideStringField;
    qrfornecedorRESP1_CEP: TWideStringField;
    qrfornecedorRESP2_NOME: TWideStringField;
    qrfornecedorRESP2_CPF: TWideStringField;
    qrfornecedorRESP2_RG: TWideStringField;
    qrfornecedorRESP2_PROFISSAO: TWideStringField;
    qrfornecedorRESP2_ESTADO_CIVIL: TWideStringField;
    qrfornecedorRESP2_ENDERECO: TWideStringField;
    qrfornecedorRESP2_BAIRRO: TWideStringField;
    qrfornecedorRESP2_CIDADE: TWideStringField;
    qrfornecedorRESP2_UF: TWideStringField;
    qrfornecedorRESP2_CEP: TWideStringField;
    qrfornecedorFOTO: TWideStringField;
    qrfornecedorCONDPGTO: TWideStringField;
    qrmemorandoCODIGO: TWideStringField;
    qrmemorandoDATA: TDateField;
    qrmemorandoMEMORANDO: TWideStringField;
    qrmemorandoNOTAFISCAL: TWideStringField;
    qrmemorandoNOTAFISCAL_MODELO: TWideStringField;
    qrmemorandoNOTAFISCAL_SERIE: TWideStringField;
    qrmemorandoNOTAFISCAL_DATA: TDateField;
    qrmemorandoDESPACHO: TWideStringField;
    qrmemorandoDESPACHO_DATA: TDateField;
    qrmemorandoREGISTRO: TWideStringField;
    qrmemorandoREGISTRO_DATA: TDateField;
    qrmemorandoCONHECIMENTO_EMBARQUE: TWideStringField;
    qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateField;
    qrmemorandoESTADO_FABRICANTE: TWideStringField;
    qrmemorandoPAIS_DESTINO: TWideStringField;
    qrmemorandoCODFORNECEDOR: TWideStringField;
    qrmemorandoCONHECIMENTO: TWideStringField;
    qrmemorandoCONHECIMENTO_MODELO: TWideStringField;
    qrmemorandoCONHECIMENTO_SERIE: TWideStringField;
    qrmemorandoCONHECIMENTO_DATA: TDateField;
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
    qrmemorando_entradaMEMORANDO: TWideStringField;
    qrmemorando_entradaNOTAFISCAL: TWideStringField;
    qrmemorando_entradaNF_DATA: TDateField;
    qrmemorando_entradaNF_MODELO: TWideStringField;
    qrmemorando_entradaNF_SERIE: TWideStringField;
    qrmemorando_entradaNF_QUANTIDADE: TFloatField;
    qrmemorando_entradaNF_UNIDADE: TWideStringField;
    qrnotafiscalCODIGO: TWideStringField;
    qrnotafiscalNUMERO: TWideStringField;
    qrnotafiscalCFOP: TWideStringField;
    qrnotafiscalDATA: TDateField;
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
    qrnotafiscalFATURAMENTO_DATA1: TDateField;
    qrnotafiscalFATURAMENTO_DATA2: TDateField;
    qrnotafiscalFATURAMENTO_DATA3: TDateField;
    qrnotafiscalFATURAMENTO_DATA4: TDateField;
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
    qrnotafiscalDATA_SAIDA: TDateField;
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
    qrnotafiscalFATURAMENTO_DATA5: TDateField;
    qrnotafiscalFATURAMENTO_DATA6: TDateField;
    qrnotafiscalFATURAMENTO_NUMERO5: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO6: TWideStringField;
    qrnotafiscalFATURAMENTO_VALOR5: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR6: TFloatField;
    qrnotafiscalFATURAMENTO_DATA7: TDateField;
    qrnotafiscalFATURAMENTO_DATA8: TDateField;
    qrnotafiscalFATURAMENTO_DATA9: TDateField;
    qrnotafiscalFATURAMENTO_NUMERO7: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO8: TWideStringField;
    qrnotafiscalFATURAMENTO_NUMERO9: TWideStringField;
    qrnotafiscalFATURAMENTO_VALOR7: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR8: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR9: TFloatField;
    qrnotafiscalCHAVE: TWideStringField;
    qrnotafiscalNATUREZA: TWideStringField;
    qrnotafiscalTIPO_FINALIDADE: TIntegerField;
    qrnotafiscalSEQEVENTO: TIntegerField;
    procedure bfecharClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure balterarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure dsmemorandoDataChange(Sender: TObject; Field: TField);
    procedure Incluir1Click(Sender: TObject);
    procedure IMprimir1Click(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure apagar1Click(Sender: TObject);
    procedure ememorandoEnter(Sender: TObject);
    procedure ememorandoKeyPress(Sender: TObject; var Key: Char);
    procedure ememorandoExit(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure pesquisa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    vopcao: integer;
    { Public declarations }
  end;

var
  frmmemorando_menu: Tfrmmemorando_menu;

implementation

uses memorando, principal, modulo, notafiscal_impressao,
  memorando_impressao;

{$R *.dfm}

procedure Tfrmmemorando_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmmemorando_menu.Sair2Click(Sender: TObject);
begin
  bfecharClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.bincluirClick(Sender: TObject);
var
  vcodigo: integer;
begin
  vopcao := 1;
  frmmemorando := Tfrmmemorando.create(self);

  qrmemorando.Open;
  qrmemorando.Last;
  if qrmemorando.RecordCount > 0 then
    frmmemorando.ememorando.Text := frmprincipal.zerarcodigo(inttostr(strtoint(qrmemorandoCODIGO.AsString) + 1), 6)
  else
    frmmemorando.ememorando.Text := '000001';

  frmmemorando.edata.Date := date;
  frmmemorando.esituacao.Text := '1';
  frmmemorando.showmodal;

end;

procedure Tfrmmemorando_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure Tfrmmemorando_menu.balterarClick(Sender: TObject);
begin
  vopcao := 2;

  frmmemorando := Tfrmmemorando.create(self);

  qrmemorando_entrada.close;
  qrmemorando_entrada.sql.clear;
  qrmemorando_entrada.sql.add('select * from c000095 where memorando = ''' + qrmemorando.fieldbyname('memorando').asstring + '''');
  qrmemorando_entrada.open;

  if qrmemorando.RecordCount > 0 then
    frmmemorando.enotafiscal_entrada.Text := qrmemorando_entradaNOTAFISCAL.AsString;

  frmmemorando.showmodal;
end;

procedure Tfrmmemorando_menu.bimprimirClick(Sender: TObject);
var f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA, cfops: INTEGER;

  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  vnotafiscal: string;

begin

  if qrmemorando.fieldbyname('codfornecedor').asstring <> '' then
  begin
    frmmodulo.qrfornecedor.close;
    frmmodulo.qrfornecedor.sql.clear;
    frmmodulo.qrfornecedor.sql.add('select * from c000007 where codigo = ''' + qrmemorando.fieldbyname('codfornecedor').asstring + '''');
    frmmodulo.qrfornecedor.open;
  end;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' + qrmemorando.fieldbyname('transportador_codigo').asstring + '''');
  frmmodulo.qrtransportador.open;

  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004');
  qrapoio.open;

  frmmodulo.qrconfig.open;

  nnota := 0;
  vvalor_cfop1 := 0;
  vvalor_cfop2 := 0;

  I := 1;

  qrnotafiscal.Close;
  qrnotafiscal.SQL.Clear;
  qrnotafiscal.SQL.Add('select * from c000061 where numero = ''' + qrmemorando.FieldByName('notafiscal').AsString + '''');
  qrnotafiscal.Open;

  if qrnotafiscal.RecordCount > 0 then
  begin
    vnotafiscal := qrnotafiscalCODIGO.AsString;

    qrnotafiscal_item.Close;
    qrnotafiscal_item.SQL.Clear;
    qrnotafiscal_item.SQL.Add('select * from c000062 where codnota = ''' + vnotafiscal + '''');
    qrnotafiscal_item.Open;

    qrmemorando_entrada.Close;
    qrmemorando_entrada.SQL.Clear;
    qrmemorando_entrada.SQL.Add('select * from c000095 where memorando = ''' + qrmemorando.FieldByName('memorando').AsString + '''');
    qrmemorando_entrada.Open;
  end;

  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;

  qrsoma.close;
  qrsoma.sql.clear;
  qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = ''' + frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring + '''');
  qrsoma.sql.add('and cfop = ''' + qrnotafiscal_item.fieldbyname('cfop').asstring + '''');
  qrsoma.open;
  vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
  vcfop1 := qrnotafiscal_item.fieldbyname('cfop').asstring;


  cfop := qrnotafiscal_item.fieldbyname('cfop').asstring;
  cfops := 1;
  while not qrnotafiscal_item.eof do
  begin
    if I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger then
    begin
      while I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger do
      begin
        I := I + 1;
        if I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger then
        begin
          qrapoio.INSERT;
          qrapoio.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
          qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          qrapoio.POST;
        end
        else
        begin
          qrapoio.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger then
          begin
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          end;
          qrapoio.POST;
        end;
      end;
      qrapoio.INSERT;
      qrapoio.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      qrapoio.POST;
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);

      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;


      qrapoio.post;
      NNOTA := NNOTA + 1;
      I := 2;
    end
    else
    begin
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);

      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;
      qrapoio.post;

    end;



    if cfops = 1 then
    begin
      if qrnotafiscal_item.fieldbyname('cfop').ASSTRING <> '' then
      begin
        if cfop <> qrnotafiscal_item.fieldbyname('cfop').asstring then
        begin
          cfop := cfop + '/' + qrnotafiscal_item.fieldbyname('cfop').asstring;

          qrsoma.close;
          qrsoma.sql.clear;
          qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = ''' + frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring + '''');
          qrsoma.sql.add('and cfop = ''' + qrnotafiscal_item.fieldbyname('cfop').asstring + '''');
          qrsoma.open;
          vvalor_cfop2 := qrsoma.fieldbyname('total_geral').asfloat;
          vcfop2 := qrnotafiscal_item.fieldbyname('cfop').asstring;

          cfops := 2;
        end;
      end;

    end;

    qrnotafiscal_item.next;
    I := I + 1;
  end;

  while i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger do
  begin
    qrapoio.INSERT;
    qrapoio.POST;
    i := i + 1;
  end;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  if frmmodulo.qrnotafiscalDESCONTO.AsFloat > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := 'DESCONTO INCONDICIONAL : R$ ' + FORMATFLOAT('###,###,##0.00', frmmodulo.qrnotafiscalDESCONTO.AsFloat)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := '';

  if vvalor_cfop1 > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'SUB-TOTAL DO CFOP ' + vcfop1 + ' = R$ ' + FORMATFLOAT('###,###,##0.00', vvalor_cfop1)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := '';

  if vvalor_cfop2 > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := 'SUB-TOTAL DO CFOP ' + vcfop2 + ' = R$ ' + FORMATFLOAT('###,###,##0.00', vvalor_cfop2)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '';

  frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := cfop;

  frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := vvalor_cfop1;
  frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := vvalor_cfop2;

  frmmodulo.qrrelatorio.post;

  QRAPOIO.Refresh;

  frmmemorando_impressao := Tfrmmemorando_impressao.create(self);
  frmmemorando_impressao.showmodal;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

end;

procedure Tfrmmemorando_menu.dsmemorandoDataChange(Sender: TObject;
  Field: TField);
var
  vnotafiscal: string;
begin

{
  qrnotafiscal.Close;
  qrnotafiscal.SQL.Clear;
  qrnotafiscal.SQL.Add('select * from c000061 where numero = ''' + qrmemorando.FieldByName('notafiscal').AsString + '''');
  qrnotafiscal.Open;

  if qrnotafiscal.RecordCount > 0 then
    begin
      vnotafiscal := qrnotafiscalCODIGO.AsString;

      qrnotafiscal_item.Close;
      qrnotafiscal_item.SQL.Clear;
      qrnotafiscal_item.SQL.Add('select * from c000062 where codnota = ''' + vnotafiscal + '''');
      qrnotafiscal_item.Open;

      qrmemorando_entrada.Close;
      qrmemorando_entrada.SQL.Clear;
      qrmemorando_entrada.SQL.Add('select * from c000095 where memorando = ''' + qrmemorando.FieldByName('memorando').AsString + '''');
      qrmemorando_entrada.Open;
   end;
}
end;

procedure Tfrmmemorando_menu.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.IMprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.Retorna1Click(Sender: TObject);
begin
  bfecharClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta memorando?', 'Excluir', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
  begin
    if frmprincipal.autentica('Exluir NF', 4) then
    begin

      qrmemorando_entrada.Close;
      qrmemorando_entrada.SQL.CLEAR;
      qrmemorando_entrada.SQL.ADD('DELETE FROM C000095 WHERE memorando = ''' + qrmemorando.FIELDBYNAME('memorando').ASSTRING + '''');
      qrmemorando_entrada.ExecSQL;

      qrmemorando.delete;

      frmmodulo.Conexao.commit;
    end;
  end;

end;

procedure Tfrmmemorando_menu.apagar1Click(Sender: TObject);
begin
  bexcluirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.ememorandoEnter(Sender: TObject);
begin
  TRzEdit(sender).Color := $00A0FAF8;

end;

procedure Tfrmmemorando_menu.ememorandoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmmemorando_menu.ememorandoExit(Sender: TObject);
begin
  TRzEdit(sender).Color := clwindow;
  ememorando.Text := frmprincipal.zerarcodigo(ememorando.Text, 6);

end;

procedure Tfrmmemorando_menu.BfiltrarClick(Sender: TObject);
var
  nota: string;
begin
  if (ememorando.text = '000000') or (ememorando.text = '') then nota := '' else nota := ' and memorando = ''' + ememorando.text + '''';

  qrmemorando.close;
  qrmemorando.sql.clear;
  qrmemorando.SQL.add('select * from c000094 where data BETWEEN :datai and :dataf ' + nota + ' order by data');
  qrmemorando.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrmemorando.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrmemorando.open;

  ememorando.Text := '';
  grid.SetFocus;

end;

procedure Tfrmmemorando_menu.pesquisa1Click(Sender: TObject);
begin
  ememorando.SetFocus;
end;

procedure Tfrmmemorando_menu.FormShow(Sender: TObject);
begin
  dateedit1.text := '01/' + copy(datetostr(date), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);

  grid.SetFocus;
end;

procedure Tfrmmemorando_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

procedure Tfrmmemorando_menu.DateEdit2Exit(Sender: TObject);
begin
  BfiltrarClick(frmmemorando_menu);
end;

end.
