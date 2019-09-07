unit convenio_receber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid, Collection,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridCardView, cxGridDBCardView, cxBlobEdit, cxDBLookupComboBox, cxImage,
  cxLookAndFeels, Buttons, Menus, PageView, frxDesgn, frxClass, frxDBSet,
  cxCheckBox, Mask, AdvGlowButton, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGridCustomLayoutView, RzPanel, dxSkinOffice2013White, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvMemoryDataset, JvExMask, JvToolEdit,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfrmconvenio_receber = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    locconvenio: TEdit;
    Edit2: TEdit;
    qrcliente: TZQuery;
    dscliente: TDataSource;
    qrreceber: TZQuery;
    dsreceber: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    LookAndFeelController: TcxLookAndFeelController;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    qrproduto2: TZQuery;
    dsproduto2: TDataSource;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle43: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle44: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle45: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle46: TcxStyle;
    cxStyleRepository8: TcxStyleRepository;
    cxStyle47: TcxStyle;
    cxStyleRepository9: TcxStyleRepository;
    cxStyle48: TcxStyle;
    cxStyleRepository10: TcxStyleRepository;
    cxStyle49: TcxStyle;
    cxStyleRepository11: TcxStyleRepository;
    cxStyle50: TcxStyle;
    qrconvenio: TZQuery;
    Label2: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechamento1: TMenuItem;
    Extrato1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Grid: TcxGrid;
    grid_qrcliente: TcxGridDBTableView;
    grid_qrclienteCODIGO: TcxGridDBColumn;
    grid_qrclienteNOME: TcxGridDBColumn;
    grid_qrclienteTOTAL: TcxGridDBColumn;
    cvPeople: TcxGridDBCardView;
    cvPeopleName: TcxGridDBCardViewRow;
    cvPeoplePersonLineID: TcxGridDBCardViewRow;
    cvPeopleFIRSTNAME: TcxGridDBCardViewRow;
    cvPeopleSECONDNAME: TcxGridDBCardViewRow;
    cvPeopleNICKNAME: TcxGridDBCardViewRow;
    cvPeopleBIRTHNAME: TcxGridDBCardViewRow;
    cvPeopleDATEOFBIRTH: TcxGridDBCardViewRow;
    cvPeopleLOCATIONOFBIRTH: TcxGridDBCardViewRow;
    cvPeopleBIOGRAPHY: TcxGridDBCardViewRow;
    cvPeopleHOMEPAGE: TcxGridDBCardViewRow;
    cvPeopleID: TcxGridDBCardViewRow;
    cvPeopleFilmID: TcxGridDBCardViewRow;
    cvPeopleBIRTHCOUNTRY: TcxGridDBCardViewRow;
    cvPeopleGender: TcxGridDBCardViewRow;
    grid_qrproduto: TcxGridDBTableView;
    grid_qrprodutoCODPRODUTO: TcxGridDBColumn;
    grid_qrprodutoColumn1: TcxGridDBColumn;
    grid_qrprodutoQTDE: TcxGridDBColumn;
    grid_qrprodutoUNIDADE: TcxGridDBColumn;
    grid_qrprodutoUNITARIO: TcxGridDBColumn;
    grid_qrprodutoDESCONTO: TcxGridDBColumn;
    grid_qrprodutoACRESCIMO: TcxGridDBColumn;
    grid_qrprodutoTOTAL: TcxGridDBColumn;
    cvPhotos: TcxGridDBCardView;
    cvPhotosID: TcxGridDBCardViewRow;
    cvPhotosFILMID: TcxGridDBCardViewRow;
    cvPhotosSCREEN: TcxGridDBCardViewRow;
    cvPhotosICON: TcxGridDBCardViewRow;
    grid_qrreceber: TcxGridDBTableView;
    grid_qrreceberColumn1: TcxGridDBColumn;
    grid_qrreceberDATA_EMISSAO: TcxGridDBColumn;
    grid_qrreceberDATA_VENCIMENTO: TcxGridDBColumn;
    grid_qrreceberVALOR_ATUAL: TcxGridDBColumn;
    grid_produto_venda2: TcxGridDBTableView;
    grid_produto_venda2CODPRODUTO: TcxGridDBColumn;
    grid_produto_venda2Column1: TcxGridDBColumn;
    grid_produto_venda2QTDE: TcxGridDBColumn;
    grid_produto_venda2UNITARIO: TcxGridDBColumn;
    grid_produto_venda2UNIDADE: TcxGridDBColumn;
    grid_produto_venda2DESCONTO: TcxGridDBColumn;
    grid_produto_venda2ACRESCIMO: TcxGridDBColumn;
    grid_produto_venda2TOTAL: TcxGridDBColumn;
    grid_cliente: TcxGridLevel;
    grid_receber: TcxGridLevel;
    GRID_PRODUTO_VENDA: TcxGridLevel;
    grid_produto: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridDBCardViewRow11: TcxGridDBCardViewRow;
    cxGridDBCardViewRow12: TcxGridDBCardViewRow;
    cxGridDBCardViewRow13: TcxGridDBCardViewRow;
    cxGridDBCardViewRow14: TcxGridDBCardViewRow;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridDBCardViewRow15: TcxGridDBCardViewRow;
    cxGridDBCardViewRow16: TcxGridDBCardViewRow;
    cxGridDBCardViewRow17: TcxGridDBCardViewRow;
    cxGridDBCardViewRow18: TcxGridDBCardViewRow;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qrproduto3: TZQuery;
    dsproduto3: TDataSource;
    cxGridDBTableView1CODNOTA: TcxGridDBColumn;
    cxGridDBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGridDBTableView1UNITARIO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1DESCONTO: TcxGridDBColumn;
    cxGridDBTableView1UNIDADE: TcxGridDBColumn;
    cxGridDBTableView1QTDE: TcxGridDBColumn;
    cxGridDBTableView1PRODUTO: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    fxconvenio: TfrxReport;
    fscontasreceber: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    Label3: TLabel;
    fscliente: TfrxDBDataset;
    fsproduto: TfrxDBDataset;
    qrpgto: TZQuery;
    BitBtn4: TBitBtn;
    Convenio1: TMenuItem;
    query: TZQuery;
    fsconvenio: TfrxDBDataset;
    queryconvenio: TStringField;
    dsconvenio: TDataSource;
    edata: TJvDateEdit;
    qrproduto3desconto_convenio: TFloatField;
    qrcr_recibo: TJvMemoryData;
    qrcr_reciboFILTRO: TIntegerField;
    qrcr_recibosituacao2: TIntegerField;
    qrcr_reciboDATA_EMISSAO: TDateTimeField;
    qrcr_reciboCODIGO: TStringField;
    qrcr_reciboDATA_VENCIMENTO: TDateTimeField;
    qrcr_reciboDOCUMENTO: TStringField;
    qrcr_reciboVALOR_ORIGINAL: TFloatField;
    qrcr_reciboVALOR_PAGO: TFloatField;
    qrcr_reciboVALOR_ATUAL: TFloatField;
    qrcr_recibojuros: TFloatField;
    qrcr_reciboDIAS: TIntegerField;
    qrcr_reciboRESTANTE: TFloatField;
    qrcr_reciboCODCEDENTE: TStringField;
    qrcr_reciboTIPO: TStringField;
    qrcr_reciboVALOR_JUROS: TFloatField;
    qrcr_reciboDATA_PAGAMENTO: TDateTimeField;
    qrcr_reciboCODVENDEDOR: TStringField;
    qrcr_reciboCODCAIXA: TStringField;
    qrcr_reciboCODCLIENTE: TStringField;
    qrcr_reciboVALOR_DESCONTO: TFloatField;
    qrcr_reciboSITUACAO: TIntegerField;
    qrcr_reciboCODVENDA: TStringField;
    qrcr_reciboNOSSONUMERO: TStringField;
    qrcr_reciboCODREGIAO: TStringField;
    qrcr_recibobanco: TStringField;
    qrcr_reciboagencia: TStringField;
    qrcr_reciboconta: TStringField;
    bincluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    qrproduto2CODIGO: TWideStringField;
    qrproduto2CODNOTA: TWideStringField;
    qrproduto2CODPRODUTO: TWideStringField;
    qrproduto2UNITARIO: TFloatField;
    qrproduto2TOTAL: TFloatField;
    qrproduto2ICMS: TFloatField;
    qrproduto2IPI: TFloatField;
    qrproduto2CFOP: TWideStringField;
    qrproduto2NUMERONOTA: TWideStringField;
    qrproduto2CODCLIENTE: TWideStringField;
    qrproduto2DESCONTO: TFloatField;
    qrproduto2ACRESCIMO: TFloatField;
    qrproduto2CODVENDEDOR: TWideStringField;
    qrproduto2CODGRADE: TWideStringField;
    qrproduto2SERIAL: TWideStringField;
    qrproduto2UNIDADE: TWideStringField;
    qrproduto2QTDE: TFloatField;
    qrproduto2VALOR_ICMS: TFloatField;
    qrproduto2ICMS_REDUZIDO: TFloatField;
    qrproduto2BASE_CALCULO: TFloatField;
    qrproduto2VALOR_IPI: TFloatField;
    qrproduto2SITUACAO: TIntegerField;
    qrproduto2ECF_SERIE: TWideStringField;
    qrproduto2ECF_CAIXA: TWideStringField;
    qrproduto2CODALIQUOTA: TWideStringField;
    qrproduto2CUPOM_NUMERO: TWideStringField;
    qrproduto2CUPOM_MODELO: TWideStringField;
    qrproduto2CUPOM_ITEM: TWideStringField;
    qrproduto2ALIQUOTA: TFloatField;
    qrproduto2CST: TWideStringField;
    qrproduto2LOTE_FABRICACAO: TWideStringField;
    qrproduto2MOVIMENTO_ESTOQUE: TFloatField;
    qrproduto2CODBARRA: TWideStringField;
    qrproduto2MARGEM_DESCONTO: TFloatField;
    qrproduto2CREDITO_ICMS: TFloatField;
    qrproduto2PIS: TFloatField;
    qrproduto2COFINS: TFloatField;
    qrproduto2LOJA: TWideStringField;
    qrproduto2CODSUBGRUPO: TWideStringField;
    qrproduto2TIPO: TWideStringField;
    qrproduto2CODUSUARIO: TWideStringField;
    qrproduto2ORIGEM: TWideStringField;
    qrproduto2DESTINO: TWideStringField;
    qrproduto2PRODUTO: TWideStringField;
    qrproduto2CODFILIAL: TWideStringField;
    qrproduto2PRODUTO_1: TWideStringField;
    qrreceberCODIGO: TWideStringField;
    qrreceberCODVENDA: TWideStringField;
    qrreceberCODVENDEDOR: TWideStringField;
    qrreceberCODCAIXA: TWideStringField;
    qrreceberCODCLIENTE: TWideStringField;
    qrreceberVALOR_ORIGINAL: TFloatField;
    qrreceberVALOR_PAGO: TFloatField;
    qrreceberVALOR_JUROS: TFloatField;
    qrreceberVALOR_ATUAL: TFloatField;
    qrreceberVALOR_DESCONTO: TFloatField;
    qrreceberDOCUMENTO: TWideStringField;
    qrreceberTIPO: TWideStringField;
    qrreceberSITUACAO: TIntegerField;
    qrreceberFILTRO: TIntegerField;
    qrreceberNOSSONUMERO: TWideStringField;
    qrreceberCODREGIAO: TWideStringField;
    qrreceberCODCEDENTE: TWideStringField;
    qrreceberP5: TFloatField;
    qrreceberP3: TFloatField;
    qrreceberNUMERO_CUPOM: TWideStringField;
    qrreceberVALOR_VENDA: TFloatField;
    qrreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrreceberEMAIL_ENVIADO: TIntegerField;
    qrreceberCODCONVENIO: TWideStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODNOTA: TWideStringField;
    qrprodutoCODPRODUTO: TWideStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TWideStringField;
    qrprodutoNUMERONOTA: TWideStringField;
    qrprodutoCODCLIENTE: TWideStringField;
    qrprodutoDESCONTO: TFloatField;
    qrprodutoACRESCIMO: TFloatField;
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
    qrprodutoPRODUTO_1: TWideStringField;
    qrproduto3CODIGO: TWideStringField;
    qrproduto3CODNOTA: TWideStringField;
    qrproduto3CODPRODUTO: TWideStringField;
    qrproduto3UNITARIO: TFloatField;
    qrproduto3TOTAL: TFloatField;
    qrproduto3ICMS: TFloatField;
    qrproduto3IPI: TFloatField;
    qrproduto3CFOP: TWideStringField;
    qrproduto3NUMERONOTA: TWideStringField;
    qrproduto3CODCLIENTE: TWideStringField;
    qrproduto3DESCONTO: TFloatField;
    qrproduto3ACRESCIMO: TFloatField;
    qrproduto3CODVENDEDOR: TWideStringField;
    qrproduto3CODGRADE: TWideStringField;
    qrproduto3SERIAL: TWideStringField;
    qrproduto3UNIDADE: TWideStringField;
    qrproduto3QTDE: TFloatField;
    qrproduto3VALOR_ICMS: TFloatField;
    qrproduto3ICMS_REDUZIDO: TFloatField;
    qrproduto3BASE_CALCULO: TFloatField;
    qrproduto3VALOR_IPI: TFloatField;
    qrproduto3SITUACAO: TIntegerField;
    qrproduto3ECF_SERIE: TWideStringField;
    qrproduto3ECF_CAIXA: TWideStringField;
    qrproduto3CODALIQUOTA: TWideStringField;
    qrproduto3CUPOM_NUMERO: TWideStringField;
    qrproduto3CUPOM_MODELO: TWideStringField;
    qrproduto3CUPOM_ITEM: TWideStringField;
    qrproduto3ALIQUOTA: TFloatField;
    qrproduto3CST: TWideStringField;
    qrproduto3LOTE_FABRICACAO: TWideStringField;
    qrproduto3MOVIMENTO_ESTOQUE: TFloatField;
    qrproduto3CODBARRA: TWideStringField;
    qrproduto3MARGEM_DESCONTO: TFloatField;
    qrproduto3CREDITO_ICMS: TFloatField;
    qrproduto3PIS: TFloatField;
    qrproduto3COFINS: TFloatField;
    qrproduto3LOJA: TWideStringField;
    qrproduto3CODSUBGRUPO: TWideStringField;
    qrproduto3TIPO: TWideStringField;
    qrproduto3CODUSUARIO: TWideStringField;
    qrproduto3ORIGEM: TWideStringField;
    qrproduto3DESTINO: TWideStringField;
    qrproduto3PRODUTO: TWideStringField;
    qrproduto3CODFILIAL: TWideStringField;
    qrproduto3NOME: TWideStringField;
    qrproduto3CODCONVENIO: TWideStringField;
    qrproduto3PRODUTO_1: TWideStringField;
    qrproduto3SITUACAO_1: TIntegerField;
    qrproduto3DOCUMENTO: TWideStringField;
    RzPanel1: TRzPanel;
    bgravar: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    qrprodutoDATA: TDateField;
    qrprodutoMOVIMENTO: TIntegerField;
    qrprodutoLANCADO: TIntegerField;
    qrprodutoVENCIMENTO: TDateField;
    qrproduto2DATA: TDateField;
    qrproduto2MOVIMENTO: TIntegerField;
    qrproduto2LANCADO: TIntegerField;
    qrproduto2VENCIMENTO: TDateField;
    qrproduto3DATA: TDateField;
    qrproduto3MOVIMENTO: TIntegerField;
    qrproduto3LANCADO: TIntegerField;
    qrproduto3VENCIMENTO: TDateField;
    qrreceberDATA_EMISSAO: TDateField;
    qrreceberDATA_VENCIMENTO: TDateField;
    qrreceberDATA_PAGAMENTO: TDateField;
    qrclienteTOTAL: TExtendedField;
    qrclienteCODIGO: TWideStringField;
    qrclienteNOME: TWideStringField;
    qrclienteCODCONVENIO: TWideStringField;
    queryTOTAL: TExtendedField;
    queryDOCUMENTO: TWideStringField;
    queryCODVENDA: TWideStringField;
    queryDATA_EMISSAO: TDateField;
    queryCODIGO: TWideStringField;
    queryNOME: TWideStringField;
    queryCODCONVENIO: TWideStringField;
    procedure locconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Convenio1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio_receber: Tfrmconvenio_receber;
      const
   sc_DragMove = $f012;

