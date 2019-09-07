unit fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd, SHELLAPI,
  Wwdbgrid, ImgList, AdvGlowButton, UCBase, W7Labels, dxGDIPlusClasses,
  RzPanel, Vcl.Imaging.jpeg, cyBaseSpeedButton, pngimage, cySpeedButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList, ACBrConsultaCPF,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, JvToolEdit, JvBaseEdits, JvExMask,
  JvDBControls, AdvSmoothButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ComCtrls;

type
  Tfrmfornecedor = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsfornecedor2: TDataSource;
    Relatrios1: TMenuItem;
    QUERY: TZQuery;
    qrcontasPAGAR: TZQuery;
    QRCOMPRA_MES: TZQuery;
    qrproduto: TZQuery;
    qrcompra: TZQuery;
    ImageList1: TImageList;
    dspagar: TDataSource;
    dsproduto: TDataSource;
    dsPAGARpg: TDataSource;
    dsCOMPRA_mes: TDataSource;
    dscompra: TDataSource;
    qrcontasPAGARpg: TZQuery;
    qrcontasPAGARFILTRO: TIntegerField;
    qrcontasPAGARsituacao2: TIntegerField;
    qrcontasPAGARfornecedor: TStringField;
    qrcontasPAGARVALOR: TFloatField;
    qrcontasPAGARSITUACAO: TIntegerField;
    qrcontasPAGARVALORPAGO: TFloatField;
    qrcontasPAGARLIQUIDO: TFloatField;
    qrcontasPAGARDESCONTO: TFloatField;
    qrcontasPAGARACRESCIMO: TFloatField;
    qrcontasPAGARconta: TStringField;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Movimentaes1: TMenuItem;
    compras1: TMenuItem;
    Panel1: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    combo_pessoa: TComboBox;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bcompras: TAdvGlowButton;
    dsnf: TDataSource;
    qrnf: TZQuery;
    QRNF_MES: TZQuery;
    QRNF_PRODUTO: TZQuery;
    DSNF_PRODUTO: TDataSource;
    qrduplo: TZQuery;
    Sugestesdecompra1: TMenuItem;
    qrsugestao: TZQuery;
    qrsugestaosugestao: TFloatField;
    qrsugestaovendas: TFloatField;
    dssugestao: TDataSource;
    QUERY1: TZQuery;
    dsfornecedor_codigo: TDataSource;
    qrcompraCODIGO: TWideStringField;
    qrcompraNUMERO: TWideStringField;
    qrcompraCFOP: TWideStringField;
    qrcompraCODFORNECEDOR: TWideStringField;
    qrcompraVALOR_PRODUTOS: TFloatField;
    qrcompraTOTAL_NOTA: TFloatField;
    qrcompraBASE_CALCULO: TFloatField;
    qrcompraVALOR_ICMS: TFloatField;
    qrcompraBASE_SUB: TFloatField;
    qrcompraICMS_SUB: TFloatField;
    qrcompraFRETE: TFloatField;
    qrcompraSEGURO: TFloatField;
    qrcompraOUTRAS_DESPESAS: TFloatField;
    qrcompraVALOR_TOTAL_IPI: TFloatField;
    qrcompraITENS: TIntegerField;
    qrcompraDESCONTO: TFloatField;
    qrcompraMODELO: TWideStringField;
    qrcompraSERIE: TWideStringField;
    qrcompraALIQUOTA: TFloatField;
    qrcompraSITUACAO: TIntegerField;
    qrcompraMODELO_NF: TWideStringField;
    qrcompraSERIE_NF: TWideStringField;
    qrcompraVALOR_ISENTO_ICMS: TFloatField;
    qrcompraALIQUOTA_ICMS: TFloatField;
    qrcompraSITUACAO_A: TWideStringField;
    UCControls1: TUCControls;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    Timer1: TTimer;
    Timer2: TTimer;
    dtfldDATA: TDateField;
    dtfldPAGARDATA_EMISSAO: TDateField;
    dtfldPAGARDATA_VENCIMENTO: TDateField;
    dtfldPAGARDATA_PAGAMENTO: TDateField;
    qrcontasPAGARESPECIE: TWideStringField;
    qrcontasPAGARDOCUMENTO: TWideStringField;
    qrcontasPAGARHISTORICO: TWideStringField;
    qrcontasPAGARNOTAFISCAL: TWideStringField;
    qrcontasPAGARCODCONTA: TWideStringField;
    qrcontasPAGARCODFORNECEDOR: TWideStringField;
    qrcontasPAGARCODIGO: TWideStringField;
    qrcontasPAGARC: TWideStringField;
    qrcontasPAGARE: TWideStringField;
    qrcontasPAGARMOVIMENTO: TIntegerField;
    qrcontasPAGARCODCAIXA: TWideStringField;
    qrcontasPAGARCODNOTA: TWideStringField;
    qrnfCODIGO: TWideStringField;
    qrnfNUMERO: TWideStringField;
    qrnfCODEMPRESA: TWideStringField;
    qrnfCODFORNECEDOR: TWideStringField;
    qrnfMODELO: TWideStringField;
    qrnfESPECIE: TWideStringField;
    qrnfSERIE: TWideStringField;
    qrnfCFOP: TWideStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_LANCAMENTO: TDateField;
    qrnfCONF_BASEICMS: TFloatField;
    qrnfCONF_VALORICMS: TFloatField;
    qrnfCONF_BASESUB: TFloatField;
    qrnfCONF_VALORSUB: TFloatField;
    qrnfCONF_FRETE: TFloatField;
    qrnfCONF_SEGURO: TFloatField;
    qrnfCONF_OUTRAS: TFloatField;
    qrnfCONF_IPI: TFloatField;
    qrnfCONF_DESCONTO: TFloatField;
    qrnfCONF_TOTALPRODUTOS: TFloatField;
    qrnfCONF_TOTALNOTA: TFloatField;
    qrnfCONF_ICMSRETIDO: TFloatField;
    qrnfCONF_ICMSREDITO_PERC: TFloatField;
    qrnfBASE_ICMS: TFloatField;
    qrnfVALOR_ICMS: TFloatField;
    qrnfBASE_SUB: TFloatField;
    qrnfVALOR_SUB: TFloatField;
    qrnfFRETE: TFloatField;
    qrnfSEGURO: TFloatField;
    qrnfOUTRAS: TFloatField;
    qrnfIPI: TFloatField;
    qrnfDESCONTO: TFloatField;
    qrnfTOTAL_PRODUTOS: TFloatField;
    qrnfTOTAL_NOTA: TFloatField;
    qrnfTRANSP_NOME: TWideStringField;
    qrnfTRANSP_FRETE: TWideStringField;
    qrnfTRANSP_PLACA: TWideStringField;
    qrnfTRANSP_PLACAUF: TWideStringField;
    qrnfTRANSP_IE: TWideStringField;
    qrnfTRANSP_CNPJ: TWideStringField;
    qrnfTRANSP_ENDERECO: TWideStringField;
    qrnfTRANSP_CIDADE: TWideStringField;
    qrnfTRANSP_UF: TWideStringField;
    qrnfTRANSP_QTDE: TFloatField;
    qrnfTRANSP_ESPECIE: TWideStringField;
    qrnfTRANSP_MARCA: TWideStringField;
    qrnfTRANSP_NUMERO: TWideStringField;
    qrnfTRANSP_PESOBRUTO: TFloatField;
    qrnfTRANSP_PESOLIQUIDO: TFloatField;
    qrnfOBS1: TWideStringField;
    qrnfOBS2: TWideStringField;
    qrnfOBS3: TWideStringField;
    qrnfOBS4: TWideStringField;
    qrnfOBS5: TWideStringField;
    qrnfOBS6: TWideStringField;
    qrnfOBS7: TWideStringField;
    qrnfSITUACAO: TIntegerField;
    qrnfITENS: TIntegerField;
    qrnfTIPO: TWideStringField;
    qrnfNOTA_FISCAL: TWideStringField;
    qrnfVALOR_MERCADORIAS: TFloatField;
    qrnfCODREMETENTE: TWideStringField;
    qrnfICMS_ISENTO: TFloatField;
    qrnfICMS_OUTRAS: TFloatField;
    qrnfDESCONTO_INCIDENTE: TIntegerField;
    qrnfITEM_FRETE_VALOR: TFloatField;
    qrnfITEM_FRETE_BASE: TFloatField;
    qrnfITEM_FRETE_ALIQUOTA: TFloatField;
    qrnfITEM_FRETE_ICMS: TFloatField;
    qrnfITEM_SEGURO_VALOR: TFloatField;
    qrnfITEM_SEGURO_BASE: TFloatField;
    qrnfITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnfITEM_SEGURO_ICMS: TFloatField;
    qrnfITEM_PIS_VALOR: TFloatField;
    qrnfITEM_PIS_BASE: TFloatField;
    qrnfITEM_PIS_ALIQUOTA: TFloatField;
    qrnfITEM_PIS_ICMS: TFloatField;
    qrnfITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnfITEM_COMPLEMENTO_BASE: TFloatField;
    qrnfITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnfITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnfITEM_SERVICO_VALOR: TFloatField;
    qrnfITEM_SERVICO_BASE: TFloatField;
    qrnfITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnfITEM_SERVICO_ICMS: TFloatField;
    qrnfITEM_OUTRAS_VALOR: TFloatField;
    qrnfITEM_OUTRAS_BASE: TFloatField;
    qrnfITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnfITEM_OUTRAS_ICMS: TFloatField;
    qrnfITEM_ESPECIAL_TOTAL: TFloatField;
    qrnfITEM_ESPECIAL_VALOR: TFloatField;
    qrnfBASEICMS_PRODUTOS: TIntegerField;
    qrnfCONF_ITEM_ESPECIAL: TFloatField;
    qrnfOBS8: TWideStringField;
    qrnfCREDITO_ICMS: TFloatField;
    qrnfPIS: TFloatField;
    qrnfCOFINS: TFloatField;
    qrnfOPERACAO: TWideStringField;
    qrnfINTEGRACAO: TIntegerField;
    qrnfAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrnfCHAVE: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODNOTA: TWideStringField;
    qrprodutoCODPRODUTO: TWideStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TWideStringField;
    dtfldDATA1: TDateField;
    qrprodutoNUMERONOTA: TWideStringField;
    qrprodutoCODCLIENTE: TWideStringField;
    qrprodutoDESCONTO: TFloatField;
    qrprodutoACRESCIMO: TFloatField;
    qrprodutoMOVIMENTO: TIntegerField;
    qrprodutoCODVENDEDOR: TWideStringField;
    qrprodutoCODGRADE: TWideStringField;
    qrprodutoSERIAL: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoQTDE: TFloatField;
    qrprodutoVALOR_ICMS: TFloatField;
    qrprodutoICMS_REDUZIDO: TFloatField;
    qrprodutoBASE_CALCULO: TFloatField;
    qrprodutoVALOR_IPI: TFloatField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoECF_SERIE: TWideStringField;
    qrprodutoECF_CAIXA: TWideStringField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoCUPOM_NUMERO: TWideStringField;
    qrprodutoCUPOM_MODELO: TWideStringField;
    qrprodutoCUPOM_ITEM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoCST: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoMOVIMENTO_ESTOQUE: TFloatField;
    qrprodutoLANCADO: TIntegerField;
    dtfldVENCIMENTO: TDateField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoCREDITO_ICMS: TFloatField;
    qrprodutoPIS: TFloatField;
    qrprodutoCOFINS: TFloatField;
    qrprodutoLOJA: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoCODUSUARIO: TWideStringField;
    qrprodutoORIGEM: TWideStringField;
    qrprodutoDESTINO: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoCODFILIAL: TWideStringField;
    QRCOMPRA_MESSUM_0: TExtendedField;
    QRCOMPRA_MESSUM: TExtendedField;
    QRCOMPRA_MESSUM_1: TExtendedField;
    QRCOMPRA_MESSUM_2: TExtendedField;
    QRCOMPRA_MESSUM_3: TExtendedField;
    QRCOMPRA_MESSUM_4: TExtendedField;
    QRCOMPRA_MESSUM_5: TExtendedField;
    QRCOMPRA_MESSUM_6: TExtendedField;
    QRCOMPRA_MESSUM_7: TExtendedField;
    QRCOMPRA_MESSUM_8: TExtendedField;
    QRCOMPRA_MESSUM_9: TExtendedField;
    QRCOMPRA_MESSUM_10: TExtendedField;
    QRNF_PRODUTOCODIGO: TWideStringField;
    QRNF_PRODUTOITEM: TWideStringField;
    QRNF_PRODUTOCODNOTA: TWideStringField;
    QRNF_PRODUTOCODPRODUTO: TWideStringField;
    QRNF_PRODUTOCODLANCAMENTO: TWideStringField;
    QRNF_PRODUTOUN_COMPRA: TWideStringField;
    QRNF_PRODUTOUN_FRACAO: TWideStringField;
    QRNF_PRODUTOFRACAO: TFloatField;
    QRNF_PRODUTOCST: TWideStringField;
    QRNF_PRODUTOCFOP: TWideStringField;
    QRNF_PRODUTOQTDE: TFloatField;
    QRNF_PRODUTOUNITARIO: TFloatField;
    QRNF_PRODUTOSUBTOTAL: TFloatField;
    QRNF_PRODUTODESCONTO: TFloatField;
    QRNF_PRODUTOTOTAL: TFloatField;
    QRNF_PRODUTODESCONTO_P: TFloatField;
    QRNF_PRODUTOICMS_RETIDO: TWideStringField;
    QRNF_PRODUTOICMS_ALIQUOTA: TFloatField;
    QRNF_PRODUTOICMS_REDUCAO: TFloatField;
    QRNF_PRODUTOICMS_BASE: TFloatField;
    QRNF_PRODUTOICMS_VALOR: TFloatField;
    QRNF_PRODUTOICMS_VALORRETIDO: TFloatField;
    QRNF_PRODUTOICMS_ISENTO: TFloatField;
    QRNF_PRODUTOICMS_NAOTRIBUTADO: TFloatField;
    QRNF_PRODUTOSUB_MARGEM: TFloatField;
    QRNF_PRODUTOSUB_BASE: TFloatField;
    QRNF_PRODUTOSUB_VALOR: TFloatField;
    QRNF_PRODUTOIPI_TIPO: TWideStringField;
    QRNF_PRODUTOIPI_ALIQUOTA: TFloatField;
    QRNF_PRODUTOIPI_BASE: TFloatField;
    QRNF_PRODUTOIPI_VALOR: TFloatField;
    QRNF_PRODUTODATA: TDateField;
    QRNF_PRODUTOTIPO: TIntegerField;
    QRNF_PRODUTONOTAFISCAL: TWideStringField;
    QRNF_PRODUTOFRETE: TFloatField;
    QRNF_PRODUTOOUTRAS: TFloatField;
    QRNF_PRODUTOSEGURO: TFloatField;
    QRNF_PRODUTOCLASSIFICACAO_FISCAL: TWideStringField;
    QRNF_PRODUTOSUB_PRODUTOS: TFloatField;
    QRNF_PRODUTOCODFORNECEDOR: TWideStringField;
    QRNF_PRODUTOITEM_ESPECIAL_VALOR: TFloatField;
    QRNF_PRODUTOICMS_OUTRAS: TFloatField;
    QRNF_PRODUTOALTERA_ITEM: TIntegerField;
    QRNF_PRODUTOCREDITO_ICMS: TFloatField;
    QRNF_PRODUTOCREDITO_ICMS_BASE: TFloatField;
    QRNF_PRODUTOPIS_BASE: TFloatField;
    QRNF_PRODUTOPIS: TFloatField;
    QRNF_PRODUTOCOFINS_BASE: TFloatField;
    QRNF_PRODUTOCOFINS: TFloatField;
    QRNF_PRODUTOLOTE_FABRICACAO: TWideStringField;
    QRNF_PRODUTOLOTE_VALIDADE: TDateField;
    QRNF_PRODUTOLOTE_FABRICACAO_DATA: TDateField;
    QRNF_PRODUTOCODBARRA: TWideStringField;
    QRNF_PRODUTOPRODUTO: TWideStringField;
    QRNF_PRODUTOPMARGEM: TSingleField;
    QRNF_PRODUTOPRECOVENDA: TSingleField;
    QRNF_PRODUTOPRECOCUSTO: TSingleField;
    qrsugestaoCODIGO: TWideStringField;
    qrsugestaoCODBARRA: TWideStringField;
    qrsugestaoPRODUTO: TWideStringField;
    qrsugestaoUNIDADE: TWideStringField;
    qrsugestaoDATA_CADASTRO: TDateField;
    qrsugestaoCODGRUPO: TWideStringField;
    qrsugestaoCODSUBGRUPO: TWideStringField;
    qrsugestaoCODFORNECEDOR: TWideStringField;
    qrsugestaoCODMARCA: TWideStringField;
    qrsugestaoDATA_ULTIMACOMPRA: TDateField;
    qrsugestaoNOTAFISCAL: TWideStringField;
    qrsugestaoPRECOCUSTO: TFloatField;
    qrsugestaoPRECOVENDA: TFloatField;
    qrsugestaoDATA_ULTIMAVENDA: TDateField;
    qrsugestaoESTOQUE: TFloatField;
    qrsugestaoESTOQUEMINIMO: TFloatField;
    qrsugestaoCODALIQUOTA: TWideStringField;
    qrsugestaoAPLICACAO: TWideMemoField;
    qrsugestaoLOCALICAZAO: TWideStringField;
    qrsugestaoPESO: TFloatField;
    qrsugestaoVALIDADE: TWideStringField;
    qrsugestaoCOMISSAO: TFloatField;
    qrsugestaoUSA_BALANCA: TIntegerField;
    qrsugestaoUSA_SERIAL: TIntegerField;
    qrsugestaoUSA_GRADE: TIntegerField;
    qrsugestaoCODRECEITA: TWideStringField;
    qrsugestaoFOTO: TWideStringField;
    qrsugestaoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrsugestaoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrsugestaoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrsugestaoPRECOCUSTO_ANTERIOR: TFloatField;
    qrsugestaoPRECOVENDA_ANTERIOR: TFloatField;
    qrsugestaoCUSTOMEDIO: TFloatField;
    qrsugestaoAUTO_APLICACAO: TWideStringField;
    qrsugestaoAUTO_COMPLEMENTO: TWideStringField;
    qrsugestaoDATA_REMARCACAO_CUSTO: TDateField;
    qrsugestaoDATA_REMARCACAO_VENDA: TDateField;
    qrsugestaoPRECO_PROMOCAO: TFloatField;
    qrsugestaoDATA_PROMOCAO: TDateField;
    qrsugestaoFIM_PROMOCAO: TDateField;
    qrsugestaoCST: TWideStringField;
    qrsugestaoCLASSIFICACAO_FISCAL: TWideStringField;
    qrsugestaoNBM: TWideStringField;
    qrsugestaoNCM: TWideStringField;
    qrsugestaoALIQUOTA: TFloatField;
    qrsugestaoIPI: TFloatField;
    qrsugestaoREDUCAO: TFloatField;
    qrsugestaoQTDE_EMBALAGEM: TFloatField;
    qrsugestaoTIPO: TWideStringField;
    qrsugestaoPESO_LIQUIDO: TFloatField;
    qrsugestaoFARMACIA_CONTROLADO: TWideStringField;
    qrsugestaoFARMACIA_APRESENTACAO: TIntegerField;
    qrsugestaoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrsugestaoFARMACIA_PMC: TFloatField;
    qrsugestaoULTIMA_ALTERACAO: TDateField;
    qrsugestaoULTIMA_CARGA: TDateField;
    qrsugestaoDATA_INVENTARIO: TDateField;
    qrsugestaoCUSTO_INVENTARIO: TFloatField;
    qrsugestaoESTOQUE_INVENTARIO: TFloatField;
    qrsugestaoESTOQUE_ANTERIOR: TFloatField;
    qrsugestaoPRECOVENDA_NOVO: TFloatField;
    qrsugestaoUSA_RENTABILIDADE: TIntegerField;
    qrsugestaoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrsugestaoAPRESENTACAO: TWideStringField;
    qrsugestaoSITUACAO: TIntegerField;
    qrsugestaoPRECOVENDA1: TFloatField;
    qrsugestaoPRECOVENDA2: TFloatField;
    qrsugestaoPRECOVENDA3: TFloatField;
    qrsugestaoPRECOVENDA4: TFloatField;
    qrsugestaoPRECOVENDA5: TFloatField;
    qrsugestaoDESCONTO_PRECOVENDA: TFloatField;
    qrsugestaoDATA_INVENTARIO_ATUAL: TDateField;
    qrsugestaoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrsugestaoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrsugestaoMARGEM_MINIMA: TFloatField;
    qrsugestaoPISCOFINS: TWideStringField;
    qrsugestaoREFERENCIA_FORNECEDOR: TWideStringField;
    qrsugestaoCOMISSAO1: TFloatField;
    qrsugestaoMARGEM_DESCONTO: TFloatField;
    qrsugestaoTAMANHO: TWideStringField;
    qrsugestaoCOR: TWideStringField;
    qrsugestaoINCIDENCIA_PISCOFINS: TWideStringField;
    qrsugestaoVEIC_CHASSI: TWideStringField;
    qrsugestaoVEIC_SERIE: TWideStringField;
    qrsugestaoVEIC_POTENCIA: TWideStringField;
    qrsugestaoVEIC_PESO_LIQUIDO: TWideStringField;
    qrsugestaoVEIC_PESO_BRUTO: TWideStringField;
    qrsugestaoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrsugestaoVEIC_RENAVAM: TWideStringField;
    qrsugestaoVEIC_ANO_FABRICACAO: TIntegerField;
    qrsugestaoVEIC_ANO_MODELO: TIntegerField;
    qrsugestaoVEIC_TIPO: TWideStringField;
    qrsugestaoVEIC_TIPO_PINTURA: TWideStringField;
    qrsugestaoVEIC_COD_COR: TWideStringField;
    qrsugestaoVEIC_COR: TWideStringField;
    qrsugestaoVEIC_VIN: TWideStringField;
    qrsugestaoVEIC_NUMERO_MOTOR: TWideStringField;
    qrsugestaoVEIC_CMKG: TWideStringField;
    qrsugestaoVEIC_CM3: TWideStringField;
    qrsugestaoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrsugestaoVEIC_COD_MARCA: TWideStringField;
    qrsugestaoVEIC_ESPECIE: TWideStringField;
    qrsugestaoVEIC_CONDICAO: TWideStringField;
    qrsugestaoLOTE_FABRICACAO: TWideStringField;
    qrsugestaoLOTE_VALIDADE: TDateField;
    qrsugestaoMARGEM_AGREGADA: TFloatField;
    qrsugestaoCODBARRA_NOVARTIS: TWideStringField;
    qrsugestaoFARMACIA_DCB: TWideStringField;
    qrsugestaoFARMACIA_ABCFARMA: TWideStringField;
    qrsugestaoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrsugestaoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrsugestaoULTIMA_COMPRA: TDateField;
    qrsugestaoFARMACIA_DATAVIGENCIA: TDateField;
    qrsugestaoFARMACIA_TIPO: TWideStringField;
    qrsugestaoUSA_COMBUSTIVEL: TWideStringField;
    qrsugestaoREFERENCIA: TWideStringField;
    qrsugestaoPERDA: TFloatField;
    qrsugestaoCOMPOSICAO1: TWideStringField;
    qrsugestaoCOMPOSICAO2: TWideStringField;
    qrsugestaoIAT: TWideStringField;
    qrsugestaoIPPT: TWideStringField;
    qrsugestaoSITUACAO_TRIBUTARIA: TWideStringField;
    qrsugestaoFLAG_SIS: TWideStringField;
    qrsugestaoFLAG_ACEITO: TWideStringField;
    qrsugestaoFLAG_EST: TWideStringField;
    qrsugestaoCSOSN: TWideStringField;
    qrsugestaoCODORIGINAL: TWideStringField;
    qrsugestaoCUSTO_ATACADO: TSingleField;
    qrsugestaoUNIDADE_ATACADO: TWideStringField;
    qrsugestaoQTDE_EMBALAGEMATACADO: TSingleField;
    qrsugestaoPMARGEM1: TSingleField;
    qrsugestaoPMARGEM2: TSingleField;
    qrsugestaoPMARGEM3: TSingleField;
    qrsugestaoPMARGEM4: TSingleField;
    qrsugestaoPMARGEM5: TSingleField;
    qrsugestaoPMARGEMATACADO1: TSingleField;
    qrsugestaoPMARGEMATACADO2: TSingleField;
    qrsugestaoPMARGEMATACADO3: TSingleField;
    qrsugestaoPMARGEMATACADO4: TSingleField;
    qrsugestaoPMARGEMATACADO5: TSingleField;
    qrsugestaoPMARGEMATACADO6: TSingleField;
    qrsugestaoPRECOATACADO1: TSingleField;
    qrsugestaoPRECOATACADO2: TSingleField;
    qrsugestaoPRECOATACADO3: TSingleField;
    qrsugestaoPRECOATACADO4: TSingleField;
    qrsugestaoPRECOATACADO5: TSingleField;
    qrsugestaoIND_CFOP: TWideStringField;
    qrsugestaoCFOP_DESC: TWideStringField;
    qrsugestaoUSA_LOTE: TIntegerField;
    qrsugestaoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrsugestaoCODCONTA: TWideStringField;
    qrsugestaoIND_CFOP_VENDA_FORA: TWideStringField;
    qrsugestaoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrsugestaoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrsugestaoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrsugestaoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrsugestaoUSA_TB_PC: TWideStringField;
    qrsugestaoATIVA: TWideStringField;
    qrsugestaoCEST: TWideStringField;
    qrsugestaoCODPRODUTO: TWideStringField;
    qrsugestaoCODFILIAL: TWideStringField;
    qrsugestaoESTOQUE_INICIAL: TFloatField;
    qrsugestaoENTRADAS: TFloatField;
    qrsugestaoSAIDAS: TFloatField;
    qrsugestaoESTOQUE_ATUAL: TFloatField;
    qrsugestaoULTIMA_ENTRADA: TDateField;
    qrsugestaoULTIMA_SAIDA: TDateField;
    qrsugestaoNOTA_FISCAL: TWideStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    panel99: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    pficha: TFlatPanel;
    Label5: TLabel;
    LAPELIDO: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label36: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    edata_cadastro: TJvDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    econtato1: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    euf: TDBComboBox;
    bitbtn6: TAdvGlowButton;
    DBEdit7: TDBEdit;
    ecnae: TDBEdit;
    ecodmunicipio: TDBEdit;
    bibge: TAdvGlowButton;
    bcnae: TAdvGlowButton;
    eibge: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    DBEdit16: TDBEdit;
    DBEdit2: TDBEdit;
    pnlPnlCNPJ: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btnButBuscar: TBitBtn;
    edtCaptcha: TEdit;
    medtEditCNPJ: TMaskEdit;
    pnl1: TPanel;
    img1: TImage;
    lblLabAtualizarCaptcha: TLabel;
    chkRemoverEspacosDuplos: TCheckBox;
    advsmthxpndrpnl1: TAdvSmoothExpanderPanel;
    lbl3: TLabel;
    btn1: TAdvMetroButton;
    lblsituacaoCNPJ: TEdit;
    PNLcpf: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    EditCaptcha: TEdit;
    EditCNPJ: TEdit;
    Panel6: TPanel;
    Image4: TImage;
    LabAtualizarCaptcha: TLabel;
    btnConsultar: TButton;
    EditDtNasc: TEdit;
    EditSituacao: TEdit;
    advsmthxpndrpnl2: TAdvSmoothExpanderPanel;
    lbl4: TLabel;
    btn2: TAdvMetroButton;
    PageSheet2: TPageSheet;
    ViewSplit1: TViewSplit;
    FlipView1: TFlipView;
    Bevel3: TBevel;
    Bevel4: TBevel;
    wwDBGrid1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    Label4: TLabel;
    LTOTAL: TLabel;
    GroupBox3: TGroupBox;
    gridcompra: TwwDBGrid;
    gridnf: TwwDBGrid;
    GroupBox4: TGroupBox;
    PageView2: TPageView;
    PageSheet3: TPageSheet;
    Label27: TLabel;
    wwDBGrid4: TwwDBGrid;
    rtotal: TJvCalcEdit;
    PageSheet4: TPageSheet;
    Label28: TLabel;
    wwDBGrid5: TwwDBGrid;
    rtotal_pago: TJvCalcEdit;
    HeaderView2: THeaderView;
    wwDBGrid3: TwwDBGrid;
    PageSheet5: TPageSheet;
    Bevel6: TBevel;
    Panel4: TPanel;
    Bevel7: TBevel;
    Label2: TLabel;
    ldias: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    ldataini_remarcado: TJvDateEdit;
    ldatafim_remarcado: TJvDateEdit;
    bfiltrar: TAdvGlowButton;
    GRID5: TwwDBGrid;
    PageSheet6: TPageSheet;
    Bevel8: TBevel;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView2IE: TcxGridDBColumn;
    cxGrid1DBTableView2NOME: TcxGridDBColumn;
    cxGrid1DBTableView2ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView2BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView2CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView2UF: TcxGridDBColumn;
    cxGrid1DBTableView2TELEFONE1: TcxGridDBColumn;
    cxGrid1DBTableView2CELULAR1: TcxGridDBColumn;
    cxGrid1DBTableView2EMAIL: TcxGridDBColumn;
    Panel5: TPanel;
    bt_info_completo: TAdvSmoothButton;
    Panel7: TPanel;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    bt_fornecedor_001: TAdvGlowButton;
    bt_fornecedor_002: TAdvGlowButton;
    bt_fornecedor_003: TAdvGlowButton;
    bt_fornecedor_004: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure PageView1Change(Sender: TObject);
    procedure qrcontasPAGARCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure Movimentaes1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure eufEnter(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure bcomprasClick(Sender: TObject);
    procedure compras1Click(Sender: TObject);
    procedure combo_pessoaExit(Sender: TObject);
    procedure combo_pessoaKeyPress(Sender: TObject; var Key: Char);
    procedure Sugestesdecompra1Click(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure ldataini_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure qrsugestaoCalcFields(DataSet: TDataSet);
    procedure GRID5DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure bibgeClick(Sender: TObject);
    procedure bcnaeClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ecnaeExit(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btnButBuscarClick(Sender: TObject);
    procedure lblLabAtualizarCaptchaClick(Sender: TObject);
    procedure edtCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure lblsituacaoCNPJChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure EditSituacaoChange(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure bt_info_completoClick(Sender: TObject);
    procedure bt_fornecedor_001Click(Sender: TObject);
    procedure bt_fornecedor_002Click(Sender: TObject);
    procedure bt_fornecedor_003Click(Sender: TObject);
    procedure bt_fornecedor_004Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor: Tfrmfornecedor;
  comando: string;
  CONTINUA_INCLUSAO: BOOLEAN;
  const
   sc_DragMove = $f012;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_fornecedor,
  lista_fornecedor2, fornecedor_compras, xloc_cidade;

{$R *.dfm}

procedure Tfrmfornecedor.FormActivate(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmfornecedor.FormShow(Sender: TObject);
begin
  ldataini_remarcado.Date := Date - 90;
  ldatafim_remarcado.Date := Date;

  ldias.Caption := floattostr(ldatafim_remarcado.Date -
    ldataini_remarcado.Date);

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.SQL.clear;
  frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by codigo');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.first;

  if procura_sintegra = true then
  begin
    frmmodulo.qrFORNECEDOR.Locate('codigo', parametro_pesquisa,
      [loCaseInsensitive]);
  end;

  procura_sintegra := false;

  pficha.Enabled := false;
  Panel1.Enabled := false;
  // bincluir.SetFocus;
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmfornecedor.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmfornecedor.bincluirClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  CONTINUA_INCLUSAO := true;

  frmmodulo.qrFORNECEDOR.insert;
  frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000009');
  frmmodulo.qrFORNECEDOR.fieldbyname('assistencia_tecnica').asinteger := 0;
  combo_pessoa.ItemIndex := 1;
  pficha.Enabled := true;
  Panel1.Enabled := true;
  combo_pessoa.SetFocus;
  pgravar.visible := true;
  edata_cadastro.Date := Date;

  PopupMenu := Pop2;
end;

procedure Tfrmfornecedor.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor.AdvSmoothButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.AdvSmoothButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.AdvSmoothButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmfornecedor.AdvSmoothButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmfornecedor.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmfornecedor.balterarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  CONTINUA_INCLUSAO := false;

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrFORNECEDOR.Edit;
    pficha.Enabled := true;
    Panel1.Enabled := true;
    combo_pessoa.SetFocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmfornecedor.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir FORNECEDOR', 4) then
  begin

    qrduplo.close;
    qrduplo.SQL.clear;
    qrduplo.SQL.add('select * from c000046 where codfornecedor = ''' +
      frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      application.messagebox
        ('Este fornecedor possue movimento de parcelas (contas a pagar/pagas) em seu nome! Impossível excluir!',
        'Erro', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin

      qrduplo.close;
      qrduplo.SQL.clear;
      qrduplo.SQL.add('select * from c000087 where codfornecedor = ''' +
        frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
      qrduplo.open;
      if qrduplo.recordcount > 0 then
      begin
        application.messagebox
          ('Este fornecedor possue movimento de compras em seu nome! Impossível excluir!',
          'Erro', mb_ok + mb_iconerror);
        exit;
      end
      else
      begin
        qrduplo.close;
        qrduplo.SQL.clear;
        qrduplo.SQL.add('select * from c000031 where codfornecedor = ''' +
          frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
        qrduplo.open;
        if qrduplo.recordcount > 0 then
        begin
          application.messagebox
            ('Este fornecedor possue movimento de compras em seu nome! Impossível excluir!',
            'Erro', mb_ok + mb_iconerror);
          exit;
        end

      end;

    end;
    frmprincipal.logUC('Excluiu Fornecedor - ' + DBEdit2.Text, 3);
    frmmodulo.qrFORNECEDOR.Delete;
    frmmodulo.Conexao.commit;

    PageView1Change(frmfornecedor);
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmfornecedor.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
  frmxloc_Fornecedor.AdvGlowButton1.Enabled := false;
  frmxloc_Fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrFORNECEDOR.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
    PageView1Change(frmfornecedor);
  end;
end;

procedure Tfrmfornecedor.btn1Click(Sender: TObject);
begin
 //pnlPnlCNPJ.Visible := False;
end;

procedure Tfrmfornecedor.btn2Click(Sender: TObject);
begin
//PNLcpf.Visible := False;
end;

procedure Tfrmfornecedor.btnButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  if EdtCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      medtEditCNPJ.Text,
      EdtCaptcha.Text,
      chkRemoverEspacosDuplos.Checked )
     then
    begin

       lblsituacaoCNPJ.Text  := ACBrConsultaCNPJ1.Situacao;
     frmmodulo.qrfornecedorNOME.AsString := ACBrConsultaCNPJ1.RazaoSocial;
      //EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      frmmodulo.qrfornecedorFANTASIA.AsString    := ACBrConsultaCNPJ1.Fantasia;
      frmmodulo.qrfornecedorENDERECO.AsString    := ACBrConsultaCNPJ1.Endereco;
      frmmodulo.qrfornecedorNUMERO.AsString      := ACBrConsultaCNPJ1.Numero;
      frmmodulo.qrfornecedorCOMPLEMENTO.AsString := ACBrConsultaCNPJ1.Complemento;
      frmmodulo.qrfornecedorBAIRRO.AsString      := ACBrConsultaCNPJ1.Bairro;
      frmmodulo.qrfornecedorCIDADE.AsString      := ACBrConsultaCNPJ1.Cidade;
      euf.Text          := ACBrConsultaCNPJ1.UF;
      frmmodulo.qrfornecedorCEP.AsString         := ACBrConsultaCNPJ1.CEP;
      frmmodulo.qrfornecedorCOD_MUNICIPIO_IBGE.AsString       := ACBrConsultaCNPJ1.IBGE_Municipio;
      frmmodulo.qrfornecedorEMAIL.AsString       := ACBrConsultaCNPJ1.EndEletronico;
      frmmodulo.qrfornecedorTELEFONE1.AsString       := ACBrConsultaCNPJ1.Telefone;
     frmmodulo.qrfornecedorCNPJ.AsString      := ACBrConsultaCNPJ1.CNPJ;
      frmmodulo.qrfornecedorIBGE.AsString := ACBrConsultaCNPJ1.IBGE_UF;
      edata_cadastro.Date := Date();
       frmmodulo.qrfornecedorIE.AsString   := 'ISENTO';
      // DateEdit1.Date := ACBrConsultaCNPJ1.DataSituacao;
       euf.Text          := ACBrConsultaCNPJ1.UF;
       ecnae.text :=  ACBrConsultaCNPJ1.CNAE1;
       EIBGE.TEXT :=  ACBrConsultaCNPJ1.IBGE_UF;
       ECODMUNICIPIO.TEXT := ACBrConsultaCNPJ1.IBGE_Municipio;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    edtCaptcha.SetFocus;
  end;


end;

procedure Tfrmfornecedor.btnConsultarClick(Sender: TObject);
begin
if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
     frmmodulo.qrfornecedorNOME.AsString := ACBrConsultaCPF1.Nome;

      //EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      frmmodulo.qrfornecedorFANTASIA.AsString    := ACBrConsultaCPF1.Nome;
     // dbedit4.Text    := ACBrConsultaCPF1.Endereco;
     // dbedit38.Text      := ACBrConsultaCNPJ1.Numero;
     // dbedit9.Text := ACBrConsultaCNPJ1.Complemento;
     // dbedit5.Text      := ACBrConsultaCNPJ1.Bairro;
     // dbedit6.Text      := ACBrConsultaCNPJ1.Cidade;
     // euf.Text          := ACBrConsultaCNPJ1.UF;
     // dbedit8.Text         := ACBrConsultaCNPJ1.CEP;
     // dbedit7.Text       := ACBrConsultaCNPJ1.IBGE_Municipio;
     // dbedit13.Text       := ACBrConsultaCNPJ1.EndEletronico;
     // dbedit11.Text       := ACBrConsultaCNPJ1.Telefone;
      frmmodulo.qrfornecedorCNPJ.AsString  := ACBrConsultaCPF1.CPF;
      edata_cadastro.Date := Date();
      frmmodulo.qrfornecedorIE.AsString   := 'ISENTO';
       //DateEdit1.Date := StrToDate(ACBrConsultaCPF1.DataNascimento);
       EditSituacao.Text := ACBrConsultaCPF1.Situacao;

    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure Tfrmfornecedor.bt_fornecedor_001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.bt_fornecedor_002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.bt_fornecedor_003Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmfornecedor.bt_fornecedor_004Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmfornecedor.bt_info_completoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  PageControl1.ActivePageIndex := 0;
  if DBEdit2.Text = '' then
  begin
    application.messagebox
      ('Favor informar um nome válido para este fornecedor!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit2.SetFocus;
    exit;
  end;

  if euf.Text = '' then
  begin
    application.messagebox
      ('Favor informar um Estado válido para este fornecedor!', 'Atenção',
      mb_ok + mb_iconerror);
    euf.SetFocus;
    exit;
  end;

  if (frmmodulo.qrFORNECEDOR.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Fornecedor - ' + DBEdit2.Text, 1);
    frmmodulo.qrFORNECEDOR.fieldbyname('TIPO').asinteger :=
      combo_pessoa.ItemIndex + 1;
    frmmodulo.qrFORNECEDOR.post;
  end;

  if (frmmodulo.qrFORNECEDOR.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Fornecedor - ' + DBEdit2.Text, 2);
    frmmodulo.qrFORNECEDOR.fieldbyname('TIPO').asinteger :=
      combo_pessoa.ItemIndex + 1;
    frmmodulo.qrFORNECEDOR.post;
  end;

  if CONTINUA_INCLUSAO then
    frmprincipal.agenda('1', 'FORNECEDOR', DBEdit2.Text, DBEdit10.Text,
      DBEdit11.Text, '', '', DBEdit13.Text, DBEdit12.Text, DBEdit28.Text, '3');

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  Panel1.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  bincluir.SetFocus;
  PageView1.ActivePageIndex := 0;
  PageView1Change(frmfornecedor);

end;

procedure Tfrmfornecedor.bcancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
    (frmmodulo.qrFORNECEDOR.State = dsedit) then
    frmmodulo.qrFORNECEDOR.cancel;
  pficha.Enabled := false;
  Panel1.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  bincluir.SetFocus;
  comando := '';
  PageView1.ActivePageIndex := 0;
  PageView1Change(frmfornecedor);
end;

procedure Tfrmfornecedor.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfornecedor.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.first;
  PageView1Change(frmfornecedor);
end;

procedure Tfrmfornecedor.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.last;
  PageView1Change(frmfornecedor);

end;

procedure Tfrmfornecedor.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.prior;
  PageView1Change(frmfornecedor);

end;

procedure Tfrmfornecedor.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.next;
  PageView1Change(frmfornecedor);

end;

procedure Tfrmfornecedor.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmfornecedor.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrFORNECEDOR.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmfornecedor.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmfornecedor.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfornecedor.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmfornecedor.DBEdit15Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit15.Text <> '' then
  begin

    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if combo_pessoa.ItemIndex <> 1 then
      begin
        frmprincipal.CheckCPF1.documento := DBEdit15.Text;
        if frmprincipal.CheckCPF1.validar then
        begin
          if pos('-', DBEdit15.Text) = 0 then
            frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring :=
              FormatMaskText('999.999.999-99;0;_', DBEdit15.Text);
        end
        else
        begin
          Showmessage('CPF Inválido!');
          DBEdit15.SetFocus;
          exit;
        end;
      end
      else
      begin
        if frmprincipal.TestaCnpj(DBEdit15.Text) then
        begin
          if pos('-', DBEdit15.Text) = 0 then
            frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring :=
              FormatMaskText('99.999.999/9999-99;0;_', DBEdit15.Text);
        end
        else
        begin
          Showmessage('CNPJ Inválido!');
          DBEdit15.SetFocus;
          exit;
        end;
      end;

      if DBEdit15.Text <> '' then
      begin
        if (frmmodulo.qrFORNECEDOR.State = dsinsert) then
        begin
          QUERY1.close;
          QUERY1.SQL.clear;
          QUERY1.SQL.add('select * from c000009 where CNPJ = ''' +
            DBEdit15.Text + '''');
          QUERY1.open;
          if QUERY1.recordcount > 0 then
          begin
            if application.messagebox
              ('Existe um fornecedor cadastrado com este CNPJ/CPF! Deseja cancelar esta ficha de cadastro e ir até a ficha deste fornecedor?',
              'Atenção', mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = idyes
            then
            begin
              frmmodulo.qrFORNECEDOR.cancel;
              frmmodulo.qrFORNECEDOR.Locate('codigo',
                QUERY1.fieldbyname('codigo').asstring, [loCaseInsensitive]);
              frmmodulo.qrFORNECEDOR.Edit;
            end
            else
            begin
              frmmodulo.qrFORNECEDOR.fieldbyname('cnpj').asstring := '';
              DBEdit15.SetFocus;
            end;
            exit;
          end;
        end;
      end;

    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit8Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit8.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit8.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('cEP').asstring :=
          FormatMaskText('99999-999;0;_', DBEdit8.Text);

    end;
  end;

end;

procedure Tfrmfornecedor.edata_cadastroExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inválida');
      TJvDBDateEdit(Sender).SetFocus;
    end;
  end;

end;

procedure Tfrmfornecedor.EditSituacaoChange(Sender: TObject);
begin
 //PNLcpf.Visible := False;
end;

procedure Tfrmfornecedor.edtCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
    btnButBuscarClick(btnButBuscar);
end;

procedure Tfrmfornecedor.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmfornecedor.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    DBEdit22.SetFocus;

  end;
end;

procedure Tfrmfornecedor.DBEdit1Change(Sender: TObject);
begin

  qrsugestao.close;

  PageView1Change(frmfornecedor);

  if frmmodulo.qrFORNECEDOR.State <> dsinsert then
  begin
    if frmmodulo.qrFORNECEDOR.State <> dsedit then
    begin

      try
        combo_pessoa.ItemIndex := frmmodulo.qrFORNECEDOR.fieldbyname('TIPO')
          .asinteger - 1;

        if frmmodulo.qrFORNECEDOR.fieldbyname('TIPO').asinteger = 2 then
        begin
          LAPELIDO.Caption := 'FANTASIA:';
          LRG.Caption := 'INSC.EST.:';
          LCPF.Caption := 'CNPJ:';
        end
        else
        begin
          LAPELIDO.Caption := 'APELIDO:';
          LRG.Caption := 'C.IDENTID.:';
          LCPF.Caption := 'CPF';
        end;
      except
      end;
    end;
  end;
end;

procedure Tfrmfornecedor.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfornecedor.PageView1Change(Sender: TObject);
var
  mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11,
    mes12: string;
  T1: REAL;
begin

  if PageView1.ActivePageIndex = 1 then
  begin

    QUERY.close;
    QUERY.SQL.clear;
    QUERY.SQL.add
      ('select SUM(TOTAL_NOTA) TOTAL_GERAL from c000031 where codFORNECEDOR = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
    QUERY.open;

    T1 := QUERY.fieldbyname('TOTAL_GERAL').ASFLOAT;

    QUERY.close;
    QUERY.SQL.clear;
    QUERY.SQL.add
      ('select SUM(TOTAL_NOTA) TOTAL_GERAL from c000087 where codFORNECEDOR = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
    QUERY.open;

    T1 := QUERY.fieldbyname('TOTAL_GERAL').ASFLOAT + T1;

    LTOTAL.Caption := FORMATFLOAT('###,###,##0.00', T1);

    qrcompra.close;
    qrcompra.SQL.clear;
    qrcompra.SQL.add('select * from c000031 where codFORNECEDOR = ''' +
      frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring +
      ''' order by data, NUMERO');
    qrcompra.open;

    qrnf.close;
    qrnf.SQL.clear;
    qrnf.SQL.add('select * from c000087 where codFORNECEDOR = ''' +
      frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring +
      ''' order by data_LANCAMENTO, NUMERO');
    qrnf.open;

    mes01 := copy(datetostr(Date), 4, 7);
    mes02 := copy(datetostr(IncMonth(Date, -1)), 4, 7);
    mes03 := copy(datetostr(IncMonth(Date, -2)), 4, 7);
    mes04 := copy(datetostr(IncMonth(Date, -3)), 4, 7);
    mes05 := copy(datetostr(IncMonth(Date, -4)), 4, 7);
    mes06 := copy(datetostr(IncMonth(Date, -5)), 4, 7);
    mes07 := copy(datetostr(IncMonth(Date, -6)), 4, 7);
    mes08 := copy(datetostr(IncMonth(Date, -7)), 4, 7);
    mes09 := copy(datetostr(IncMonth(Date, -8)), 4, 7);
    mes10 := copy(datetostr(IncMonth(Date, -9)), 4, 7);
    mes11 := copy(datetostr(IncMonth(Date, -10)), 4, 7);
    mes12 := copy(datetostr(IncMonth(Date, -11)), 4, 7);

    QRCOMPRA_MES.close;
    QRCOMPRA_MES.SQL.clear;
    QRCOMPRA_MES.SQL.add('select sum(TOTAL) sum_0, ' +
      '(select sum(TOTAL) from c000032 where data >= :data11 and data < :data10 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data10 and data < :data09 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data09 and data < :data08 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data08 and data < :data07 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data07 and data < :data06 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data06 and data < :data05 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data05 and data < :data04 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data04 and data < :data03 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data03 and data < :data02 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data02 and data < :data01 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''), ' +
      '(select sum(TOTAL) from c000032 where data >= :data01 and data < :data00 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + ''') ' +
      'from c000032 where data >= :data12 and data < :data11 and movimento = 1 and codcliente = '''
      + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');

    QRCOMPRA_MES.Params.ParamByName('data00').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, 1)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data01').asdatetime :=
      strtodate('01/' + copy(datetostr(Date), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data02').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -1)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data03').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -2)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data04').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -3)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data05').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -4)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data06').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -5)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data07').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -6)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data08').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -7)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data09').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -8)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data10').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -9)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data11').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -10)), 4, 7));
    QRCOMPRA_MES.Params.ParamByName('data12').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -11)), 4, 7));

    QRCOMPRA_MES.open;

    QRCOMPRA_MESsum_0.DisplayLabel := mes12;
    QRCOMPRA_MESsum.DisplayLabel := mes11;
    QRCOMPRA_MESsum_1.DisplayLabel := mes10;
    QRCOMPRA_MESsum_2.DisplayLabel := mes09;
    QRCOMPRA_MESsum_3.DisplayLabel := mes08;
    QRCOMPRA_MESsum_4.DisplayLabel := mes07;
    QRCOMPRA_MESsum_5.DisplayLabel := mes06;
    QRCOMPRA_MESsum_6.DisplayLabel := mes05;
    QRCOMPRA_MESsum_7.DisplayLabel := mes04;
    QRCOMPRA_MESsum_8.DisplayLabel := mes03;
    QRCOMPRA_MESsum_9.DisplayLabel := mes02;
    QRCOMPRA_MESsum_10.DisplayLabel := mes01;

  end;
  if PageView1.ActivePageIndex = 2 then
  begin

  end;

  if PageView1.ActivePageIndex = 3 then
  begin

    frmmodulo.qrfornecedor_codigo.close;
    frmmodulo.qrfornecedor_codigo.SQL.clear;
    frmmodulo.qrfornecedor_codigo.SQL.add('select * from fornecedor_codigo');
    frmmodulo.qrfornecedor_codigo.SQL.add('where codfornecedor = :vfor');
    frmmodulo.qrfornecedor_codigo.Params.ParamByName('vfor').asstring :=
      frmmodulo.qrfornecedorCODIGO.asstring;
    frmmodulo.qrfornecedor_codigo.open;

  end;
