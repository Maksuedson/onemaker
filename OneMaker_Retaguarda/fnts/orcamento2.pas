unit orcamento2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, JvToolEdit, JvDBCtrl, StdCtrls, Mask,
  DBCtrls, Collection, Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdblook, wwdbedit,
  JvCurrEdit, JvxCtrls, Menus, RpDefine, RpCon, RpConDS, RzEdit, RzDBEdit,
  RzDBBnEd, AdvShapeButton, AdvGlowButton, MemDS, DBAccess, IBC,
  AdvGroupBox, IBCustomDataSet, frxClass, frxDBSet, frxDesgn, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  AdvPanel;

type
  TfrmOrcamento2 = class(TForm)
    dsorcamento: TDataSource;
    qrorcamento_produto: TZQuery;
    dsorcamento_produto: TDataSource;
    qrorcamento_produtoCODPRODUTO: TStringField;
    qrorcamento_produtoPRODUTO: TStringField;
    qrorcamento_produtoUNIDADE: TStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoCODORCAMENTO: TStringField;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eunitario: TwwDBEdit;
    edesconto: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    etotal: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rsubtotal: TJvDBCalcEdit;
    rdesconto: TJvDBCalcEdit;
    racrescimo: TJvDBCalcEdit;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    dsorcamento_contasreceber: TDataSource;
    qrorcamento_contasreceber: TZQuery;
    qrorcamento_contasreceberCODORCAMENTO: TStringField;
    qrorcamento_contasreceberPRESTACAO: TIntegerField;
    qrorcamento_contasreceberVALOR: TFloatField;
    qrorcamento_contasreceberDOCUMENTO: TStringField;
    qrorcamento_contasreceberTIPO: TStringField;
    Panel3: TPanel;
    Label8: TLabel;
    //rtotal: TJvDBCalcEdit;
    ExcluirProduto1: TMenuItem;
    qrorcamento_contasreceberVENCIMENTO: TDateTimeField;
    rdesconto1: TJvCalcEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel10: TBevel;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    Bevel4: TBevel;
    Panel4: TPanel;
    Bevel5: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TJvDBDateEdit;
    enomecliente: TDBEdit;
    ecliente: TRzDBButtonEdit;
    evendedor: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    racrescimo1: TJvCalcEdit;
    QRPRODUTO: TZQuery;
    QRPRODUTOCODIGO: TStringField;
    QRPRODUTOCODBARRA: TStringField;
    QRPRODUTOPRODUTO: TStringField;
    QRPRODUTOUNIDADE: TStringField;
    QRPRODUTOPRECOVENDA: TFloatField;
    babrir: TAdvGlowButton;
    OramentoPDV1: TMenuItem;
    qrorcamento_produtoestoque: TFloatField;
    qrestoque: TZQuery;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    QRPRODUTOestoque: TFloatField;
    zqryapoio: TZQuery;
    zqryapoioCODIGO: TStringField;
    zqryapoioPRECOCUSTO: TFloatField;
    zqryapoioPRECOVENDA: TFloatField;
    zqryapoioESTOQUE: TFloatField;
    qrorcamento_produtoCODBARRA: TStringField;
    qrapoio: TZQuery;
    qrapoioCODIGO: TStringField;
    qrapoioCODBARRA: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioUNIDADE: TStringField;
    qrapoioDATA_CADASTRO: TDateTimeField;
    qrapoioCODGRUPO: TStringField;
    qrapoioCODSUBGRUPO: TStringField;
    qrapoioCODFORNECEDOR: TStringField;
    qrapoioCODMARCA: TStringField;
    qrapoioDATA_ULTIMACOMPRA: TDateTimeField;
    qrapoioNOTAFISCAL: TStringField;
    qrapoioPRECOCUSTO: TFloatField;
    qrapoioPRECOVENDA: TFloatField;
    qrapoioDATA_ULTIMAVENDA: TDateTimeField;
    qrapoioESTOQUE: TFloatField;
    qrapoioESTOQUEMINIMO: TFloatField;
    qrapoioCODALIQUOTA: TStringField;
    qrapoioAPLICACAO: TMemoField;
    qrapoioLOCALICAZAO: TStringField;
    qrapoioPESO: TFloatField;
    qrapoioVALIDADE: TStringField;
    qrapoioCOMISSAO: TFloatField;
    qrapoioUSA_BALANCA: TIntegerField;
    qrapoioUSA_SERIAL: TIntegerField;
    qrapoioUSA_GRADE: TIntegerField;
    qrapoioCODRECEITA: TStringField;
    qrapoioFOTO: TStringField;
    qrapoioDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrapoioNOTAFISCAL_ANTERIOR: TStringField;
    qrapoioCODFORNECEDOR_ANTERIOR: TStringField;
    qrapoioPRECOCUSTO_ANTERIOR: TFloatField;
    qrapoioPRECOVENDA_ANTERIOR: TFloatField;
    qrapoioCUSTOMEDIO: TFloatField;
    qrapoioAUTO_APLICACAO: TStringField;
    qrapoioAUTO_COMPLEMENTO: TStringField;
    qrapoioDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrapoioDATA_REMARCACAO_VENDA: TDateTimeField;
    qrapoioPRECO_PROMOCAO: TFloatField;
    qrapoioDATA_PROMOCAO: TDateTimeField;
    qrapoioFIM_PROMOCAO: TDateTimeField;
    qrapoioCST: TStringField;
    qrapoioCLASSIFICACAO_FISCAL: TStringField;
    qrapoioNBM: TStringField;
    qrapoioNCM: TStringField;
    qrapoioALIQUOTA: TFloatField;
    qrapoioIPI: TFloatField;
    qrapoioREDUCAO: TFloatField;
    qrapoioQTDE_EMBALAGEM: TFloatField;
    qrapoioTIPO: TStringField;
    qrapoioPESO_LIQUIDO: TFloatField;
    qrapoioFARMACIA_CONTROLADO: TStringField;
    qrapoioFARMACIA_APRESENTACAO: TIntegerField;
    qrapoioFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrapoioFARMACIA_PMC: TFloatField;
    qrapoioULTIMA_ALTERACAO: TDateTimeField;
    qrapoioULTIMA_CARGA: TDateTimeField;
    qrapoioDATA_INVENTARIO: TDateTimeField;
    qrapoioCUSTO_INVENTARIO: TFloatField;
    qrapoioESTOQUE_INVENTARIO: TFloatField;
    qrapoioESTOQUE_ANTERIOR: TFloatField;
    qrapoioPRECOVENDA_NOVO: TFloatField;
    qrapoioUSA_RENTABILIDADE: TIntegerField;
    qrapoioQUANTIDADE_MINIMA_FAB: TFloatField;
    qrapoioAPRESENTACAO: TStringField;
    qrapoioSITUACAO: TIntegerField;
    qrapoioPRECOVENDA1: TFloatField;
    qrapoioPRECOVENDA2: TFloatField;
    qrapoioPRECOVENDA3: TFloatField;
    qrapoioPRECOVENDA4: TFloatField;
    qrapoioPRECOVENDA5: TFloatField;
    qrapoioDESCONTO_PRECOVENDA: TFloatField;
    qrapoioDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrapoioCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrapoioESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrapoioMARGEM_MINIMA: TFloatField;
    qrapoioPISCOFINS: TStringField;
    qrapoioREFERENCIA_FORNECEDOR: TStringField;
    qrapoioCOMISSAO1: TFloatField;
    qrapoioMARGEM_DESCONTO: TFloatField;
    qrapoioTAMANHO: TStringField;
    qrapoioCOR: TStringField;
    qrapoioINCIDENCIA_PISCOFINS: TStringField;
    qrapoioVEIC_CHASSI: TStringField;
    qrapoioVEIC_SERIE: TStringField;
    qrapoioVEIC_POTENCIA: TStringField;
    qrapoioVEIC_PESO_LIQUIDO: TStringField;
    qrapoioVEIC_PESO_BRUTO: TStringField;
    qrapoioVEIC_TIPO_COMBUSTIVEL: TStringField;
    qrapoioVEIC_RENAVAM: TStringField;
    qrapoioVEIC_ANO_FABRICACAO: TIntegerField;
    qrapoioVEIC_ANO_MODELO: TIntegerField;
    qrapoioVEIC_TIPO: TStringField;
    qrapoioVEIC_TIPO_PINTURA: TStringField;
    qrapoioVEIC_COD_COR: TStringField;
    qrapoioVEIC_COR: TStringField;
    qrapoioVEIC_VIN: TStringField;
    qrapoioVEIC_NUMERO_MOTOR: TStringField;
    qrapoioVEIC_CMKG: TStringField;
    qrapoioVEIC_CM3: TStringField;
    qrapoioVEIC_DISTANCIA_EIXO: TStringField;
    qrapoioVEIC_COD_MARCA: TStringField;
    qrapoioVEIC_ESPECIE: TStringField;
    qrapoioVEIC_CONDICAO: TStringField;
    qrapoioLOTE_FABRICACAO: TStringField;
    qrapoioLOTE_VALIDADE: TDateTimeField;
    qrapoioMARGEM_AGREGADA: TFloatField;
    qrapoioCODBARRA_NOVARTIS: TStringField;
    qrapoioFARMACIA_DCB: TStringField;
    qrapoioFARMACIA_ABCFARMA: TStringField;
    qrapoioFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qrapoioFARMACIA_PRINCIPIOATIVO: TStringField;
    qrapoioULTIMA_COMPRA: TDateTimeField;
    qrapoioFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrapoioFARMACIA_TIPO: TStringField;
    qrapoioUSA_COMBUSTIVEL: TStringField;
    qrapoioREFERENCIA: TStringField;
    qrapoioPERDA: TFloatField;
    qrapoioCOMPOSICAO1: TStringField;
    qrapoioCOMPOSICAO2: TStringField;
    qrapoioIAT: TStringField;
    qrapoioIPPT: TStringField;
    qrapoioSITUACAO_TRIBUTARIA: TStringField;
    qrapoioFLAG_SIS: TStringField;
    qrapoioFLAG_ACEITO: TStringField;
    qrapoioFLAG_EST: TStringField;
    qrapoioCSOSN: TStringField;
    qrorcamento_produtoNCM: TStringField;
    qrorcamento_produtoLOTE: TStringField;
    qrlote_produto: TZQuery;
    qrlote_produtoCODPRODUTO: TStringField;
    qrlote_produtoLOTE: TStringField;
    qrlote_produtoESTOQUE: TFloatField;
    qrlote_produtoCODIGO: TStringField;
    qrlote_produtoCODCLIENTE: TStringField;
    qrlote_produtoPRECOCUSTO: TFloatField;
    qrlote_produtoPRECOVENDA: TFloatField;
    qrlote_produtoDATAVENDA: TDateTimeField;
    qrlote_produtoSITUACAO: TIntegerField;
    qrlote_produtoCLIENTE: TStringField;
    qrlote_produtoCODNOTA: TStringField;
    qrlote_produtoCODITEM: TStringField;
    qrlote_produtoDATACOMPRA: TDateTimeField;
    qrlote_produtoNUMERONOTA: TStringField;
    qrlote_produtoCODFORNECEDOR: TStringField;
    qrlote_produtoCODVENDA_ITEM: TStringField;
    qrlote_produtoFILTRO: TIntegerField;
    qrlote_produtoCODVENDA: TStringField;
    grp1: TAdvGroupBox;
    bfinalizar: TAdvGlowButton;
    dbchkGERANF: TDBCheckBox;
    qrvenda3: TZQuery;
    qrvenda3CODIGO: TIBStringField;
    qrvenda3CODCAIXA: TIBStringField;
    qrvenda3CODVENDEDOR: TIBStringField;
    qrvenda3DATA: TDateTimeField;
    qrvenda3CODCLIENTE: TIBStringField;
    qrvenda3OBS: TIBStringField;
    qrvenda3MEIO_DINHEIRO: TFloatField;
    qrvenda3MEIO_CHEQUEAV: TFloatField;
    qrvenda3MEIO_CHEQUEAP: TFloatField;
    qrvenda3MEIO_CARTAOCRED: TFloatField;
    qrvenda3MEIO_CARTAODEB: TFloatField;
    qrvenda3MEIO_CREDIARIO: TFloatField;
    qrvenda3SUBTOTAL: TFloatField;
    qrvenda3DESCONTO: TFloatField;
    qrvenda3ACRESCIMO: TFloatField;
    qrvenda3TOTAL: TFloatField;
    qrvenda3CUPOM_FISCAL: TIntegerField;
    qrvenda3NUMERO_CUPOM_FISCAL: TIBStringField;
    qrvenda3RETIRADO: TIBStringField;
    qrvenda3MEIO_CONVENIO: TFloatField;
    qrvenda3P5: TFloatField;
    qrvenda3P3: TFloatField;
    qrvenda3CLIENTE: TIBStringField;
    qrvenda3VENDEDOR: TIBStringField;
    qrcliente: TZQuery;
    qrnotafiscal: TZQuery;
    IBQuery1: TZQuery;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemCSOSN: TStringField;
    qrnotafiscal_itemCODBARRA: TStringField;
    qrvenda: TZQuery;
    qrvendaCODIGO: TIBStringField;
    qrvendaCODCAIXA: TIBStringField;
    qrvendaCODVENDEDOR: TIBStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TIBStringField;
    qrvendaOBS: TIBStringField;
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
    qrvendaNUMERO_CUPOM_FISCAL: TIBStringField;
    qrvendaRETIRADO: TIBStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaCLIENTE: TIBStringField;
    qrvendaVENDEDOR: TIBStringField;
    ZQuery1: TZQuery;
    ZQuery1CODIGO: TStringField;
    ZQuery1CODBARRA: TStringField;
    ZQuery1PRODUTO: TStringField;
    ZQuery1CST: TStringField;
    ZQuery1CLASSIFICACAO_FISCAL: TStringField;
    ZQuery1ALIQUOTA: TFloatField;
    ZQuery1IND_CFOP: TStringField;
    ZQuery1CFOP_DESC: TStringField;
    qrcaixa_mov: TZQuery;
    qrapoio2: TZQuery;
    qrapoio2CODPRODUTO: TStringField;
    qrapoio2PRODUTO: TStringField;
    qrapoio2CF: TStringField;
    qrapoio2STR: TStringField;
    qrapoio2UN: TStringField;
    qrapoio2QTDE: TStringField;
    qrapoio2UNITARIO: TStringField;
    qrapoio2TOTAL: TStringField;
    qrapoio2ICMS: TStringField;
    qrapoio2IPI: TStringField;
    qrapoio2IPI_ALIQUOTA: TStringField;
    qrapoio2TEXTO1: TStringField;
    qrapoio2TEXTO2: TStringField;
    qrapoio2TEXTO3: TStringField;
    qrapoio2TEXTO4: TStringField;
    qrapoio2TEXTO6: TStringField;
    qrapoio2TEXTO7: TStringField;
    qrapoio2TEXTO8: TStringField;
    qrapoio2TEXTO9: TStringField;
    qrapoio2TEXTO10: TStringField;
    qrestoqueCODPRODUTO: TStringField;
    qrestoqueCODFILIAL: TStringField;
    qrestoqueESTOQUE_INICIAL: TFloatField;
    qrestoqueENTRADAS: TFloatField;
    qrestoqueSAIDAS: TFloatField;
    qrestoqueESTOQUE_ATUAL: TFloatField;
    qrestoqueULTIMA_ENTRADA: TDateTimeField;
    qrestoqueULTIMA_SAIDA: TDateTimeField;
    qrestoqueNOTA_FISCAL: TStringField;
    Finalizar1: TMenuItem;
    fxorcamento: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsorcamento: TfrxDBDataset;
    fsorcamento_produto: TfrxDBDataset;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    advpnlfinalizar: TAdvPanel;
    cxLabel1: TcxLabel;
    rtotal: TJvDBCalcEdit;
    qrlotelocal: TZQuery;
    qrlotelocalCODIGO: TStringField;
    qrlotelocalCODPRODUTO: TStringField;
    qrlotelocalLOTE: TStringField;
    qrlotelocalCODORCAMENTO: TStringField;
    qrlotelocalQTDE: TFloatField;
    qrlotelocalCODNOTA: TStringField;
    qrapoioUSA_LOTE: TIntegerField;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    FlatPanel3: TFlatPanel;
    Label9: TLabel;
    Label10: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TJvCalcEdit;
    wwDBGrid2: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    PageSheet2: TPageSheet;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    pgcargos: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    comboproduto: TwwDBLookupCombo;
    qrorcamento_produtoIND: TIntegerField;
    procedure qrorcamento_produtoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure racrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Exit(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimoExit(Sender: TObject);
    procedure babrirClick(Sender: TObject);
    procedure qrorcamento_produtoCalcFields(DataSet: TDataSet);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid2Exit(Sender: TObject);
    procedure combotipoExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento2: TfrmOrcamento2;
  valor_anterior: real;
  codigo_orcamento: string;

implementation

uses modulo, loc_cliente, principal, loc_funci, Math, orcamento_impressao,
  orcamento_localizar, xloc_cliente, orcamento_abrir, entrada_lote,
  cheque_avulso, venda_nf, venda, rel_nf, nf_obs, cartao_ficha, orcamento;

{$R *.dfm}

procedure TfrmOrcamento2.qrorcamento_produtoBeforePost(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
    qrorcamento_produto.fieldbyname('total').asfloat -
    valor_anterior;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;



  qrorcamento_produto.FieldByName('codorcamento').asstring :=
    frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
end;

procedure TfrmOrcamento2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmOrcamento2.FormShow(Sender: TObject);
begin
  pgravar.Align := alClient;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrformapgto.Open;

  qrproduto.open;

  frmmodulo.qrorcamento.close;
  frmmodulo.qrorcamento.SQL.Clear;
  frmmodulo.qrorcamento.SQL.Add('select * from c000056 order by codigo');
  frmmodulo.qrorcamento.open;
  frmmodulo.qrorcamento.indexfieldnames := 'codigo';

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

  qrorcamento_produto.close;
  qrorcamento_contasreceber.Close;
  if frmmodulo.qrorcamento.FieldByName('codigo').AsString <> '' then
  begin
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao');
    qrorcamento_contasreceber.Open;


  end;
  frmmodulo.qrproduto.Open

end;

procedure TfrmOrcamento2.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);

end;

procedure TfrmOrcamento2.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
  if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;

end;

procedure TfrmOrcamento2.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrorcamento.insert;
  frmmodulo.qrorcamento.fieldbyname('codigo').asstring := frmprincipal.codifica('000056');
  pficha.Enabled := true;
  frmOrcamento.PopupMenu := popedicao;
  pgravar.visible := true;
  if pficha.enabled then dbdateedit1.SetFocus;
end;

procedure TfrmOrcamento2.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmOrcamento2.evendedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrorcamento.state = dsinsert) or (frmmodulo.qrorcamento.State = dsedit) then
  begin
    frmmodulo.qrfunci.close;
    frmmodulo.qrfunci.sql.clear;
    frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
    frmmodulo.qrfunci.open;

    frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(evendedor.text, 6);
    if evendedor.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci, evendedor.text, 'codigo') then
      begin
        evendedorbuttonclick(frmorcamento);
      end
      else
      begin
        if pficha.enabled then wwdbgrid1.SetFocus;
      end;
    end
    else
    begin
      evendedorbuttonclick(frmorcamento);
    end;
  end;