implementation

uses modulo, xloc_convenio, principal, convenio_pgto;

{$R *.dfm}

procedure Tfrmconvenio_receber.locconvenioKeyPress(Sender: TObject;
  var Key: Char);
var
  dia: integer;
    const
   sc_DragMove = $f012;
begin
  if Key = #13 then
  begin
    qrconvenio.close;
    qrconvenio.sql.clear;
    qrconvenio.sql.add('select * from c000071 where upper(nome) like ''' +
      AnsiUpperCase(locconvenio.text) + '%'' order by nome');
    qrconvenio.open;

    if qrconvenio.RecordCount > 0 then
    begin
      if qrconvenio.RecordCount > 1 then
      begin
        resultado_pesquisa1 := '';
        resultado_pesquisa2 := '';
        RESULTADO_PESQUISA3 := '';
        parametro_pesquisa := locconvenio.text;

        frmxloc_convenio := tfrmxloc_convenio.create(self);
        frmxloc_convenio.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          if RESULTADO_PESQUISA3 <> '' then
          begin
            if length(RESULTADO_PESQUISA3) < 2 then
              RESULTADO_PESQUISA3 := '0' + RESULTADO_PESQUISA3;
            dia := strtoint(copy(datetostr(date), 1, 2));
            if strtoint(RESULTADO_PESQUISA3) > dia then
            begin
              edata.text := RESULTADO_PESQUISA3 + copy(datetostr(date), 3, 8);
            end
            else
            begin
              edata.text := RESULTADO_PESQUISA3 +
                copy(datetostr(incmonth(date, 1)), 3, 8);
            end;
          end
          else
          begin
            edata.text := datetostr(date);
          end;

          qrcliente.close;
          qrcliente.sql.clear;
          qrcliente.sql.add('select sum(rec.valor_atual) total,');
          qrcliente.sql.add('rec.data_emissao,');
          qrcliente.sql.add('cli.codigo,');
          qrcliente.sql.add('cli.nome,');
          qrcliente.sql.add('cli.codconvenio');
          qrcliente.sql.add('from');
          qrcliente.sql.add('c000049 rec,');
          qrcliente.sql.add('c000007 cli');
          qrcliente.sql.add('where');
          qrcliente.sql.add('rec.codcliente = cli.codigo');
          qrcliente.sql.add('and rec.situacao = 1');
          qrcliente.sql.add('and cli.codconvenio = ''' +
            resultado_pesquisa1 + '''');
          qrcliente.sql.add('and rec.data_emissao <= :datax');
          qrcliente.sql.add('and rec.tipo = :tipo');
          qrcliente.sql.add('group by');
          qrcliente.sql.add('rec.data_emissao,');
          qrcliente.sql.add('cli.codigo,');
          qrcliente.sql.add('cli.nome,');
          qrcliente.sql.add('cli.codconvenio');
          qrcliente.sql.add('order by');
          qrcliente.sql.add('cli.nome');
          qrcliente.Params.ParamByName('datax').asdatetime :=
            strtodate(edata.text);
          qrcliente.Params.ParamByName('tipo').AsString := 'CONVENIO';
          qrcliente.open;
          locconvenio.text := resultado_pesquisa2;
          Edit2.text := resultado_pesquisa1;
          Button1Click(frmconvenio_receber);
          Grid.SetFocus;
        end;

      end
      else
      begin
        RESULTADO_PESQUISA3 := qrconvenio.FieldByName('DIA_FECHAMENTO')
          .AsString;
        resultado_pesquisa2 := qrconvenio.FieldByName('NOME').AsString;
        resultado_pesquisa4 := qrconvenio.FieldByName('CNPJ').AsString;
        if RESULTADO_PESQUISA3 <> '' then
        begin
          if length(RESULTADO_PESQUISA3) < 2 then
            RESULTADO_PESQUISA3 := '0' + RESULTADO_PESQUISA3;
          dia := strtoint(copy(datetostr(date), 1, 2));
          if strtoint(RESULTADO_PESQUISA3) > dia then
          begin
            edata.text := RESULTADO_PESQUISA3 + copy(datetostr(date), 3, 8);
          end
          else
          begin
            edata.text := RESULTADO_PESQUISA3 +
              copy(datetostr(incmonth(date, 1)), 3, 8);
          end;
        end
        else
        begin
          edata.text := datetostr(date);
        end;

        qrcliente.close;
        qrcliente.sql.clear;
        qrcliente.sql.add('select sum(rec.valor_atual) total,');
        // qrcliente.sql.add('rec.data_emissao,');
        qrcliente.sql.add('cli.codigo,');
        qrcliente.sql.add('cli.nome,');
        qrcliente.sql.add('cli.codconvenio');
        qrcliente.sql.add('from');
        qrcliente.sql.add('c000049 rec,');
        qrcliente.sql.add('c000007 cli');
        qrcliente.sql.add('where');
        qrcliente.sql.add('rec.codcliente = cli.codigo');
        qrcliente.sql.add('and rec.situacao = 1');
        qrcliente.sql.add('and cli.codconvenio = ''' + qrconvenio.FieldByName
          ('codigo').AsString + '''');
        qrcliente.sql.add('and rec.data_emissao <= :datax');
        qrcliente.sql.add('and rec.tipo = :tipo');
        qrcliente.sql.add('group by');
        // qrcliente.sql.add('rec.data_emissao,');
        qrcliente.sql.add('cli.codigo,');
        qrcliente.sql.add('cli.nome,');
        qrcliente.sql.add('cli.codconvenio');
        qrcliente.sql.add('order by');
        qrcliente.sql.add('cli.nome');
        qrcliente.Params.ParamByName('datax').asdatetime :=
          strtodate(edata.text);
        qrcliente.Params.ParamByName('tipo').AsString := 'CONVENIO';
        qrcliente.open;
        locconvenio.text := qrconvenio.FieldByName('NOME').AsString;
        Edit2.text := qrconvenio.FieldByName('CODIGO').AsString;

        Button1Click(frmconvenio_receber);
      end;
    end
    else
    begin
      application.messagebox('Convênio não encontrado!', 'Atenção',
        mb_ok + mb_iconwarning);
    end;
  end;
end;

procedure Tfrmconvenio_receber.Button1Click(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select');
  qrproduto.sql.add('MOV.*,');
  qrproduto.sql.add('PRO.PRODUTO');
  qrproduto.sql.add('from c000032 MOV,');
  qrproduto.sql.add('c000025 PRO');
  qrproduto.sql.add('WHERE');
  qrproduto.sql.add('MOV.CODPRODUTO = PRO.CODIGO');
  qrproduto.sql.add('AND MOV.MOVIMENTO <> 9');
  qrproduto.open;

  qrproduto2.close;
  qrproduto2.sql.clear;
  qrproduto2.sql.add('select');
  qrproduto2.sql.add('MOV.*,');
  qrproduto2.sql.add('PRO.PRODUTO');
  qrproduto2.sql.add('from c000032 MOV,');
  qrproduto2.sql.add('c000025 PRO');
  qrproduto2.sql.add('WHERE');
  qrproduto2.sql.add('MOV.CODPRODUTO = PRO.CODIGO');
  qrproduto2.sql.add('AND MOV.MOVIMENTO <> 9');
  qrproduto2.open;

  qrproduto3.close;
  qrproduto3.sql.clear;
  qrproduto3.sql.add('select');
  qrproduto3.sql.add('MOV.*,');
  qrproduto3.sql.add('CLI.NOME,CLI.CODCONVENIO,');
  qrproduto3.sql.add('PRO.PRODUTO,');
  qrproduto3.sql.add('CR.SITUACAO,');
  qrproduto3.sql.add('CR.DOCUMENTO');
  qrproduto3.sql.add('from c000032 MOV,');
  qrproduto3.sql.add('c000025 PRO,');
  qrproduto3.sql.add('C000007 CLI,');
  qrproduto3.sql.add('C000049 CR');
  qrproduto3.sql.add('WHERE');
  qrproduto3.sql.add('MOV.CODPRODUTO = PRO.CODIGO');
  qrproduto3.sql.add('AND MOV.CODCLIENTE = CLI.CODIGO');
  qrproduto3.sql.add('AND MOV.CODNOTA = CR.CODVENDA');
  qrproduto3.sql.add('AND MOV.MOVIMENTO <> 9');
  qrproduto3.sql.add('AND CR.SITUACAO = 1');
  qrproduto3.sql.add('AND CLI.CODCONVENIO = ''' + Edit2.text + '''');
  qrproduto3.sql.add('ORDER BY CODCLIENTE, DATA');
  qrproduto3.open;

  qrreceber.close;
  qrreceber.sql.clear;
  qrreceber.sql.add('select');
  qrreceber.sql.add('CR.*,');
  qrreceber.sql.add('CLI.CODCONVENIO');
  qrreceber.sql.add('from c000049 CR,');
  qrreceber.sql.add('C000007 CLI');
  qrreceber.sql.add('where');
  qrreceber.sql.add('cr.codcliente = cli.codigo');
  qrreceber.sql.add('and cr.situacao = 1');
  qrreceber.sql.add('and codconvenio = ''' + Edit2.text + '''');
  qrreceber.sql.add('and CR.tipo = ''CONVENIO''');
  qrreceber.sql.add('order by data_vencimento');
  qrreceber.open;