end;

procedure Tfrmfornecedor.qrcontasPAGARCalcFields(DataSet: TDataSet);
begin
  if qrcontasPAGAR.fieldbyname('SITUACAO').asinteger = 2 then
    qrcontasPAGAR.fieldbyname('SITUACAO2').asinteger := 2;
  if qrcontasPAGAR.fieldbyname('SITUACAO').asinteger = 1 then
  begin
    if qrcontasPAGAR.fieldbyname('DATA_VENCIMENTO').asdatetime = Date then
      qrcontasPAGAR.fieldbyname('SITUACAO2').asinteger := 4;
    if qrcontasPAGAR.fieldbyname('DATA_VENCIMENTO').asdatetime < Date then
      qrcontasPAGAR.fieldbyname('SITUACAO2').asinteger := 3;
    if qrcontasPAGAR.fieldbyname('DATA_VENCIMENTO').asdatetime > Date then
      qrcontasPAGAR.fieldbyname('SITUACAO2').asinteger := 1;
  end;
end;

procedure Tfrmfornecedor.wwDBGrid1DblClick(Sender: TObject);
begin
  QRNF_PRODUTO.close;
  QRNF_PRODUTO.SQL.clear;
  QRNF_PRODUTO.SQL.add('select * from c000088 where codnota = ''' +
    qrnf.fieldbyname('codigo').asstring + '''');
  QRNF_PRODUTO.open;

  GroupBox3.Caption := 'PRODUTOS COMPRADOS [NOTA FISCAL: ' +
    qrnf.fieldbyname('NUMERO').asstring + ']';

  qrcontasPAGAR.close;
  qrcontasPAGAR.SQL.clear;
  qrcontasPAGAR.SQL.add('select * from c000046 where codNOTA = ''' +
    qrnf.fieldbyname('codigo').asstring + ''' and codFORNECEDOR =''' +
    frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring +
    ''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasPAGAR.open;

  qrcontasPAGARpg.close;
  qrcontasPAGARpg.SQL.clear;
  qrcontasPAGARpg.SQL.add('select * from c000046 where codNOTA = ''' +
    qrnf.fieldbyname('codigo').asstring + ''' and codFORNECEDOR =''' +
    frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring +
    ''' and situacao = 2 order by data_PAGAMENTO, codigo');
  qrcontasPAGARpg.open;
  rtotal_pago.value := 0;
  rtotal.value := 0;
  while not qrcontasPAGAR.eof do
  begin
    rtotal.value := rtotal.value + qrcontasPAGAR.fieldbyname('VALOR').ASFLOAT;
    qrcontasPAGAR.next;
  end;
  while not qrcontasPAGARpg.eof do
  begin
    rtotal_pago.value := rtotal_pago.value + qrcontasPAGARpg.fieldbyname
      ('valor_pago').ASFLOAT;
    qrcontasPAGARpg.next;
  end;

  gridnf.visible := true;
  gridcompra.visible := false;
end;

procedure Tfrmfornecedor.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.Movimentaes1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.create(self);
  FRMLISTA_FORNECEDOR2.showmodal;
end;

procedure Tfrmfornecedor.BitBtn6Click(Sender: TObject);
var
  tipo, campo, UF: PWideChar;
begin
  if frmmodulo.qrFORNECEDOR.fieldbyname('uf').asstring = '' then
  begin
    Showmessage('Favor informar a UF!');
    exit;
  end;
  UF := PWideChar(frmmodulo.qrFORNECEDOR.fieldbyname('uf').asstring);
  if frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring <> '' then
  begin
    tipo := 'CNPJ';
    campo := PWideChar(frmprincipal.somenteNumero
      (frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring));
  end
  else
  begin
    if frmmodulo.qrFORNECEDOR.fieldbyname('IE').asstring <> '' then
    begin
      tipo := 'IE';
      campo := PWideChar(frmprincipal.somenteNumero
        (frmmodulo.qrFORNECEDOR.fieldbyname('IE').asstring));
    end
    else
    begin
      Showmessage('Favor informar o CNPJ ou a Inscrição Estadual!');
      exit;
    end;
  end;

  ShellExecute(0, nil, PChar('\Arquivos de programas\Ibersoft\QSint\' +
    'qsint.exe'), PChar('UF:' + UF + ' DT:' + tipo + ' DN:' + campo), nil, 0);
end;

procedure Tfrmfornecedor.eufEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmfornecedor.eufExit(Sender: TObject);
begin

  if frmprincipal.ChecaEstado(euf.Text) = false then
  begin
    Showmessage('Unidade de Federação Inválida...');
    euf.SetFocus;
    exit;
  end;

  tedit(Sender).Color := clwindow;

end;

procedure Tfrmfornecedor.DBEdit2Exit(Sender: TObject);
var
  texto: PWideChar;
begin

  tedit(Sender).Color := clwindow;
  if frmmodulo.qrFORNECEDOR.State in [dsinsert, dsedit] then
  begin
    qrduplo.close;
    qrduplo.SQL.clear;
    qrduplo.SQL.add('select * from c000009');
    qrduplo.SQL.add('where upper(NOME) = ''' + ANSIUPPERCASE(DBEdit2.Text) +
      ''' and codigo <> ''' + DBEdit1.Text + '''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      texto := PWideChar('Existe um fornecedor cadastrado com este nome!' + #13
        + qrduplo.fieldbyname('codigo').asstring + ' - ' +
        qrduplo.fieldbyname('nome').asstring + #13 + 'Endereço: ' +
        qrduplo.fieldbyname('ENDERECO').asstring + '!' + #13 +
        'Deseja prosseguir?');
      if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning +
        MB_DEFBUTTON2) = idNO then
      begin
        bcancelarClick(frmfornecedor);
        exit;
      end;
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmfornecedor.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmfornecedor.bcomprasClick(Sender: TObject);
begin
  frmfornecedor_compras := Tfrmfornecedor_compras.create(self);
  frmfornecedor_compras.showmodal;

end;

procedure Tfrmfornecedor.compras1Click(Sender: TObject);
begin
  bcomprasClick(frmfornecedor);
end;

procedure Tfrmfornecedor.cySpeedButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.cySpeedButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.cySpeedButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmfornecedor.cySpeedButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmfornecedor.combo_pessoaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
    (frmmodulo.qrFORNECEDOR.State = dsedit) then
  begin

    if combo_pessoa.ItemIndex <> 0 then
    begin
      if combo_pessoa.ItemIndex <> 1 then
      begin
        if combo_pessoa.ItemIndex <> 2 then
        begin
          if combo_pessoa.ItemIndex <> 3 then
          begin
            Showmessage('Favor escolher uma opção válida!');
            combo_pessoa.SetFocus;
          end
          else
          begin
            LAPELIDO.Caption := 'Nome:';
            LRG.Caption := 'IE/RG:';
            LCPF.Caption := 'CPF/CNPJ::';
          end;
        end
        else
        begin
          LAPELIDO.Caption := 'Nome:';
          LRG.Caption := 'Insc.Est.:';
          LCPF.Caption := 'CPF:';
        end;
      end
      else
      begin
        LAPELIDO.Caption := 'Fantasia:';
        LRG.Caption := 'Insc.Est.:';
        LCPF.Caption := 'CNPJ:';
      end;
    end
    else
    begin
      LAPELIDO.Caption := 'Apelido:';
      LRG.Caption := 'C.Identidade:';
      LCPF.Caption := 'CPF';
    end;
  end;
  if combo_pessoa.Text = 'JURÍDICA' then
 begin
    //   pnlPnlCNPJ.Visible := True;
    //   Timer1.Enabled := True;
 end
 else
 begin
     //     PNLcpf.Visible := True;
     //  Timer2.Enabled := True;
 end;

end;

procedure Tfrmfornecedor.combo_pessoaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrmfornecedor.Sugestesdecompra1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmfornecedor.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:= False;
  lblLabAtualizarCaptchaClick(lblLabAtualizarCaptcha);
  medtEditCNPJ.SetFocus;
end;

procedure Tfrmfornecedor.Timer2Timer(Sender: TObject);
begin
Timer2.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

procedure Tfrmfornecedor.bfiltrarClick(Sender: TObject);
begin
  ldias.Caption := floattostr(ldatafim_remarcado.Date -
    ldataini_remarcado.Date);

  qrsugestao.close;
  qrsugestao.SQL.clear;
  qrsugestao.SQL.add('select pro.*, est.* from c000025 pro, c000100 est');
  qrsugestao.SQL.add
    ('where pro.situacao = 0 and pro.codigo = est.codproduto and codfornecedor = '''
    + frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring + '''');
  qrsugestao.SQL.add('order by codfornecedor,produto');
  qrsugestao.open;

end;

procedure Tfrmfornecedor.ldataini_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfornecedor.lblLabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Png: TPngImage;
begin
  Stream := TMemoryStream.Create;
  Png := TPNGImage.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Png.LoadFromStream(Stream);

    img1.Picture.Assign(Png);

    edtCaptcha.Clear;
    edtCaptcha.SetFocus;
  finally
    Stream.Free;
    Png.Free;
  end;
end;

procedure Tfrmfornecedor.lblsituacaoCNPJChange(Sender: TObject);
begin
// pnlPnlCNPJ.Visible := False;
end;

procedure Tfrmfornecedor.ldatafim_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltrar.SetFocus;
end;

procedure Tfrmfornecedor.qrsugestaoCalcFields(DataSet: TDataSet);
begin
  QUERY.close;
  QUERY.SQL.clear;
  QUERY.SQL.add('select sum(qtde) vendas from c000032');
  QUERY.SQL.add('where codproduto = ''' + qrsugestaoCODIGO.asstring + '''');
  QUERY.SQL.add('and movimento = ''2''');
  QUERY.SQL.add('and data >= :data_ini and data <= :data_fim');
  QUERY.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
  QUERY.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
  QUERY.open;
  if QUERY.recordcount > 0 then
  begin
    qrsugestao.fieldbyname('vendas').ASFLOAT :=
      QUERY.fieldbyname('vendas').ASFLOAT;
    qrsugestao.fieldbyname('SUGESTAO').ASFLOAT :=
      qrsugestao.fieldbyname('VENDAS').ASFLOAT - qrsugestao.fieldbyname
      ('estoque_atual').ASFLOAT;
  end
  else
  begin
    qrsugestao.fieldbyname('vendas').ASFLOAT := 0;
    qrsugestao.fieldbyname('sugestao').ASFLOAT := 0;
  end;

  if qrsugestao.fieldbyname('sugestao').ASFLOAT < 0 then
    qrsugestao.fieldbyname('sugestao').ASFLOAT := 0;
end;

procedure Tfrmfornecedor.GRID5DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  if qrsugestaosugestao.value > 0 then
    GRID5.canvas.font.Color := clred;
  GRID5.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmfornecedor.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image4.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure Tfrmfornecedor.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin

  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;

end;

procedure Tfrmfornecedor.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmfornecedor.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in (['A' .. 'Z'])) or (Key in (['a' .. 'z'])) then
    abort;
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfornecedor.DBEdit14Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit14.Text = '' then
    frmmodulo.qrFORNECEDOR.fieldbyname('IE').asstring := 'ISENTO';
