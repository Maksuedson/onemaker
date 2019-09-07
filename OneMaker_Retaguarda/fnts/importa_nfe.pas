unit importa_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrNFe, OleCtrls, SHDocVw, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Mask, ExtCtrls, RzPanel, XMLIntf, XMLDoc,
  DBAccess, pcnConversaoNFE, pcnConversao, pcnNFeW, Menus, RzPrgres, ImgList, wwdblook,
  RzDBEdit, DBCtrls, RzCmboBx, RzDBCmbo, RzDBSpin, RzEdit, RzDBBnEd,
  AdvGlowButton, RzTabs, AdvShapeButton, jpeg, frxClass, frxDBSet, frxDesgn,
  ACBrBase, ACBrValidador, AdvReflectionImage, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, inifiles, System.ImageList, ACBrDFe,
  JvExStdCtrls, JvEdit, JvValidateEdit, vcl.Wwdbedit, acPNG;

type
  Tfrmimporta_nfe = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    qrnota: TZQuery;
    qritem: TZQuery;
    dsnota: TwwDataSource;
    dsitem: TwwDataSource;
    query: TZQuery;
    enota: TEdit;
    eserie: TEdit;
    emodelo: TEdit;
    enota_uf: TEdit;
    edata_emissao: TEdit;
    edata_saida: TEdit;
    ecod_municipio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edv: TEdit;
    Label8: TLabel;
    eid: TEdit;
    enatureza: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eemitente: TEdit;
    Label12: TLabel;
    edestinatario: TEdit;
    ecnpj_emitente: TEdit;
    ecnpj_destinatario: TEdit;
    ebase_calculo: TJvValidateEdit;
    evalor_icms: TJvValidateEdit;
    ebase_substituicao: TJvValidateEdit;
    evalor_substituicao: TJvValidateEdit;
    evalor_produtos: TJvValidateEdit;
    efrete: TJvValidateEdit;
    eseguro: TJvValidateEdit;
    eoutras_despesas: TJvValidateEdit;
    evalor_ipi: TJvValidateEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edesconto: TJvValidateEdit;
    Label24: TLabel;
    evalor_pis: TJvValidateEdit;
    Label25: TLabel;
    evalor_cofins: TJvValidateEdit;
    Label26: TLabel;
    evalor_isento: TJvValidateEdit;
    RzPanel1: TRzPanel;
    Label27: TLabel;
    Label28: TLabel;
    ecod_fornecedor: TEdit;
    ecod_destinatario: TEdit;
    qrproduto_mov: TZQuery;
    eicms_retido: TJvValidateEdit;
    Label29: TLabel;
    Label30: TLabel;
    evalor_itemespecial: TJvValidateEdit;
    Label31: TLabel;
    ecfop: TEdit;
    Label32: TLabel;
    ecredito_icms: TJvValidateEdit;
    qrproduto: TZQuery;
    qrfornecedor_codigo: TZQuery;
    Label33: TLabel;
    Label34: TLabel;
    emunicipio_emitente: TEdit;
    emunicipio_destinatario: TEdit;
    eitems: TJvValidateEdit;
    Label35: TLabel;
    etipo_venda: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    bsair: TBitBtn;
    pop1: TPopupMenu;
    sair1: TMenuItem;
    euf_emitente: TEdit;
    euf_destinatario: TEdit;
    qritemchave: TIntegerField;
    ImageList1: TImageList;
    bgravar: TBitBtn;
    bimporta: TBitBtn;
    qrtransportador: TZQuery;
    qrplano: TZQuery;
    qrplanogrupo: TStringField;
    qrnotaconta: TStringField;
    qrplano2: TZQuery;
    dspagar: TDataSource;
    qrpagar: TZQuery;
    blimpa_variavel: TBitBtn;
    evalor_nota: TJvValidateEdit;
    Label14: TLabel;
    bexcluir: TBitBtn;
    bprodutos: TBitBtn;
    lstatus: TLabel;
    bcancelar: TBitBtn;
    bimprime: TBitBtn;
    fximprime: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsitem: TfrxDBDataset;
    fsnota: TfrxDBDataset;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    balterar: TAdvGlowButton;
    qraux: TZQuery;
    qrpagarCODIGO: TWideStringField;
    qrpagarCODCONTA: TWideStringField;
    qrpagarCODFORNECEDOR: TWideStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarDOCUMENTO: TWideStringField;
    qrpagarNOTAFISCAL: TWideStringField;
    qrpagarHISTORICO: TWideStringField;
    qrpagarC: TWideStringField;
    qrpagarE: TWideStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TWideStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TWideStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TWideStringField;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCODEMPRESA: TWideStringField;
    qrnotaCODFORNECEDOR: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaCFOP: TWideStringField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TWideStringField;
    qrnotaTRANSP_FRETE: TWideStringField;
    qrnotaTRANSP_PLACA: TWideStringField;
    qrnotaTRANSP_PLACAUF: TWideStringField;
    qrnotaTRANSP_IE: TWideStringField;
    qrnotaTRANSP_CNPJ: TWideStringField;
    qrnotaTRANSP_ENDERECO: TWideStringField;
    qrnotaTRANSP_CIDADE: TWideStringField;
    qrnotaTRANSP_UF: TWideStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TWideStringField;
    qrnotaTRANSP_MARCA: TWideStringField;
    qrnotaTRANSP_NUMERO: TWideStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaOBS6: TWideStringField;
    qrnotaOBS7: TWideStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaNOTA_FISCAL: TWideStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaCODREMETENTE: TWideStringField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    qrnotaOBS8: TWideStringField;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrnotaCHAVE: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoCST: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrfornecedor_codigoCODFORNECEDOR: TWideStringField;
    qrfornecedor_codigoCODPRODUTO: TWideStringField;
    qrfornecedor_codigoCODIGO: TWideStringField;
    qrfornecedor_codigoPRECO: TFloatField;
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
    qrauxCODFORNECEDOR: TWideStringField;
    qrauxCODPRODUTO: TWideStringField;
    qrauxCODIGO: TWideStringField;
    qrauxPRECO: TFloatField;
    QryCadastraProduto: TZQuery;
    ACBrValidador1: TACBrValidador;
    qryestoque: TZQuery;
    bar: TRzProgressBar;
    btn_importNFeSefaz: TAdvGlowButton;
    etipo_nota: TEdit;
    qrpagarDATA_EMISSAO: TDateField;
    qrpagarDATA_VENCIMENTO: TDateField;
    qrpagarDATA_PAGAMENTO: TDateField;
    qryestoqueCODPRODUTO: TWideStringField;
    qryestoqueCODFILIAL: TWideStringField;
    qryestoqueESTOQUE_INICIAL: TFloatField;
    qryestoqueENTRADAS: TFloatField;
    qryestoqueSAIDAS: TFloatField;
    qryestoqueESTOQUE_ATUAL: TFloatField;
    dtfldULTIMA_ENTRADA: TDateField;
    dtfldULTIMA_SAIDA: TDateField;
    qryestoqueNOTA_FISCAL: TWideStringField;
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrproduto_movDATA: TDateField;
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
    qrproduto_movVENCIMENTO: TDateField;
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
    dtfldDATA1: TDateField;
    qrtransportadorTIPO: TIntegerField;
    qrtransportadorNUMERO: TWideStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportadorIBGE: TWideStringField;
    qrtransportadorANTT: TWideStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaDATA_LANCAMENTO: TDateField;
    qritemCODIGO: TWideStringField;
    qritemITEM: TWideStringField;
    qritemCODNOTA: TWideStringField;
    qritemCODPRODUTO: TWideStringField;
    qritemCODLANCAMENTO: TWideStringField;
    qritemUN_COMPRA: TWideStringField;
    qritemUN_FRACAO: TWideStringField;
    qritemFRACAO: TFloatField;
    qritemCST: TWideStringField;
    qritemCFOP: TWideStringField;
    qritemQTDE: TFloatField;
    qritemUNITARIO: TFloatField;
    qritemSUBTOTAL: TFloatField;
    qritemDESCONTO: TFloatField;
    qritemTOTAL: TFloatField;
    qritemDESCONTO_P: TFloatField;
    qritemICMS_RETIDO: TWideStringField;
    qritemICMS_ALIQUOTA: TFloatField;
    qritemICMS_REDUCAO: TFloatField;
    qritemICMS_BASE: TFloatField;
    qritemICMS_VALOR: TFloatField;
    qritemICMS_VALORRETIDO: TFloatField;
    qritemICMS_ISENTO: TFloatField;
    qritemICMS_NAOTRIBUTADO: TFloatField;
    qritemSUB_MARGEM: TFloatField;
    qritemSUB_BASE: TFloatField;
    qritemSUB_VALOR: TFloatField;
    qritemIPI_TIPO: TWideStringField;
    qritemIPI_ALIQUOTA: TFloatField;
    qritemIPI_BASE: TFloatField;
    qritemIPI_VALOR: TFloatField;
    qritemDATA: TDateField;
    qritemTIPO: TIntegerField;
    qritemNOTAFISCAL: TWideStringField;
    qritemFRETE: TFloatField;
    qritemOUTRAS: TFloatField;
    qritemSEGURO: TFloatField;
    qritemCLASSIFICACAO_FISCAL: TWideStringField;
    qritemSUB_PRODUTOS: TFloatField;
    qritemCODFORNECEDOR: TWideStringField;
    qritemITEM_ESPECIAL_VALOR: TFloatField;
    qritemICMS_OUTRAS: TFloatField;
    qritemALTERA_ITEM: TIntegerField;
    qritemCREDITO_ICMS: TFloatField;
    qritemCREDITO_ICMS_BASE: TFloatField;
    qritemPIS_BASE: TFloatField;
    qritemPIS: TFloatField;
    qritemCOFINS_BASE: TFloatField;
    qritemCOFINS: TFloatField;
    qritemLOTE_FABRICACAO: TWideStringField;
    qritemLOTE_VALIDADE: TDateField;
    qritemLOTE_FABRICACAO_DATA: TDateField;
    qritemCODBARRA: TWideStringField;
    qritemPRODUTO: TWideStringField;
    qritemPMARGEM: TSingleField;
    qritemPRECOVENDA: TSingleField;
    qritemPRECOCUSTO: TSingleField;
    QryCadastraProdutoCODIGO: TWideStringField;
    QryCadastraProdutoCODBARRA: TWideStringField;
    QryCadastraProdutoPRODUTO: TWideStringField;
    QryCadastraProdutoUNIDADE: TWideStringField;
    QryCadastraProdutoDATA_CADASTRO: TDateField;
    QryCadastraProdutoCODGRUPO: TWideStringField;
    QryCadastraProdutoCODSUBGRUPO: TWideStringField;
    QryCadastraProdutoCODFORNECEDOR: TWideStringField;
    QryCadastraProdutoCODMARCA: TWideStringField;
    QryCadastraProdutoDATA_ULTIMACOMPRA: TDateField;
    QryCadastraProdutoNOTAFISCAL: TWideStringField;
    QryCadastraProdutoPRECOCUSTO: TFloatField;
    QryCadastraProdutoPRECOVENDA: TFloatField;
    QryCadastraProdutoDATA_ULTIMAVENDA: TDateField;
    QryCadastraProdutoESTOQUE: TFloatField;
    QryCadastraProdutoESTOQUEMINIMO: TFloatField;
    QryCadastraProdutoCODALIQUOTA: TWideStringField;
    QryCadastraProdutoAPLICACAO: TWideMemoField;
    QryCadastraProdutoLOCALICAZAO: TWideStringField;
    QryCadastraProdutoPESO: TFloatField;
    QryCadastraProdutoVALIDADE: TWideStringField;
    QryCadastraProdutoCOMISSAO: TFloatField;
    QryCadastraProdutoUSA_BALANCA: TIntegerField;
    QryCadastraProdutoUSA_SERIAL: TIntegerField;
    QryCadastraProdutoUSA_GRADE: TIntegerField;
    QryCadastraProdutoCODRECEITA: TWideStringField;
    QryCadastraProdutoFOTO: TWideStringField;
    QryCadastraProdutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    QryCadastraProdutoNOTAFISCAL_ANTERIOR: TWideStringField;
    QryCadastraProdutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    QryCadastraProdutoPRECOCUSTO_ANTERIOR: TFloatField;
    QryCadastraProdutoPRECOVENDA_ANTERIOR: TFloatField;
    QryCadastraProdutoCUSTOMEDIO: TFloatField;
    QryCadastraProdutoAUTO_APLICACAO: TWideStringField;
    QryCadastraProdutoAUTO_COMPLEMENTO: TWideStringField;
    QryCadastraProdutoDATA_REMARCACAO_CUSTO: TDateField;
    QryCadastraProdutoDATA_REMARCACAO_VENDA: TDateField;
    QryCadastraProdutoPRECO_PROMOCAO: TFloatField;
    QryCadastraProdutoDATA_PROMOCAO: TDateField;
    QryCadastraProdutoFIM_PROMOCAO: TDateField;
    QryCadastraProdutoCST: TWideStringField;
    QryCadastraProdutoCLASSIFICACAO_FISCAL: TWideStringField;
    QryCadastraProdutoNBM: TWideStringField;
    QryCadastraProdutoNCM: TWideStringField;
    QryCadastraProdutoALIQUOTA: TFloatField;
    QryCadastraProdutoIPI: TFloatField;
    QryCadastraProdutoREDUCAO: TFloatField;
    QryCadastraProdutoQTDE_EMBALAGEM: TFloatField;
    QryCadastraProdutoTIPO: TWideStringField;
    QryCadastraProdutoPESO_LIQUIDO: TFloatField;
    QryCadastraProdutoFARMACIA_CONTROLADO: TWideStringField;
    QryCadastraProdutoFARMACIA_APRESENTACAO: TIntegerField;
    QryCadastraProdutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    QryCadastraProdutoFARMACIA_PMC: TFloatField;
    QryCadastraProdutoULTIMA_ALTERACAO: TDateField;
    QryCadastraProdutoULTIMA_CARGA: TDateField;
    QryCadastraProdutoDATA_INVENTARIO: TDateField;
    QryCadastraProdutoCUSTO_INVENTARIO: TFloatField;
    QryCadastraProdutoESTOQUE_INVENTARIO: TFloatField;
    QryCadastraProdutoESTOQUE_ANTERIOR: TFloatField;
    QryCadastraProdutoPRECOVENDA_NOVO: TFloatField;
    QryCadastraProdutoUSA_RENTABILIDADE: TIntegerField;
    QryCadastraProdutoQUANTIDADE_MINIMA_FAB: TFloatField;
    QryCadastraProdutoAPRESENTACAO: TWideStringField;
    QryCadastraProdutoSITUACAO: TIntegerField;
    QryCadastraProdutoPRECOVENDA1: TFloatField;
    QryCadastraProdutoPRECOVENDA2: TFloatField;
    QryCadastraProdutoPRECOVENDA3: TFloatField;
    QryCadastraProdutoPRECOVENDA4: TFloatField;
    QryCadastraProdutoPRECOVENDA5: TFloatField;
    QryCadastraProdutoDESCONTO_PRECOVENDA: TFloatField;
    QryCadastraProdutoDATA_INVENTARIO_ATUAL: TDateField;
    QryCadastraProdutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    QryCadastraProdutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    QryCadastraProdutoMARGEM_MINIMA: TFloatField;
    QryCadastraProdutoPISCOFINS: TWideStringField;
    QryCadastraProdutoREFERENCIA_FORNECEDOR: TWideStringField;
    QryCadastraProdutoCOMISSAO1: TFloatField;
    QryCadastraProdutoMARGEM_DESCONTO: TFloatField;
    QryCadastraProdutoTAMANHO: TWideStringField;
    QryCadastraProdutoCOR: TWideStringField;
    QryCadastraProdutoINCIDENCIA_PISCOFINS: TWideStringField;
    QryCadastraProdutoVEIC_CHASSI: TWideStringField;
    QryCadastraProdutoVEIC_SERIE: TWideStringField;
    QryCadastraProdutoVEIC_POTENCIA: TWideStringField;
    QryCadastraProdutoVEIC_PESO_LIQUIDO: TWideStringField;
    QryCadastraProdutoVEIC_PESO_BRUTO: TWideStringField;
    QryCadastraProdutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    QryCadastraProdutoVEIC_RENAVAM: TWideStringField;
    QryCadastraProdutoVEIC_ANO_FABRICACAO: TIntegerField;
    QryCadastraProdutoVEIC_ANO_MODELO: TIntegerField;
    QryCadastraProdutoVEIC_TIPO: TWideStringField;
    QryCadastraProdutoVEIC_TIPO_PINTURA: TWideStringField;
    QryCadastraProdutoVEIC_COD_COR: TWideStringField;
    QryCadastraProdutoVEIC_COR: TWideStringField;
    QryCadastraProdutoVEIC_VIN: TWideStringField;
    QryCadastraProdutoVEIC_NUMERO_MOTOR: TWideStringField;
    QryCadastraProdutoVEIC_CMKG: TWideStringField;
    QryCadastraProdutoVEIC_CM3: TWideStringField;
    QryCadastraProdutoVEIC_DISTANCIA_EIXO: TWideStringField;
    QryCadastraProdutoVEIC_COD_MARCA: TWideStringField;
    QryCadastraProdutoVEIC_ESPECIE: TWideStringField;
    QryCadastraProdutoVEIC_CONDICAO: TWideStringField;
    QryCadastraProdutoLOTE_FABRICACAO: TWideStringField;
    QryCadastraProdutoLOTE_VALIDADE: TDateField;
    QryCadastraProdutoMARGEM_AGREGADA: TFloatField;
    QryCadastraProdutoCODBARRA_NOVARTIS: TWideStringField;
    QryCadastraProdutoFARMACIA_DCB: TWideStringField;
    QryCadastraProdutoFARMACIA_ABCFARMA: TWideStringField;
    QryCadastraProdutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    QryCadastraProdutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    QryCadastraProdutoULTIMA_COMPRA: TDateField;
    QryCadastraProdutoFARMACIA_DATAVIGENCIA: TDateField;
    QryCadastraProdutoFARMACIA_TIPO: TWideStringField;
    QryCadastraProdutoUSA_COMBUSTIVEL: TWideStringField;
    QryCadastraProdutoREFERENCIA: TWideStringField;
    QryCadastraProdutoPERDA: TFloatField;
    QryCadastraProdutoCOMPOSICAO1: TWideStringField;
    QryCadastraProdutoCOMPOSICAO2: TWideStringField;
    QryCadastraProdutoIAT: TWideStringField;
    QryCadastraProdutoIPPT: TWideStringField;
    QryCadastraProdutoSITUACAO_TRIBUTARIA: TWideStringField;
    QryCadastraProdutoFLAG_SIS: TWideStringField;
    QryCadastraProdutoFLAG_ACEITO: TWideStringField;
    QryCadastraProdutoFLAG_EST: TWideStringField;
    QryCadastraProdutoCSOSN: TWideStringField;
    QryCadastraProdutoCODORIGINAL: TWideStringField;
    QryCadastraProdutoCUSTO_ATACADO: TSingleField;
    QryCadastraProdutoUNIDADE_ATACADO: TWideStringField;
    QryCadastraProdutoQTDE_EMBALAGEMATACADO: TSingleField;
    QryCadastraProdutoPMARGEM1: TSingleField;
    QryCadastraProdutoPMARGEM2: TSingleField;
    QryCadastraProdutoPMARGEM3: TSingleField;
    QryCadastraProdutoPMARGEM4: TSingleField;
    QryCadastraProdutoPMARGEM5: TSingleField;
    QryCadastraProdutoPMARGEMATACADO1: TSingleField;
    QryCadastraProdutoPMARGEMATACADO2: TSingleField;
    QryCadastraProdutoPMARGEMATACADO3: TSingleField;
    QryCadastraProdutoPMARGEMATACADO4: TSingleField;
    QryCadastraProdutoPMARGEMATACADO5: TSingleField;
    QryCadastraProdutoPMARGEMATACADO6: TSingleField;
    QryCadastraProdutoPRECOATACADO1: TSingleField;
    QryCadastraProdutoPRECOATACADO2: TSingleField;
    QryCadastraProdutoPRECOATACADO3: TSingleField;
    QryCadastraProdutoPRECOATACADO4: TSingleField;
    QryCadastraProdutoPRECOATACADO5: TSingleField;
    QryCadastraProdutoIND_CFOP: TWideStringField;
    QryCadastraProdutoCFOP_DESC: TWideStringField;
    QryCadastraProdutoUSA_LOTE: TIntegerField;
    QryCadastraProdutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    QryCadastraProdutoCODCONTA: TWideStringField;
    QryCadastraProdutoIND_CFOP_VENDA_FORA: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    QryCadastraProdutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    QryCadastraProdutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    QryCadastraProdutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    QryCadastraProdutoUSA_TB_PC: TWideStringField;
    QryCadastraProdutoATIVA: TWideStringField;
    QryCadastraProdutoCEST: TWideStringField;
    Button_margem: TButton;
    page_dados: TRzPageControl;
    TabSheet1: TRzTabSheet;
    wwDBGrid2: TwwDBGrid;
    wwDBEditPreco: TwwDBEdit;
    wwDBEditMargem: TwwDBEdit;
    DBEditFracao: TwwDBEdit;
    comboproduto: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    DBEditCodBarra: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    TabSheet2: TRzTabSheet;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    dbedit4: TwwDBLookupCombo;
    TabSheet3: TRzTabSheet;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel3: TBevel;
    bgerar: TAdvGlowButton;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    wwDBGrid1: TwwDBGrid;
    Panel7: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    TabSheet4: TRzTabSheet;
    tbshetlog: TRzTabSheet;
    memo1: TMemo;
    AdvGlowButton5: TAdvGlowButton;
    btmarg01l: TAdvGlowButton;
    Image1: TImage;
    procedure bimportaClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure sair1Click(Sender: TObject);
    procedure qritemCalcFields(DataSet: TDataSet);
    procedure blimpa_variavelClick(Sender: TObject);
    procedure econtaButtonClick(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure bexcluirClick(Sender: TObject);
    procedure bprodutosClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure eidEnter(Sender: TObject);
    procedure eidExit(Sender: TObject);
    procedure bgerarClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btn_importNFeSefazClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure Button_margemClick(Sender: TObject);
    procedure btmarg01lClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure CadastraFornecedor;
    Function CadastrarProduto(CodProdutoXML, CodBarras, Produto, CodFornecedor,
      Unidade, NCM, csosn, cst: string; IPI, qtdEmbalagem: double): Boolean;
    Function CodBarrasValido(cod: string): string;
    procedure VerificaProdutos;
    procedure Inicia_NFedown;
    { Public declarations }
    function RemoveAcento(s: String): String;
    function lettersNotAccents(Str: String): String;
  end;

var
  frmimporta_nfe: Tfrmimporta_nfe;
  altera_custo: integer;
  continua: Boolean;
  aceita_inclusao: Boolean;
  CodigoProdutoNovo, NomeProduto, vcod_produto, vcodBarra_produto: string;
  pMargem, vPrecoVenda, pDFixas: double;

implementation

uses ACBrNFeNotasFiscais, pcnNFe, MaskUtils, loc_conta, modulo, principal,
  Produto, UFuncoes, status, MargemLucro;

{$R *.dfm}


procedure Tfrmimporta_nfe.bimportaClick(Sender: TObject);
var
  x, i: integer;
  vid, vnat, vnota, vserie, vcfop, vmodelo, vemissao, vsaida, vuf,
    vcodmunicipio, vdv: string;
  vemitente, vdestinatario, vemitente_cnpj, vdestinatario_cnpj: string;
  vcod_item, vcod_fornecedor, vcod_produto: string;
  vcidade, vcep, vcomplemento, vtelefone1, vtelefone2, vfax, vcontato1,
    vcontato2: string;
  vcelular1, vcelular2, vemail, vhomepage, vcnpj, vie, vbanco, vagencia,
    vconta: string;
  vobs1, vobs2, vobs3, vnumero, vim, vcod_municipio_ibge, vibge: string;
  vnomeprod, vxBairro, vxLgr, vfantasia, vmunemitente, vmundestinatario: string;
  xvnomeprod, vcadprodnovo, vtipo, vassistencia_tecnica: integer;
  va: double;
  vdata: string;
  vfracao: double;
  idLote: string;
 lMsg: string;

begin

  continua := true;
  bcancelar.Enabled := true;

  page_dados.ActivePageIndex := 0;
  memo1.Clear;

      OpenDialog1.Title := 'Selecione a NFE';
      OpenDialog1.DefaultExt := '*.XML';
      OpenDialog1.Filter := '*.XML';
      // 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
      OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar ;

      if OpenDialog1.Execute then
     begin
      ACBrNFe1.NotasFiscais.Clear;


    try
      // ACBrNFe1.NotasFiscais.LoadFromFile(sArquivoXML);
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    except
      MessageDlg('XML inválido! Verifique.', mtError, [mbOK], 0);
      exit;
    end;

  // OpenDialog1.FileName := ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+eid.Text;

    { : ABRE AS AS TABELAS DE PRODUTOS }
    frmmodulo.qrproduto.Close;
    frmmodulo.qrproduto.sql.Clear;
    frmmodulo.qrproduto.sql.add('select * from c000025');
    frmmodulo.qrproduto.sql.add('Where codigo = ' + QuotedStr('X'));
    frmmodulo.qrproduto.sql.add('order by produto');
    frmmodulo.qrproduto.open;

    bimporta.Enabled := false;

    { : CARREGA O XML PARA O COMPONENTE }


    { : ALIMENTA AS VARIAVEIS CONFORME XML }
    vid := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    vnat := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;

    vnota := frmprincipal.zerarcodigo
      (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF), 6);
    vserie := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
    vmodelo := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
    vcfop := '';
    vuf := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF);

    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> ' / /') and
      (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> '30/12/1899')
    then
      vemissao := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi)
    else
      vemissao := '  /  /    ';

    if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> ' / /') and
      (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> '30/12/1899')
    then
      vsaida := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt)
    else
      vsaida := vemissao;

    vcodmunicipio := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
    vdv := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cDV);

    vemitente := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    vemitente_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    vmunemitente := IntToStr(ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Emit.EnderEmit.cMun);

    vdestinatario := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
    vdestinatario_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
    vmundestinatario := IntToStr(ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Dest.EnderDest.cMun);

    // tipo de nota (saida/entrada)

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnEntrada then
      etipo_nota.Text := 'S'
    else
      etipo_nota.Text := 'E';

    // tipo de venda (vista/prazo)
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag = ipVista then
      etipo_venda.Text := 'V'
    else
      etipo_venda.Text := 'P';

    { : ALIMENTA OS CAMPOS DO FORM COM INFORMAÇÕES DO XML }
    eid.Text := vid;
    enatureza.Text := vnat;
    enota.Text := vnota;
    emodelo.Text := vmodelo;
    eserie.Text := vserie;
    ecfop.Text := vcfop;

    enota_uf.Text := vuf;
    edata_emissao.Text := vemissao;
    edata_saida.Text := vsaida;
    ecod_municipio.Text := vcodmunicipio;
    edv.Text := vdv;
    eemitente.Text := vemitente;
    edestinatario.Text := vdestinatario;
    ecnpj_emitente.Text := FormatMaskText('99.999.999/9999-99;0;_',
      vemitente_cnpj);
    ecnpj_destinatario.Text := FormatMaskText('99.999.999/9999-99;0;_',
      vdestinatario_cnpj);

    euf_emitente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
    euf_destinatario.Text := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Dest.EnderDest.UF;

    emunicipio_emitente.Text := vmunemitente;
    emunicipio_destinatario.Text := vmundestinatario;

    ecod_fornecedor.Text := '';
    ecod_destinatario.Text := '000001';

    { : ABRE TABELA DE FORNECEDOR LOCALIZANDO O CNPJ }
    query.Close;
    query.sql.Clear;
    query.sql.add('select * from c000009');
    query.sql.add('where cnpj = ''' + ecnpj_emitente.Text + '''');
    query.open;

    { : SE O FORNECEDOR ESTIVER CADASTRADO INFORMA O CODIGO DO MESMO }
    if query.RecordCount > 0 then
    begin
      ecod_fornecedor.Text := query.fieldbyname('codigo').AsString;
      vcod_fornecedor := ecod_fornecedor.Text;
    end
    else
    begin { : SE O FORNECEDOR NÃO ESTIVER CADASTRADO - CADASTRA }
      CadastraFornecedor;
      ecod_fornecedor.Text := frmmodulo.qrfornecedorCODIGO.AsString;
      vcod_fornecedor := ecod_fornecedor.Text;
      {
        application.messagebox('Fornecedor Não Cadastrado ou CNPJ Inválido, Verifique!','Atenção',mb_ok+MB_ICONEXCLAMATION);
        blimpa_variavelClick(frmimporta_nfe);
        qritem.Close;
        qritem.SQL.Clear;
        qritem.SQL.Add('select * from c000088');
        qritem.SQL.Add('where codigo = ''XXXXXX''');
        qritem.Open;
        bimporta.Enabled := True;
        Exit;
      }
    end;

    x := 0;

    { : VERIFICA SE A NOTA JA FOI IMPORTADA ANTES }
    query.Close;
    query.sql.Clear;
    query.sql.add('select * from c000087 where numero = ''' +
      enota.Text + '''');
    query.sql.add('and codfornecedor = ''' + ecod_fornecedor.Text + '''');
    //query.sql.add('and modelo = ''' + emodelo.Text + '''');
    query.open;
    if query.RecordCount > 0 then
    begin
      application.messagebox('Nota Fiscal Já Importada! Verifique!', 'Atenção',
        mb_ok + mb_iconerror);
      // enumero.SetFocus;
      blimpa_variavelClick(frmimporta_nfe);
      qritem.Close;
      qritem.sql.Clear;
      qritem.sql.add('select * from c000088');
      qritem.sql.add('where codigo = ''XXXXXX''');
      qritem.open;
      exit;
    end;

    { : ABRE A TABELA DO CABEÇALHO DAS NOTAS }
    qrnota.Close;
    qrnota.sql.Clear;
    qrnota.sql.add('select * from c000087');
    qrnota.open;

    { : INSERE AS PRIMEIRAS INFORMAÇÕES DO XML }
    qrnota.Insert;
    qrnotaCODIGO.AsString := frmprincipal.codifica('000087');
    qrnotaTIPO.AsString := 'COMPRA P/ REVENDA';
    qrnotaNUMERO.AsString := enota.Text;
    qrnotaCHAVE.Value := eid.Text;
    qrnotaDESCONTO_INCIDENTE.ASFLOAT := 0;
    qrnotaOBS7.AsString := qrnotaCODIGO.AsString;
    qrnotaSITUACAO.AsInteger := 2;
    qrnotaBASEICMS_PRODUTOS.AsInteger := 1;
    frmimporta_nfe.qrnotaDATA_LANCAMENTO.AsDateTime := date;
    qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;

    { : ABRE A TABELA DE ITENS DA NOTA COM FILTRO DA NOTA SELECIONADA }
    qritem.Close;
    qritem.sql.Clear;
    qritem.sql.add('select * from c000088');
    qritem.sql.add('where codnota = ''' + qrnota.fieldbyname('codigo')
      .AsString + '''');
    qritem.sql.add('and notafiscal = ''' + enota.Text + '''');
    qritem.sql.add('order by item');

    qritem.open;

    { : QUANTIDA DE ITENS DA NOTA }
    eitems.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;

    application.ProcessMessages;

    { : ZERA A BARRA DE PROGRESSO }
    bar.PartsComplete := 0;
    bar.TotalParts := eitems.AsInteger;

    { : LOOP NO ITENS DO XML }
    for x := 0 to eitems.AsInteger - 1 do
    begin
      // frmprincipal.Aguarde('Aguarde', 'Importando Itens ' + IntToStr(x + 1) +
      // '/' + IntToStr(eitems.AsInteger), false, true, 0);

      CodigoProdutoNovo := '';
      vcod_produto := '';
      NomeProduto := '';
      vcodBarra_produto := '';
      vcod_item := frmprincipal.codifica('000032');

      { : VERIFICA SE EXISTE REFERENCIA DO PRODUTO DO XML AO FORNECEDOR }
      qrfornecedor_codigo.Close;
      qrfornecedor_codigo.sql.Clear;
      qrfornecedor_codigo.sql.add('select * from fornecedor_codigo');
      qrfornecedor_codigo.sql.add('where codfornecedor = ''' +
        ecod_fornecedor.Text + '''');
      qrfornecedor_codigo.sql.add('and codigo = ''' +
        ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd + '''');
      qrfornecedor_codigo.open;

      { : SE TIVER REFERENCIADO AO FORNECEDOR PELO COD XML }
      if qrfornecedor_codigo.RecordCount > 0 then
      begin
        vcod_produto := qrfornecedor_codigoCODPRODUTO.AsString;

        { : TENTA LOCALIZAR NO CADASTRO DE PRODUTOS - C000025 }
        query.Close;
        query.sql.Clear;
        query.sql.add('select * from c000025');
        query.sql.add('where codigo = ''' + vcod_produto + '''');
        query.open;

        { : Se Encontrou o produto no Cadastro }
        if query.RecordCount > 0 then
        begin
          vcod_produto := query.fieldbyname('codigo').AsString;
          // Pega o codigo do produto no estoque
          NomeProduto := query.fieldbyname('produto').AsString;
          vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
          vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

          { : VERIFICA A FRAÇÃO NO CADASTRO - C000025 }
          if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
            vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
          else
            vfracao := 1;
        end;
      end
      else { : Se nao tiver associado ao fornecedor }
      begin
        { : se tiver codigo de barra }
        if (frmprincipal.somenteNumero(ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Det.Items[x].Prod.cEAN) <> '') then
        begin
          query.Close;
          query.sql.Clear;
          query.sql.add('select * from c000025');
          query.sql.add('where codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0]
            .NFe.Det.Items[x].Prod.cEAN + '''');
          query.open;

          { : se Localizou o produto pelo cod barra do xml }
          if query.RecordCount > 0 then
          begin
            vcod_produto := query.fieldbyname('codigo').AsString;
            NomeProduto := query.fieldbyname('produto').AsString;
            vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
            vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

            if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
              vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
            else
              vfracao := 1;

          end;

        end
        else // Se nao tiver cod Barras e nao tiver referenciado
        begin
          vcod_produto := '';
          vfracao := 1;

          query.Close;
          query.sql.Clear;
          query.sql.add('select * from c000025');
          query.sql.add('where codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0]
            .NFe.Det.Items[x].Prod.cProd + '''');
          query.open;

          { : Se localizou o produto pelo cod barra na tag cod produto do xml }
          if query.RecordCount > 0 then
          begin
            vcod_produto := query.fieldbyname('codigo').AsString;
            NomeProduto := query.fieldbyname('produto').AsString;
            vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
            vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

            if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
              vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
            else
              vfracao := 1;

          end
          else
          begin
            // inicio
            vcodBarra_produto := '978100' + frmprincipal.zerarcodigo
              (IntToStr(strtoint(vcod_item)), 6);
            vcodBarra_produto := vcodBarra_produto +
              frmprincipal.CalculaDigEAN13
              (frmprincipal.somenteNumero(vcodBarra_produto));

          end;

        end; { : FIM - Se nao tiver cod Barras e nao tiver referenciado }

      end;

      // INSERE OS ITENS NO LANCAMENTO
      qritem.Insert;
      qritemCODIGO.AsString := vcod_item;
      qritemITEM.AsString := frmprincipal.zerarcodigo
        (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.nItem), 3);
      qritemCODNOTA.AsString := qrnota.fieldbyname('codigo').AsString;

      qritemCODPRODUTO.AsString := vcod_produto;

      if Length(CodBarrasValido(CodigoProdutoNovo)) > 0 then
        qritemCODBARRA.AsString := CodBarrasValido(CodigoProdutoNovo)
      else if Length(CodBarrasValido(vcod_produto)) > 0 then
        qritemCODBARRA.AsString := CodBarrasValido(vcod_produto)
      else if Length(vcodBarra_produto) > 0 then
        qritemCODBARRA.AsString := vcodBarra_produto
      else if Length(CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Det.Items[x].Prod.cProd)) > 0 then
        qritemCODBARRA.AsString :=
          CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.cProd);

      if (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) > 0)
        AND (Length(vcodBarra_produto) = 0) then
        qritemCODBARRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.cEAN;

      { : Coloca o nome do produto do cadastro caso esteja cadastrado }
      if Length(NomeProduto) > 0 then
        qritemPRODUTO.AsString := NomeProduto
      else
        qritemPRODUTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.xProd;

      qritemCODLANCAMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Det.Items[x].Prod.cProd;
      qritemUN_COMPRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
        [x].Prod.uTrib;
      qritemUN_FRACAO.AsString :=
        copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib, 1, 2);

      if vfracao <= 0 then
        vfracao := 1;

      qritemFRACAO.ASFLOAT := vfracao;

      // CST
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst00
      then
        qritemCST.AsString := '000'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst10
      then
        qritemCST.AsString := '010'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst20
      then
        qritemCST.AsString := '020'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst30
      then
        qritemCST.AsString := '030'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst40
      then
        qritemCST.AsString := '040'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst41
      then
        qritemCST.AsString := '041'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst50
      then
        qritemCST.AsString := '050'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst51
      then
        qritemCST.AsString := '051'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst60
      then
        qritemCST.AsString := '060'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst70
      then
        qritemCST.AsString := '070'
      else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst90
      then
        qritemCST.AsString := '090'
      else
        qritemCST.AsString := '';

      // CFOP
      if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5405') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5403')
      then
        qritemCFOP.AsString := '1403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '5101') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102')
      then
        qritemCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '6101') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6102')
      then
        qritemCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '6403') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102')
      then
        qritemCFOP.AsString := '2403'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '6910') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6911')
      then
        qritemCFOP.AsString := '2102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '5910') or
        (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5911')
      then
        qritemCFOP.AsString := '1102'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '5401') then
        qritemCFOP.AsString := '1401'
      else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.CFOP = '6401') then
        qritemCFOP.AsString := '2401'
      else
        qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.CFOP; // ''

      // qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
      if ecfop.Text = '' then
      begin
        ecfop.Text := qritemCFOP.AsString;
      end;

      qritemQTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.qCom;

      qritemSUBTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vProd;
      qritemDESCONTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vDesc;
      qritemTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vProd - ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vDesc;
      qritemUNITARIO.ASFLOAT := qritemTOTAL.ASFLOAT / qritemQTDE.ASFLOAT;

      qritemDESCONTO_P.ASFLOAT := 0;
      qritemFRETE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vFrete;
      qritemOUTRAS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vOutro;
      qritemSEGURO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Prod.vSeg;

      qritemICMS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.ICMS.vBC;
      qritemICMS_RETIDO.AsString := 'N';
      qritemICMS_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Det.Items[x].Imposto.ICMS.pICMS;

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBC > 0
      then
        qritemICMS_REDUCAO.ASFLOAT := 7
      else
        qritemICMS_REDUCAO.ASFLOAT := 0;

      // qritemICMS_REDUCAO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCST;

      qritemICMS_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
        [x].Imposto.ICMS.vICMS;;
      qritemICMS_VALORRETIDO.ASFLOAT := 0;
      qritemICMS_ISENTO.ASFLOAT := 0;
      qritemICMS_NAOTRIBUTADO.ASFLOAT := 0;

      qritemSUB_MARGEM.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
        [x].Imposto.ICMS.pMVAST;
      qritemSUB_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.ICMS.vBCST;
      qritemSUB_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.ICMS.vICMSST;
      qritemSUB_PRODUTOS.ASFLOAT := 0;

      qritemIPI_TIPO.ASFLOAT := 0;
      qritemIPI_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
        [x].Imposto.IPI.pIPI;
      qritemIPI_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.IPI.vBC;
      qritemIPI_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.IPI.vIPI;

      qritemDATA.AsDateTime := date;
      qritemTIPO.AsInteger := 0;
      qritemNOTAFISCAL.AsString := enota.Text;
      qritemCLASSIFICACAO_FISCAL.AsString := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Det.Items[x].Prod.NCM;
      qritemSUB_PRODUTOS.AsString := '';
      qritemCODFORNECEDOR.AsString := ecod_fornecedor.Text;
      qritemITEM_ESPECIAL_VALOR.ASFLOAT := 0;
      qritemALTERA_ITEM.AsInteger := 0;

      qritemCREDITO_ICMS.ASFLOAT := 0;
      qritemPIS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.PIS.vBC;
      qritemPIS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.PIS.vPIS;
      qritemCOFINS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
        [x].Imposto.COFINS.vBC;
      qritemCOFINS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
        .Imposto.COFINS.vCOFINS;

      // memo1.lines.add('MEDICAMENTOS ----------------------------------');

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Count > 0 then
      begin
        qritemLOTE_FABRICACAO.AsString := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Det.Items[x].Prod.med.Items[0].nLote;
        qritemLOTE_VALIDADE.AsString :=
          DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.med.Items[0].dVal);

        memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
          .Prod.med.Items[0].nLote);
        memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].qLote));
        memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].vPMC));
        memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].dFab));
        memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
          [x].Prod.med.Items[0].dFab));
      end
      else
      begin
        qritemLOTE_FABRICACAO.AsString := '';
        qritemLOTE_VALIDADE.AsString := '';
      end;

      { : PREÇOS }
      qritemPRECOCUSTO.ASFLOAT :=
        CalculaPreco((qritemTOTAL.ASFLOAT + qritemFRETE.ASFLOAT +
        qritemSEGURO.ASFLOAT + qritemOUTRAS.ASFLOAT + qritemIPI_VALOR.ASFLOAT) /
        (qritemQTDE.ASFLOAT) / qritemFRACAO.ASFLOAT, pDFixas);
      { adicionar no preço de custo o valor do icms ou o % do simples }
      // Temp

      if vPrecoVenda > 0 then
        qritemPRECOVENDA.ASFLOAT := vPrecoVenda
      else
        qritemPRECOVENDA.ASFLOAT := qritemPRECOCUSTO.ASFLOAT /
          qritemFRACAO.ASFLOAT;

      qritemPMARGEM.Value :=
        (((qritemPRECOVENDA.ASFLOAT - qritemPRECOCUSTO.ASFLOAT) /
        qritemPRECOCUSTO.ASFLOAT)) * 100;
      { : PREÇOS }

      {
        memo1.lines.add('ARMAS----------------------------------');
        memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].descr);
        memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nSerie));
        memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nCano));
      }

      // memo1.lines.add('CONBUSTIVEIS----------------------------------');

      bar.PartsComplete := bar.PartsComplete + 1;
      lstatus.caption := '[ ' + frmprincipal.zerarcodigo
        (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem),
        3) + ' ] ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +
        ' | ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd;
      application.ProcessMessages;

      if not continua then
        break;

    end; { : FIM - loop FOR }
    // frmprincipal.FechaAguarde;

    qritem.First;

    if not continua then
    begin

      bar.Percent := 0;
      lstatus.caption := '...';

      qrnota.Close;
      qrnota.sql.Clear;
      qrnota.sql.add('select * from c000087');
      qrnota.sql.add('where codigo = ''XXXXXX''');
      qrnota.open;

      qritem.Close;
      qritem.sql.Clear;
      qritem.sql.add('select * from c000088');
      qritem.sql.add('where codigo = ''XXXXXX''');
      qritem.open;

      blimpa_variavelClick(frmimporta_nfe);

      exit;
    end;

    bar.Percent := 0;
    lstatus.caption := '';

    qritem.Refresh;

    ebase_calculo.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
    evalor_icms.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
    ebase_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Total.ICMSTot.vBCST;
    evalor_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Total.ICMSTot.vST;

    efrete.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    eseguro.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
    eoutras_despesas.Value := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Total.ICMSTot.vOutro;
    evalor_ipi.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;

    evalor_isento.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
    evalor_pis.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
    evalor_cofins.Value := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Total.ICMSTot.vCOFINS;

    edesconto.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    evalor_produtos.Value := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Total.ICMSTot.vProd;
    evalor_nota.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;

    // memo1.lines.add('TRANSPORTADORA----------------------------------');
    qrnotaTRANSP_NOME.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.xNome;
    qrnotaTRANSP_IE.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.IE;
    qrnotaTRANSP_CNPJ.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.CNPJCPF;
    qrnotaTRANSP_ENDERECO.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.xEnder;

    qrnotaTRANSP_NUMERO.AsString := '';
    qrnotaTRANSP_CIDADE.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.xMun;
    qrnotaTRANSP_UF.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.Transporta.UF;

    qrnotaTRANSP_PLACA.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.veicTransp.placa;
    qrnotaTRANSP_PLACAUF.AsString := ACBrNFe1.NotasFiscais.Items[0]
      .NFe.Transp.veicTransp.UF;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
      qrnotaTRANSP_FRETE.AsString := '1 - EMITENTE'
    else
      qrnotaTRANSP_FRETE.AsString := '2 - DESTINATÁRIO';

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
    begin
      qrnotaTRANSP_ESPECIE.AsString := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Transp.Vol.Items[0].esp;
      qrnotaTRANSP_MARCA.AsString := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Transp.Vol.Items[0].marca;

      qrnotaTRANSP_QTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Transp.Vol.Items[0].qVol;
      qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Transp.Vol.Items[0].pesoL;
      qrnotaTRANSP_PESOBRUTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
        .NFe.Transp.Vol.Items[0].pesoB;
    end;

    memo1.lines.add('VOLUME----------------------------------');
    memo1.lines.add('REBOQUE----------------------------------');

    qrpagar.Close;
    qrpagar.sql.Clear;
    qrpagar.sql.add('SELECT * FROM C000046 WHERE CODNOTA = ''' + enota.Text +
      ''' ORDER BY DATA_VENCIMENTO');
    qrpagar.open;

    if ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then
    begin
      econta.Text := '000025';
      qrnotaconta.AsString := 'FORNECEDORES';
      qrnotaOBS5.AsString := '000025';
      // frmmodulo.qrconfigPLANO_CONTA60.AsString;
      // '000019';
      qrnotaOBS6.AsString := 'Duplicata a Pagar';
      qrnotaOBS8.AsString :=
        Trim(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count));

      bar.PartsComplete := 0;
      bar.TotalParts := eitems.AsInteger;

      for x := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
      begin
        qrpagar.Insert;
        qrpagarCODIGO.AsString := frmprincipal.codifica('000046');;
        qrpagarDOCUMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Cobr.Dup.Items[x].nDup;
        qrpagarESPECIE.AsString := 'DUPLICATA';
        qrpagarHISTORICO.AsString := 'Duplicata a Pagar';
        qrpagarDATA_VENCIMENTO.AsDateTime := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Cobr.Dup.Items[x].dVenc;
        qrpagarVALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Cobr.Dup.Items[x].vDup;
        qrpagarVALORPAGO.ASFLOAT := 0;
        qrpagarDATA_EMISSAO.AsDateTime := date;
        qrpagarDATA_PAGAMENTO.AsString := '';
        qrpagarCODCONTA.AsString := frmmodulo.qrconfigPLANO_PAGTO_FORN.AsString;
        qrpagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
        qrpagarLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
          .NFe.Cobr.Dup.Items[x].vDup;
        qrpagarDESCONTO.ASFLOAT := 0;
        qrpagarACRESCIMO.ASFLOAT := 0;
        qrpagarNOTAFISCAL.AsString := enota.Text;
        qrpagarC.AsString := '';
        qrpagarE.AsString := '';
        qrpagarFILTRO.AsInteger := 0;
        qrpagarSITUACAO.AsInteger := 1;
        qrpagarCODNOTA.AsString := qrnotaNUMERO.AsString;
        qrpagarMOVIMENTO.AsInteger := 0;
        qrpagarCODCAIXA.AsString := '000099';
        qrpagar.Post;
      end;
    end;
    bgravar.Enabled := true;
    bimporta.Enabled := true;
    bcancelar.Enabled := false;
    lstatus.caption := '...';
   end;

 end;

procedure Tfrmimporta_nfe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.lines.SaveToFile(ExtractFileDir(application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName) + 'temp.xml');
end;

procedure Tfrmimporta_nfe.bgravarClick(Sender: TObject);
label inicia;
var
  vcodbarra: string;
  vcod_modelo: integer;
  vaceito, vnaoaceito: integer;
begin




  // frmprincipal.Aguarde('Aguarde', 'Faturando nota, efetuando lançamentos....',
  // false, true, 0);

  { : PREENCHE CONTAS A PAGAR CASO HAJA NO XML }
  if qrpagar.RecordCount > 0 then
  begin
    if econta.Text = '' then
    begin

      frmmodulo.QRCONFIG.open;
      if frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString <> '' then
        econta.Text := frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString
      else
      begin
        application.messagebox('Número da Conta Não Informada, Verifique!',
          'Atenção', mb_ok + MB_ICONEXCLAMATION);
        page_dados.ActivePageIndex := 2;
        econta.SetFocus;
        // frmprincipal.FechaAguarde;
        exit;
      end;
    end;
  end;

  frmmodulo.qrfiscal_modelo.Close;
  frmmodulo.qrfiscal_modelo.sql.Clear;
  frmmodulo.qrfiscal_modelo.sql.add
    ('select * from c000082 where sintegra = ''55''');
  frmmodulo.qrfiscal_modelo.open;

  if frmmodulo.qrfiscal_modelo.RecordCount = 0 then
  begin
    if application.messagebox
      ('Modelo 55 Nota Fiscal Eletrônica Não Cadastrado, Deseja Cria-lo?',
      'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
    begin
      query.Close;
      query.sql.Clear;
      query.sql.add('select * from c000082');
      query.sql.add('order by codigo');
      query.open;
      if query.RecordCount > 0 then
      begin
        query.Last;
        vcod_modelo := query.fieldbyname('codigo').AsInteger + 1;
        query.Append;
        query.fieldbyname('codigo').AsString :=
          frmprincipal.zerarcodigo(IntToStr(vcod_modelo), 2);
        query.fieldbyname('modelo').AsString := 'Nota Fiscal Eletronica';
        query.fieldbyname('sigla').AsString := 'NFE';
        query.fieldbyname('sintegra').AsString := '55';
        query.fieldbyname('tipo_registro').AsString := '50';
        query.Post;
        frmmodulo.conexao.commit;
      end;
    end
    else
    begin
      ecfop.SetFocus;
      // frmprincipal.FechaAguarde;
      exit;
    end;
  end;

  { : ABRE A TABELA DE MOVIMENTAÇÃO DE PRODUTOS }
  qrproduto_mov.Close;
  qrproduto_mov.sql.Clear;
  qrproduto_mov.sql.add('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
  qrproduto_mov.open;

  qritem.First;

  while not qritem.eof do
  begin

    if Length(qritemCODBARRA.AsString) = 0 then
    begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
        'Existe Produto que precisa ser localizado para referenciamento ao cadastro, VERIFIQUE.',
        'Importação de XML', mb_ok + MB_ICONWARNING);
      // frmprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Existe Produto que precisa ser localizado para referenciamento ao cadastro, VERIFIQUE.',
      // 'Importação de XML');
      // frmprincipal.FechaAguarde;
      abort;
    end;

    if frmprincipal.isFloat(qritemPRECOVENDA.AsString) <= 0 then
    begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
        'Produto Sem Preço de Venda, VERIFIQUE.', 'Importação de XML',
        mb_ok + MB_ICONWARNING);
      // frmprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Produto Sem Preço de Venda, VERIFIQUE.', 'Importação de XML');
      // frmprincipal.FechaAguarde;
      abort;
    end;

    { if frmprincipal.isFloat(qritemPMARGEM.AsString) <= 0 then
      begin
      MessageBeep(64);
      application.messagebox('Atenção!' + #13#10 +
      'Produto Sem Margem de Lucro, VERIFIQUE.', 'Importação de XML',
      mb_ok + MB_ICONWARNING);
      // frmprincipal.Mensagem('Atenção!' + #13#10 +
      // 'Produto Sem Margem de Lucro, VERIFIQUE.', 'Importação de XML');
      // frmprincipal.FechaAguarde;
      abort;
      end; }

    qritem.next;
    application.ProcessMessages;
  end;

  if qritem.RecordCount > 0 then
  begin
    qritem.First;

    while not qritem.eof do
    begin

    inicia: { : INICIA VERIFICAÇÃO SE O PRODUTO ESTÁ PRONTO PARA RECEBER MOVIMENTAÇÃO - HISTORICO DE COMPRAS }
      if qritemCODPRODUTO.AsString <> '' then
      begin
        query.Close;
        query.sql.Clear;
        query.sql.add('select * from c000025');
        query.sql.add('where codigo = ''' + qritemCODPRODUTO.AsString + '''');
        query.open;

        if query.RecordCount > 0 then
          vcodbarra := query.fieldbyname('CODBARRA').AsString
        else
        begin { : CADASTRA O PRODUTO E ATUALIZA O CODPRODUTO NO QRITEM }
          CadastrarProduto(qritemCODLANCAMENTO.AsString,
            qritemCODBARRA.AsString, qritemPRODUTO.AsString,
            qritemCODFORNECEDOR.AsString, qritemUN_FRACAO.AsString,
            qritemCLASSIFICACAO_FISCAL.AsString, '400', '041',
            qritemIPI_ALIQUOTA.ASFLOAT, qritemFRACAO.ASFLOAT);

          if Length(qritemCODPRODUTO.AsString) = 0 then
          begin
            qritem.edit;
            qritemCODPRODUTO.Value := CodigoProdutoNovo;
            qritem.Post;
          end;

        end;

        vcodbarra := qritemCODBARRA.AsString;

        { : CADASTRA A MOVIMENTAÇÃO DE ENTRADA DO PRODUTO }
        qrproduto_mov.Insert;
        qrproduto_movCODIGO.AsString := frmprincipal.codifica('000032');
        qrproduto_movCODNOTA.AsString := qritem.fieldbyname('codnota')
          .AsString + 'NE';
        qrproduto_movSERIAL.AsString := qritem.fieldbyname('codigo').AsString;
        qrproduto_movNUMERONOTA.AsString :=
          qrnota.fieldbyname('NUMERO').AsString;
        qrproduto_movCODPRODUTO.AsString :=
          qritem.fieldbyname('codproduto').AsString;

        qrproduto_movQTDE.ASFLOAT := qritemQTDE.ASFLOAT * qritemFRACAO.ASFLOAT;
        qrproduto_movUNITARIO.ASFLOAT := qritemUNITARIO.ASFLOAT /
          qritemFRACAO.ASFLOAT;

        qrproduto_movTOTAL.ASFLOAT := qritemTOTAL.ASFLOAT;
        qrproduto_movUNIDADE.AsString := qritemUN_FRACAO.AsString;
        qrproduto_movALIQUOTA.ASFLOAT := qritemICMS_ALIQUOTA.ASFLOAT;
        qrproduto_movCUPOM_MODELO.AsString := qrnotaMODELO.AsString;
        qrproduto_movCODCLIENTE.AsString := ecod_fornecedor.Text;
        qrproduto_movCODVENDEDOR.AsString := 'S/VEND';
        qrproduto_movMOVIMENTO.AsInteger := 1;
        qrproduto_movDATA.AsString := edata_emissao.Text;

        qrproduto_movICMS.ASFLOAT := qritemICMS_ALIQUOTA.ASFLOAT;;
        qrproduto_movVALOR_ICMS.ASFLOAT := qritemICMS_VALOR.ASFLOAT;;
        qrproduto_movVALOR_IPI.ASFLOAT := qritemIPI_VALOR.ASFLOAT;;
        qrproduto_movICMS_REDUZIDO.ASFLOAT := qritemICMS_VALORRETIDO.ASFLOAT;;
        qrproduto_movBASE_CALCULO.ASFLOAT := qritemICMS_BASE.ASFLOAT;;

        qrproduto_movIPI.ASFLOAT := qritemIPI_ALIQUOTA.ASFLOAT;;
        qrproduto_movDESCONTO.ASFLOAT := qritemDESCONTO.ASFLOAT;;
        qrproduto_movACRESCIMO.ASFLOAT := 0;

        qrproduto_movCREDITO_ICMS.ASFLOAT := qritemCREDITO_ICMS.ASFLOAT;;
        qrproduto_movPIS.ASFLOAT := qritemPIS.ASFLOAT;;
        qrproduto_movCOFINS.ASFLOAT := qritemCOFINS.ASFLOAT;;

        qrproduto_movCODBARRA.AsString := vcodbarra;
        qrproduto_movCFOP.AsString := qritemCFOP.AsString;
        qrproduto_movCST.AsString := qritemCST.AsString;
        qrproduto_movLOTE_FABRICACAO.AsString := qritemLOTE_FABRICACAO.AsString;
        qrproduto_movVENCIMENTO.AsDateTime := qritemLOTE_VALIDADE.AsDateTime;

        qrproduto_mov.Post;

        lstatus.caption := '[ ' + qritem.fieldbyname('codproduto').AsString +
          ' ] ' + qritem.fieldbyname('codbarra').AsString + ' | ' +
          qritem.fieldbyname('produto').AsString;
        application.ProcessMessages;

      end // Se existir produto sem ligação ao cadastro
      else
      begin
        CadastrarProduto(qritemCODLANCAMENTO.AsString, qritemCODBARRA.AsString,
          qritemPRODUTO.AsString, qritemCODFORNECEDOR.AsString,
          qritemUN_FRACAO.AsString, qritemCLASSIFICACAO_FISCAL.AsString, '400',
          '041', qritemIPI_ALIQUOTA.ASFLOAT, qritemFRACAO.ASFLOAT);

        if Length(qritemCODPRODUTO.AsString) = 0 then
        begin
          qritem.edit;
          qritemCODPRODUTO.Value := CodigoProdutoNovo;
          qritem.Post;
        end;

        goto inicia; // VOLTA PARA INFORMAR A MOVIMENTAÇÃO DO PRODUTO
      end;

      qritem.next;
    end;
  end;

  // **--
  qrnotaCODEMPRESA.AsString := ecod_destinatario.Text;
  qrnotaCODFORNECEDOR.AsString := ecod_fornecedor.Text;
  qrnotaMODELO.AsString := emodelo.Text;
  qrnotaESPECIE.AsString := 'NFE';
  qrnotaSERIE.AsString := eserie.Text;
  qrnotaCFOP.AsString := ecfop.Text;
  qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;

  qrnotaOPERACAO.AsString := etipo_venda.Text;

  if etipo_venda.Text = 'P' then
    qrnotaINTEGRACAO.AsInteger := 1
  else
    qrnotaINTEGRACAO.AsInteger := 0;

  // TRANSPORTADOR
  qrnotaTRANSP_NOME.AsString := '';
  qrnotaTRANSP_FRETE.AsString := '';
  qrnotaTRANSP_PLACA.AsString := '';
  qrnotaTRANSP_PLACAUF.AsString := '';
  qrnotaTRANSP_IE.AsString := '';
  qrnotaTRANSP_CNPJ.AsString := '';
  qrnotaTRANSP_ENDERECO.AsString := '';
  qrnotaTRANSP_CIDADE.AsString := '';
  qrnotaTRANSP_UF.AsString := '';
  qrnotaTRANSP_ESPECIE.AsString := '';
  qrnotaTRANSP_MARCA.AsString := '';
  qrnotaTRANSP_NUMERO.AsString := '';
  qrnotaTRANSP_QTDE.ASFLOAT := 0;
  qrnotaTRANSP_PESOBRUTO.ASFLOAT := 0;
  qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := 0;

  // OBSERVACOES
  {
    qrnotaOBS1.AsString := '';
    qrnotaOBS2.AsString := '';
    qrnotaOBS3.AsString := '';
    qrnotaOBS4.AsString := '';
    qrnotaOBS5.AsString := '';
    qrnotaOBS6.AsString := '';
    qrnotaOBS7.AsString := '';
    qrnotaOBS8.AsString := '';
  }

  qrnotaSITUACAO.AsInteger := 2; // Faturada
  qrnotaITENS.AsInteger := eitems.AsInteger;

  // qrnotaTIPO.AsString := enatureza.Text;
  qrnotaNOTA_FISCAL.AsString := '';
  qrnotaVALOR_MERCADORIAS.ASFLOAT := 0;
  qrnotaCODREMETENTE.AsString := '';
  qrnotaDESCONTO_INCIDENTE.AsInteger := 0;

  // ITEM ESPECIAL

  qrnotaITEM_FRETE_VALOR.ASFLOAT := 0;
  qrnotaITEM_FRETE_BASE.ASFLOAT := 0;
  qrnotaITEM_FRETE_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_FRETE_ICMS.ASFLOAT := 0;
  qrnotaITEM_SEGURO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SEGURO_BASE.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SEGURO_ICMS.ASFLOAT := 0;
  qrnotaITEM_PIS_VALOR.ASFLOAT := 0;
  qrnotaITEM_PIS_BASE.ASFLOAT := 0;
  qrnotaITEM_PIS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_PIS_ICMS.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_VALOR.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_BASE.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_COMPLEMENTO_ICMS.ASFLOAT := 0;
  qrnotaITEM_SERVICO_VALOR.ASFLOAT := 0;
  qrnotaITEM_SERVICO_BASE.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_SERVICO_ICMS.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_VALOR.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_BASE.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ALIQUOTA.ASFLOAT := 0;
  qrnotaITEM_OUTRAS_ICMS.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := 0;
  qrnotaITEM_ESPECIAL_VALOR.ASFLOAT := 0;

  // CONFERENCIA DE NOTA
  qrnotaCONF_TOTALNOTA.ASFLOAT := evalor_nota.Value;
  qrnotaCONF_TOTALPRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaCONF_BASEICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaCONF_VALORICMS.ASFLOAT := evalor_icms.Value;
  qrnotaCONF_BASESUB.ASFLOAT := ebase_substituicao.Value;
  qrnotaCONF_VALORSUB.ASFLOAT := evalor_substituicao.Value;
  qrnotaCONF_FRETE.ASFLOAT := efrete.Value;
  qrnotaCONF_SEGURO.ASFLOAT := eseguro.Value;
  qrnotaCONF_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCONF_ITEM_ESPECIAL.ASFLOAT := 0;
  qrnotaCONF_IPI.ASFLOAT := evalor_ipi.Value;
  qrnotaCONF_DESCONTO.ASFLOAT := edesconto.Value;
  qrnotaCONF_ICMSRETIDO.ASFLOAT := eicms_retido.Value;

  // TOTAIS DE NOTA
  qrnotaTOTAL_NOTA.ASFLOAT := evalor_nota.Value;
  qrnotaTOTAL_PRODUTOS.ASFLOAT := evalor_produtos.Value;
  qrnotaBASE_ICMS.ASFLOAT := ebase_calculo.Value;
  qrnotaBASE_SUB.ASFLOAT := ebase_substituicao.Value;
  qrnotaVALOR_SUB.ASFLOAT := evalor_substituicao.Value;
  qrnotaVALOR_ICMS.ASFLOAT := evalor_icms.Value;
  qrnotaSEGURO.ASFLOAT := eseguro.Value;
  qrnotaOUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaFRETE.ASFLOAT := efrete.Value;
  qrnotaITEM_ESPECIAL_TOTAL.ASFLOAT := evalor_itemespecial.Value;
  qrnotaIPI.ASFLOAT := evalor_ipi.Value;
  qrnotaICMS_ISENTO.ASFLOAT := evalor_isento.Value;
  qrnotaICMS_OUTRAS.ASFLOAT := eoutras_despesas.Value;
  qrnotaCREDITO_ICMS.ASFLOAT := ecredito_icms.Value;
  qrnotaPIS.ASFLOAT := evalor_pis.Value;
  qrnotaCOFINS.ASFLOAT := evalor_cofins.Value;
  qrnotaDESCONTO.ASFLOAT := edesconto.Value;

  qrnota.Post;

  qrnota.First;
  qritem.First;

  while not qritem.eof do // ATUALIZA TABELA PRECO REMARCADO - C000026
  begin
    frmmodulo.qrproduto.Close;
    frmmodulo.qrproduto.sql.Clear;
    frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 WHERE CODIGO = ''' +
      qritemCODPRODUTO.AsString + '''');
    frmmodulo.qrproduto.open;

    qrfornecedor_codigo.Close;
    qrfornecedor_codigo.sql.Clear;
    qrfornecedor_codigo.sql.add('Select * from fornecedor_codigo');
    qrfornecedor_codigo.sql.add('Where CODFORNECEDOR = ' +
      QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.sql.add('and CODPRODUTO = ' +
      QuotedStr(qritemCODPRODUTO.AsString));
    qrfornecedor_codigo.sql.add('or CODIGO = ' +
      QuotedStr(qritemCODLANCAMENTO.AsString));
    qrfornecedor_codigo.sql.add('and CODFORNECEDOR = ' +
      QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.open;

    if qrfornecedor_codigo.RecordCount = 0 then
    begin
      qrfornecedor_codigo.Insert;
      qrfornecedor_codigoCODFORNECEDOR.Value := ecod_fornecedor.Text;
      qrfornecedor_codigoCODPRODUTO.Value := qritemCODPRODUTO.AsString;
      qrfornecedor_codigoCODIGO.Value := qritemCODLANCAMENTO.AsString;
      qrfornecedor_codigoPRECO.ASFLOAT := qritemUNITARIO.ASFLOAT; //
      qrfornecedor_codigo.Post;
    end;

    frmmodulo.qrproduto.edit;
    frmmodulo.qrprodutoPRECOCUSTO.Value := qritemPRECOCUSTO.ASFLOAT;
    frmmodulo.qrprodutoESTOQUE.Value := frmmodulo.qrprodutoESTOQUE.Value +
      (qritemQTDE.ASFLOAT * qritemFRACAO.ASFLOAT);

    frmmodulo.qrprodutoPRECOVENDA.Value := qritemPRECOVENDA.ASFLOAT;
    frmmodulo.qrprodutoPMARGEM1.Value := qritemPMARGEM.ASFLOAT;

    frmmodulo.qrprodutoQTDE_EMBALAGEM.Value := qritemFRACAO.ASFLOAT;
    frmmodulo.qrprodutoSITUACAO.Value := 0;
    frmmodulo.qrprodutoNOTAFISCAL.Value := enota.Text;
    frmmodulo.qrprodutoCODFORNECEDOR.Value := ecod_fornecedor.Text;
    frmmodulo.qrprodutoDATA_ULTIMACOMPRA.Value := date;

    if Length(frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.AsString) = 0 then
      frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.Value :=
        qritemCLASSIFICACAO_FISCAL.AsString;

    frmmodulo.qrproduto.Post;

    qryestoque.Close;
    qryestoque.sql.Clear;
    qryestoque.sql.add('SELECT * FROM C000100 WHERE CODPRODUTO = ' +
      QuotedStr(qritemCODPRODUTO.AsString));
    qryestoque.sql.add('AND CODFILIAL = ' +
      QuotedStr(frmmodulo.qrFilialCODIGO.AsString));
    qryestoque.open;
    qryestoque.edit;
    qryestoqueESTOQUE_ATUAL.Value := frmmodulo.qrprodutoESTOQUE.Value;
    qryestoque.Post;

    frmmodulo.qrpreco.Close;
    frmmodulo.qrpreco.sql.Clear;
    frmmodulo.qrpreco.sql.add('select * from c000026 where codproduto = ''' +
      qritemCODPRODUTO.AsString + '''');
    frmmodulo.qrpreco.open;

    if frmmodulo.qrpreco.RecordCount = 0 then
      // caso produto nao tenha Grade de preco, criar
      frmmodulo.qrpreco.Insert
    else
      frmmodulo.qrpreco.edit;

    frmmodulo.qrpreco.fieldbyname('codigo').AsString :=
      frmprincipal.codifica('000026');
    frmmodulo.qrpreco.fieldbyname('codproduto').AsString :=
      qritemCODPRODUTO.AsString;
    frmmodulo.qrpreco.fieldbyname('DATA_ALTERACAO').Value := date;
    frmmodulo.qrprecoVCUSTO_COMPRA.Value := qritemPRECOCUSTO.ASFLOAT;
    frmmodulo.qrprecoPRECOVAREJO1.Value := qritemPRECOVENDA.ASFLOAT;
    frmmodulo.qrprecoCP_PIPI.Value := qritemIPI_ALIQUOTA.ASFLOAT;
    frmmodulo.qrprecoCP_VIPI.Value := qritemIPI_VALOR.ASFLOAT;
    frmmodulo.qrprecoCP_VFRETE.Value :=
      ((qritemFRETE.ASFLOAT / qritemQTDE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    frmmodulo.qrprecoCP_VSEGURO.Value :=
      ((qritemSEGURO.ASFLOAT / qritemQTDE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    frmmodulo.qrprecoCP_VOUTROS.Value :=
      ((qritemOUTRAS.ASFLOAT / qritemQTDE.ASFLOAT) / qritemFRACAO.ASFLOAT);
    if qritemICMS_REDUCAO.ASFLOAT > 0 then
      frmmodulo.qrprecoCP_PICMS.Value := qritemICMS_REDUCAO.ASFLOAT
    else
      frmmodulo.qrprecoCP_PICMS.Value := qritemICMS_ALIQUOTA.ASFLOAT;

    { varejo }
    frmmodulo.qrprecoPRECOVAREJO1.Value := qritemPRECOVENDA.ASFLOAT;
    frmmodulo.qrprecoPMARGEM1.Value := qritemPMARGEM.ASFLOAT;

    { atacado }
    frmmodulo.qrprecoPRECOATACADO1.Value := qritemPRECOVENDA.ASFLOAT *
      qritemFRACAO.ASFLOAT;

    frmmodulo.qrprecoVD_PICMS.Value := 0; // Temp

    if frmmodulo.qrproduto.fieldbyname('PISCOFINS').AsString = 'S' then
    begin
      frmmodulo.qrprecoCP_PPIS.Value := qritemPIS.ASFLOAT;
      frmmodulo.qrprecoCP_PCOFINS.Value := qritemCOFINS.ASFLOAT;
      frmmodulo.qrprecoVD_PPIS.Value := frmmodulo.qrFilialPIS.ASFLOAT;
      frmmodulo.qrprecoVD_PCOFINS.Value := frmmodulo.qrFilialCOFINS.ASFLOAT;
    end;

    frmmodulo.qrpreco.Post;

    qritem.next;
    application.ProcessMessages;

  END;

  // frmPrincipal.FechaAguarde;

  frmmodulo.conexao.commit;

  qritem.First;

  while not qritem.eof do // ATUALIZA TABELA PRECO REMARCADO - C000026
  begin
    qrfornecedor_codigo.Close;
    qrfornecedor_codigo.sql.Clear;
    qrfornecedor_codigo.sql.add('Select * from fornecedor_codigo');
    qrfornecedor_codigo.sql.add('Where CODFORNECEDOR = ' +
      QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.sql.add('and CODPRODUTO = ' +
      QuotedStr(qritemCODPRODUTO.AsString));
    qrfornecedor_codigo.sql.add('or CODIGO = ' +
      QuotedStr(qritemCODLANCAMENTO.AsString));
    qrfornecedor_codigo.sql.add('and CODFORNECEDOR = ' +
      QuotedStr(ecod_fornecedor.Text));
    qrfornecedor_codigo.open;

    if qrfornecedor_codigo.RecordCount > 0 then
    begin
      qrfornecedor_codigo.edit;
      qrfornecedor_codigoPRECO.ASFLOAT := qritemUNITARIO.ASFLOAT; //
      qrfornecedor_codigo.Post;
    end;

    qritem.next;
    application.ProcessMessages;
  end;

  frmmodulo.conexao.commit;
  // ******** FIM TABELA REMARCAÇÃO

  blimpa_variavelClick(frmimporta_nfe);
  lstatus.caption := '...';

  MessageBeep(64);
  application.messagebox('Importação Concluida Com Sucesso!', 'Atenção',
    mb_ok + MB_ICONEXCLAMATION);
  eid.SetFocus;
  Close;

end;

procedure Tfrmimporta_nfe.FormShow(Sender: TObject);
begin
  Inicia_NFedown();
  qritem.Close;
  qritem.sql.Clear;
  qritem.sql.add('select * from c000088');
  qritem.sql.add('where codnota = ''XXXXXX''');
  qritem.open;

  qrtransportador.open;

  bgravar.Enabled := false;
  bcancelar.Enabled := false;

  blimpa_variavelClick(frmimporta_nfe);

  qritemQTDE.DisplayFormat := mascara_qtde;
  qritemUNITARIO.DisplayFormat := mascara_valor;
  qritemSUBTOTAL.DisplayFormat := mascara_valor;
  qritemDESCONTO.DisplayFormat := mascara_valor;
  qritemTOTAL.DisplayFormat := mascara_valor;
  qritemDESCONTO_P.DisplayFormat := mascara_valor;
  qritemICMS_ALIQUOTA.DisplayFormat := mascara_valor;
  qritemICMS_REDUCAO.DisplayFormat := mascara_valor;
  qritemICMS_BASE.DisplayFormat := mascara_valor;
  qritemICMS_VALOR.DisplayFormat := mascara_valor;
  qritemICMS_VALORRETIDO.DisplayFormat := mascara_valor;
  qritemIPI_ALIQUOTA.DisplayFormat := mascara_valor;
  qritemIPI_BASE.DisplayFormat := mascara_valor;
  qritemIPI_VALOR.DisplayFormat := mascara_valor;
  qrpagarVALOR.DisplayFormat := mascara_valor;
  qrpagarVALORPAGO.DisplayFormat := mascara_valor;
  qrpagarLIQUIDO.DisplayFormat := mascara_valor;
  qrpagarDESCONTO.DisplayFormat := mascara_valor;
  qrpagarACRESCIMO.DisplayFormat := mascara_valor;

end;

procedure Tfrmimporta_nfe.Inicia_NFedown;
var
  IniFile: string;
  Ini: TIniFile;
   ok: boolean;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.ini');

  Ini := TIniFile.Create(IniFile);
  try
{$IFDEF ACBrNFeOpenSSL}

    ACBrNFe1.Configuracoes.Certificados.Certificado := Ini.ReadString('Certificado', 'Caminho', '');
    ACBrNFe1.Configuracoes.Certificados.Senha := Ini.ReadString('Certificado', 'Senha', '');

{$ELSE}


    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := Ini.ReadString('Certificado', 'NumSerie', '');
    ACBrNFe1.Configuracoes.Certificados.Senha := Ini.ReadString('Certificado', 'Senha', '');
    { Label5.Caption := 'Informe o número de série do certificado'#13+
      'Disponível no Internet Explorer no menu'#13+
      'Ferramentas - Opções da Internet - Conteúdo '#13+
      'Certificados - Exibir - Detalhes - '#13+
      'Número do certificado';
      Label2.Visible := False;
      edtCaminho.Visible := False;
      edtSenha.Visible   := False;
      sbtnCaminhoCert.Visible := False; }
{$ENDIF}

    ACBrNFe1.Configuracoes.Geral.FormaEmissao :=
      StrToTpEmis(ok, IntToStr(Ini.ReadInteger('Geral', 'FormaEmissao', 0) + 1));

    ACBrNFe1.Configuracoes.Geral.Salvar := Ini.ReadBool('Geral', 'Salvar', True);
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := Ini.ReadString('Geral', 'PathSalvar', '');

    ACBrNFe1.Configuracoes.WebServices.UF := Ini.ReadString('WebService',
      'UF', 'AM');
    ACBrNFe1.Configuracoes.WebServices.Ambiente :=
      StrToTpAmb(ok, IntToStr(Ini.ReadInteger('WebService', 'Ambiente', 0) + 1));
    ACBrNFe1.Configuracoes.WebServices.Visualizar := Ini.ReadBool('WebService', 'Visualizar', False);




  finally
    Ini.Free;
  end;


end;

function Tfrmimporta_nfe.lettersNotAccents(Str: String): String;
type
  USASCIIString = type AnsiString(20127);
var
  C: Char;
begin
  result := '';
  for C in Str do
    result := result + String(USASCIIString(C));
end;

procedure Tfrmimporta_nfe.bsairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmimporta_nfe.btmarg01lClick(Sender: TObject);
begin
  Button_margem.Click;
end;

procedure Tfrmimporta_nfe.btn_importNFeSefazClick(Sender: TObject);
var
  x, i: integer;
  vid, vnat, vnota, vserie, vcfop, vmodelo, vemissao, vsaida, vuf,
    vcodmunicipio, vdv: string;
  vemitente, vdestinatario, vemitente_cnpj, vdestinatario_cnpj: string;
  vcod_item, vcod_fornecedor, vcod_produto: string;
  vcidade, vcep, vcomplemento, vtelefone1, vtelefone2, vfax, vcontato1,
    vcontato2: string;
  vcelular1, vcelular2, vemail, vhomepage, vcnpj, vie, vbanco, vagencia,
    vconta: string;
  vobs1, vobs2, vobs3, vnumero, vim, vcod_municipio_ibge, vibge: string;
  vnomeprod, vxBairro, vxLgr, vfantasia, vmunemitente, vmundestinatario: string;
  xvnomeprod, vcadprodnovo, vtipo, vassistencia_tecnica: integer;
  va: double;
  vdata: string;
  vfracao: double;
  idLote: string;
 lMsg: string;
begin
   //  lbl1.Caption := 'validachave';
      if ValidarChaveNFe(eid.Text) then
        begin
        //  lbl1.Caption := 'validada';
          idLote:= FormatDateTime('yymmddhhmm', NOW);
          ACBrNFe1.EventoNFe.Evento.Clear;
          with ACBrNFe1.EventoNFe.Evento.Add do
           begin
             InfEvento.cOrgao   := 91;
             infEvento.chNFe    := trim(eid.Text);
             infEvento.CNPJ     := frmmodulo.qrFilialCNPJ.asstring;
             infEvento.dhEvento := now;
             infEvento.tpEvento := teManifDestConfirmacao;
           end;
          ACBrNFe1.EnviarEvento(StrToInt(IDLote));
         // lbl1.Caption := 'enviou evento';
         if AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
           begin
            // lbl1.Caption := 'nao vinculou';
           with  AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
               begin
                     lMsg:=
                    'Id: '+Id+#13+
                     'tpAmb: '+TpAmbToStr(tpAmb)+#13+
                    'verAplic: '+verAplic+#13+
                    'cOrgao: '+IntToStr(cOrgao)+#13+
                    'cStat: '+IntToStr(cStat)+#13+
                    'xMotivo: '+xMotivo+#13+
                    'chNFe: '+chNFe+#13+
                    'tpEvento: '+TpEventoToStr(tpEvento)+#13+
                    'xEvento: '+xEvento+#13+
                    'nSeqEvento: '+IntToStr(nSeqEvento)+#13+
                    'CNPJDest: '+CNPJDest+#13+
                    'emailDest: '+emailDest+#13+
                    'dhRegEvento: '+DateTimeToStr(dhRegEvento)+#13+
                    'nProt: '+nProt;
                   // lbl1.Caption := xMotivo+#13;
               end;

             ShowMessage(lMsg);
             Exit;
          end
          else
          begin
            // lbl1.Caption := 'vinculou';
           ACBrNFe1.EventoNFe.Evento.Clear;
           ACBrNFe1.DownloadNFe.Download.CNPJ := frmmodulo.qrFilialCNPJ.asstring;

           with ACBrNFe1.DownloadNFe.Download.Chaves.Add do
            begin
             chNFe := eid.Text;
            end;
          //
           ACBrNFe1.Download;

           continua := true;
           bcancelar.Enabled := true;

           page_dados.ActivePageIndex := 0;
           memo1.Clear;

           ACBrNFe1.NotasFiscais.Clear;


            try
              // ACBrNFe1.NotasFiscais.LoadFromFile(sArquivoXML);
               ACBrNFe1.NotasFiscais.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'nfe\' + eid.Text + '-nfe.xml');
            except
              MessageDlg('XML inválido! Verifique.', mtError, [mbOK], 0);
              exit;
            end;

          // OpenDialog1.FileName := ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+eid.Text;

            { : ABRE AS AS TABELAS DE PRODUTOS }
            frmmodulo.qrproduto.Close;
            frmmodulo.qrproduto.sql.Clear;
            frmmodulo.qrproduto.sql.add('select * from c000025');
            frmmodulo.qrproduto.sql.add('Where codigo = ' + QuotedStr('X'));
            frmmodulo.qrproduto.sql.add('order by produto');
            frmmodulo.qrproduto.open;

            bimporta.Enabled := false;

            { : CARREGA O XML PARA O COMPONENTE }


            { : ALIMENTA AS VARIAVEIS CONFORME XML }
            vid := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
            vnat := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;

            vnota := frmprincipal.zerarcodigo
              (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF), 6);
            vserie := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
            vmodelo := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
            vcfop := '';
            vuf := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF);

            if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> ' / /') and
              (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> '30/12/1899')
            then
              vemissao := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi)
            else
              vemissao := '  /  /    ';

            if (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> ' / /') and
              (DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> '30/12/1899')
            then
              vsaida := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt)
            else
              vsaida := vemissao;

            vcodmunicipio := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
            vdv := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cDV);

            vemitente := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
            vemitente_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
            vmunemitente := IntToStr(ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Emit.EnderEmit.cMun);

            vdestinatario := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
            vdestinatario_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
            vmundestinatario := IntToStr(ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Dest.EnderDest.cMun);

            // tipo de nota (saida/entrada)

            if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnEntrada then
              etipo_nota.Text := 'S'
            else
              etipo_nota.Text := 'E';

            // tipo de venda (vista/prazo)
            if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag = ipVista then
              etipo_venda.Text := 'V'
            else
              etipo_venda.Text := 'P';

            { : ALIMENTA OS CAMPOS DO FORM COM INFORMAÇÕES DO XML }
            eid.Text := vid;
            enatureza.Text := vnat;
            enota.Text := vnota;
            emodelo.Text := vmodelo;
            eserie.Text := vserie;
            ecfop.Text := vcfop;

            enota_uf.Text := vuf;
            edata_emissao.Text := vemissao;
            edata_saida.Text := vsaida;
            ecod_municipio.Text := vcodmunicipio;
            edv.Text := vdv;
            eemitente.Text := vemitente;
            edestinatario.Text := vdestinatario;
            ecnpj_emitente.Text := FormatMaskText('99.999.999/9999-99;0;_',
              vemitente_cnpj);
            ecnpj_destinatario.Text := FormatMaskText('99.999.999/9999-99;0;_',
              vdestinatario_cnpj);

            euf_emitente.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
            euf_destinatario.Text := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Dest.EnderDest.UF;

            emunicipio_emitente.Text := vmunemitente;
            emunicipio_destinatario.Text := vmundestinatario;

            ecod_fornecedor.Text := '';
            ecod_destinatario.Text := '000001';

            { : ABRE TABELA DE FORNECEDOR LOCALIZANDO O CNPJ }
            query.Close;
            query.sql.Clear;
            query.sql.add('select * from c000009');
            query.sql.add('where cnpj = ''' + ecnpj_emitente.Text + '''');
            query.open;

            { : SE O FORNECEDOR ESTIVER CADASTRADO INFORMA O CODIGO DO MESMO }
            if query.RecordCount > 0 then
            begin
              ecod_fornecedor.Text := query.fieldbyname('codigo').AsString;
              vcod_fornecedor := ecod_fornecedor.Text;
            end
            else
            begin { : SE O FORNECEDOR NÃO ESTIVER CADASTRADO - CADASTRA }
              CadastraFornecedor;
              ecod_fornecedor.Text := frmmodulo.qrfornecedorCODIGO.AsString;
              vcod_fornecedor := ecod_fornecedor.Text;
              {
                application.messagebox('Fornecedor Não Cadastrado ou CNPJ Inválido, Verifique!','Atenção',mb_ok+MB_ICONEXCLAMATION);
                blimpa_variavelClick(frmimporta_nfe);
                qritem.Close;
                qritem.SQL.Clear;
                qritem.SQL.Add('select * from c000088');
                qritem.SQL.Add('where codigo = ''XXXXXX''');
                qritem.Open;
                bimporta.Enabled := True;
                Exit;
              }
            end;

            x := 0;

            { : VERIFICA SE A NOTA JA FOI IMPORTADA ANTES }
            query.Close;
            query.sql.Clear;
            query.sql.add('select * from c000087 where numero = ''' +
              enota.Text + '''');
            query.sql.add('and codfornecedor = ''' + ecod_fornecedor.Text + '''');
            //query.sql.add('and modelo = ''' + emodelo.Text + '''');
            query.open;
            if query.RecordCount > 0 then
            begin
              application.messagebox('Nota Fiscal Já Importada! Verifique!', 'Atenção',
                mb_ok + mb_iconerror);
              // enumero.SetFocus;
              blimpa_variavelClick(frmimporta_nfe);
              qritem.Close;
              qritem.sql.Clear;
              qritem.sql.add('select * from c000088');
              qritem.sql.add('where codigo = ''XXXXXX''');
              qritem.open;
              exit;
            end;

            { : ABRE A TABELA DO CABEÇALHO DAS NOTAS }
            qrnota.Close;
            qrnota.sql.Clear;
            qrnota.sql.add('select * from c000087');
            qrnota.open;

            { : INSERE AS PRIMEIRAS INFORMAÇÕES DO XML }
            qrnota.Insert;
            qrnotaCODIGO.AsString := frmprincipal.codifica('000087');
            qrnotaTIPO.AsString := 'COMPRA P/ REVENDA';
            qrnotaNUMERO.AsString := enota.Text;
            qrnotaCHAVE.Value := eid.Text;
            qrnotaDESCONTO_INCIDENTE.ASFLOAT := 0;
            qrnotaOBS7.AsString := qrnotaCODIGO.AsString;
            qrnotaSITUACAO.AsInteger := 2;
            qrnotaBASEICMS_PRODUTOS.AsInteger := 1;
            qrnotaDATA_LANCAMENTO.AsDateTime := date;
            qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;

            { : ABRE A TABELA DE ITENS DA NOTA COM FILTRO DA NOTA SELECIONADA }
            qritem.Close;
            qritem.sql.Clear;
            qritem.sql.add('select * from c000088');
            qritem.sql.add('where codnota = ''' + qrnota.fieldbyname('codigo')
              .AsString + '''');
            qritem.sql.add('and notafiscal = ''' + enota.Text + '''');
            qritem.sql.add('order by item');

            qritem.open;

            { : QUANTIDA DE ITENS DA NOTA }
            eitems.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;

            application.ProcessMessages;

            { : ZERA A BARRA DE PROGRESSO }
            bar.PartsComplete := 0;
            bar.TotalParts := eitems.AsInteger;

            { : LOOP NO ITENS DO XML }
            for x := 0 to eitems.AsInteger - 1 do
            begin
              // frmprincipal.Aguarde('Aguarde', 'Importando Itens ' + IntToStr(x + 1) +
              // '/' + IntToStr(eitems.AsInteger), false, true, 0);

              CodigoProdutoNovo := '';
              vcod_produto := '';
              NomeProduto := '';
              vcodBarra_produto := '';
              vcod_item := frmprincipal.codifica('000032');

              { : VERIFICA SE EXISTE REFERENCIA DO PRODUTO DO XML AO FORNECEDOR }
              qrfornecedor_codigo.Close;
              qrfornecedor_codigo.sql.Clear;
              qrfornecedor_codigo.sql.add('select * from fornecedor_codigo');
              qrfornecedor_codigo.sql.add('where codfornecedor = ''' +
                ecod_fornecedor.Text + '''');
              qrfornecedor_codigo.sql.add('and codigo = ''' +
                ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd + '''');
              qrfornecedor_codigo.open;

              { : SE TIVER REFERENCIADO AO FORNECEDOR PELO COD XML }
              if qrfornecedor_codigo.RecordCount > 0 then
              begin
                vcod_produto := qrfornecedor_codigoCODPRODUTO.AsString;

                { : TENTA LOCALIZAR NO CADASTRO DE PRODUTOS - C000025 }
                query.Close;
                query.sql.Clear;
                query.sql.add('select * from c000025');
                query.sql.add('where codigo = ''' + vcod_produto + '''');
                query.open;

                { : Se Encontrou o produto no Cadastro }
                if query.RecordCount > 0 then
                begin
                  vcod_produto := query.fieldbyname('codigo').AsString;
                  // Pega o codigo do produto no estoque
                  NomeProduto := query.fieldbyname('produto').AsString;
                  vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
                  vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

                  { : VERIFICA A FRAÇÃO NO CADASTRO - C000025 }
                  if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
                    vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
                  else
                    vfracao := 1;
                end;
              end
              else { : Se nao tiver associado ao fornecedor }
              begin
                { : se tiver codigo de barra }
                if (frmprincipal.somenteNumero(ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Det.Items[x].Prod.cEAN) <> '') then
                begin
                  query.Close;
                  query.sql.Clear;
                  query.sql.add('select * from c000025');
                  query.sql.add('where codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0]
                    .NFe.Det.Items[x].Prod.cEAN + '''');
                  query.open;

                  { : se Localizou o produto pelo cod barra do xml }
                  if query.RecordCount > 0 then
                  begin
                    vcod_produto := query.fieldbyname('codigo').AsString;
                    NomeProduto := query.fieldbyname('produto').AsString;
                    vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
                    vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

                    if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
                      vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
                    else
                      vfracao := 1;

                  end;

                end
                else // Se nao tiver cod Barras e nao tiver referenciado
                begin
                  vcod_produto := '';
                  vfracao := 1;

                  query.Close;
                  query.sql.Clear;
                  query.sql.add('select * from c000025');
                  query.sql.add('where codbarra = ''' + ACBrNFe1.NotasFiscais.Items[0]
                    .NFe.Det.Items[x].Prod.cProd + '''');
                  query.open;

                  { : Se localizou o produto pelo cod barra na tag cod produto do xml }
                  if query.RecordCount > 0 then
                  begin
                    vcod_produto := query.fieldbyname('codigo').AsString;
                    NomeProduto := query.fieldbyname('produto').AsString;
                    vcodBarra_produto := query.fieldbyname('CodBarra').AsString;
                    vPrecoVenda := query.fieldbyname('PrecoVenda').ASFLOAT;

                    if query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT > 0 then
                      vfracao := query.fieldbyname('QTDE_EMBALAGEM').ASFLOAT
                    else
                      vfracao := 1;

                  end
                  else
                  begin
                    // inicio
                    vcodBarra_produto := '978100' + frmprincipal.zerarcodigo
                      (IntToStr(strtoint(vcod_item)), 6);
                    vcodBarra_produto := vcodBarra_produto +
                      frmprincipal.CalculaDigEAN13
                      (frmprincipal.somenteNumero(vcodBarra_produto));

                  end;

                end; { : FIM - Se nao tiver cod Barras e nao tiver referenciado }

              end;

              // INSERE OS ITENS NO LANCAMENTO
              qritem.Insert;
              qritemCODIGO.AsString := vcod_item;
              qritemITEM.AsString := frmprincipal.zerarcodigo
                (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.nItem), 3);
              qritemCODNOTA.AsString := qrnota.fieldbyname('codigo').AsString;

              qritemCODPRODUTO.AsString := vcod_produto;

              if Length(CodBarrasValido(CodigoProdutoNovo)) > 0 then
                qritemCODBARRA.AsString := CodBarrasValido(CodigoProdutoNovo)
              else if Length(CodBarrasValido(vcod_produto)) > 0 then
                qritemCODBARRA.AsString := CodBarrasValido(vcod_produto)
              else if Length(vcodBarra_produto) > 0 then
                qritemCODBARRA.AsString := vcodBarra_produto
              else if Length(CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Det.Items[x].Prod.cProd)) > 0 then
                qritemCODBARRA.AsString :=
                  CodBarrasValido(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                  .Prod.cProd);

              if (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) > 0)
                AND (Length(vcodBarra_produto) = 0) then
                qritemCODBARRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.cEAN;

              { : Coloca o nome do produto do cadastro caso esteja cadastrado }
              if Length(NomeProduto) > 0 then
                qritemPRODUTO.AsString := NomeProduto
              else
                qritemPRODUTO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.xProd;

              qritemCODLANCAMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Det.Items[x].Prod.cProd;
              qritemUN_COMPRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                [x].Prod.uTrib;
              qritemUN_FRACAO.AsString :=
                copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib, 1, 2);

              if vfracao <= 0 then
                vfracao := 1;

              qritemFRACAO.ASFLOAT := vfracao;

              // CST
              if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst00
              then
                qritemCST.AsString := '000'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst10
              then
                qritemCST.AsString := '010'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst20
              then
                qritemCST.AsString := '020'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst30
              then
                qritemCST.AsString := '030'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst40
              then
                qritemCST.AsString := '040'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst41
              then
                qritemCST.AsString := '041'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst50
              then
                qritemCST.AsString := '050'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst51
              then
                qritemCST.AsString := '051'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst60
              then
                qritemCST.AsString := '060'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst70
              then
                qritemCST.AsString := '070'
              else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.cst = cst90
              then
                qritemCST.AsString := '090'
              else
                qritemCST.AsString := '';

              // CFOP
              if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5405') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5403')
              then
                qritemCFOP.AsString := '1403'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '5101') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102')
              then
                qritemCFOP.AsString := '1102'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '6101') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6102')
              then
                qritemCFOP.AsString := '2102'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '6403') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102')
              then
                qritemCFOP.AsString := '2403'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '6910') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6911')
              then
                qritemCFOP.AsString := '2102'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '5910') or
                (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5911')
              then
                qritemCFOP.AsString := '1102'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '5401') then
                qritemCFOP.AsString := '1401'
              else if (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.CFOP = '6401') then
                qritemCFOP.AsString := '2401'
              else
                qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                  .Prod.CFOP; // ''

              // qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
              if ecfop.Text = '' then
              begin
                ecfop.Text := qritemCFOP.AsString;
              end;

              qritemQTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.qCom;

              qritemSUBTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vProd;
              qritemDESCONTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vDesc;
              qritemTOTAL.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vProd - ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vDesc;
              qritemUNITARIO.ASFLOAT := qritemTOTAL.ASFLOAT / qritemQTDE.ASFLOAT;

              qritemDESCONTO_P.ASFLOAT := 0;
              qritemFRETE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vFrete;
              qritemOUTRAS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vOutro;
              qritemSEGURO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Prod.vSeg;

              qritemICMS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.ICMS.vBC;
              qritemICMS_RETIDO.AsString := 'N';
              qritemICMS_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Det.Items[x].Imposto.ICMS.pICMS;

              if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBC > 0
              then
                qritemICMS_REDUCAO.ASFLOAT := 7
              else
                qritemICMS_REDUCAO.ASFLOAT := 0;

              // qritemICMS_REDUCAO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCST;

              qritemICMS_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                [x].Imposto.ICMS.vICMS;;
              qritemICMS_VALORRETIDO.ASFLOAT := 0;
              qritemICMS_ISENTO.ASFLOAT := 0;
              qritemICMS_NAOTRIBUTADO.ASFLOAT := 0;

              qritemSUB_MARGEM.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                [x].Imposto.ICMS.pMVAST;
              qritemSUB_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.ICMS.vBCST;
              qritemSUB_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.ICMS.vICMSST;
              qritemSUB_PRODUTOS.ASFLOAT := 0;

              qritemIPI_TIPO.ASFLOAT := 0;
              qritemIPI_ALIQUOTA.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                [x].Imposto.IPI.pIPI;
              qritemIPI_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.IPI.vBC;
              qritemIPI_VALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.IPI.vIPI;

              qritemDATA.AsDateTime := date;
              qritemTIPO.AsInteger := 0;
              qritemNOTAFISCAL.AsString := enota.Text;
              qritemCLASSIFICACAO_FISCAL.AsString := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Det.Items[x].Prod.NCM;
              qritemSUB_PRODUTOS.AsString := '';
              qritemCODFORNECEDOR.AsString := ecod_fornecedor.Text;
              qritemITEM_ESPECIAL_VALOR.ASFLOAT := 0;
              qritemALTERA_ITEM.AsInteger := 0;

              qritemCREDITO_ICMS.ASFLOAT := 0;
              qritemPIS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.PIS.vBC;
              qritemPIS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.PIS.vPIS;
              qritemCOFINS_BASE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                [x].Imposto.COFINS.vBC;
              qritemCOFINS.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                .Imposto.COFINS.vCOFINS;

              // memo1.lines.add('MEDICAMENTOS ----------------------------------');

              if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Count > 0 then
              begin
                qritemLOTE_FABRICACAO.AsString := ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Det.Items[x].Prod.med.Items[0].nLote;
                qritemLOTE_VALIDADE.AsString :=
                  DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                  .Prod.med.Items[0].dVal);

                memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x]
                  .Prod.med.Items[0].nLote);
                memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.med.Items[0].qLote));
                memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.med.Items[0].vPMC));
                memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.med.Items[0].dFab));
                memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items
                  [x].Prod.med.Items[0].dFab));
              end
              else
              begin
                qritemLOTE_FABRICACAO.AsString := '';
                qritemLOTE_VALIDADE.AsString := '';
              end;

              { : PREÇOS }
              qritemPRECOCUSTO.ASFLOAT :=
                CalculaPreco((qritemTOTAL.ASFLOAT + qritemFRETE.ASFLOAT +
                qritemSEGURO.ASFLOAT + qritemOUTRAS.ASFLOAT + qritemIPI_VALOR.ASFLOAT) /
                (qritemQTDE.ASFLOAT) / qritemFRACAO.ASFLOAT, pDFixas);
              { adicionar no preço de custo o valor do icms ou o % do simples }
              // Temp

              if vPrecoVenda > 0 then
                qritemPRECOVENDA.ASFLOAT := vPrecoVenda
              else
                qritemPRECOVENDA.ASFLOAT := qritemPRECOCUSTO.ASFLOAT /
                  qritemFRACAO.ASFLOAT;

              qritemPMARGEM.Value :=
                (((qritemPRECOVENDA.ASFLOAT - qritemPRECOCUSTO.ASFLOAT) /
                qritemPRECOCUSTO.ASFLOAT)) * 100;
              { : PREÇOS }

              {
                memo1.lines.add('ARMAS----------------------------------');
                memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].descr);
                memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nSerie));
                memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nCano));
              }

              // memo1.lines.add('CONBUSTIVEIS----------------------------------');

              bar.PartsComplete := bar.PartsComplete + 1;
              lstatus.caption := '[ ' + frmprincipal.zerarcodigo
                (IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem),
                3) + ' ] ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +
                ' | ' + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd;
              application.ProcessMessages;

              if not continua then
                break;

            end; { : FIM - loop FOR }
            // frmprincipal.FechaAguarde;

            qritem.First;

            if not continua then
            begin

              bar.Percent := 0;
              lstatus.caption := '...';

              qrnota.Close;
              qrnota.sql.Clear;
              qrnota.sql.add('select * from c000087');
              qrnota.sql.add('where codigo = ''XXXXXX''');
              qrnota.open;

              qritem.Close;
              qritem.sql.Clear;
              qritem.sql.add('select * from c000088');
              qritem.sql.add('where codigo = ''XXXXXX''');
              qritem.open;

              blimpa_variavelClick(frmimporta_nfe);

              exit;
            end;

            bar.Percent := 0;
            lstatus.caption := '';

            qritem.Refresh;

            ebase_calculo.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
            evalor_icms.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
            ebase_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Total.ICMSTot.vBCST;
            evalor_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Total.ICMSTot.vST;

            efrete.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
            eseguro.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
            eoutras_despesas.Value := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Total.ICMSTot.vOutro;
            evalor_ipi.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;

            evalor_isento.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
            evalor_pis.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
            evalor_cofins.Value := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Total.ICMSTot.vCOFINS;

            edesconto.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
            evalor_produtos.Value := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Total.ICMSTot.vProd;
            evalor_nota.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;

            // memo1.lines.add('TRANSPORTADORA----------------------------------');
            qrnotaTRANSP_NOME.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.xNome;
            qrnotaTRANSP_IE.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.IE;
            qrnotaTRANSP_CNPJ.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.CNPJCPF;
            qrnotaTRANSP_ENDERECO.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.xEnder;

            qrnotaTRANSP_NUMERO.AsString := '';
            qrnotaTRANSP_CIDADE.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.xMun;
            qrnotaTRANSP_UF.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.Transporta.UF;

            qrnotaTRANSP_PLACA.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.veicTransp.placa;
            qrnotaTRANSP_PLACAUF.AsString := ACBrNFe1.NotasFiscais.Items[0]
              .NFe.Transp.veicTransp.UF;

            if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
              qrnotaTRANSP_FRETE.AsString := '1 - EMITENTE'
            else
              qrnotaTRANSP_FRETE.AsString := '2 - DESTINATÁRIO';

            if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
            begin
              qrnotaTRANSP_ESPECIE.AsString := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Transp.Vol.Items[0].esp;
              qrnotaTRANSP_MARCA.AsString := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Transp.Vol.Items[0].marca;

              qrnotaTRANSP_QTDE.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Transp.Vol.Items[0].qVol;
              qrnotaTRANSP_PESOLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Transp.Vol.Items[0].pesoL;
              qrnotaTRANSP_PESOBRUTO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                .NFe.Transp.Vol.Items[0].pesoB;
            end;

            memo1.lines.add('VOLUME----------------------------------');
            memo1.lines.add('REBOQUE----------------------------------');

            qrpagar.Close;
            qrpagar.sql.Clear;
            qrpagar.sql.add('SELECT * FROM C000046 WHERE CODNOTA = ''' + enota.Text +
              ''' ORDER BY DATA_VENCIMENTO');
            qrpagar.open;

            if ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then
            begin
              econta.Text := '000025';
              qrnotaconta.AsString := 'FORNECEDORES';
              qrnotaOBS5.AsString := '000025';
              // frmmodulo.qrconfigPLANO_CONTA60.AsString;
              // '000019';
              qrnotaOBS6.AsString := 'Duplicata a Pagar';
              qrnotaOBS8.AsString :=
                Trim(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count));

              bar.PartsComplete := 0;
              bar.TotalParts := eitems.AsInteger;

              for x := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
              begin
                qrpagar.Insert;
                qrpagarCODIGO.AsString := frmprincipal.codifica('000046');;
                qrpagarDOCUMENTO.AsString := ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Cobr.Dup.Items[x].nDup;
                qrpagarESPECIE.AsString := 'DUPLICATA';
                qrpagarHISTORICO.AsString := 'Duplicata a Pagar';
                qrpagarDATA_VENCIMENTO.AsDateTime := ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Cobr.Dup.Items[x].dVenc;
                qrpagarVALOR.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Cobr.Dup.Items[x].vDup;
                qrpagarVALORPAGO.ASFLOAT := 0;
                qrpagarDATA_EMISSAO.AsDateTime := date;
                qrpagarDATA_PAGAMENTO.AsString := '';
                qrpagarCODCONTA.AsString := frmmodulo.qrconfigPLANO_PAGTO_FORN.AsString;
                qrpagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
                qrpagarLIQUIDO.ASFLOAT := ACBrNFe1.NotasFiscais.Items[0]
                  .NFe.Cobr.Dup.Items[x].vDup;
                qrpagarDESCONTO.ASFLOAT := 0;
                qrpagarACRESCIMO.ASFLOAT := 0;
                qrpagarNOTAFISCAL.AsString := enota.Text;
                qrpagarC.AsString := '';
                qrpagarE.AsString := '';
                qrpagarFILTRO.AsInteger := 0;
                qrpagarSITUACAO.AsInteger := 1;
                qrpagarCODNOTA.AsString := qrnotaNUMERO.AsString;
                qrpagarMOVIMENTO.AsInteger := 0;
                qrpagarCODCAIXA.AsString := '000099';
                qrpagar.Post;
              end;
            end;
            bgravar.Enabled := true;
            bimporta.Enabled := true;
            bcancelar.Enabled := false;
            lstatus.caption := '...';

          end;

       end;



end;

procedure Tfrmimporta_nfe.Button_margemClick(Sender: TObject);
begin
 /// margem de lucro

  pMargem := 0;
  AdvGlowButton1.Enabled := true;
  application.CreateForm(TFMargemLucro, FMargemLucro);
  FMargemLucro.ShowModal;
  pMargem := FMargemLucro.eMargem.Value;
  FMargemLucro.free;

  qritem.First;

 // frmprincipal.Aguarde('Aguarde', 'Aplicando margem de lucro...',
   // False, true, 0);
  while not qritem.eof do
  begin
    qritem.Edit;
    qritemPMARGEM.Value := pMargem;
    qritemPRECOVENDA.Value := ((qritemPRECOCUSTO.ASFLOAT) * pMargem / 100) +
      (qritemPRECOCUSTO.ASFLOAT);
    qritem.Post;
    qritem.next;
    application.ProcessMessages;
  end;
  //frmprincipal.FechaAguarde
end;

procedure Tfrmimporta_nfe.CadastraFornecedor;
begin
  frmmodulo.qrfornecedor.Insert;
  frmmodulo.qrfornecedorCODIGO.Value := frmprincipal.codifica('000009');
  frmmodulo.qrfornecedorNOME.Value :=
    copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome, 1, 100);
  frmmodulo.qrfornecedorFANTASIA.Value :=
    copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant, 1, 100);
  frmmodulo.qrfornecedorENDERECO.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xLgr;
  frmmodulo.qrfornecedorBAIRRO.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xBairro;
  frmmodulo.qrfornecedorCIDADE.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.xMun;
  frmmodulo.qrfornecedorUF.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.UF;
  frmmodulo.qrfornecedorCEP.Value :=
    IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
  frmmodulo.qrfornecedorCOD_MUNICIPIO_IBGE.Value :=
    IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);
  frmmodulo.qrfornecedorTELEFONE1.Value := ACBrNFe1.NotasFiscais.Items[0]
    .NFe.Emit.EnderEmit.fone;
  frmmodulo.qrfornecedorCNPJ.Value := ecnpj_emitente.Text;
  frmmodulo.qrfornecedorIE.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
  frmmodulo.qrfornecedorDATA.Value := date; // now;
  frmmodulo.qrfornecedor.Post;

end;

function Tfrmimporta_nfe.CadastrarProduto(CodProdutoXML, CodBarras, Produto,
  CodFornecedor, Unidade, NCM, csosn, cst: string;
  IPI, qtdEmbalagem: double): Boolean;
begin
  query.Close;
  query.sql.Clear;
  query.sql.add('select codigo, codbarra, produto from c000025');
  query.sql.add('where codbarra = ' + QuotedStr(CodBarras));
  // query.SQL.Add('or codbarra = ' + QuotedStr(CodProdutoXML));
  query.open;

  if query.RecordCount = 0 then
  begin

    QryCadastraProduto.Close;
    QryCadastraProduto.open;

    QryCadastraProduto.Insert;
    QryCadastraProdutoCODIGO.Value := frmprincipal.codifica('000025');

    QryCadastraProdutoCODORIGINAL.Value := CodProdutoXML;
    QryCadastraProdutoCODBARRA.Value := CodBarras;
    QryCadastraProdutoPRODUTO.Value := Produto;
    QryCadastraProdutoCODFORNECEDOR.Value := CodFornecedor;
    QryCadastraProdutoUNIDADE.Value := Unidade;
    QryCadastraProdutoNCM.Value := NCM;
    QryCadastraProdutoTIPO.Value := '99 - Outras';
    QryCadastraProdutoUSA_BALANCA.Value := 2;
    QryCadastraProdutoUSA_SERIAL.Value := 0;
    QryCadastraProdutoSITUACAO.Value := 0;
    QryCadastraProdutoFLAG_SIS.Value := 'S';
    QryCadastraProdutoFLAG_SIS.Value := 'S';
    QryCadastraProdutoUSA_GRADE.Value := 0;
    QryCadastraProdutoCSOSN.Value := csosn;
    QryCadastraProdutoCST.Value := cst;
    QryCadastraProdutoIPI.Value := IPI;
    QryCadastraProdutoQTDE_EMBALAGEM.Value := 1;
    QryCadastraProdutoESTOQUE.Value := 0;
    QryCadastraProdutoDATA_CADASTRO.Value := date;
    QryCadastraProduto.Post;

    CodigoProdutoNovo := QryCadastraProdutoCODIGO.Value;
    NomeProduto := QryCadastraProdutoPRODUTO.Value;

    qrfornecedor_codigo.Insert;
    qrfornecedor_codigoCODFORNECEDOR.Value := CodFornecedor;
    qrfornecedor_codigoCODPRODUTO.Value := CodigoProdutoNovo;
    qrfornecedor_codigoCODIGO.Value := CodProdutoXML;
    qrfornecedor_codigoPRECO.Value := 0;
    qrfornecedor_codigo.Post;

  end
  else
  begin
    vcod_produto := query.fieldbyname('Codigo').AsString;
    CodigoProdutoNovo := query.fieldbyname('Codigo').AsString;
    NomeProduto := query.fieldbyname('Produto').AsString;
  end;

  frmmodulo.conexao.commit;
  result := true;
end;

function Tfrmimporta_nfe.CodBarrasValido(cod: string): string;
begin
  ACBrValidador1.TipoDocto := docGTIN;
  ACBrValidador1.Documento := cod;
  if ACBrValidador1.Validar then
    result := cod
  else
    result := '';
end;

procedure Tfrmimporta_nfe.sair1Click(Sender: TObject);
begin
  bsairClick(frmimporta_nfe);
end;

procedure Tfrmimporta_nfe.VerificaProdutos;
begin

end;

// dados referentes a importação

{
  Os impostos referente a importação estão em

  Det.Items[n].Imposto.II.vBc = Valor da Base de Calculo para Imposto de Importação
  Det.Items[n].Imposto.II.vDespAdu = Valor das Despesas Aduaneiras
  Det.Items[n].Imposto.II.vII = Valor do Imposto de Importação
  Det.Items[n].Imposto.II.vIOF = Valor do IOF sobre Imposto de Importação

  Mas ainda faltam os dados referentes a DI Declaração de Importação no caso o Nº da DI.

  with  Prod.DI.Add do
  begin
  nDi := '1';
  dDi := Date;
  xLocDesemb := 'Local';
  UFDesemb   := 'SP';
  dDesemb := Date;
  cExportador := 'Exportador';
  with adi.Add do
  begin
  nAdicao
  nSeqAdi
  cFabricante
  vDescDI
  end;
  end;
}

procedure Tfrmimporta_nfe.qritemCalcFields(DataSet: TDataSet);
begin
  if qritemCODBARRA.AsString = '' then
    qritemchave.AsInteger := 0
  else
    qritemchave.AsInteger := 1;
end;

function Tfrmimporta_nfe.RemoveAcento(s: string): string;
var
  i: integer;
begin
  for i := 1 to Length(s) do
    case s[i] of
      'Á':
        s[i] := 'A';
      'É':
        s[i] := 'E';
      'Í':
        s[i] := 'I';
      'Ó':
        s[i] := 'O';
      'Ú':
        s[i] := 'U';
      'À':
        s[i] := 'A';
      'È':
        s[i] := 'E';
      'Ì':
        s[i] := 'I';
      'Ò':
        s[i] := 'O';
      'Ù':
        s[i] := 'U';
      'Â':
        s[i] := 'A';
      'Ê':
        s[i] := 'E';
      'Î':
        s[i] := 'I';
      'Ô':
        s[i] := 'O';
      'Û':
        s[i] := 'U';
      'Ä':
        s[i] := 'A';
      'Ë':
        s[i] := 'E';
      'Ï':
        s[i] := 'I';
      'Ö':
        s[i] := 'O';
      'Ü':
        s[i] := 'U';
      'Ã':
        s[i] := 'A';
      'Õ':
        s[i] := 'O';
      'Ñ':
        s[i] := 'N';
      'Ç':
        s[i] := 'C';
      'á':
        s[i] := 'a';
      'é':
        s[i] := 'e';
      'í':
        s[i] := 'i';
      'ó':
        s[i] := 'o';
      'ú':
        s[i] := 'u';
      'à':
        s[i] := 'a';
      'è':
        s[i] := 'e';
      'ì':
        s[i] := 'i';
      'ò':
        s[i] := 'o';
      'ù':
        s[i] := 'u';
      'â':
        s[i] := 'a';
      'ê':
        s[i] := 'e';
      'î':
        s[i] := 'i';
      'ô':
        s[i] := 'o';
      'û':
        s[i] := 'u';
      'ä':
        s[i] := 'a';
      'ë':
        s[i] := 'e';
      'ï':
        s[i] := 'i';
      'ö':
        s[i] := 'o';
      'ü':
        s[i] := 'u';
      'ã':
        s[i] := 'a';
      'õ':
        s[i] := 'o';
      'ñ':
        s[i] := 'n';
      'ç':
        s[i] := 'c';
    end;
  result := s;
end;

procedure Tfrmimporta_nfe.blimpa_variavelClick(Sender: TObject);
begin
  eid.Text := '';
  enatureza.Text := '';
  ecod_fornecedor.Text := '';
  ecod_municipio.Text := '';
  ecod_destinatario.Text := '';
  ecnpj_emitente.Text := '';
  ecnpj_destinatario.Text := '';
  enota.Text := '';
  eserie.Text := '';
  emodelo.Text := '';
  enota_uf.Text := '';
  edata_emissao.Text := '';
  edata_saida.Text := '';
  edv.Text := '';
  eid.Text := '';
  eemitente.Text := '';
  edestinatario.Text := '';
  ecfop.Text := '';
  emunicipio_emitente.Text := '';
  emunicipio_destinatario.Text := '';
  etipo_nota.Text := '';
  etipo_venda.Text := '';
  euf_emitente.Text := '';
  euf_destinatario.Text := '';
  ecod_fornecedor.Text := '';

end;

procedure Tfrmimporta_nfe.econtaButtonClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.Text := qrplano.fieldbyname('codigo').AsString;
  edit5.SetFocus;
end;

procedure Tfrmimporta_nfe.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
    edit5.SetFocus;
  end;
end;

procedure Tfrmimporta_nfe.bexcluirClick(Sender: TObject);
begin
  qritem.Delete;
  frmmodulo.conexao.commit;
end;

procedure Tfrmimporta_nfe.bprodutosClick(Sender: TObject);
begin
  busca_produto := 2;
//  if frmprincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
//  begin
//    application.messagebox('Acesso não permitido!', 'Atenção',
//      mb_ok + mb_iconerror);
//    exit;
//  end;

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'LIGHT'
    then
    begin
   //   frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
   //   frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'FARMA'
      then
      begin
     //   frmproduto_FARMA := tfrmproduto_FARMA.create(self);
     //   frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.fieldbyname('CADASTRO_PRODUTO').AsString = 'PECAS'
        then
        begin
       //   frmproduto_AUTO := tfrmproduto_AUTO.create(self);
       //   frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;

  atualiza_produto_novo := true;

end;

procedure Tfrmimporta_nfe.ACBrNFe1StatusChange(Sender: TObject);
begin
          case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure Tfrmimporta_nfe.AdvGlowButton2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Contas a Pagar', 4) then
  begin
    qrpagar.Delete;
    frmmodulo.conexao.commit;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmimporta_nfe.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmimporta_nfe.bcancelarClick(Sender: TObject);
begin
  continua := false;
  application.messagebox('Importação Cancalada pelo usuário!', 'Atenção',
    mb_ok + MB_ICONEXCLAMATION);
  bcancelar.Enabled := false;
  bimporta.Enabled := true;
end;

procedure Tfrmimporta_nfe.bimprimeClick(Sender: TObject);
begin

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').AsString := eemitente.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').AsString := ecnpj_emitente.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA3').AsString := enota.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA4').AsString := emodelo.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA5').AsString := eserie.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA6').AsString := edata_emissao.Text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA7').AsString := edata_saida.Text;

  frmmodulo.qrrelatorio.fieldbyname('VALOR1').ASFLOAT := ebase_calculo.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR2').ASFLOAT := evalor_icms.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR3').ASFLOAT :=
    ebase_substituicao.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR4').ASFLOAT :=
    evalor_substituicao.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR5').ASFLOAT := evalor_produtos.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR6').ASFLOAT := efrete.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR7').ASFLOAT := eseguro.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR8').ASFLOAT := eoutras_despesas.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR9').ASFLOAT := evalor_ipi.Value;

  frmmodulo.qrrelatorio.fieldbyname('VALOR10').ASFLOAT := edesconto.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR11').ASFLOAT := evalor_isento.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR12').ASFLOAT := evalor_pis.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR13').ASFLOAT := evalor_cofins.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR14').ASFLOAT := ecredito_icms.Value;
  frmmodulo.qrrelatorio.fieldbyname('VALOR15').ASFLOAT := evalor_nota.Value;

  fximprime.LoadFromFile('\OneMaker\server\REL\F000197.fr3');
  fximprime.ShowReport;

end;

procedure Tfrmimporta_nfe.eidEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmimporta_nfe.eidExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmimporta_nfe.bgerarClick(Sender: TObject);
var
  i: integer;
  valor_fat: real;
begin

  qrpagar.Close;
  qrpagar.sql.Clear;
  qrpagar.sql.add('DELETE FROM C000046 WHERE CODNOTA = ''' + enota.Text + '''');
  qrpagar.execsql;

  qrpagar.sql.Clear;
  qrpagar.sql.add('SELECT * FROM C000046 WHERE CODNOTA = ''' + enota.Text +
    ''' ORDER BY DATA_VENCIMENTO');
  qrpagar.open;

  if evalor_nota.Value > 0 then
    valor_fat := evalor_nota.Value
  else
  begin
    application.messagebox('Esta nota fiscal não possue valor!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  for i := 1 to ecount.IntValue do
  begin

    bar.PartsComplete := 0;
    bar.TotalParts := eitems.AsInteger;

    qrpagar.Insert;
    qrpagarCODIGO.AsString := frmprincipal.codifica('000046');;
    qrpagarDOCUMENTO.AsString := enota.Text + '/' + frmprincipal.zerarcodigo
      (IntToStr(i), 2);
    qrpagarESPECIE.AsString := 'DUPLICATA';
    qrpagarHISTORICO.AsString := 'Duplicata a Pagar';
    qrpagarDATA_VENCIMENTO.AsDateTime :=
      INCMONTH(StrToDate(edata_emissao.Text), i);;
    qrpagarVALOR.ASFLOAT := valor_fat / ecount.IntValue;
    qrpagarVALORPAGO.ASFLOAT := 0;
    qrpagarDATA_EMISSAO.AsDateTime := StrToDate(edata_emissao.Text);
    qrpagarDATA_PAGAMENTO.AsString := '';
    qrpagarCODCONTA.AsString := econta.Text;
    qrpagarCODFORNECEDOR.AsString := ecod_fornecedor.Text;
    qrpagarLIQUIDO.ASFLOAT := valor_fat / ecount.IntValue;
    qrpagarDESCONTO.ASFLOAT := 0;
    qrpagarACRESCIMO.ASFLOAT := 0;
    qrpagarNOTAFISCAL.AsString := enota.Text;
    qrpagarC.AsString := '';
    qrpagarE.AsString := '';
    qrpagarFILTRO.AsInteger := 0;
    qrpagarSITUACAO.AsInteger := 1;
    qrpagarCODNOTA.AsString := enota.Text;
    qrpagarMOVIMENTO.AsInteger := 0;
    qrpagarCODCAIXA.AsString := '000099';
    qrpagar.Post;

    bgravar.Enabled := true;
    bimporta.Enabled := true;
    bcancelar.Enabled := false;
    lstatus.caption := '...';

  end;
  frmmodulo.conexao.commit;
  application.ProcessMessages;

  qrpagar.Refresh;

end;

end.