end;

procedure Tfrmconvenio_receber.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio_receber.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio_receber.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmconvenio_receber.BitBtn1Click(Sender: TObject);
var
  total: real;
begin

  if qrcliente.State = dsbrowse then
  begin

    if frmPrincipal.autentica_caixa('Recebimento', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        qrcliente.first;
        total := 0;
        while not qrcliente.eof do
        begin
          // if datetostr(qrcliente.fieldbyname('data_emissao').AsDateTime) <= EDATA.Text then
          // if qrcliente.fieldbyname('data_emissao').AsDateTime <= strtodate(EDATA.Text) then
          // begin
          total := total + qrcliente.FieldByName('total').asfloat;
          // end;
          qrcliente.next;
        end;

        if total > 0 then
        begin
          frmconvenio_pgto := tfrmconvenio_pgto.create(self);
          with frmconvenio_pgto do
          begin
            rliquido.Value := total;
            rjuros.Value := 0;
            rtotal.Value := total;
          end;
          frmconvenio_pgto.showmodal;
        end
        else
          application.messagebox
            ('Não Há Contas de Convênio na Faixa de Data Base Vencidas! Favor verificar...',
            'Atenção', mb_ok + mb_iconwarning);

      END
      ELSE
      BEGIN
        application.messagebox('Este caixa está fechado! Favor verificar...',
          'Atenção', mb_ok + mb_iconwarning);
      END;
    end
    else
    begin
      application.messagebox('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
    end;
  end;

end;

procedure Tfrmconvenio_receber.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.QRRELATORIO.open;
  frmmodulo.QRRELATORIO.Edit;
  frmmodulo.QRRELATORIO.FieldByName('LINHA1').AsString :=
    'CONVÊNIO - Extrato de Débito';
  frmmodulo.QRRELATORIO.FieldByName('LINHA2').AsString :=
    'Data Base do Fechamento: ' + edata.text;
  frmmodulo.QRRELATORIO.FieldByName('LINHA3').AsString := locconvenio.text;

  qrproduto3.MasterFields := 'CODIGO';
  qrproduto3.MasterSource := dscliente;
  qrproduto3.IndexFieldNames := 'CODCLIENTE';
  // QRPRODUTO3.IndexFieldNames :=  'DATA';
  qrproduto3.Refresh;

  fxconvenio.LoadFromFile('\OneMaker\server\rel\f000087.fr3');
  //fxconvenio.designreport;
  fxCONVENIO.ShowReport;

  qrproduto3.MasterFields := '';
  qrproduto3.MasterSource := NIL;
  qrproduto3.IndexFieldNames := '';

end;

procedure Tfrmconvenio_receber.Convenio1Click(Sender: TObject);
begin
  BitBtn4Click(frmconvenio_receber);
end;

procedure Tfrmconvenio_receber.BitBtn4Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add('select sum(rec.valor_atual) total,');
  query.sql.add('rec.documento,');
  query.sql.add('rec.codvenda,');
  query.sql.add('rec.data_emissao,');
  query.sql.add('cli.codigo,');
  query.sql.add('cli.nome,');
  query.sql.add('cli.codconvenio');
  query.sql.add('from');
  query.sql.add('c000049 rec,');
  query.sql.add('c000007 cli');
  query.sql.add('where');
  query.sql.add('rec.codcliente = cli.codigo');
  query.sql.add('and rec.situacao = 1');
  query.sql.add('and cli.codconvenio = ''' +
    qrclienteCODCONVENIO.AsString + '''');
  query.sql.add('and rec.data_emissao <= :datax');
  query.sql.add('group by');
  query.sql.add('rec.documento,');
  query.sql.add('rec.codvenda,');
  query.sql.add('rec.data_emissao,');
  query.sql.add('cli.codigo,');
  query.sql.add('cli.nome,');
  query.sql.add('cli.codconvenio');
  query.sql.add('order by');
  query.sql.add('cli.nome,rec.data_emissao');
  query.Params.ParamByName('datax').asdatetime := strtodate(edata.text);
  query.open;

  frmmodulo.QRRELATORIO.open;
  frmmodulo.QRRELATORIO.Edit;
  frmmodulo.QRRELATORIO.FieldByName('LINHA1').AsString :=
    'CONVÊNIO - Resumo dos Débitos';
  frmmodulo.QRRELATORIO.FieldByName('LINHA2').AsString :=
    'Data Base do Fechamento: ' + edata.text;
  frmmodulo.QRRELATORIO.FieldByName('LINHA3').AsString := locconvenio.text;

  fxconvenio.LoadFromFile('\OneMaker\server\rel\f000136.fr3');
  // fxconvenio.designreport;
  fxconvenio.ShowReport;

end;

procedure Tfrmconvenio_receber.edataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

end.