end;

procedure Tfrmfornecedor.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qrFORNECEDOR.fieldbyname('COD_MUNICIPIO_IBGE').asstring :=
    resultado_pesquisa6;
  frmmodulo.qrFORNECEDOR.fieldbyname('IBGE').asstring := resultado_pesquisa5;
  frmmodulo.qrFORNECEDOR.fieldbyname('CIDADE').asstring := resultado_pesquisa2;
  frmmodulo.qrFORNECEDOR.fieldbyname('UF').asstring := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;

procedure Tfrmfornecedor.bcnaeClick(Sender: TObject);
begin

  { parametro_pesquisa := '';
    frmxloc_cnae := tfrmxloc_cnae.create(self);
    frmxloc_cnae.showmodal;

    frmmodulo.qrfornecedor.FieldByName('CNAE').AsString := resultado_pesquisa2;
    ecodmunicipio.SetFocus; }
end;

procedure Tfrmfornecedor.DBEdit6Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
    (frmmodulo.qrFORNECEDOR.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
      AdvGlowButton1.OnClick(frmfornecedor);
  end;
end;

procedure Tfrmfornecedor.ecnaeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
    (frmmodulo.qrFORNECEDOR.State = dsedit) then
  begin
    if ecnae.Text = '' then
      bcnae.OnClick(frmfornecedor);
  end;
end;

procedure Tfrmfornecedor.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmfornecedor.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit10.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit10.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('TELEFONE1').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit10.Text);
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit11Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit11.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit11.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('TELEFONE2').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit11.Text);
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit12Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit12.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit12.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('FAX').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit12.Text);
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit29Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit29.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit29.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('CELULAR1').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit29.Text);
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit30Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit30.Text <> '' then
  begin
    if (frmmodulo.qrFORNECEDOR.State = dsinsert) or
      (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      if pos('-', DBEdit30.Text) = 0 then
        frmmodulo.qrFORNECEDOR.fieldbyname('CELULAR2').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit30.Text);
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit16Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  frmmodulo.qrFORNECEDOR.fieldbyname('numero').asstring :=
    frmprincipal.zerarcodigo(DBEdit16.Text, 5);
end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