end;

procedure TfrmOrcamento2.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if pficha.enabled then wwdbgrid1.setfocus;
  end;
end;

procedure TfrmOrcamento2.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento2.bgravarClick(Sender: TObject);
var parcinvalida: integer;
begin
  PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmOrcamento.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrorcamento.Post;
  qrorcamento_contasreceber.ApplyUpdates;

  qrorcamento_contasreceber.sql.clear;
  qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  qrorcamento_contasreceber.open;

  qrorcamento_contasreceber.open;
  qrorcamento_contasreceber.First;
  parcinvalida := 0;
  while not qrorcamento_contasreceber.Eof do
  begin
    if qrorcamento_contasreceberTIPO.AsString = '' then
    begin
      parcinvalida := parcinvalida + 1;
    end;
    qrorcamento_contasreceber.next;
  end;

  if qrorcamento_contasreceber.RecordCount = 0 then
  begin
    Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if parcinvalida > 0 then
  begin
    Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    //combotipo.SetFocus;
    exit;
  end
  else
  begin
    frmmodulo.Conexao.Commit;
    if application.messagebox('Deseja imprimir este orçamento?', 'Aviso', mb_yesno + MB_ICONQUESTION) = idyes then
    begin
      frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);
      frmorcamento_impressao := tfrmorcamento_impressao.create(self);
      frmorcamento_impressao.showmodal;
    end;
  end;
  if not dbchkGERANF.Checked then frmmodulo.qrorcamento.FieldByName('GERA_NF').AsInteger := 0;
