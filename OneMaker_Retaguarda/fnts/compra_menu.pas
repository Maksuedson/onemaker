unit compra_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOfficeStatusBar, ImgList, AdvMenus, AdvMenuStylers,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeStatusBarStylers, AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, DBCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd, RzBtnEdt, frxClass, frxPreview,
  frxDesgn, ExtCtrls, UCBase, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmcompra_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota: TZQuery;
    qrnotaempresa: TStringField;
    qrnotafornecedor: TStringField;
    dsnota: TDataSource;
    qrempresa: TZQuery;
    qrmodelo: TZQuery;
    qrfornecedor: TZQuery;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ClassesdeRecolhimento1: TMenuItem;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    qrfornecedor2: TZQuery;
    qrproduto: TZQuery;
    qrnota_item: TZQuery;
    qrgrade_entrada: TZQuery;
    qrnota_antes: TZQuery;
    qritem_antes: TZQuery;
    qrnota_total: TZQuery;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    Panel1: TPanel;
    Label22: TLabel;
    Label5: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    efornecedor: TRzButtonEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    RzDBEdit1: TRzDBEdit;
    Label6: TLabel;
    qrpagar: TZQuery;
    Label1: TLabel;
    N1: TMenuItem;
    ImportaNotaFiscalEletrnica1: TMenuItem;
    btotaliza_nota: TButton;
    qrfornecedor2CODIGO: TWideStringField;
    qrfornecedor2NOME: TWideStringField;
    qrfornecedor2FANTASIA: TWideStringField;
    qrfornecedor2ENDERECO: TWideStringField;
    qrfornecedor2BAIRRO: TWideStringField;
    qrfornecedor2CIDADE: TWideStringField;
    qrfornecedor2UF: TWideStringField;
    qrfornecedor2CEP: TWideStringField;
    qrfornecedor2COMPLEMENTO: TWideStringField;
    qrfornecedor2TELEFONE1: TWideStringField;
    qrfornecedor2TELEFONE2: TWideStringField;
    qrfornecedor2FAX: TWideStringField;
    qrfornecedor2CONTATO1: TWideStringField;
    qrfornecedor2CONTATO2: TWideStringField;
    qrfornecedor2CELULAR1: TWideStringField;
    qrfornecedor2CELULAR2: TWideStringField;
    qrfornecedor2EMAIL: TWideStringField;
    qrfornecedor2HOMEPAGE: TWideStringField;
    qrfornecedor2CNPJ: TWideStringField;
    qrfornecedor2IE: TWideStringField;
    qrfornecedor2BANCO: TWideStringField;
    qrfornecedor2AGENCIA: TWideStringField;
    qrfornecedor2CONTA: TWideStringField;
    qrfornecedor2OBS1: TWideStringField;
    qrfornecedor2OBS2: TWideStringField;
    qrfornecedor2OBS3: TWideStringField;
    qrfornecedor2TIPO: TIntegerField;
    qrfornecedor2ASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedor2NUMERO: TWideStringField;
    qrfornecedor2IM: TWideStringField;
    qrfornecedor2REP_NOME: TWideStringField;
    qrfornecedor2REP_TELEFONE: TWideStringField;
    qrfornecedor2REP_ENDERECO: TWideStringField;
    qrfornecedor2REP_BAIRRO: TWideStringField;
    qrfornecedor2REP_COMPLEMENTO: TWideStringField;
    qrfornecedor2REP_CIDADE: TWideStringField;
    qrfornecedor2REP_UF: TWideStringField;
    qrfornecedor2REP_CEP: TWideStringField;
    qrfornecedor2REP_TELEFONE1: TWideStringField;
    qrfornecedor2REP_TELEFONE2: TWideStringField;
    qrfornecedor2REP_TELEFONE3: TWideStringField;
    qrfornecedor2REP_FAX: TWideStringField;
    qrfornecedor2REP_CNPJ: TWideStringField;
    qrfornecedor2REP_IE: TWideStringField;
    qrfornecedor2REP_HOME_PAGE: TWideStringField;
    qrfornecedor2REP_EMAIL: TWideStringField;
    qrfornecedor2CNAE: TWideStringField;
    qrfornecedor2COD_MUNICIPIO_IBGE: TWideStringField;
    qrfornecedor2IBGE: TWideStringField;
    qrmodeloCODIGO: TWideStringField;
    qrmodeloMODELO: TWideStringField;
    qrmodeloSIGLA: TWideStringField;
    qrmodeloSINTEGRA: TWideStringField;
    qrmodeloTIPO_REGISTRO: TWideStringField;
    qrmodeloSEQUENCIANF: TIntegerField;
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
    qrnotaconta: TStringField;
    qrnotaREMETENTE: TStringField;
    UCControls1: TUCControls;
    AdvGlowButton1: TAdvGlowButton;
    qrfornecedorDATA: TDateField;
    qrfornecedor2DATA: TDateField;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCODEMPRESA: TWideStringField;
    qrnotaCODFORNECEDOR: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaCFOP: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_LANCAMENTO: TDateField;
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
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure abelasFunes2Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure efornecedorEnter(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure ImportaNotaFiscalEletrnica1Click(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    vopcao_nfe, vopcao_item: integer;
    { Public declarations }
  end;

var
  frmcompra_menu: Tfrmcompra_menu;
  vrecno: integer;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, compra, cfop, cst, modelo_fiscal, xloc_fornecedor,
  compra_item, lista_notaentrada, lista_notacompra, importa_nfe;

{$R *.dfm}

procedure Tfrmcompra_menu.bincluirClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;

  vopcao_nfe := 1;

  qrnota.Insert;

  qrnota.FieldByName('codigo').asstring := frmprincipal.codifica('000087');
  qrnota.FieldByName('tipo').asstring := 'COMPRA P/ REVENDA';
  qrnota.FieldByName('DESCONTO_INCIDENTE').ASFLOAT := 0;
  qrnotaINTEGRACAO.AsInteger := 0;
  dsnota.dataset.FieldByName('obs7').asstring :=
    qrnota.FieldByName('codigo').asstring;
  qrnota.FieldByName('situacao').AsInteger := 2;
  qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger := 1;
  qrnota.FieldByName('data_lancamento').asdatetime := date;

  frmcompra := tfrmcompra.create(self);
  frmcompra.rtipo.ItemIndex := 0;
  frmcompra.showmodal;
  qrnota.refresh;

  qrnota.RecNo := vrecno;

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  c000009');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;

end;

procedure Tfrmcompra_menu.FormShow(Sender: TObject);
begin

  qrmodelo.close;
  qrmodelo.sql.clear;
  qrmodelo.sql.add('SELECT * FROM C000082 ORDER BY SINTEGRA');
  qrmodelo.Open;
  qrmodelo.IndexFieldNames := 'SINTEGRA';

  FRMMODULO.QRFILIAL.close;
  FRMMODULO.QRFILIAL.sql.clear;
  FRMMODULO.QRFILIAL.sql.add('select * from c000004');
  FRMMODULO.QRFILIAL.Open;

  FRMMODULO.qrfornecedor.close;
  FRMMODULO.qrfornecedor.sql.clear;
  FRMMODULO.qrfornecedor.sql.add('select * from c000009');
  FRMMODULO.qrfornecedor.Open;

  DateEdit1.text := '01/' + copy(datetostr(date), 4, 7);
  DateEdit2.date := frmprincipal.UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.sql.add
    ('select * from c000087 where data_lancamento BETWEEN :datai and :dataf order by data_lancamento');
  qrnota.params.ParamByName('datai').asdatetime := DateEdit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := DateEdit2.date;
  qrnota.Open;

  qrnotaTOTAL_NOTA.DisplayFormat := mascara_valor;
  qrnotaICMS_ISENTO.DisplayFormat := mascara_valor;
  qrnotaICMS_OUTRAS.DisplayFormat := mascara_valor;
  qrnotaBASE_ICMS.DisplayFormat := mascara_valor;

  rqde.Value := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
end;

procedure Tfrmcompra_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmcompra_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcompra_menu.balterarClick(Sender: TObject);
begin
  vrecno := qrnota.RecNo;
  vopcao_nfe := 2;
  qrnota.edit;

  frmcompra := tfrmcompra.create(self);
  frmcompra.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrfornecedor.close;
  qrfornecedor.sql.clear;
  qrfornecedor.sql.add('select * from  c000009');
  qrfornecedor.Open;

  btotaliza_notaClick(frmcompra_menu);

  qrnota.RecNo := vrecno;

end;

procedure Tfrmcompra_menu.bexcluirClick(Sender: TObject);
begin

  if application.messagebox('Confirma a exclusão desta nota fiscal?', 'Excluir',
    mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
  begin
    if frmprincipal.autentica('Exluir NF', 4) then
    begin

      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add('select * from c000088 where codnota = ''' +
        qrnota.FieldByName('codigo').asstring + '''');
      qrnota_item.Open;
      qrnota_item.first;

      while qrnota_item.RecordCount <> 0 do
      begin
        if qrnota_item.FieldByName('CODLANCAMENTO').asstring <> 'XXXXXX' then
        begin
          FRMMODULO.QRPRODUTO_MOV.close;
          FRMMODULO.QRPRODUTO_MOV.sql.clear;
          FRMMODULO.QRPRODUTO_MOV.sql.add
            ('DELETE FROM C000032 WHERE CODIGO = ''' + qrnota_item.FieldByName
            ('CODLANCAMENTO').asstring + '''');
          FRMMODULO.QRPRODUTO_MOV.ExecSQL;

          qrgrade_entrada.close;
          qrgrade_entrada.sql.clear;
          qrgrade_entrada.sql.add('select * from c000033 where coditem = ''' +
            qrnota_item.FieldByName('CODLANCAMENTO').asstring + '''');
          qrgrade_entrada.Open;

          qrpagar.close;
          qrpagar.sql.clear;
          qrpagar.sql.add('DELETE FROM C000046 WHERE CODNOTA = ''' +
            frmcompra_menu.qrnota.FieldByName('CODIGO').asstring +
            ''' and situacao = 1');
          qrpagar.ExecSQL;

          FRMMODULO.qrgrade_produto.close;
          FRMMODULO.qrgrade_produto.sql.clear;
          FRMMODULO.qrgrade_produto.sql.add
            ('select * from c000021 where codproduto = ''' +
            qrnota_item.FieldByName('CODPRODUTO').asstring + '''');
          FRMMODULO.qrgrade_produto.Open;

          while qrgrade_entrada.RecordCount <> 0 do
          begin
            if FRMMODULO.qrgrade_produto.Locate('codigo',
              qrgrade_entrada.FieldByName('codgrade').asstring,
              [loCaseInsensitive]) then
            begin
              FRMMODULO.qrgrade_produto.edit;
              FRMMODULO.qrgrade_produto.FieldByName('estoque').ASFLOAT :=
                FRMMODULO.qrgrade_produto.FieldByName('estoque').ASFLOAT -
                qrgrade_entrada.FieldByName('qtde').ASFLOAT;
              FRMMODULO.qrgrade_produto.post;
            end;
            qrgrade_entrada.delete;
          end;
        end;
        qrnota_item.delete;
      end;
      qrnota.delete;
      FRMMODULO.Conexao.commit;
    end;
  end;
  BfiltrarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_NOTACOMPRA := TFRMLISTA_NOTACOMPRA.create(self);
  FRMLISTA_NOTACOMPRA.showmodal;
end;

procedure Tfrmcompra_menu.b(Sender: TObject);
begin
  //
end;

procedure Tfrmcompra_menu.gridRowChanged(Sender: TObject);
begin
  if qrnota.FieldByName('SITUACAO').AsInteger = 2 then
    balterar.Enabled := TRUE
  else
    balterar.Enabled := FALSE;
end;

procedure Tfrmcompra_menu.AdvGlowButton1Click(Sender: TObject);
begin
  frmimporta_nfe := tfrmimporta_nfe.create(self);
  frmimporta_nfe.showmodal;
  qrnota.refresh;
end;

procedure Tfrmcompra_menu.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcompra_menu.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcompra_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then
    balterarClick(frmcompra_menu);
end;

procedure Tfrmcompra_menu.abelasFunes2Click(Sender: TObject);
begin
  btabela.Click;
end;

procedure Tfrmcompra_menu.CFOP1Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.create(self);
  FRMCFOP.showmodal;
end;

procedure Tfrmcompra_menu.ClassesdeRecolhimento1Click(Sender: TObject);
begin
  FRMcst := TFRMcst.create(self);
  FRMcst.showmodal;
end;

procedure Tfrmcompra_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure Tfrmcompra_menu.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if efornecedor.text <> '' then
    begin
      qrfornecedor2.close;
      qrfornecedor2.sql.clear;
      // qrfornecedor2.sql.add('select * from c000009 where upper(nome) like '''+ansiuppercase(efornecedor.Text)+'%'' or codigo = '''+frmprincipal.zerarcodigo(efornecedor.Text,6)+'''');
      qrfornecedor2.sql.add('select * from c000009 where codigo = ''' +
        frmprincipal.zerarcodigo(copy(efornecedor.text, 1, 6), 6) + '''');
      qrfornecedor2.Open;
      if qrfornecedor2.RecordCount > 0 then
      begin
        if qrfornecedor2.RecordCount = 1 then
        begin
          efornecedor.text := qrfornecedor2.FieldByName('codigo').asstring + ' '
            + qrfornecedor2.FieldByName('nome').asstring;
          ENUMERO.SetFocus;
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000009 where upper(nome) like ''' +
            ansiuppercase(efornecedor.text) + '%'' order by nome';
          frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
          frmxloc_fornecedor.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            efornecedor.text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            ENUMERO.SetFocus;

          end;
        end;
      end
      else
      begin
        application.messagebox('Fornecedor não encontrado!', 'Atenção',
          mb_ok + mb_iconerror);
        resultado_pesquisa1 := '';
        parametro_pesquisa := '';
        frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
        frmxloc_fornecedor.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          efornecedor.text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
          ENUMERO.SetFocus;

        end;

      end;
    end;

    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure Tfrmcompra_menu.efornecedorButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := efornecedor.text;
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    efornecedor.text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
    ENUMERO.SetFocus;

  end;
end;

procedure Tfrmcompra_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0)
end;

procedure Tfrmcompra_menu.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltrar.SetFocus;
end;

procedure Tfrmcompra_menu.BfiltrarClick(Sender: TObject);
var
  fornecedor, nota: string;
begin
  if efornecedor.text = '' then
    fornecedor := ''
  else
    fornecedor := ' and codfornecedor = ''' + copy(efornecedor.text, 1,
      6) + '''';
  if (ENUMERO.text = '000000') or (ENUMERO.text = '') then
    nota := ''
  else
    nota := ' and numero = ''' + ENUMERO.text + '''';

  qrnota.close;
  qrnota.sql.clear;
  if (ENUMERO.text = '000000') or (ENUMERO.text = '') then
  begin
    qrnota.sql.add
      ('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '
      + fornecedor + nota + ' order by data_lancamento');
    qrnota.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := DateEdit2.date;
  end
  else
    qrnota.sql.add('select * from c000087 where codigo is not null ' + nota +
      ' order by data_lancamento');
  qrnota.Open;

  rqde.Value := qrnota.RecordCount;

  btotaliza_notaClick(frmcompra_menu);

  gridRowChanged(frmcompra_menu);
  ENUMERO.text := '';
end;

procedure Tfrmcompra_menu.ENUMEROExit(Sender: TObject);
begin
  ENUMERO.text := frmprincipal.zerarcodigo(ENUMERO.text, 6);
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcompra_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.Value := 0;
  rtotal.Value := 0;
  dsnota.dataset := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
    rqde.Value := rqde.Value + 1;
    rtotal.Value := rtotal.Value + qrnota.FieldByName('total_nota').ASFLOAT;

    qrnota.next;
  end;
  dsnota.dataset := qrnota;

end;

procedure Tfrmcompra_menu.efornecedorEnter(Sender: TObject);
begin
  efornecedor.text := '';
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
  fornecedor, nota: string;
begin

  if (ansiuppercase(AFieldName) = ansiuppercase('numero')) or
    (ansiuppercase(AFieldName) = ansiuppercase('data_emissao')) or
    (ansiuppercase(AFieldName) = ansiuppercase('obs7')) or
    (ansiuppercase(AFieldName) = ansiuppercase('data_lancamento')) or
    (ansiuppercase(AFieldName) = ansiuppercase('modelo')) or
    (ansiuppercase(AFieldName) = ansiuppercase('especie')) or
    (ansiuppercase(AFieldName) = ansiuppercase('serie')) or
    (ansiuppercase(AFieldName) = ansiuppercase('numero')) or
    (ansiuppercase(AFieldName) = ansiuppercase('cfop')) or
    (ansiuppercase(AFieldName) = ansiuppercase('total_nota')) or
    (ansiuppercase(AFieldName) = ansiuppercase('base_icms')) or
    (ansiuppercase(AFieldName) = ansiuppercase('valor_icms')) or
    (ansiuppercase(AFieldName) = ansiuppercase('ipi')) then
  begin
    if efornecedor.text = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' + copy(efornecedor.text, 1,
        6) + '''';
    if (ENUMERO.text = '000000') or (ENUMERO.text = '') then
      nota := ''
    else
      nota := ' and numero = ''' + ENUMERO.text + '''';

    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.add
      ('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '
      + fornecedor + nota + ' order by ' + AFieldName);
    qrnota.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrnota.Open;
  end;

  if ansiuppercase(AFieldName) = 'FORNECEDOR' then
  begin
    if efornecedor.text = '' then
      fornecedor := ''
    else
      fornecedor := ' and codfornecedor = ''' + copy(efornecedor.text, 1,
        6) + '''';
    if (ENUMERO.text = '000000') or (ENUMERO.text = '') then
      nota := ''
    else
      nota := ' and numero = ''' + ENUMERO.text + '''';
    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.add
      ('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '
      + fornecedor + nota + ' order by codfornecedor, data_lancamento');
    qrnota.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrnota.Open;
  end;
end;

procedure Tfrmcompra_menu.ImportaNotaFiscalEletrnica1Click(Sender: TObject);
begin
  frmimporta_nfe := tfrmimporta_nfe.create(self);
  frmimporta_nfe.showmodal;
  qrnota.refresh;
end;

procedure Tfrmcompra_menu.ENUMEROEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcompra_menu.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

end.