end;

procedure TfrmOrcamento2.bcancelarClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmOrcamento.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrorcamento.cancel;
  frmmodulo.Conexao.Rollback;
end;

procedure TfrmOrcamento2.balterarClick(Sender: TObject);
begin

  if frmmodulo.qrorcamento.FieldByName('CODNF').AsString <> '' then
  begin
    Application.messagebox('Nota Fiscal já emitida, não é permitido Alterar!' + #13 +
      'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
  begin
    Application.messagebox('Já Foi Gerado Venda, não é permitido Alterar!' + #13 +
      'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;



  frmmodulo.qrorcamento.edit;
  pficha.Enabled := true;
  frmOrcamento.PopupMenu := popedicao;
  pgravar.Visible := true;
  if pficha.enabled then
    dbdateedit1.SetFocus;

end;

procedure TfrmOrcamento2.bexcluirClick(Sender: TObject);
begin

  if frmmodulo.qrorcamento.FieldByName('CODNF').AsString <> '' then
  begin
    Application.messagebox('Nota Fiscal já emitida, não é permitido excluir!' + #13 +
      'Para Cancelar esta Venda somente em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
  begin
    Application.messagebox('Já Foi Gerado Venda, não é permitido excluir!' + #13 +
      'Para Cancelar esta Venda vá em Notas de Venda!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;


  if frmprincipal.autentica('Excluir Orçamento', 4) then
  begin
    qrorcamento_produto.close;
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('delete from c000057 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_produto.execsql;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('delete from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_contasreceber.execsql;


    frmmodulo.qrorcamento.Delete;
    frmmodulo.Conexao.commit;
    qrorcamento_produto.close;
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao');
    qrorcamento_contasreceber.Open;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmOrcamento2.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.prior;
end;

procedure TfrmOrcamento2.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.first;
end;

procedure TfrmOrcamento2.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.next;
end;

procedure TfrmOrcamento2.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.Last;
end;

procedure TfrmOrcamento2.BitBtn7Click(Sender: TObject);
begin
  frmorcamento_impressao := Tfrmorcamento_impressao.create(self);
  frmorcamento_impressao.showmodal;
end;

procedure TfrmOrcamento2.DBEdit1Change(Sender: TObject);
begin
  try
    qrorcamento_produto.close;
    qrorcamento_contasreceber.Close;
    if frmmodulo.qrorcamento.FieldByName('codigo').AsString <> '' then
    begin
      qrorcamento_produto.sql.clear;
      qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
      qrorcamento_produto.Open;

      qrorcamento_contasreceber.sql.clear;
      qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao');
      qrorcamento_contasreceber.Open;

      rqtde.value := qrorcamento_contasreceber.recordcount;

    end;

  except
  end;
end;

procedure TfrmOrcamento2.blocalizarClick(Sender: TObject);
begin
  codigo_orcamento := '';

  frmorcamento_localizar := tfrmorcamento_localizar.create(self);
  frmorcamento_localizar.showmodal;

  if codigo_orcamento <> '' then
    frmmodulo.qrorcamento.Locate('codigo', codigo_orcamento, [loCaseInsensitive]);

end;

procedure TfrmOrcamento2.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := true;
  ExcluirProduto1.Enabled := true;
end;

procedure TfrmOrcamento2.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := false;
  ExcluirProduto1.Enabled := false;
  qrorcamento_produto.ApplyUpdates;
end;

procedure TfrmOrcamento2.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento2.rdescontoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

  rdesconto1.value := 0;

end;

procedure TfrmOrcamento2.rdescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then if pficha.enabled then racrescimo1.setfocus;
end;

procedure TfrmOrcamento2.racrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    if pficha.enabled then combocondpgto.SetFocus;
  end;
end;

procedure TfrmOrcamento2.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento2.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmOrcamento2.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento2.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOrcamento2.combocondpgtoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento2.combocondpgtoExit(Sender: TObject);
var prestacao: integer;
  valor: real;

begin
  tedit(sender).color := clwindow;
  try
    if combocondpgto.text <> '' then
    begin
      if frmmodulo.qrcondpgto.locate('condpgto', combocondpgto.text, [loCaseInsensitive]) then
      begin
        frmmodulo.qrcondpgto_parcela.close;
        frmmodulo.qrcondpgto_parcela.sql.clear;
        frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = ''' + frmmodulo.qrcondpgto.fieldbyname('codigo').asstring + ''' order by codigo');
        frmmodulo.qrcondpgto_parcela.open;
        if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
        begin
          qrorcamento_contasreceber.close;
          qrorcamento_contasreceber.sql.clear;
          qrorcamento_contasreceber.SQL.Add('delete from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
          qrorcamento_contasreceber.ExecSQL;
          qrorcamento_contasreceber.sql.clear;
          qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
          qrorcamento_contasreceber.open;

          frmmodulo.qrcondpgto_parcela.first;
          prestacao := 1;


          while not frmmodulo.qrcondpgto_parcela.eof do
          begin
            qrorcamento_contasreceber.Insert;
            qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
            qrorcamento_contasreceber.FieldByName('prestacao').asinteger := prestacao;
            qrorcamento_contasreceber.FieldByName('vencimento').asdatetime := dbdateedit1.date + frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
            valor := rtotal.value *
              (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat / 100);
            if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
              valor := valor + (valor * (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

            qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
            qrorcamento_contasreceber.FieldByName('TIPO').asstring := '';
            qrorcamento_contasreceber.post;
            prestacao := prestacao + 1;
            frmmodulo.qrcondpgto_parcela.Next;
          end;
          qrorcamento_contasreceber.Refresh;

          if pficha.enabled then wwdbgrid2.SetFocus;
        end
        else
        begin
          application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!', 'Atenção', mb_ok + MB_ICONWARNING);
          if pficha.enabled then combocondpgto.setfocus;
        end;
      end
      else
      begin
        application.messagebox('Condição de Pagamento não encontrada!', 'Aviso', mb_ok + MB_ICONERROR);
        if pficha.enabled then combocondpgto.setfocus;
      end;
    end
    else
    begin
//    rqtde.setfocus;
    end;
  except

  end;

end;

procedure TfrmOrcamento2.rqtdeExit(Sender: TObject);
var qtde, prestacao: integer;
  valor: real;
begin

  tedit(sender).color := clwindow;
  try
    if rqtde.value > 0 then
    begin
      prestacao := 1;
      qtde := trunc(rqtde.value);

      VALOR := rtotal.value / qtde;

      qrorcamento_contasreceber.close;
      qrorcamento_contasreceber.sql.clear;
      qrorcamento_contasreceber.SQL.Add('delete from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + '''');
      qrorcamento_contasreceber.ExecSQL;
      qrorcamento_contasreceber.sql.clear;
      qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      qrorcamento_contasreceber.open;
      while QTDE <> 0 do
      begin
        qrorcamento_contasreceber.Insert;
        qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
        qrorcamento_contasreceber.FieldByName('prestacao').asinteger := prestacao;
        qrorcamento_contasreceber.FieldByName('vencimento').asdatetime := incmonth(DBDateEdit1.date, prestacao);
        qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
        qrorcamento_contasreceber.FieldByName('TIPO').asstring := '';
        qrorcamento_contasreceber.post;
        prestacao := prestacao + 1;
        qtde := qtde - 1;
      end;

      qrorcamento_contasreceber.Refresh;
      //  wwdbgrid2.SetFocus;
    end;
  except
  end;
end;

procedure TfrmOrcamento2.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin


  if KEY = #13 then
  begin
    Application.ProcessMessages;

    if frmmodulo.qrformapgto.Locate('FORMAPGTO', combotipo.Text, [loPartialKey]) then
    begin
      qrorcamento_contasreceber.ApplyUpdates;
    end
    else
    begin
      Application.messagebox('Forma de Pagamento Inválida!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
      PageView1.ActivePageIndex := 0;
      combotipo.SetFocus;
      exit;
    end;

    PageView1.ActivePageIndex := 1;
    if pficha.enabled then dbedit2.setfocus;
  end;
end;

procedure TfrmOrcamento2.eclienteEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A8FFFF;
end;

procedure TfrmOrcamento2.evendedorEnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A8FFFF;
end;

procedure TfrmOrcamento2.comboprodutoExit(Sender: TObject);
begin
  Application.ProcessMessages;
  if comboproduto.Text <> '' then
  begin
    if qrproduto.Locate('produto', comboproduto.Text, [loPartialKey]) then
    begin
      qrorcamento_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      if frmmodulo.qrproduto.LOCATE('CODIGO', frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING, [loCaseInsensitive]) then
      begin
        qrorcamento_produto.fieldbyname('ncm').AsString := frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').AsString;
      end;

      if frmmodulo.qrproduto.Locate('produto', comboproduto.Text, [loPartialKey]) then
      begin
        if frmmodulo.qrproduto.FieldByName('USA_LOTE').AsInteger = 1 then
        begin
          frmEntrada_Lote := tfrmEntrada_Lote.Create(self);
          frmEntrada_Lote.qrgrade_entrada.Close;
          frmEntrada_Lote.qrgrade_entrada.SQL.Clear;
          frmEntrada_Lote.qrgrade_entrada.SQL.Add('select * from c000131 where CODPRODUTO = :CODPRODUTO AND ESTOQUE <> :ESTOQUEZERO');
          frmEntrada_Lote.qrgrade_entrada.ParamByName('CODPRODUTO').AsString := qrorcamento_produto.fieldbyname('codproduto').asstring;
          frmEntrada_Lote.qrgrade_entrada.ParamByName('ESTOQUEZERO').Value := 0;
          frmEntrada_Lote.qrgrade_entrada.Open;
          if frmEntrada_Lote.qrgrade_entrada.RecordCount > 0 then
          begin
            frmEntrada_Lote.ShowModal;
          end;
          if frmEntrada_Lote.qrgrade_entrada.RecordCount = 0 then
          begin
            ShowMessage('Produto controla Lote ,Mas não possui lotes cadastrados ou ' + #13 +
              'Todos os Lotes estão sem estoque disponível, verifique');
            qrorcamento_produto.Cancel;
          end;
          //indice
          //1 = cargos
          if PageView1.ActivePageIndex = 2 then qrorcamento_produto.fieldbyname('IND').asfloat := 1;
           
        end
      end
    end
    else
    begin
      qrorcamento_produto.fieldbyname('codproduto').asstring := '999999';
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := 'UN';
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := 0;
      qrorcamento_produto.fieldbyname('total').asfloat := 0;
      //qrorcamento_produto.fieldbyname('ncm').AsString := '0';
    end;
  end;
  qrorcamento_produto.ApplyUpdates;
end;

procedure TfrmOrcamento2.eprodutoExit(Sender: TObject);
begin
  if Eproduto.Text <> '' then
  begin
    qrorcamento_produto.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text, 6);
    if qrproduto.Locate('codigo', eproduto.Text, [loCaseInsensitive]) then
    begin
      qrorcamento_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
    end
    else
    begin
      if qrproduto.Locate('codbarra', eproduto.Text, [loCaseInsensitive]) then
      begin
        qrorcamento_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
        qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
        qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
        qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      end
      else
      begin
        application.MessageBox('Produto não cadastrado!', 'Atenção', mb_ok + MB_ICONWARNING);
        eproduto.Text := '';
      end;
    end;
  end;
end;

procedure TfrmOrcamento2.qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure TfrmOrcamento2.qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qrorcamento_produto.fieldbyname('total').asfloat;
end;

procedure TfrmOrcamento2.BitBtn2Click(Sender: TObject);
begin

  if application.messagebox('Tem certeza que deseja excluir este item?', 'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    qrorcamento_produto.Delete;
  end;

end;

procedure TfrmOrcamento2.BitBtn1Click(Sender: TObject);
begin
  if pficha.enabled then combocondpgto.setfocus;
end;

procedure TfrmOrcamento2.qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat -
    qrorcamento_produto.fieldbyname('total').asfloat;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

end;

procedure TfrmOrcamento2.eqtdeExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
      (qrorcamento_produto.fieldbyname('qtde').asfloat *
      qrorcamento_produto.fieldbyname('unitario').asfloat) -
      qrorcamento_produto.fieldbyname('desconto').asfloat +
      qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento2.eunitarioExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
      (qrorcamento_produto.fieldbyname('qtde').asfloat *
      qrorcamento_produto.fieldbyname('unitario').asfloat) -
      qrorcamento_produto.fieldbyname('desconto').asfloat +
      qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento2.edescontoExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
      (qrorcamento_produto.fieldbyname('qtde').asfloat *
      qrorcamento_produto.fieldbyname('unitario').asfloat) -
      qrorcamento_produto.fieldbyname('desconto').asfloat +
      qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento2.eacrescimoExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
      (qrorcamento_produto.fieldbyname('qtde').asfloat *
      qrorcamento_produto.fieldbyname('unitario').asfloat) -
      qrorcamento_produto.fieldbyname('desconto').asfloat +
      qrorcamento_produto.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure TfrmOrcamento2.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento2.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmOrcamento2.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if rdesconto1.value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat :=
      rsubtotal.value *
      (rdesconto1.value / 100);


    frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
      frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
      frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
      frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;
    if pficha.enabled then racrescimo1.setfocus;
  end;
end;

procedure TfrmOrcamento2.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrorcamento.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;

  if pficha.enabled then evendedor.setfocus;
end;

procedure TfrmOrcamento2.evendedorButtonClick(Sender: TObject);
begin
  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
  frmmodulo.qrfunci.open;

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  if pficha.enabled then wwdbgrid1.SetFocus;
end;

procedure TfrmOrcamento2.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrorcamento.State <> dsedit then if frmmodulo.qrorcamento.State <> dsinsert then exit;

    frmmodulo.qrorcamento.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.Text, 6);

    if ecliente.text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' + eCliente.text + '''');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.recordcount = 0 then
      begin
        application.messagebox('Cliente não cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
        eCliente.Text := '';
        if pficha.enabled then eCliente.setfocus;
        exit;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      eClienteButtonClick(frmorcamento);
    end;
  end;
end;

procedure TfrmOrcamento2.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento2.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if racrescimo1.value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat :=
      rsubtotal.value *
      (racrescimo1.value / 100);


    frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
      frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
      frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
      frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat;
    if pficha.enabled then racrescimo.setfocus;
  end;
end;

procedure TfrmOrcamento2.racrescimoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
    frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat;

  if pficha.enabled then racrescimo1.value := 0;
end;

procedure TfrmOrcamento2.babrirClick(Sender: TObject);
begin
  frmorcamento_abrir := tfrmorcamento_abrir.create(self);
  frmorcamento_abrir.showmodal;
end;

procedure TfrmOrcamento2.qrorcamento_produtoCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = ''' + qrorcamento_produto.fieldbyname('CODPRODUTO').asstring + '''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrorcamento_produto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrorcamento_produto.fieldbyname('estoque').asfloat := 0;
end;

procedure TfrmOrcamento2.QRPRODUTOCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = ''' + qrproduto.fieldbyname('CODIGO').asstring + '''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrproduto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrproduto.fieldbyname('estoque').asfloat := 0;
end;

procedure TfrmOrcamento2.wwDBGrid1DblClick(Sender: TObject);
begin

  zqryapoio.Close;
  zqryapoio.SQL.Clear;
  zqryapoio.SQL.Add('select * from C000025 where CODIGO = ' + qrorcamento_produtoCODPRODUTO.AsString);
  zqryapoio.Open;
  application.messagebox(PChar('Preço de Custo.: ' + zqryapoioPRECOCUSTO.AsString), 'Aviso', mb_ok + mb_iconwarning);

end;

procedure TfrmOrcamento2.wwDBGrid2Exit(Sender: TObject);
begin
  qrorcamento_contasreceber.ApplyUpdates;
end;

procedure TfrmOrcamento2.combotipoExit(Sender: TObject);
begin
  Application.ProcessMessages;

  if frmmodulo.qrformapgto.Locate('FORMAPGTO', combotipo.Text, [loPartialKey]) then
  begin
    qrorcamento_contasreceber.ApplyUpdates;
  end
  else
  begin
    Application.messagebox('Forma de Pagamento Inválida!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    PageView1.ActivePageIndex := 0;
    combotipo.SetFocus;
  end;

end;

procedure TfrmOrcamento2.bfinalizarClick(Sender: TObject);
var f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a, parcela: integer;
  NNOTA, cfops, parcinvalida: INTEGER;

  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha, VITEM, processar: integer;
  BASE_CALCULO, ICMS, tn: real;
  desconto_nota: real;
  codcaixa: string;
  totdinheiro, totcheqav, totcheqap, totcartcred, totcartdeb, totcarteira, totboleto: Real;
  lote_anterior: integer;
  formapgto, v1, v2: string;
  y, xx: integer;
begin

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from c000007 where codigo = ''' + frmOrcamento.ecliente.Text + '''');
  qrcliente.open;
  frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);


  if FRMMODULO.QRorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' then
  begin
    CLIENTE_NOME := 'CLIENTE ESPECIAL';
    CLIENTE_ENDERECO := '';
    CLIENTE_BAIRRO := '';
    CLIENTE_CIDADE := '';
    CLIENTE_UF := '';
    CLIENTE_CEP := '';
    CLIENTE_TELEFONE := '';
    CLIENTE_CPF := '';
    CLIENTE_RG := '';
    CLIENTE_CODIGO := 'S/CLIE';
  end
  else
  begin
    CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
    CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
    CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
    CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
    CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '/' + frmmodulo.qrcliente.fieldbyname('celular').asstring + '/' + frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
    CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
    CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
    CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
  end;
  frmmodulo.qrconfig.open;
  porta_impressora := frmmodulo.qrconfig.FieldByName('orcamento_PORTA_IMPRESSORA').asstring;
  impressora_venda := 'C:\TEXTE.TXT';


  if frmmodulo.qrorcamento.FieldByName('GERA_NF').AsInteger <> 1 then
  begin

    begin


      frmOrcamento.qrapoio.Open;
   {xx := trunc(evias.Value);

   while xx <> 0 do
   begin

   ecf_relatorio_gerencial(ecf_modelo,'               O R C A M E N T O ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Número: '+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'  Data: '+frmmodulo.qrorcamento.fieldbyname('data').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Cliente: '+copy(CLIENTE_CODIGO+'  '+CLIENTE_NOME,1,38));
   ecf_relatorio_gerencial(ecf_modelo,'CPF....: '+CLIENTE_CPF);
   ecf_relatorio_gerencial(ecf_modelo,'Vended.: '+frmmodulo.qrorcamento.fieldbyname('vendedor').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'P R O D U T O   QTDE.   X  UNITARIO  = VLR.TOTAL');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   frmorcamento.qrorcamento_produto.first;
   while not frmorcamento.qrorcamento_produto.eof do
   begin
     ecf_relatorio_gerencial(ecf_modelo,frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('produto').asstring,41,' ','D'));

     ecf_relatorio_gerencial(ecf_modelo,'       '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmorcamento.qrorcamento_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('unidade').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmorcamento.qrorcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmorcamento.qrorcamento_produto.fieldbyname('total').asfloat),9,' ','E'));
     frmorcamento.qrorcamento_produto.Next;
   end;



   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'                           Subtotal : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           Desconto : '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrorcamento.fieldbyname('desconto').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                           T O T A L: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmmodulo.qrorcamento.fieldbyname('total').asfloat),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');

   formapgto := '';
   y := 0;
   v1 := '';
   v2 := '';


  frmorcamento.qrorcamento_contasreceber.Open;
  frmorcamento.qrorcamento_contasreceber.first;
  while not frmorcamento.qrorcamento_contasreceber.Eof do
  begin
    if y > 5 then
    begin
      v2 := v2 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat)+' | ';
    end
    else
    begin
      v1 := v1 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat)+' | ';
      y := y + 1;
    end;
    frmorcamento.qrorcamento_contasreceber.next;
  end;


   ecf_relatorio_gerencial(ecf_modelo,'Condição de Pagamento: '+FORMAPGTO+'  '+V1);
   ecf_relatorio_gerencial(ecf_modelo,'Observações:');
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS1').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS2').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS3').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,copy(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS4').ASSTRING,1,47));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,' ');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'           Assinatura do Funcionário');

   ecf_fecha_relatorio_gerencial(ecf_modelo);

     xx := xx - 1;
   end; }


      if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
      begin
        Application.messagebox('Já Foi Gerado Venda Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if frmmodulo.qrorcamento.FieldByName('CODNF').AsString <> '' then
      begin
        Application.messagebox('Já Foi Gerado Nota Fiscal Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      frmOrcamento.qrorcamento_contasreceber.sql.clear;
      frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      frmOrcamento.qrorcamento_contasreceber.open;

      frmOrcamento.qrorcamento_contasreceber.open;
      frmOrcamento.qrorcamento_contasreceber.First;
      parcinvalida := 0;

      while not frmOrcamento.qrorcamento_contasreceber.Eof do
      begin
        if frmOrcamento.qrorcamento_contasreceberTIPO.AsString = '' then
        begin
          parcinvalida := parcinvalida + 1;
        end;
        frmOrcamento.qrorcamento_contasreceber.next;
      end;

      if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
      begin
        Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if parcinvalida > 0 then
      begin
        Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;


      FRMMODULO.qrconfig.OPEN;
      if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
      begin
        if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            Exit;
          end;
        end
        else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
          Exit;
        end;
      end
      else
      begin
        if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            Exit;
          end;
        end
        else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
          Exit;
        end;
      end;

      codcaixa := frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring;

      frmmodulo.qrconfig.Open;
      if (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA') then
      begin



    // finaliza venda

        frmmodulo.qrorcamento.edit;
        frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString := frmprincipal.codifica('000048');
        frmmodulo.qrorcamento.post;


        frmOrcamento.qrorcamento_contasreceber.Close;
        frmOrcamento.qrorcamento_contasreceber.sql.clear;
        frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
        frmOrcamento.qrorcamento_contasreceber.open;

    //lancamentos no mov de caixa

        totdinheiro := 0;
        totcheqav := 0;
        totcheqap := 0;
        totcartcred := 0;
        totcartdeb := 0;
        totcarteira := 0;
        totboleto := 0;

        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'DINHEIRO' then
          begin
            totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE Á VISTA' then
          begin
            totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE PRÉ-DATADO' then
          begin
            totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE DÉBITO' then
          begin
            totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE CRÉDITO' then
          begin
            totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTEIRA' then
          begin
            totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'BOLETO BANCÁRIO' then
          begin
            totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          frmOrcamento.qrorcamento_contasreceber.Next;
        end;

        if totdinheiro <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          qrcaixa_mov.parambyname('valor').asfloat := totdinheiro;

          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;

        end;

        if totcheqav <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcheqav;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 5; // venda em cheque a vista
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

        if totcheqap <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcheqap;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 6; // venda em cheque a prazo
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

        if totcartdeb <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcartdeb;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 8; // venda em cartao de debito
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.execsql;
        end;

        if totcartcred <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcartcred;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 7; // venda em cartao de credito
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.execsql;
        end;

        if totcarteira <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcarteira;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda crediario
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;

        end;

        if totboleto <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totboleto;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda BOLETO
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda BOLETO No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

     // lancamento da venda  (notas de venda)
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000048');
          ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
          ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
          ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
          ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
          ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
          ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

          ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('data').asdatetime := date;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('TOTAL').asfloat := frmOrcamento.rtotal.value;
          ibquery1.parambyname('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.value;
          ibquery1.parambyname('meio_dinheiro').asfloat := totdinheiro;
          ibquery1.parambyname('meio_chequeav').asfloat := totcheqav;
          ibquery1.parambyname('meio_chequeap').asfloat := totcheqap;
          ibquery1.parambyname('meio_cartaocred').asfloat := totcartcred;
          ibquery1.parambyname('meio_cartaodeb').asfloat := totcartdeb;
          ibquery1.parambyname('meio_crediario').asfloat := totcarteira + totboleto;
          ibquery1.parambyname('meio_convenio').AsFloat := 0;
          ibquery1.parambyname('meio_financeira').AsFloat := 0;
          ibquery1.parambyname('nrvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('desconto').asfloat := frmOrcamento.rdesconto.Value;
          ibquery1.parambyname('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
          ibquery1.parambyname('OBS').asstring := '';
          ibquery1.parambyname('COD_FINANCEIRA').asstring := '';
          ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := '';
          ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := '';
      //esqueci onde configuro para funcionar  - Mizael
          if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1
          else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

          ibquery1.execsql;


        end;

     //movimento de produto verificar se esta correto o estoque
        VITEM := 1;
        FRMMODULO.QRPRODUTO_MOV.OPEN;
        frmOrcamento.qrorcamento_produto.Open;
        frmOrcamento.qrorcamento_produto.First;
        while not frmOrcamento.qrorcamento_produto.Eof do
        begin
          if frmOrcamento.qrapoio.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
          begin
            ibquery1.CLOSE;
            ibquery1.SQL.CLEAR;
            ibquery1.SQL.Add('insert into c000032');
            ibquery1.SQL.add('(codigo,codnota,numeronota,');
            ibquery1.SQL.add('codproduto,qtde,unitario,');
            ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,lote_fabricacao,');
            ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
            ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
            ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop)');
            ibquery1.SQL.add('values');
            ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
            ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
            ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,:xlote_fabricacao,');
            ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
            ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
            ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop)');

            ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
            ibquery1.params.parambyname('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
            ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
            ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
            ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
            ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
            ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
            ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
            ibquery1.params.parambyname('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').AsString;
            ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmOrcamento.qrapoio.fieldbyname('aliquota').asFLOAT;
            ibquery1.params.parambyname('xCST').asSTRING := frmOrcamento.qrapoio.fieldbyname('CST').asSTRING;
            ibquery1.params.parambyname('xlote_fabricacao').asSTRING := frmOrcamento.qrorcamento_produto.fieldbyname('LOTE').asSTRING;
            ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
            ibquery1.params.parambyname('xcfop').asstring := '5403';
            ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.params.parambyname('xcupom_modelo').asstring := '';
            ibquery1.params.parambyname('xSERIAL').Asstring := '';
            ibquery1.params.parambyname('xcodgrade').Asstring := '';
            ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
            ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
            ibquery1.params.parambyname('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
            ibquery1.params.parambyname('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;

            if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
            begin
              ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
              ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
            else
            begin
              ibquery1.params.parambyname('xpis').asfloat := 0;
              ibquery1.params.parambyname('xcofins').asfloat := 0;
            end;

            if ecf_modelo <> '' then
            begin
              ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
              ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
            end;
            ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
            ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
            ibquery1.params.parambyname('xMOVIMENTO').AsInteger := 2;

            // controle de lote coloca na tabela local 000130

            if frmOrcamento.qrapoio.FieldByName('USA_LOTE').AsInteger = 1 then
            begin
              frmmodulo.qrlotelocal.CLOSE;
              frmmodulo.qrlotelocal.SQL.CLEAR;
              frmmodulo.qrlotelocal.SQL.Add('insert into c000130');
              frmmodulo.qrlotelocal.SQL.add('(codigo,codproduto,lote,codorcamento,qtde,codnota,codvenda)');
              frmmodulo.qrlotelocal.SQL.add('values');
              frmmodulo.qrlotelocal.SQL.add('(:xcodigo,:xcodproduto,:xlote,');
              frmmodulo.qrlotelocal.SQL.add(':xcodorcamento,:xqtde,:xcodnota,:xcodvenda)');
              frmmodulo.qrlotelocal.Params.ParamByName('xcodigo').AsString := frmPrincipal.codifica('000130');
              frmmodulo.qrlotelocal.Params.ParamByName('xcodproduto').AsString := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
              frmmodulo.qrlotelocal.Params.ParamByName('xlote').AsString := frmOrcamento.qrorcamento_produto.fieldbyname('lote').asstring;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodorcamento').AsString := frmOrcamento.DBEdit1.Text;
              frmmodulo.qrlotelocal.Params.ParamByName('xqtde').AsInteger := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').AsInteger;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
              frmmodulo.qrlotelocal.ExecSQL;

              qrlote_produto.Close;
              qrlote_produto.Open;
              if qrlote_produto.Locate('codproduto', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
              begin
                if qrlote_produto.FieldByName('lote').AsString = frmOrcamento.qrorcamento_produto.fieldbyname('lote').asstring then
                begin
                  qrlote_produto.Edit;
                  qrlote_produtoESTOQUE.AsInteger := qrlote_produtoESTOQUE.AsInteger - frmOrcamento.qrorcamento_produto.fieldbyname('qtde').AsInteger;
                  qrlote_produto.Post;

                  frmmodulo.Conexao.Commit;
                end;
              end;

            end;





            {CASE frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
              0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              1 : BEGIN
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                  END;
              2 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                    ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;

              7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


              10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
              11 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
              12 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                   end;

              20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              21 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
             22 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;
            end;}
            ibquery1.params.parambyname('xdata').asdatetime := date;
            ibquery1.ExecSQL;
            frmOrcamento.qrorcamento_produto.next;
            vitem := vitem + 1;
          end
        end;

      //atualiza historico do cliente
        ibquery1.close;
        ibquery1.sql.clear;
        ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = ''' + frmOrcamento.ecliente.Text + '''');
        ibquery1.parambyname('data').Asdatetime := date;
        ibquery1.ExecSQL;


      // lancamento do contas a receber
        qrapoio2.Open;

        if totdinheiro <> 0 then
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000049');
          ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

          ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
      //ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
          ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          ibquery1.parambyname('valor_original').asfloat := totdinheiro;
          ibquery1.parambyname('valor_pago').asfloat := totdinheiro;
          ibquery1.parambyname('valor_atual').asfloat := 0;
          ibquery1.parambyname('documento').asstring := 'ENTRADA';
          ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          ibquery1.parambyname('situacao').asinteger := 2;
          ibquery1.parambyname('filtro').asinteger := 0;
          ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.ExecSQL;
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'CARTEIRA' then
          begin
            ibquery1.close;
            ibquery1.SQL.clear;
            ibquery1.sql.add('insert into c000049');
            ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
            ibquery1.sql.add('values');
            ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');


            ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
            ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
            ibquery1.parambyname('codcaixa').asstring := codcaixa;
            ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
            ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('documento').asstring := 'CR' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
            ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            ibquery1.parambyname('situacao').asinteger := 1;
            ibquery1.parambyname('filtro').asinteger := 0;
            ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            ibquery1.close;
            ibquery1.SQL.clear;
            ibquery1.sql.add('insert into c000049');
            ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
            ibquery1.sql.add('values');
            ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');


            ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
            ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
            ibquery1.parambyname('codcaixa').asstring := codcaixa;
            ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
            ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('documento').asstring := 'BL' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
            ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            ibquery1.parambyname('situacao').asinteger := 1;
            ibquery1.parambyname('filtro').asinteger := 0;
            ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
            frmcheque_avulso.Tag := 11; //cheque a prazo orcamento
            frmcheque_avulso.rsoma.Value := totcheqap;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.SHOWMODAL;
          end;
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
            frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.SHOWMODAL;
          end;
        end;



        frmmodulo.Conexao.Commit;

      end;

    end;
  end;

  if frmmodulo.qrorcamento.FieldByName('GERA_NF').AsInteger = 1 then
  begin

    begin

      if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
      begin
        Application.messagebox('Já Foi Gerado Venda Para Esse Orçamento,Impossível gerar NF!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;


      if frmmodulo.qrorcamento.FieldByName('CODNF').AsString <> '' then
      begin
        Application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;


      frmOrcamento.qrorcamento_contasreceber.sql.clear;
      frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
      frmOrcamento.qrorcamento_contasreceber.open;

      frmOrcamento.qrorcamento_contasreceber.open;
      frmOrcamento.qrorcamento_contasreceber.First;
      parcinvalida := 0;
      while not frmOrcamento.qrorcamento_contasreceber.Eof do
      begin
        if frmOrcamento.qrorcamento_contasreceberTIPO.AsString = '' then
        begin
          parcinvalida := parcinvalida + 1;
        end;
        frmOrcamento.qrorcamento_contasreceber.next;
      end;

      if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
      begin
        Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
        exit;
      end;

      if parcinvalida > 0 then
      begin
        Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    //combotipo.SetFocus;
        exit;
      end;

      FRMMODULO.qrconfig.OPEN;
      if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
      begin
        if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            Exit;
          end;
        end
        else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
          Exit;
        end;
      end
      else
      begin
        if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
          begin

          end
          else
          begin
            APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
            Exit;
          end;
        end
        else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
          Exit;
        end;
      end;

      codcaixa := frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring;

      frmmodulo.qrconfig.Open;
      if (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA') then
      begin

        // gera NF

        (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)

        desconto_nota := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;

        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select * from c000007 where codigo = ''' + frmOrcamento.ecliente.Text + '''');
        qrcliente.open;

        vcfop1 := '';
        vcfop2 := '';

        qrnotafiscal.close;
        qrnotafiscal.sql.clear;
        qrnotafiscal.sql.add('select * from c000061');
        qrnotafiscal.open;

        qrnotafiscal.insert;
        qrnotafiscal.FieldByName('codfilial').asstring := '000001';
        qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
        frmmodulo.qrfilial.open;
        frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

        frmvenda_nf := tfrmvenda_nf.create(self);
        frmvenda_nf.Tag := 50;
        frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
        frmvenda_nf.showmodal;

        qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;
        qrnotafiscal.fieldbyname('data').asstring := DateToStr(Date);
        qrnotafiscal.fieldbyname('data_saida').asstring := DateToStr(Date);
        qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
        qrnotafiscal.fieldbyname('codcliente').asstring := frmOrcamento.ecliente.Text;

        qrnotafiscal.fieldbyname('valor_produtos').asfloat := frmOrcamento.rtotal.Value;
        qrnotafiscal.fieldbyname('total_nota').asfloat := frmOrcamento.rtotal.Value;



        qrnotafiscal.fieldbyname('desconto').asfloat := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;
        // modelo de nf
        qrnotafiscal.fieldbyname('situacao').asinteger := 1;
        qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
        qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
        frmmodulo.qrFilial.Open;
        qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := IntToStr(frmmodulo.qrFilial.FieldByName('CONHECIMENTO').AsInteger);
        qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
        qrnotafiscal.FIELDBYNAME('MOVIMENTO').ASSTRING := 'S';
        QRNOTAFISCAL.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING := 'S';
        if frmmodulo.usa_nfe = '1' then
        begin
          qrnotafiscal.FIELDBYNAME('NFE_SITUACAO').AsInteger := 3;
        end;

        qrnotafiscal_item.close;
        qrnotafiscal_item.sql.clear;
        qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
        qrnotafiscal_item.open;

        BASE_CALCULO := 0;
        ICMS := 0;

        tn := 0;

        qrnotafiscal.fieldbyname('INF1').asSTRING := '';
        qrnotafiscal.fieldbyname('INF2').asSTRING := '';
        qrnotafiscal.fieldbyname('INF3').asSTRING := '';
        texto1 := '';
        texto2 := '';
        texto3 := '';




        qrnotafiscal_item.close;
        qrnotafiscal_item.sql.clear;
        qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
        qrnotafiscal_item.open;

        VENDA_VEICULO := False;
        if VENDA_VEICULO then
        begin
          QRNOTAFISCAL_ITEM.INSERT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmvenda.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('total').ASFLOAT;

          QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT / FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
          if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
          begin
            vcfop1 := '5102';
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
            qrnotafiscal_item.fieldbyname('icms').asstring := '17';
            qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
          end
          else
          begin
            vcfop1 := '6102';
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
            qrnotafiscal_item.fieldbyname('icms').asstring := '17';
            qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
          end;
          texto1 := 'ISENTO DE ICMS CONF. SUB. TRIB. CONV. 52/93 E 88/94';
          TEXTO2 := FRMVENDA.EDIT1.TEXT;
          QRNOTAFISCAL_ITEM.POST;

          qrapoio2.close;
          qrapoio2.sql.clear;
          qrapoio2.sql.add('delete from cl00004');
          qrapoio2.execsql;
          qrapoio2.close;
          qrapoio2.sql.clear;
          qrapoio2.sql.add('select * from cl00004 order by texto10');
          qrapoio2.open;
          a := 1;

          for i := 0 to frmvenda.Memo1.Lines.Count - 1 do
          begin
            qrapoio2.insert;
            if i = 0 then
              qrapoio2.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring
            else
              qrapoio2.fieldbyname('codproduto').asstring := '';
            qrapoio2.fieldbyname('produto').asstring := FRMVENDA.Memo1.Lines[i];
            if i = (frmvenda.Memo1.Lines.Count - 1) then
            begin


              qrapoio2.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
              qrapoio2.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);
              qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);

              qrapoio2.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
              qrapoio2.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
              qrapoio2.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
              qrapoio2.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
              qrapoio2.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
              qrapoio2.fieldbyname('CLASSIFICACAO_FISCAL').asstring := qrnotafiscal_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
            end;
            qrapoio2.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(a), 6);
            a := a + 1;
            qrapoio2.post;
          end;
          qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
          qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
          qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
          qrnotafiscal.post;

        end
        else
        begin


          frmOrcamento.qrorcamento_produto.First;
          while not frmOrcamento.qrorcamento_produto.Eof do
          begin

            QRNOTAFISCAL_ITEM.INSERT;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('desconto').ASFLOAT;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('subtotal').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
            if frmmodulo.qrproduto.LOCATE('CODIGO', frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING, [loCaseInsensitive]) then
            begin
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CLASSIFICACAO_FISCAL').AsString := frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.AsString;
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CSOSN').AsString := frmmodulo.qrprodutoCSOSN.AsString;
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CODBARRA').AsString := frmmodulo.qrprodutoCODBARRA.AsString;
            end;

            if desconto_nota > 0 then
            begin
              QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT +

              (desconto_nota * (((QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * 100) / frmOrcamento.rsubtotal.value) / 100));

              QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT * QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT - QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT;
            end;

            if frmOrcamento.qrorcamento_produto.recordcount > 0 then
              if ZQuery1.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').AsString, [loCaseInsensitive]) then
              begin
                if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
                begin
                  frmmodulo.qrconfig.open;
                  vcfop2 := frmmodulo.qrconfig.FieldByName('IND_CFOP_VENDA_DENTRO').AsString;
                  QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := ZQuery1.fieldbyname('cst').asstring;
                  qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
                  qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.FieldByName('IND_CFOP').AsString;
                end
                else
                begin
                  frmmodulo.qrconfig.open;
                  vcfop2 := frmmodulo.qrconfig.FieldByName('IND_CFOP_VENDA_FORA').AsString;
                  QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := ZQuery1.fieldbyname('cst').asstring;
                  qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
                  qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.FieldByName('IND_CFOP').AsString;
                end;
                texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
                TEXTO2 := 'OPTANTE PELO SIMPLES NACIOMAL';
                texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS , DE ISS E DE IPI';
              end;

            tn := tn + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
            QRNOTAFISCAL_ITEM.POST;
            frmOrcamento.qrorcamento_produto.NEXT;
          end;
          if vcfop1 = '' then
          begin
            vcfop1 := vcfop2;
            vcfop2 := '';
          end;

          qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
          qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
          qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
          qrnotafiscal.post;

          qrapoio2.close;
          qrapoio2.sql.clear;
          qrapoio2.sql.add('delete from cl00004');
          qrapoio2.execsql;
          qrapoio2.close;
          qrapoio2.sql.clear;
          qrapoio2.sql.add('select * from cl00004 order by texto10');
          qrapoio2.open;

          I := 1;
          QRNOTAFISCAL_ITEM.FIRST;
          while not QRNOTAFISCAL_ITEM.EOF do
          begin
            qrapoio2.insert;
            qrapoio2.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
            qrapoio2.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
            if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio2.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
            if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio2.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);

            if desconto_nota > 0 then
            begin
              if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
              begin
                qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
                qrapoio2.FieldByName('unitario').AsString := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
              end
              else
                if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
                  qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
            end
            else
            begin
              qrapoio2.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
            end;

            qrapoio2.fieldbyname('CF').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
            qrapoio2.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
            qrapoio2.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
            qrapoio2.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
            qrapoio2.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
            qrapoio2.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
            qrapoio2.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;
            QRAPOIO2.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I), 6);
            qrapoio2.post;
            I := I + 1;

            QRNOTAFISCAL_ITEM.NEXT;
          end;

              {IF qrvenda.FIELDBYNAME('DESCONTO').ASFLOAT > 0 THEN
                BEGIN
                 qrapoio.insert;
                  qrapoio.fieldbyname('codproduto').asstring :=    '';
                  qrapoio.fieldbyname('produto').asstring :=       'D E S C O N T O ';
                   qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',QRvenda.FIELDBYNAME('DESCONTO').ASFLOAT);
                 QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
                 qrapoio.post;
                   I := I + 1;

                END; }

        end;
        QRAPOIO2.open;
        frmrel_nf := tfrmrel_nf.create(self);
        frmrel_nf.quickrep1.DataSet := qrapoio2;
        frmrel_nf.qrDBText1.DataSet := qrapoio2;
        frmrel_nf.qrDBText2.DataSet := qrapoio2;
        frmrel_nf.qrDBText3.DataSet := qrapoio2;
        frmrel_nf.qrDBText4.DataSet := qrapoio2;
        frmrel_nf.qrDBText5.DataSet := qrapoio2;
        frmrel_nf.qrDBText6.DataSet := qrapoio2;
        frmrel_nf.qrDBText7.DataSet := qrapoio2;
        frmrel_nf.qrDBText8.DataSet := qrapoio2;
        frmrel_nf.qrDBText9.DataSet := qrapoio2;

        QRAPOIO2.REFRESH;

        with frmrel_nf do
        begin
          lsaida.Caption := 'X';
          lentrada.Caption := '';
          lnumero1.caption := numero_notaz;
          lnumero2.caption := numero_notaz;
          lcfop1.Caption := '';
          lcfop2.caption := '';
          lnatureza1.Caption := '';
          lnatureza2.caption := '';

          if VCFOP1 <> '' then
          begin
            frmmodulo.qrcfop.close;
            frmmodulo.qrCFOP.sql.Clear;
            frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop1 + '''');
            frmmodulo.qrcfop.open;

            lcfop1.Caption := vcfop1;
            lnatureza1.Caption := frmmodulo.qrCFOP.fieldbyname('natureza').asstring;
          end;

          if VCFOP2 <> '' then
          begin
            frmmodulo.qrcfop.close;
            frmmodulo.qrCFOP.sql.Clear;
            frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop2 + '''');
            frmmodulo.qrcfop.open;

            lcfop2.Caption := vcfop2;
            lnatureza2.Caption := frmmodulo.qrCFOP.fieldbyname('natureza').asstring;
          end;


          lcliente.Caption := qrcliente.fieldbyname('codigo').asstring + ' - ' + qrcliente.fieldbyname('nome').asstring;
          lcpf.Caption := qrcliente.fieldbyname('cpf').asstring;
          lendereco.Caption := qrcliente.fieldbyname('endereco').asstring;
          lbairro.Caption := qrcliente.fieldbyname('bairro').asstring;
          lcep.Caption := qrcliente.fieldbyname('cep').asstring;
          lcidade.Caption := qrcliente.fieldbyname('cidade').asstring;
          luf.Caption := qrcliente.fieldbyname('uf').asstring;
          lrg.Caption := qrcliente.fieldbyname('rg').asstring;
          ltelefone.Caption := qrcliente.fieldbyname('telefone1').asstring;
          ldata_emissao.Caption := DateToStr(Date);
          ldata_saida.Caption := DateToStr(Date);
          lhora.Caption := timetostr(time);

          //datas e valores das faturas

          frmOrcamento.qrorcamento_contasreceber.First;
          i := 1;
          while not frmOrcamento.qrorcamento_contasreceber.eof do
          begin
            case i of
              1: begin
                  lfat_n1.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data1.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor1.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              2: begin
                  lfat_n2.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data2.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor2.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              3: begin
                  lfat_n3.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data3.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor3.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              4: begin
                  lfat_n4.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data4.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor4.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              5: begin
                  lfat_n5.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data5.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor5.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              6: begin
                  lfat_n6.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data6.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor6.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              7: begin
                  lfat_n7.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data7.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor7.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              8: begin
                  lfat_n8.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data8.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor8.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;
              9: begin
                  lfat_n9.caption := numero_notaz + '/' + frmPrincipal.zerarcodigo(inttostr(i), 2);
                  lfat_data9.caption := frmOrcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring;
                  lfat_valor9.caption := formatfloat('###,###,##0.00', frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat);
                end;






            end;
            i := i + 1;
            frmOrcamento.qrorcamento_contasreceber.next;
          end;



          frmnf_obs := tfrmnf_obs.create(self);
          frmnf_obs.edit1.text := texto1;
          frmnf_obs.edit2.text := texto2;
          frmnf_obs.edit3.text := texto3;
          frmnf_obs.showmodal;


          lobs1.CAPTION := nf_obs1;
          LOBS2.CAPTION := nf_obs2;
          LOBS3.Caption := nf_obs3;




          ltransp.Caption := 'O MESMO';
          lfrete_conta.caption := '1';


          lbase_icms.caption := formatfloat('###,###,##0.00', BASE_CALCULO);
          lvalor_icms.caption := FormatFloat('###,###,##0.00', ICMS);

          ltotal_produtos.caption := FormatFloat('###,###,##0.00', qrnotafiscal.fieldbyname('valor_produtos').asfloat);
          ltotal_nota.caption := FormatFloat('###,###,##0.00', qrnotafiscal.fieldbyname('total_nota').asfloat);

        end;
        if frmmodulo.usa_nfe <> '1' then
        begin
          frmrel_nf.quickrep1.Preview;
        end;

        QRAPOIO2.open;

        //gera o proximo numero da nf
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;

        // grava numero nf no orcamento
        frmmodulo.qrorcamento.edit;
        frmmodulo.qrorcamento.FieldByName('CODNF').AsString := numero_notaz;
        frmmodulo.qrorcamento.post;

        // finaliza venda

        frmmodulo.qrorcamento.edit;
        frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString := frmprincipal.codifica('000048');
        frmmodulo.qrorcamento.post;


        frmOrcamento.qrorcamento_contasreceber.Close;
        frmOrcamento.qrorcamento_contasreceber.sql.clear;
        frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
        frmOrcamento.qrorcamento_contasreceber.open;



        {// atualiza estoque lote


      frmOrcamento.qrlote_produto.close;
      frmOrcamento.qrlote_produto.sql.clear;
      frmOrcamento.qrlote_produto.SQL.Add('select * from C000131');
      frmOrcamento.qrlote_produto.open;

     frmOrcamento.qrorcamento_produto.First;
     frmOrcamento.qrorcamento_produto.Last;

    while not frmOrcamento.qrorcamento_produto.Eof do
    begin
      if frmOrcamento.qrlote_produto.LOCATE('CODPRODUTO', frmOrcamento.qrorcamento_produtoCODPRODUTO.AsString, [loCaseInsensitive]) then
      begin

      frmOrcamento.qrorcamento_produto.Next;
      frmmodulo.Conexao.Commit;
      end
      else
       ShowMessage('fudeu');
       frmOrcamento.qrorcamento_produto.Next;
    end;
    frmmodulo.Conexao.Commit;}
    //lancamentos no mov de caixa

        totdinheiro := 0;
        totcheqav := 0;
        totcheqap := 0;
        totcartcred := 0;
        totcartdeb := 0;
        totcarteira := 0;
        totboleto := 0;

        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'DINHEIRO' then
          begin
            totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE Á VISTA' then
          begin
            totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE PRÉ-DATADO' then
          begin
            totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE DÉBITO' then
          begin
            totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE CRÉDITO' then
          begin
            totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTEIRA' then
          begin
            totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;

          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'BOLETO BANCÁRIO' then
          begin
            totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          end;
          frmOrcamento.qrorcamento_contasreceber.Next;
        end;

        if totdinheiro <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
          qrcaixa_mov.parambyname('valor').asfloat := totdinheiro;

          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;

        end;

        if totcheqav <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcheqav;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 5; // venda em cheque a vista
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

        if totcheqap <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcheqap;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 6; // venda em cheque a prazo
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

        if totcartdeb <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcartdeb;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 8; // venda em cartao de debito
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.execsql;
        end;

        if totcartcred <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcartcred;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 7; // venda em cartao de credito
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.execsql;
        end;

        if totcarteira <> 0 then
        begin
          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totcarteira;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda crediario
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;

        end;

        if totboleto <> 0 then
        begin

          qrcaixa_mov.close;
          qrcaixa_mov.sql.clear;
          qrcaixa_mov.sql.add('insert into c000044');
          qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
          qrcaixa_mov.sql.add('values');
          qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

          qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
          qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
          qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
          qrcaixa_mov.parambyname('saida').asfloat := 0;
          qrcaixa_mov.parambyname('entrada').asfloat := 0;
          qrcaixa_mov.parambyname('valor').asfloat := totboleto;
          frmmodulo.qrconfig.open;
          qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
          qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda BOLETO
          qrcaixa_mov.parambyname('historico').asstring := copy('Venda BOLETO No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

          qrcaixa_mov.ExecSQL;
        end;

        // lancamento da venda  (notas de venda)
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000048');
          ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
          ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
          ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
          ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
          ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
          ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

          ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('data').asdatetime := date;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('TOTAL').asfloat := frmOrcamento.rtotal.value;
          ibquery1.parambyname('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.value;
          ibquery1.parambyname('meio_dinheiro').asfloat := totdinheiro;
          ibquery1.parambyname('meio_chequeav').asfloat := totcheqav;
          ibquery1.parambyname('meio_chequeap').asfloat := totcheqap;
          ibquery1.parambyname('meio_cartaocred').asfloat := totcartcred;
          ibquery1.parambyname('meio_cartaodeb').asfloat := totcartdeb;
          ibquery1.parambyname('meio_crediario').asfloat := totcarteira + totboleto;
          ibquery1.parambyname('meio_convenio').AsFloat := 0;
          ibquery1.parambyname('meio_financeira').AsFloat := 0;
          ibquery1.parambyname('nrvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('desconto').asfloat := frmOrcamento.rdesconto.Value;
          ibquery1.parambyname('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
          ibquery1.parambyname('OBS').asstring := '';
          ibquery1.parambyname('COD_FINANCEIRA').asstring := '';
          ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := '';
          ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := numero_notaz;
          //esqueci onde configuro para funcionar  - Mizael
          if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1
          else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

          ibquery1.execsql;


        end;

        //movimento de produto verificar se esta correto o estoque
        VITEM := 1;
        FRMMODULO.QRPRODUTO_MOV.OPEN;
        frmOrcamento.qrorcamento_produto.First;
        qrapoio2.Open;
        while not frmOrcamento.qrorcamento_produto.Eof do
        begin
          if frmOrcamento.qrapoio.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
          begin
            ibquery1.CLOSE;
            ibquery1.SQL.CLEAR;
            ibquery1.SQL.Add('insert into c000032');
            ibquery1.SQL.add('(codigo,codnota,numeronota,');
            ibquery1.SQL.add('codproduto,qtde,unitario,');
            ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,lote_fabricacao,');
            ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
            ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
            ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop)');
            ibquery1.SQL.add('values');
            ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
            ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
            ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,:xlote_fabricacao,');
            ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
            ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
            ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop)');

            ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
            ibquery1.params.parambyname('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
            ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
            ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
            ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
            ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
            ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
            ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
            ibquery1.params.parambyname('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').AsString;
            ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmOrcamento.qrapoio.fieldbyname('aliquota').asFLOAT;
            ibquery1.params.parambyname('xCST').asSTRING := frmOrcamento.qrapoio.fieldbyname('CST').asSTRING;
            ibquery1.params.parambyname('xlote_fabricacao').asSTRING := frmOrcamento.qrorcamento_produto.fieldbyname('LOTE').asSTRING;
            ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
            ibquery1.params.parambyname('xcfop').asstring := '5403';
            ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.params.parambyname('xcupom_modelo').asstring := 'NF';
            ibquery1.params.parambyname('xSERIAL').Asstring := '';
            ibquery1.params.parambyname('xcodgrade').Asstring := '';
            ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
            ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
            ibquery1.params.parambyname('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
            ibquery1.params.parambyname('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;

            if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
            begin
              ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
              ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
            else
            begin
              ibquery1.params.parambyname('xpis').asfloat := 0;
              ibquery1.params.parambyname('xcofins').asfloat := 0;
            end;

            if ecf_modelo <> '' then
            begin
              ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
              ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
            end;
            ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
            ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
            ibquery1.params.parambyname('xMOVIMENTO').AsInteger := 2;

            // controle de lote

            if frmOrcamento.qrapoio.FieldByName('USA_LOTE').AsInteger = 1 then
            begin
              frmmodulo.qrlotelocal.CLOSE;
              frmmodulo.qrlotelocal.SQL.CLEAR;
              frmmodulo.qrlotelocal.SQL.Add('insert into c000130');
              frmmodulo.qrlotelocal.SQL.add('(codigo,codproduto,lote,codorcamento,qtde,codnota,codvenda)');
              frmmodulo.qrlotelocal.SQL.add('values');
              frmmodulo.qrlotelocal.SQL.add('(:xcodigo,:xcodproduto,:xlote,');
              frmmodulo.qrlotelocal.SQL.add(':xcodorcamento,:xqtde,:xcodnota,:xcodvenda)');
              frmmodulo.qrlotelocal.Params.ParamByName('xcodigo').AsString := frmPrincipal.codifica('000130');
              frmmodulo.qrlotelocal.Params.ParamByName('xcodproduto').AsString := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
              frmmodulo.qrlotelocal.Params.ParamByName('xlote').AsString := frmOrcamento.qrorcamento_produto.fieldbyname('lote').asstring;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodorcamento').AsString := frmOrcamento.DBEdit1.Text;
              frmmodulo.qrlotelocal.Params.ParamByName('xqtde').AsInteger := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').AsInteger;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
              frmmodulo.qrlotelocal.Params.ParamByName('xcodvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
              frmmodulo.qrlotelocal.ExecSQL;

              qrlote_produto.Close;
              qrlote_produto.Open;
              if qrlote_produto.Locate('codproduto', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
              begin
                if qrlote_produto.FieldByName('lote').AsString = frmOrcamento.qrorcamento_produto.fieldbyname('lote').asstring then
                begin
                  qrlote_produto.Edit;
                  qrlote_produtoESTOQUE.AsInteger := qrlote_produtoESTOQUE.AsInteger - frmOrcamento.qrorcamento_produto.fieldbyname('qtde').AsInteger;
                  qrlote_produto.Post;

                  frmmodulo.Conexao.Commit;
                end;
              end;



            end;

           { CASE frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
              0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              1 : BEGIN
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                  END;
              2 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                    ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;

              7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


              10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
              11 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
              12 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                   end;

              20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              21 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
             22 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;
            end;}
            ibquery1.params.parambyname('xdata').asdatetime := date;
            ibquery1.ExecSQL;
            frmOrcamento.qrorcamento_produto.next;
            vitem := vitem + 1;
          end
        end;

      //atualiza historico do cliente
        ibquery1.close;
        ibquery1.sql.clear;
        ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = ''' + frmOrcamento.ecliente.Text + '''');
        ibquery1.parambyname('data').Asdatetime := date;
        ibquery1.ExecSQL;


      // lancamento do contas a receber

        if totdinheiro <> 0 then
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000049');
          ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

          ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          //ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
          ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          ibquery1.parambyname('valor_original').asfloat := totdinheiro;
          ibquery1.parambyname('valor_pago').asfloat := totdinheiro;
          ibquery1.parambyname('valor_atual').asfloat := 0;
          ibquery1.parambyname('documento').asstring := 'ENTRADA';
          ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          ibquery1.parambyname('situacao').asinteger := 2;
          ibquery1.parambyname('filtro').asinteger := 0;
          ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.ExecSQL;
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'CARTEIRA' then
          begin
            ibquery1.close;
            ibquery1.SQL.clear;
            ibquery1.sql.add('insert into c000049');
            ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
            ibquery1.sql.add('values');
            ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');


            ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
    //      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
            ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
            ibquery1.parambyname('codcaixa').asstring := codcaixa;
            ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
            ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('documento').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
            ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            ibquery1.parambyname('situacao').asinteger := 1;
            ibquery1.parambyname('filtro').asinteger := 0;
            ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        frmOrcamento.qrorcamento_contasreceber.Open;
        frmOrcamento.qrorcamento_contasreceber.First;
        parcela := 1;
        while not frmOrcamento.qrorcamento_contasreceber.eof do
        begin
          if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'BOLETO BANCÁRIO' then
          begin
            ibquery1.close;
            ibquery1.SQL.clear;
            ibquery1.sql.add('insert into c000049');
            ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
            ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
            ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
            ibquery1.sql.add('values');
            ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
            ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
            ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');


            ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
    //      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
            ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
            ibquery1.parambyname('codcaixa').asstring := codcaixa;
            ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
            ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
            ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
            ibquery1.parambyname('documento').asstring := 'BL' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
            ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
            ibquery1.parambyname('situacao').asinteger := 1;
            ibquery1.parambyname('filtro').asinteger := 0;
            ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
            ibquery1.ExecSQL;

            frmOrcamento.qrorcamento_contasreceber.next;
            parcela := parcela + 1;
          end
          else
            frmOrcamento.qrorcamento_contasreceber.next
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
            frmcheque_avulso.rsoma.Value := totcheqap;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.SHOWMODAL;
          end;
        end;

        if totcheqap <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
          begin
            CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
            CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
            frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
            frmcheque_avulso.rdiferenca.Value := 0.00;
            frmcheque_avulso.SHOWMODAL;
          end;
        end;

        if totcartcred <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
          begin
         // cadastrar cartoes de credito
            frmCartao_ficha := tfrmCartao_ficha.create(self);
            frmCartao_ficha.rsoma.Value := totcartcred;
            frmCartao_ficha.rdiferenca.Value := 0.00;
            frmcartao_ficha.ed_venda.Text := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmCartao_ficha.showmodal;
          end;
        end;

        if totcartdeb <> 0 then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
          begin
          //cadastrar cartoes de credito
            frmCartao_ficha := tfrmCartao_ficha.create(self);
            frmCartao_ficha.rsoma.Value := totcartdeb;
            frmCartao_ficha.rdiferenca.Value := 0.00;
            frmcartao_ficha.ed_venda.Text := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
            frmCartao_ficha.showmodal;
          end;
        end;

        frmmodulo.Conexao.Commit
      end

      else
      begin

      end;


    end;

  end;


end;

procedure TfrmOrcamento2.PageView1Change(Sender: TObject);
begin
 if PageView1.ActivePageIndex = 2 then
 begin
    qrorcamento_produto.close;
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.SQL.add('select * from c000057 where ind = 1');
    qrorcamento_produto.open;
 end;
end;

end.

